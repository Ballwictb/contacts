package Ejercicio;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class DataAccess {
	private static String phoneBook_path="C:\\phonebook2.txt";
	private static String separator=",";
	public static void registerContact(Contact2 contact) {
		File f = new File(phoneBook_path);
		try {
			FileWriter fw = new FileWriter(f, true);
			fw.write(contact.getNombre() + "," + contact.getTlf() + "\n");
			fw.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void removeContact(Contact2 contact) {
		ArrayList<Contact2> contactos = getAllContacts();
		
		
	}
	public static ArrayList<Contact2> getAllContacts() {
		ArrayList<Contact2> contact_list = new ArrayList<Contact2>();
		try {
			FileReader fr = new FileReader(phoneBook_path);
			BufferedReader br = new BufferedReader(fr);
			String linea = br.readLine();
			while(linea !=null) {
				//Parto la linea split
				String[] fields = linea.split(separator);
				
				//Creo contacto
				Contact2 c = new Contact2(fields[0],fields[1]);
				//Añado el contacto al ArrayList
				contact_list.add(c);
				//Vuelvo a leer la linea
				linea = br.readLine();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return contact_list;
	}
}
