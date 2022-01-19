import java.util.*;
import java.io.*;

import javax.sound.sampled.SourceDataLine;

class CheckedException {
	public static void main(String args[]) {
		// CheckedException.handler("Hello");
		
		try {
			CheckedException.delegate("World");
		} catch(IOException e) {
			System.out.println(e.toString());
		}
	}

	public static void handler(String dataToWrite) {
		try {
			FileWriter fileWriter = null;
			fileWriter = new FileWriter("./tesst.txt");
			PrintWriter printWriter = new PrintWriter(fileWriter);
			printWriter.write(dataToWrite);
			printWriter.close();

		} catch(IOException exp) {
			System.out.println(exp.toString());
		}
	}

	public static void delegate(String dataToWrite) throws IOException {
		FileWriter fileWriter = null;
		fileWriter = new FileWriter("./tesst.txt");
		PrintWriter printWriter = new PrintWriter(fileWriter);
		printWriter.write(dataToWrite);
		printWriter.close();
	}
}