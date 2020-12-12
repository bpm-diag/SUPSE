import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.deckfour.xes.model.XLog;

public class Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		final String propertiesFilePath = "app.properties";
		FileInputStream input = new FileInputStream(propertiesFilePath);
		Properties prop = new Properties();
		prop.load(input);
		String input_log= prop.getProperty("input_log");
		String seg_log_path = prop.getProperty("seg_log");
		XLog log = Utils.openLog(input_log);
		XLog seg_log = Utils.openLog(seg_log_path);
		//Utils.print(Utils.getLogInMemory(log,seg_log));
		Utils.Checking(log,seg_log,seg_log_path);
		//XLog UILog = Utils.write(Utils.getLogInMemory(log,seg_log)); //Esecuzione consecutiva
		
		//XLog UILog = Utils.writeInterleaved(Utils.getLogInMemory(log)); //Esecuzione interlacciata
		//Utils.print(Utils.getLogInMemory(UILog));

	}

}
