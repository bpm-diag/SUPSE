import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.extension.std.XTimeExtension;
import org.deckfour.xes.factory.XFactory;
import org.deckfour.xes.factory.XFactoryRegistry;
import org.deckfour.xes.in.XMxmlGZIPParser;
import org.deckfour.xes.in.XMxmlParser;
import org.deckfour.xes.in.XesXmlGZIPParser;
import org.deckfour.xes.in.XesXmlParser;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;
import org.deckfour.xes.out.XesXmlSerializer;

public class Utils {
	
	public static XLog openLog(String inputLogFileName) throws Exception {
		XLog log = null;

		if(inputLogFileName.toLowerCase().contains("mxml.gz")){
			XMxmlGZIPParser parser = new XMxmlGZIPParser();
			if(parser.canParse(new File(inputLogFileName))){
				try {
					log = parser.parse(new File(inputLogFileName)).get(0);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}else if(inputLogFileName.toLowerCase().contains("mxml") || 
				inputLogFileName.toLowerCase().contains("xml")){
			XMxmlParser parser = new XMxmlParser();
			if(parser.canParse(new File(inputLogFileName))){
				try {
					log = parser.parse(new File(inputLogFileName)).get(0);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if(inputLogFileName.toLowerCase().contains("xes.gz")){
			XesXmlGZIPParser parser = new XesXmlGZIPParser();
			if(parser.canParse(new File(inputLogFileName))){
				try {
					log = parser.parse(new File(inputLogFileName)).get(0);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}else if(inputLogFileName.toLowerCase().contains("xes")){
			XesXmlParser parser = new XesXmlParser();
			if(parser.canParse(new File(inputLogFileName))){
				try {
					log = parser.parse(new File(inputLogFileName)).get(0);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if(log == null)
			throw new Exception("Oops ...");

		return log;
	}
	
	public static void Checking(XLog input_log, XLog seg_log, String input_path) {
		int fit;
		int cont = 0;
		int n_traces = Integer.parseInt(input_path.substring(input_path.lastIndexOf("_")+1).replace("Traces.xes", ""));
		int tracesize= 6;
		List<String> events_segmented = new LinkedList<String>();
		for(XTrace trace : input_log) {
			//System.out.println("input_log traces size: "+trace.size());//last at 24
			for(XEvent event : trace) {
				XConceptExtension.instance().assignName(event,event.getAttributes().get("concept:name").toString().toLowerCase().replace(" ", ""));
				//System.out.println("input_log lowerCase: "+event.getAttributes().get("concept:name"));//last at 24
			}
		}
		
		for(XTrace tracess : seg_log) {
			//System.out.println("input_log traces size: "+trace.size());//last at 24
			for(XEvent event : tracess) {
				//XConceptExtension.instance().assignName(event,event.getAttributes().get("concept:name").toString().toLowerCase().replace(" ", ""));
				//System.out.println("seg_log lowerCase: "+event.getAttributes().get("concept:name"));//last at 24
			}
		}
		
		//System.out.println("input_path: "+n_traces);
		for(XTrace trace_seg : seg_log) {
			for(XEvent event_seg : trace_seg) {
				events_segmented.add(event_seg.getAttributes().get("concept:name").toString());
			}
		}
		
		for(XTrace trace_log : input_log) {
			if(trace_log.size() == tracesize) {
				System.out.println("si ci stanno "+cont+" traces");
				cont++;
				//if(event_log.getAttributes().get("concept:name").
			}
		}
			
				
					
					
					//System.out.println("seg_log lowerCase: "+event_seg.getAttributes().get("concept:name"));//last at 24
					
					
					//System.out.println("trace removed: "+trace_log.getAttributes());
					//System.out.println("input_log size: "+input_log.size());
					//input_log.remove(trace_seg);
					
					
		
	}
		
	
	public static Map<String,List<MioEvento>>getLogInMemory(XLog log, XLog seg_log) {
		Map<String,List<MioEvento>> dict = new LinkedHashMap <String,List<MioEvento>>();
		List<MioEvento> eventi = new LinkedList<MioEvento>();
		
		for (XTrace trace : log) {
			System.out.println("Sara true: "+log.containsAll(seg_log));
			String traceId = trace.getAttributes().get("concept:name").toString();//Numero della stringa
			eventi = new LinkedList<MioEvento>();
			for (XEvent event : trace) {
				MioEvento evento = new MioEvento();
				//if(event.getAttributes().get("lifecycle:transition").toString().equals("complete")) {
					evento.setActivity_name(event.getAttributes().get("concept:name").toString());
					String timestamp = event.getAttributes().get("time:timestamp").toString();
					evento.setTimestamp(timestamp.replace("T", " ").substring(0,timestamp.length()));
					if(!evento.getActivity_name().equals("start") && !evento.getActivity_name().equals("end"))
						eventi.add(evento);
				//}				
			}
			dict.put(traceId, eventi);//We have an ID for every trace with all the event inside of it
			//System.out.println("Stampo: "+dict.values());
		}
		return dict;
	}
	
	public static void print(Map<String,List<MioEvento>> dict) {
		for(String k : dict.keySet()) {
			String toPrint = "";
			for(MioEvento e : dict.get(k)) {
				toPrint+=e.getActivity_name()+"_"+e.getTimestamp()+" ";
			}
			System.out.println(k+") "+toPrint);
		}
	}
	
	public static void printK(Map<String,List<MioEvento>> dict,String k) {
		String toPrint = "";
		for(MioEvento e : dict.get(k)) {
			toPrint+=e.getActivity_name()+"_"+e.getTimestamp()+" ";
		}
		System.out.println(k+") "+toPrint);	
	}
	
	
	public static XLog write(Map<String,List<MioEvento>> dict) throws IOException, ParseException {
			
		XFactory factory = XFactoryRegistry.instance().currentDefault();
		XLog newLog5 = factory.createLog();
		XLog newLog10 = factory.createLog();
		XLog newLog15 = factory.createLog();
		XLog newLog20 = factory.createLog();
		XTrace xtrace = factory.createTrace();
		XTrace xtrace10 = factory.createTrace();
		XTrace xtrace15 = factory.createTrace();
		XTrace xtrace20 = factory.createTrace();
		String out_print = "Caso1_NonInt_Cont0_";
		int trans = 25;//Cambia in base a ogni petri
		int often_traces = 10;//Cambia in base a ogni petri
		XConceptExtension.instance().assignName(xtrace, "0");
		int trace5 = 5;
		int trace10 = 10;
		int trace15 = 15;
		int trace20 = 20;
		int i = 0;
	
		for(String k : dict.keySet()) { //Scorre per ogni traccia salvata in precedenza
			List<MioEvento> trace = dict.get(k);
			i++;
			//System.out.println("Stampo: "+trace.get(0));
				for(MioEvento e : trace) {//potrei mettere una if(trace.size() == 28)
					//System.out.println("Stampo: "+dict.size());//[id traccia] [eventi nella traccia]+
					//often_traces = trace.size();
					
					System.out.println("Stampo: "+trace.size());
					if(/*trace.size() == often_traces*/true) {
						XEvent event = factory.createEvent();
						XConceptExtension.instance().assignName(event, e.getActivity_name());
						@SuppressWarnings("deprecation")
						DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						Date date = formatter.parse(e.getTimestamp());
						Timestamp tm = new Timestamp(date.getTime());
						XLifecycleExtension.instance().assignTransition(event, "complete");
						XTimeExtension.instance().assignTimestamp(event, tm.getTime());
						if(i <= 5) {
							System.out.println("iT5: "+i);
							xtrace.add(event);
						}
						else if(i>5 && i<=15) {
							System.out.println("iT10: "+i);
							xtrace10.add(event);
						}
						if(i>15 && i<=30) {
							System.out.println("iT15: "+i);
							xtrace15.add(event);
						}
						else if(i>30 && i<=50) {
							System.out.println("iT20: "+i);
							xtrace20.add(event);
						}
					}
						else {
							break;
							
						}
				}
			
		}
		
		newLog5.add(xtrace);
		java.util.Date date = new java.util.Date();
		Timestamp tm = new Timestamp(date.getTime());// UILog_Caso1_NonInt_Cont0_25Trans_5Traces
		File file_for_log = new File("UILogs/" +  "UILog_"+ out_print + trans + "Trans_" + trace5 + "Traces" + ".xes");
		
		OutputStream outStream = new FileOutputStream(file_for_log);
		new XesXmlSerializer().serialize(newLog5,outStream);
		
		newLog10.add(xtrace10);// UILog_Caso1_NonInt_Cont0_25Trans_5Traces
		File file_for_log10 = new File("UILogs/" +  "UILog_"+ out_print + trans + "Trans_" + trace10 + "Traces"  + ".xes");
		
		OutputStream outStream10 = new FileOutputStream(file_for_log10);
		new XesXmlSerializer().serialize(newLog10,outStream10);
		
		newLog15.add(xtrace15);
		File file_for_log15 = new File("UILogs/" +  "UILog_"+ out_print + trans + "Trans_" + trace15 + "Traces" +  ".xes");
		
		OutputStream outStream15 = new FileOutputStream(file_for_log15);
		new XesXmlSerializer().serialize(newLog15,outStream15);
		
		newLog20.add(xtrace20);
		File file_for_log20 = new File("UILogs/" +  "UILog_"+ out_print + trans + "Trans_" + trace20 + "Traces" +  ".xes");
		
		OutputStream outStream20 = new FileOutputStream(file_for_log20);
		new XesXmlSerializer().serialize(newLog20,outStream20);
		return newLog5;
		
	}
	
	public static XLog writeInterleaved(Map<String,List<MioEvento>> dict) throws IOException, ParseException {
		
		XFactory factory = XFactoryRegistry.instance().currentDefault();
		XLog newLog = factory.createLog();
		XTrace xtrace = factory.createTrace();
		XConceptExtension.instance().assignName(xtrace, "0");
		
		int dim = 0;
		for (String k : dict.keySet()) {
			if (dict.get(k).size() > dim)
				dim = dict.get(k).size();
		}
		
		MioEvento mat [][] = new MioEvento[dict.keySet().size()][dim];
		
		int i = 0;
		for(String k : dict.keySet()) { 			
			List<MioEvento> trace = dict.get(k);
				int j = 0;
				for(MioEvento e : trace) {
					mat[i][j] = e;
					j++;
				}
				i++;
		}

		
		for(int j = 0;j<mat[j].length;j++) {
			for(i = 0;i<mat.length;i++) {
				XEvent event = factory.createEvent();
				XConceptExtension.instance().assignName(event, mat[i][j].getActivity_name());
				@SuppressWarnings("deprecation")
				DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = formatter.parse(mat[i][j].getTimestamp());
				Timestamp tm = new Timestamp(date.getTime());
				XLifecycleExtension.instance().assignTransition(event, "complete");
				XTimeExtension.instance().assignTimestamp(event, tm.getTime());
				xtrace.add(event);
			}
		}
		
		newLog.add(xtrace);
		java.util.Date date = new java.util.Date();
		Timestamp tm = new Timestamp(date.getTime());
		File file_for_log = new File("UILogs/" + "UILog-Interleaved-"+tm.getTime() + ".xes");
		
		OutputStream outStream = new FileOutputStream(file_for_log);
		new XesXmlSerializer().serialize(newLog,outStream);
		return newLog;
		
	}
	
}
