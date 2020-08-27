echo 'Running SQL script ...'
mysql --verbose --host=localhost --user=root --password=root < DBSetup.sql
echo 'Starting server...'
start cmd /K java -jar mapServer.jar
echo 'Server Started!'
echo 'Starting Client...'
start cmd /K java -jar mapClient.jar localhost 8080
echo 'Client Started!'

