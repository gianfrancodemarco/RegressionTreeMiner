package data;

import java.io.Serializable;

/**
 * Modella un attributo generico del dataset
 */
public abstract class Attribute implements Serializable {
	String name;
	int index;

	/**
	 * @param index - indice dell'attributo
	 * @param name - nome dell'attributo
	 */
	public Attribute(String name, int index) {
		this.name = name;
		this.index = index;
	}


	public String getName() {
		return name;
	}


	public int getIndex() {
		return index;
	}

}
