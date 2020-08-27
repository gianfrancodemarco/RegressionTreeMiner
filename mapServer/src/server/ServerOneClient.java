package server;

import data.Data;
import data.TrainingDataException;
import tree.RegressionTree;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.net.SocketException;
import java.sql.SQLException;

/**
 * Classe che gestice la comunicazione 1-1 con un client.
 * Estende la classe thread in modo da poter essere eseguita su un thread dedicato
 * (ad ogni client viene associato un'istanza di ServerOneClient; grazie al multithreading possono essere attive più connessioni contemporaneamente)
 */
public class ServerOneClient extends Thread {

    private Socket socket;
    private ObjectInputStream in;
    private ObjectOutputStream out;

    /**
     * Costruttore della classe.
     * Recupera gli Input/Output stream dalla socket di riferimento
     * @param s - la socket con cui deve interfacciarsi l'istanza di ServerOneClient
     * @throws IOException
     */
    public ServerOneClient(Socket s) throws IOException {
        socket = s;
        in = new ObjectInputStream(s.getInputStream());
        out = new ObjectOutputStream(s.getOutputStream());

        new Thread(this::run).start();
    }

    /**
     * Il metodo run() gestisce la comunicazione con il client associato alla socket {s}
     * A seconda delle scelte inviate dal client:
     *  - genera un nuovo regression tree a partire dal database e lo serializza oppure
     *  - deserializza un regression tree generato il precedenza;
     * Quindi permette al client di predirre nuovi valori col il metodo predict class finché il client non interrompe la connessione o viene sollevata un'eccezione
     */
    @Override
    public void run() {
        System.out.println("Connection accepted!");

        RegressionTree tree ;
        Data trainingSet;
        Integer decision;
        String tableName;

        try{
            decision = Integer.parseInt(in.readObject().toString());
            tableName = in.readObject().toString();

            if (decision.equals(0)) {
                trainingSet = new Data(tableName); //leggo da DB
                out.writeObject("OK");
                Integer.parseInt(in.readObject().toString()); //Proceed with learning
                tree = new RegressionTree(trainingSet);
                tree.salva(tableName + ".dmp");
            } else {
                tree = RegressionTree.carica(tableName + ".dmp"); //leggo da file
            }

            out.writeObject("OK");


            do {
                Integer.parseInt(in.readObject().toString()); //Proceed with prediction phase
                try {
                    tree.predictClass(out, in);
                } catch (UnkownValueException e) {
                    e.printStackTrace();
                    out.writeObject(e.getMessage());
                }
            } while (true);
        }catch (SocketException e){
            System.out.println("Client aborted connection.");
        }catch (IOException | TrainingDataException | ClassNotFoundException | SQLException e) {
            try {
                e.printStackTrace();
                out.writeObject(e.getMessage() + "\nAborting");
            } catch (IOException ioException) {
                System.out.println(ioException.getMessage());
            }
        }
    }
}
