package segmentation;

import java.awt.Color;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.Vector;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.text.StyleConstants;

import org.deckfour.xes.extension.std.XConceptExtension;
import org.deckfour.xes.extension.std.XLifecycleExtension;
import org.deckfour.xes.extension.std.XTimeExtension;
import org.deckfour.xes.factory.XFactory;
import org.deckfour.xes.factory.XFactoryRegistry;
import org.deckfour.xes.model.XAttributeMap;
import org.deckfour.xes.model.XEvent;
import org.deckfour.xes.model.XLog;
import org.deckfour.xes.model.XTrace;
import org.processmining.models.connections.GraphLayoutConnection;
import org.processmining.models.graphbased.directed.petrinet.Petrinet;
import org.processmining.models.graphbased.directed.petrinet.PetrinetEdge;
import org.processmining.models.graphbased.directed.petrinet.PetrinetNode;
import org.processmining.models.graphbased.directed.petrinet.elements.Place;
import org.processmining.models.graphbased.directed.petrinet.elements.Transition;
import org.processmining.models.graphbased.directed.petrinet.impl.PetrinetFactory;
import org.processmining.models.semantics.petrinet.Marking;
import org.processmining.plugins.pnml.Pnml;

public class Main {

	static Properties prop = new Properties();
	static InputStream input = null;
	final static String propertiesFilePath = "app.properties";
	final static Logger LOGGER =  Logger.getLogger(Main.class.getName());
	
	public static final String INVISIBLE_TRANSITION_PREFIX = "generatedINV";
	public static final String WINDOWS = "windows";
	public static final String PYTHON_WIN_DIR = "python27/";
	public static final String PYTHON_WIN_AMD64_DIR = "python27amd64/";
	public static final String FAST_DOWNWARD_DIR = "fast-downward/";
	public static final String PLANS_FOUND_DIR = FAST_DOWNWARD_DIR + "plans_found/";
	public static final String PDDL_FILES_DIR = FAST_DOWNWARD_DIR + "PDDLFiles/";
	public static final String PDDL_EXT = ".pddl";
	public static final String PDDL_DOMAIN_FILE_PREFIX = PDDL_FILES_DIR + "domain";
	public static final String PDDL_PROBLEM_FILE_PREFIX = PDDL_FILES_DIR + "problem";
	public static final String PLAN_FILE_PREFIX = PLANS_FOUND_DIR + "alignment_";
	public static final String COST_ENTRY_PREFIX = "; cost = ";
	public static final String SEARCH_TIME_ENTRY_PREFIX = "; searchtime = ";
	public static final String TRACE_NAME_PREFIX = "Trace#";
	public static final String COMMAND_ARG_PLACEHOLDER = "+";
	public static final String PLANNER_MANAGER_SCRIPT = "planner_manager.py";
	public static final String FAST_DOWNWARD_SCRIPT = "fast-downward.py";
	
	private static float totalAlignmentCost = 0;
	private static float totalAlignmentTime = 0;

	private static Pattern decimalNumberRegexPattern = Pattern.compile("\\d+(,\\d{3})*(\\.\\d+)*");
	
	static Map<String, List<String>> maxSynchMovesPerPattern = new LinkedHashMap<String,List<String>>();
	static Map<String, List<Trace>> tracesPerPattern = new LinkedHashMap<String, List<Trace>>();
	static List<Integer> indexes = new LinkedList<Integer>();
	
	public static String sharedEvent;//Cambia
	public static int sharedCont = 0;//Cambia
	public static boolean sharedFlag = false;//Cambia
	public static Map<String, Integer> sharedDic = new HashMap<String, Integer>();
	public static String[] net_value;
	
	
	
	public static void main(String[] args) throws Exception {
		double start = System.currentTimeMillis();
		input = new FileInputStream(propertiesFilePath);
		prop.load(input);
		String input_log= prop.getProperty("input_log");
		//System.out.println("PathChar: "+input_log);
		String input_print = input_log.substring(input_log.lastIndexOf("\\"));
		//System.out.println("PathChar: "+input_log.substring(input_log.lastIndexOf("\\")));
		String tasks= prop.getProperty("tasks");
		String[] patterns = tasks.split(";");
		int tId = 0;
		int iteration = 1;
		int iterationPatterns = 1;
		for(String pattern : patterns) {//pattern is the path of the petriNet
			List<String> max = new ArrayList<String>();
			maxSynchMovesPerPattern.put(pattern, max);
			//System.out.println("maxSynchMovesPerPattern " + maxSynchMovesPerPattern);
			List<Trace> traceList = new ArrayList<Trace>();
			tracesPerPattern.put(pattern, traceList);
			//System.out.println("tracesPerPattern: " + tracesPerPattern);
			List<String> moveSynchs = new ArrayList<String>();
			List<String> moveSynchsCopy = new ArrayList<String>();
			//input_log= prop.getProperty("input_log");
			XLog log = XLogReader.openLog(input_log);
			/*if(sharedFlag == true) {//Cambia
				log = SharedLog(XLogReader.openLog(input_log));
			}*///Cambia
			//System.out.println("Pattern: "+ pattern);
			do {
				/**Import della rete di petri in input*/
				//if(iteration == 101) flag = false;//Cambia
				PnmlImportUtils ut = new PnmlImportUtils();
				InputStream input = new FileInputStream(new File(pattern));
				Pnml pnml = ut.importPnmlFromStream(input);
				
				Petrinet net = PetrinetFactory.newPetrinet(pnml.getLabel());
				Marking marking = new Marking();								  // only needed for Petrinet initialization
				pnml.convertToNet(net, marking, new GraphLayoutConnection(net));  // initialize Petrinet
				net_value = net.getTransitions().toString().replace("[", "").replace("]", "").toString().replace(" ", "").split(",");
				/*if(iterationPatterns < patterns.length) {//Cambia
					System.out.println("Esiste patterns: "+ patterns[iterationPatterns]);
					InputStream input1 = new FileInputStream(new File(patterns[iterationPatterns]));
					Pnml pnml1 = ut.importPnmlFromStream(input1);
					Petrinet net1 = PetrinetFactory.newPetrinet(pnml1.getLabel());
					Marking marking1 = new Marking();
					pnml1.convertToNet(net1, marking1, new GraphLayoutConnection(net1));  // initialize Petrinet
					String[] netFormatted = net.getTransitions().toString().replace("[", "").replace("]", "").toString().replace(" ", "").split(",");
					String[] net1Formatted = net1.getTransitions().toString().replace("[", "").replace("]", "").toString().replace(" ", "").split(",");
					for(int j = 0; j<netFormatted.length;j++ ) {
						for(int x = 0;x<net1Formatted.length;x++) {
							System.out.println("NetFormatted: " + netFormatted[j] + " NetFormatted1: " + net1Formatted[x]  );
							if(net1Formatted[x].toString().replace(" ", "").equals(netFormatted[j].toString().replace(" ", ""))) {
								sharedEvent = net1Formatted[x].toString().replace(" ", "");
								sharedDic.put(net1Formatted[x].toString().replace(" ", ""), 0);
								System.out.println("sharedDic: " + sharedDic);
								sharedFlag = true;
							}
						}
						
						
					}
					iterationPatterns++;
				}*///Cambia
				//System.out.println("net contain: "+net.getTransitions().toString().indexOf("f", 0));//Se ti da qualcosa diverso da -1 vuol dire che il carattere ci sta
				//System.out.println("net trans: "+net.getTransitions());
				Collection<Place> places = net.getPlaces();
				Collection<Transition> transitions = net.getTransitions();
				
				//System.out.println("Number of places: "+places.size());
				//System.out.println("Number of transitions: "+transitions.size());
				
				//System.out.println("######################################");
				
				//System.out.println("Iteration #"+iteration);
				
				getTraces(log);
				
				//System.out.println("######################################");
				
				
				Constants.setAllTransitionsVector(new Vector<PetrinetTransition>());
				Constants.setAllPlacesVector(new Vector<String>());
				Constants.setPlacesInInitialMarkingVector(new Vector<String>());
				Constants.setPlacesInFinalMarkingVector(new Vector<String>());
				
				//Feed the vector of places with the places imported from the Petri Net.
				//Determine which places compose the initial and final markings.
				for (Place place : places) {
					String placeName = place.getLabel();
					placeName = Utilities.getCorrectFormatting(placeName);//Only for clean the string
		
					Constants.getAllPlacesVector().addElement(placeName.toLowerCase());//Ci metto tutti i places della net
		
					Collection<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> placeOutEdgesCollection = net.getOutEdges(place);							
					Collection<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> placeInEdgesCollection = net.getInEdges(place);
					//If that helps to find the first and the last place where the mark could be
					if(placeInEdgesCollection.isEmpty())
						Constants.getPlacesInInitialMarkingVector().addElement(placeName);
		
					if(placeOutEdgesCollection.isEmpty())
						Constants.getPlacesInFinalMarkingVector().addElement(placeName);
				}
				
				int generatedTransitionsNum = 0;
				//We save and take the trans(IN and OUT) from the petriNet
				for (Transition transition : transitions) {
					//System.out.println(transition.getLabel());//Print the label of the current event
		
					//To get OUTGOING edges from a transition
					Collection<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> transitionOutEdgesCollection = net.getOutEdges(transition);
		
					//To get INGOING edges to a transition
					Collection<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> transitionInEdgesCollection = net.getInEdges(transition);
		
		
					Vector<Place> transitionOutPlacesVector = new Vector<Place>();
					Vector<Place> transitionInPlacesVector = new Vector<Place>();
					Iterator<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> transitionInEdgesIterator = transitionInEdgesCollection.iterator();
					Iterator<PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode>> transitionOutEdgesIterator = transitionOutEdgesCollection.iterator();
		
		
					while(transitionInEdgesIterator.hasNext()) {
						//System.out.println("transitionInEdgesIterator: "+transition.getLabel());
						PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode> edge = transitionInEdgesIterator.next();//place before the trans 
						//System.out.println("transitionInEdgesIterator.Next(): "+edge.getSource());
						transitionInPlacesVector.addElement((Place) edge.getSource());
					}
					
					
					while(transitionOutEdgesIterator.hasNext()) {
						//System.out.println("transitionOutEdgesIterator: "+transition.getLabel());
						PetrinetEdge<? extends PetrinetNode, ? extends PetrinetNode> edge = transitionOutEdgesIterator.next();//place after the trans
						//System.out.println("transitionOutEdgesIterator.Next(): "+edge.getTarget());
						transitionOutPlacesVector.addElement((Place) edge.getTarget());										
					}
		
					String activityName = transition.getLabel();
		
					if(activityName.isEmpty() || activityName.equalsIgnoreCase("") || activityName.equalsIgnoreCase(" ") || activityName.equalsIgnoreCase("\"")) {
						activityName = new String(INVISIBLE_TRANSITION_PREFIX + generatedTransitionsNum);
						generatedTransitionsNum++;
					}
		
					activityName = Utilities.getCorrectFormatting(activityName);//clean the string
					//We create a class of petrinetTrans where we save all the trans founded...PetrinetTransition here we have all the IN/OUT trans of the net
					PetrinetTransition petriNetTransition = new PetrinetTransition(activityName.toLowerCase(), transitionInPlacesVector, transitionOutPlacesVector);
					Constants.getAllTransitionsVector().addElement(petriNetTransition);
					
				}
				
				//
				// Check if a transition with a specific label appears multiple times in a Petri Net		
				// If so, create a specific alias for the transition 
				//
				for(int ixc=0;ixc<Constants.getAllTransitionsVector().size();ixc++)  {
					//System.out.println("TransChoose: "+Constants.getAllTransitionsVector().elementAt(ixc).getName());
					PetrinetTransition pnt = Constants.getAllTransitionsVector().elementAt(ixc);
					int occurrences = 0;
					
					//Boolean variable that - if holds - indicates that a transition appears multiple times in the Petri Net under analysis
					if(!pnt.isMultiple()) {
		
						for(int j=ixc+1;j<Constants.getAllTransitionsVector().size();j++)  {
		
							PetrinetTransition pnt2 = Constants.getAllTransitionsVector().elementAt(j);
		
							if(pnt2.getName().equalsIgnoreCase(pnt.getName())) {
								if(!pnt.isMultiple()) {
									pnt.setMultiple(true);
									pnt.setAlias(pnt.getName() + "0");
								}
								occurrences ++;
								pnt2.setAlias(pnt.getName() + occurrences);
								pnt2.setMultiple(true);
							}
		
						}
					}
				}
				
				////////////////////////////////////////////////////////////////
				// RESET the alphabet perspective view
				
				Constants.setLogActivitiesRepositoryVector(new Vector<String>());
				
				// RESET the trace perspective view
		
				//Constants.setAllTracesVector(new Vector<Trace>());
				
				// RESET the Petri Nets perspective view
		
				//Constants.setAllPlacesVector(new Vector<String>());
				//Constants.setAllTransitionsVector(new Vector<PetrinetTransition>());
				
				////////////////////////////////////////////////////////////////
				
				
		
				// Vector used to record the complete alphabet of activities used in the log
				Vector<String> logAlphabetVector = new Vector<String>();
		
				// Vector used to record the activities of a specific trace of the log
				Vector<String> traceActivitiesVector = new Vector<String>();
		
				//int sumOfTracesLength=0;
				
				int traceId = 0;
				
				for(XTrace trace:log){
		
					traceId++;
		
					//String traceName = XConceptExtension.instance().extractName(trace);
					//System.out.println("Trace Name : " + trace.get(1).getAttributes()); //in trace we have all the events of the log, the log is cut each cycle 
		
					Trace t = new Trace("Trace#" + traceId);
		
					t.setTraceAlphabet(new Vector<String>());
		
					
					traceActivitiesVector = new Vector<String>();
		
					for(XEvent event : trace){//Here we take one event from the trace(all events of the log saved)
						//System.out.println("Event Name : "+event.getAttributes()); 
						String activityName = XConceptExtension.instance().extractName(event).toLowerCase();
						activityName = Utilities.getCorrectFormatting(activityName);
						//System.out.println("activityName: "+activityName);
						traceActivitiesVector.addElement(activityName);
		
						if(!t.getTraceAlphabet().contains(activityName))
							//System.out.println("Entra dentro GEt trace");
							t.getTraceAlphabet().addElement(activityName);
		
						// add activity name to log alphabet (if not already present)
						if(!logAlphabetVector.contains(activityName))
							logAlphabetVector.addElement(activityName);
		
					}
		
						
					/*for(int ixc=0;ixc<traceActivitiesVector.size();ixc++)  {
						System.out.println("traceActivitiesVector(): "+traceActivitiesVector.elementAt(ixc));
					}
					System.out.println("PAUSAAA ");*/
					// Update the single trace of the log
					for(int j=0;j<traceActivitiesVector.size();j++) {//take one event at time
						String string = (String) traceActivitiesVector.elementAt(j);
						//System.out.println("j : "+j);//Si gira tutti gli event del log input
						//System.out.println("TraceActVector : "+string+" Trace size: "+traceActivitiesVector.size());
						t.getTraceContentVector().addElement(string);
						
		
						t.getTraceTextualContent().append(string);
						//System.out.println("T: "+t.getTraceTextualContent().toString());
						if(j<traceActivitiesVector.size()-1)
							t.getTraceTextualContent().append(",");
					}
					//System.out.println("Uscito");
					Constants.getAllTracesVector().addElement(t);
					/////////////////////////////////////////////////////////////
		
				}
		
				//Update the GUI component with the loaded LOG
				
				Constants.setLogActivitiesRepositoryVector(logAlphabetVector);//Dentro avremo tutte le tipologie degli eventi presi in ordine ex: acbd
				/*for(int ixc=0;ixc<logAlphabetVector.size();ixc++)  {
					System.out.println("logAlphabetVector(): "+logAlphabetVector.elementAt(ixc));
				}*/
				for(int i=0;i<Constants.getLogActivitiesRepositoryVector().size();i++) {
					//System.out.println("i= "+i);//pari al numero di diversi eventi nel log
					String string = (String) Constants.getLogActivitiesRepositoryVector().elementAt(i);
					//System.out.println("String: "+string);//Print all the event inside the logAlphabetVector
					Constants.getAllActivitiesVector().addElement(string);//inizializzato qui per la prima volta
		
					Vector<String> v = new Vector<String>();
					v.addElement(string);
					v.addElement("1");//no move in the model
					v.addElement("1");//no move in the log
					
					Constants.getActivitiesCostVector().addElement(v);
		
				}
				//System.out.println("logTrans "+Constants.getLogActivitiesRepositoryVector().size());//
				for(int i=0;i<Constants.getAllTransitionsVector().size();i++) {//Check all the transition saved in order to understand if there are activity in the log not in the petri
					PetrinetTransition ith_trans = Constants.getAllTransitionsVector().elementAt(i);
					//System.out.println("i: "+i);
					//System.out.println("ith_trans: "+ith_trans.getName()+" "+(String)Constants.getLogActivitiesRepositoryVector().elementAt(i));
					if(!Constants.getLogActivitiesRepositoryVector().contains(ith_trans.getName())) {//Entra se una trans della net non è contenuta come azione nel log 
						//System.out.println("Entrato "+ith_trans.getName());
						Constants.getAllActivitiesVector().addElement(ith_trans.getName());
		
						Vector<String> v = new Vector<String>();
						v.addElement(ith_trans.getName());
		
		
						if(ith_trans.getName().startsWith("generatedinv")) {
							v.addElement("0");
							v.addElement("0");
						}
						else {
							v.addElement("1");
							v.addElement("1");
						}
		
						Constants.getActivitiesCostVector().addElement(v);
		
					}
				}		    	
				/*for(int ixc=0;ixc<Constants.getAllActivitiesVector().size();ixc++)  {
					System.out.println("getAllActivitiesVector(): "+Constants.getAllActivitiesVector().elementAt(ixc));
				}
				System.out.println("PAUSAAA ");*/
				for(int kind=0;kind<Constants.getAllPlacesVector().size();kind++) {
		
					String place_name = Constants.getAllPlacesVector().elementAt(kind);
					
					Vector<String> v = new Vector<String>();
					v.addElement(place_name);
		
					if(Constants.getPlacesInInitialMarkingVector().contains(place_name)) {
						//System.out.println("Place_Name Init "+place_name);
						v.addElement("1");
					}
					else v.addElement("0");
		
					if(Constants.getPlacesInFinalMarkingVector().contains(place_name)) {
						//System.out.println("Place_Name Final "+place_name);
						v.addElement("1");
					}
					else v.addElement("0");
		
					Constants.getPetriNetMarkingVector().addElement(v);
					
				}
				
				/**
				 * Computazione dell'allineamento
				 */
				
				File plansFoundDir = new File(PLANS_FOUND_DIR);
				File pddlFilesDir = new File(PDDL_FILES_DIR);
				
				Utilities.deleteFolderContents(plansFoundDir);//Commentato ma non sono sicuro
				Utilities.deleteFolderContents(pddlFilesDir);
				
				
				
				for(Trace trace: Constants.getAllTracesVector()){//Ogni volta dentro questo vettore ci sta una "t" in piu ogni ith se ne aggiunge una diversa con un numero di eventi minore
					//Ovviamente ogni "t" successiva abbiamo un vector string piu corto
					//System.out.println("Trace og getAllTraces: "+trace.getTraceContentVector());//dentro trace ho praticamente ogni dato che mi serve
					StringBuffer sb_domain = Utilities.createPropositionalDomain(trace);
					StringBuffer sb_problem = Utilities.createPropositionalProblem(trace);
					
					Utilities.writeFile(PDDL_FILES_DIR+"domain1.pddl", sb_domain);
					Utilities.writeFile(PDDL_FILES_DIR+"problem1.pddl", sb_problem);	
				}
				
				
				
				Planner p = new Planner();
				p.runThePlanner("domain1.pddl","problem1.pddl");//al secondo pattern sbrocca il Planner
				
				/*if(iteration==1) {
					File alignmentFile = new File(PLANS_FOUND_DIR+"alignment_1");
					BufferedReader alignmentFileReader = new BufferedReader(new FileReader(alignmentFile));
					String alignmentFileLine;
					while ((alignmentFileLine = alignmentFileReader.readLine()) != null) {
						System.out.println("alignmentFileLine102: "+alignmentFileLine);
					}
				}*/
				
				moveSynchs  = extractMoveSynch();
				moveSynchsCopy = new ArrayList<>();
				
				if(moveSynchs.size()!=0) {//riga 9 pseudo
					tId++;
					Trace t = new Trace("Trace#" + tId);
					t.setTraceAlphabet(new Vector<String>());
					
					for(String move : moveSynchs) {
						//System.out.println("move: "+move);
						moveSynchsCopy.add(move);
						//if(!t.getTraceAlphabet().contains(move))
						t.getTraceAlphabet().addElement(move);
					}
				//System.out.println("t.getTraceAlphabet() dopo moveSynchs:  " + t.getTraceAlphabet());
					//aggiungi la traccia in una lista traces of movesynchs
					//System.out.println(t.getTraceName()+" "+t.getTraceNumber()+" "+t.getTraceAlphabet().get(0)+" "+t.getTraceAlphabet().get(1));
					tracesPerPattern.get(pattern).add(t);
				}
				
				if(moveSynchsCopy.size()> maxSynchMovesPerPattern.get(pattern).size()) {
					//Se SynchCopy ha una stringa piu lunga allora devi sostituire il valore del pattern:
					//maxSynchMovesPerPattern nel mezzo prima {C:\Users\matte\Desktop\Università\Tesi\seg\XORCase3ASharedAFG.pnml=[]}
					//to ->
					//maxSynchMovesPerPattern nel mezzo dopo {C:\Users\matte\Desktop\Università\Tesi\seg\XORCase3ASharedAFG.pnml=[a, f, g]}
					//System.out.println("maxSynchMovesPerPattern nel mezzo prima " + maxSynchMovesPerPattern);
					maxSynchMovesPerPattern.put(pattern, moveSynchsCopy);
					//System.out.println("maxSynchMovesPerPattern nel mezzo dopo " + maxSynchMovesPerPattern);
				}
				
				//System.out.println(t.getTraceName()+" "+t.getTraceNumber()+" "+t.getTraceAlphabet().get(0)+" "+t.getTraceAlphabet().get(1));
				//occhio che all'ultima run crasha perchÃ¨ il trace alignment non trova niente quindi l'ultima traccia sarÃ  vuota
				
				//System.out.println("######################################");
				
				log = filterLog(log,moveSynchs);
						
				//getTraces(log);
				//System.out.println("######################################");
		
				indexes = new LinkedList<Integer>();
				iteration++;	
			}while(moveSynchsCopy.size()!=0);
		
		//input.close();
		Constants.setLogActivitiesRepositoryVector(new Vector<String>());
		Constants.setAllTracesVector(new Vector<Trace>());
		Constants.setActivitiesCostVector(new Vector<Vector<String>>());
		Constants.setPetriNetMarkingVector(new Vector<Vector<String>>());
		Constants.setAllTransitionsVector(new Vector<PetrinetTransition>());
		Constants.setAllPlacesVector(new Vector<String>());
		Constants.setPlacesInInitialMarkingVector(new Vector<String>());
		Constants.setPlacesInFinalMarkingVector(new Vector<String>());
		Constants.setAllActivitiesVector(new Vector<String>());
		
		
		
		
		}
		/**
		 * Creazione del routine based log
		 */
		//---------------------------------------------------------------//
		XFactory factory = XFactoryRegistry.instance().currentDefault();
		XLog newLog = factory.createLog();
		//---------------------------------------------------------------//
		int tid = 1;
		for(String pattern : tracesPerPattern.keySet()) {
			List<Trace> traces = tracesPerPattern.get(pattern);
			newLog.clear();
			for(Trace t : traces) {
				//System.out.println("Trace_Name: "+t.getTraceName());
				//l'ultima traccia non avrÃ  eventi poichÃ¨ il trace alignment non trova niente (1Â° condizione)
				//e devo prendere tutte le tracce che non contengono noise (2Â° condizione)
				//System.out.println("t.getTraceAlphabet() creazione log:  " + t.getTraceAlphabet());
				if(t.getTraceAlphabet().size() != 0 && t.getTraceAlphabet().size() == maxSynchMovesPerPattern.get(pattern).size() ) {
					//System.out.println("maxSynchMovesPerPattern creo out " + maxSynchMovesPerPattern.get(pattern));//Estrapola gli event dentro il pattern salvato in MaxSynch
					XTrace trace = factory.createTrace();
					XConceptExtension.instance().assignName(trace, "id"+tid);
					for(String ev : t.getTraceAlphabet()) {
						//System.out.println("ev : t.getTraceAlphabet(): "+t.getTraceAlphabet());//Dentro abbiamo gli event della net
						XEvent event = factory.createEvent();
						XConceptExtension.instance().assignName(event, ev);
						Timestamp tm = Utilities.getCurrentTimestamp();
						XLifecycleExtension.instance().assignTransition(event, "complete");
						XTimeExtension.instance().assignTimestamp(event, tm.getTime());
						trace.add(event);
					}
					newLog.add(trace);
					tid++;
				}
				else {
					String str = "";
					for(String ev : t.getTraceAlphabet()) {
						str += ev+" ";
					}
					//System.out.println("scarto: "+str);
				}
			}
			//---------------------------------------------------------------//
			//creaXES
			double end = System.currentTimeMillis();
			System.out.println( "totalAlignmentTime "+ ((end-start) / 1000));
			File file_for_log = new File("segmented_logs/" + input_print+"_" + Utilities.getCurrentTimestamp().getTime()+".xes");
			Utilities.createXESFile(newLog,file_for_log);
		}
		
		
		
		

	}
	

	
	private static XLog SharedLog(XLog log) {
		List<XEvent> toRemove = new ArrayList<XEvent>();
		String eventFormatted;
		//System.out.println("NewLog#################");
		for(XTrace trace:log) {
			for(XEvent event : trace) {
				eventFormatted = XConceptExtension.instance().extractName(event).toLowerCase();
				//System.out.println("Entrato event:trace");
				//System.out.print("Event Formatted: "+eventFormatted + " net_value: " + net_value[0]);
				/*for(int n = 0;n<net_value.length;n++) {
					if(net_value[n].contentEquals(eventFormatted) && sharedDic.containsKey(eventFormatted) == false ) {
						//System.out.println("EventDelete: "+ eventFormatted);
						toRemove.add(event);
					}
				}*/
				
				if(sharedDic.containsKey(eventFormatted) && sharedDic.get(eventFormatted) > 0) {
					//System.out.println("Entrato if prima .put");
					sharedDic.put(eventFormatted, sharedDic.get(eventFormatted)-1);
					//System.out.println("Entrato if dopo .put");
					toRemove.add(event);
					//trace.remove(event);
				}
				
			}
		}
		for(XTrace trace:log) {
			for(XEvent event : toRemove) {//Qui rimuovi le shared dal log originale
				//System.out.println("RemoveLastIndex: "+XConceptExtension.instance().extractName(event).toLowerCase());
				trace.remove(event);
			}
		}
		//System.out.println("");
		for(XTrace trace:log) {
			for(XEvent event : trace) {
				eventFormatted = XConceptExtension.instance().extractName(event).toLowerCase();
				//System.out.print(eventFormatted);
			}
		}
		//System.out.println("");
		//System.out.println("NewLog#################");
		sharedFlag = false;
		return log;
		
	}
	private static XLog filterLog(XLog log, List<String> moveSynchs) {//Dentro moveSynchs ci sono tutte le moveSynch dell iterazione corrente
		List<XEvent> toRemove = new ArrayList<XEvent>();
		
		int i = 0;
		for(XTrace trace:log){
			//Cambia
			/*System.out.println("SharedDic.keys"+sharedDic.keySet());
			if(moveSynchs.size() == 1 && sharedDic.containsKey(moveSynchs.get(0))) {//Controllo se è un synch di un event shared
				sharedDic.put(moveSynchs.get(0), sharedDic.get(moveSynchs.get(0))+1);
				System.out.println("sharedDicCicle: "+ sharedDic);
			}*///Cambia
			
			for(XEvent event : trace){
				//System.out.println("++++++++++++++++++++++++++++++");
				//System.out.println("event: "+event.getAttributes());//Scorre gli events della trace finche non incontra un evento di quelli dentro la net(rispettando l ordine)
				String activityName = XConceptExtension.instance().extractName(event).toLowerCase();
				String activityNameFormatted = Utilities.getCorrectFormatting(activityName);
				//System.out.println("Movesynch"+moveSynchs.get(i)); //moveSynch_nomeAttivita
				if(moveSynchs.contains(activityNameFormatted) && indexes.contains(i)) {
					//System.out.println("Synchronous move -> "+activityName);
					moveSynchs.remove(activityNameFormatted);
					toRemove.add(event);
				}
				i++;
			}
		}
		
		for(XTrace trace:log) {
			for(XEvent event : toRemove) {//Qui rimuovi le synchmoves dal log originale
				//System.out.println("Remove: " + trace.set(trace.lastIndexOf(trace.getAttributes().get("concept:name").equals("a")), newEvent.setAttributes(event)));
				trace.remove(event);
			}
		}
		
		return log;
		
	}

	private static void getTraces(XLog log) throws IOException{		

    	//System.out.println("UI log:");
		for (XTrace trace : log) {
			trace.forEach(activity -> {
			    //System.out.print(activity.getAttributes().get("concept:name").toString());
			});

		}

    }
	
	
	private static List<String> extractMoveSynch() throws IOException {
		List<String> moveSynchs = new ArrayList<String>();
		
		File alignmentFile = new File(PLANS_FOUND_DIR+"alignment_1");
		
		String traceAlignmentCost = new String();  
		String traceAlignmentTime = new String();  
	
		// parse alignment file
		BufferedReader alignmentFileReader = new BufferedReader(new FileReader(alignmentFile));
		/*String stampa;
		while ((stampa = alignmentFileReader.readLine()) != null) {
			System.out.println("Stampa: "+stampa);
		}*///Qui fa la while e poi esce e crea il file di out
		String alignmentFileLine;
		Vector<String> pddlAlignmentMovesVector = new Vector<String>();
		int i = 0;
		
		//System.out.println("Trace Alignment:");
		
		while ((alignmentFileLine = alignmentFileReader.readLine()) != null) {
			//System.out.println("alignmentFileLine: "+alignmentFileLine);
			if(alignmentFileLine.startsWith(COST_ENTRY_PREFIX)) {
				//System.out.println("Entro in COST_ENTRY_PREF");
				Matcher matcher = decimalNumberRegexPattern.matcher(alignmentFileLine);
				matcher.find();
				traceAlignmentCost = matcher.group();
			}
			else if(alignmentFileLine.startsWith(SEARCH_TIME_ENTRY_PREFIX))  {
				//System.out.println("Entro in SEARCH_TIME");
				Matcher matcher = decimalNumberRegexPattern.matcher(alignmentFileLine);
				matcher.find();
				traceAlignmentTime = matcher.group();
			}
			else {
				pddlAlignmentMovesVector.addElement(alignmentFileLine);
			}
		}
		alignmentFileReader.close();
		
		int k = 0;
		for(String alignmentMove : pddlAlignmentMovesVector) {

			if(alignmentMove.startsWith("(movesync#")) {

				alignmentMove = alignmentMove.replace("(movesync#", "");
				alignmentMove = alignmentMove.substring(0, alignmentMove.lastIndexOf("#"));

				
				//System.out.print(alignmentMove+" "+k+" ");
				
				moveSynchs.add(alignmentMove);
				indexes.add(i);
				i++;
				k++;

			}
			else if(alignmentMove.startsWith("(moveinthemodel#")) {
				
				alignmentMove = alignmentMove.replace("(moveinthemodel#", "");
				alignmentMove = alignmentMove.substring(0,alignmentMove.lastIndexOf(" )"));

				//System.out.print(alignmentMove+" [cost " + Utilities.getCostOfActivity(alignmentMove, "move_in_the_model") + "] "+k+" ");
				k++;
			}
			else if(alignmentMove.startsWith("(moveinthelog#")) {
				
				alignmentMove = alignmentMove.replace("(moveinthelog#", "");
				alignmentMove = alignmentMove.substring(0,alignmentMove.indexOf("#"));
				i++;



				
				//System.out.print(alignmentMove+" [cost " + Utilities.getCostOfActivity(alignmentMove, "move_in_the_log") + "] "+k+" ");
				k++;
			}
		}
		
		// update total counters
		
		if(indexes.size()!=0) {
			totalAlignmentCost += Float.parseFloat(traceAlignmentCost);
			totalAlignmentTime += Float.parseFloat(traceAlignmentTime);
			
		}
		
		
		
		return moveSynchs;
	}
	
	

}
