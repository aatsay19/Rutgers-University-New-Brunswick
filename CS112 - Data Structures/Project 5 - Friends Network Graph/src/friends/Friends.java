package friends;

import java.util.ArrayList;

import structures.Queue;
import structures.Stack;

public class Friends {

	/**
	 * Finds the shortest chain of people from p1 to p2.
	 * Chain is returned as a sequence of names starting with p1,
	 * and ending with p2. Each pair (n1,n2) of consecutive names in
	 * the returned chain is an edge in the graph.
	 * 
	 * @param g Graph for which shortest chain is to be found.
	 * @param p1 Person with whom the chain originates
	 * @param p2 Person at whom the chain terminates
	 * @return The shortest chain from p1 to p2. Null or empty array list if there is no
	 *         path from p1 to p2
	 */
	public static ArrayList<String> shortestChain(Graph g, String p1, String p2) {
		ArrayList<String> list1 = new ArrayList<>();
		if (g == null || p1 == null || p2 == null || p1.length() == 0 || p2.length() == 0) {
  		 	return null;
		}
		p1 = p1.toLowerCase();
		p2 = p2.toLowerCase();
		if (p1.equals(p2)) {
			list1.add(g.members[g.map.get(p1)].name);
			return list1;
		}
		if (g.map.get(p1) == null || g.map.get(p2) == null) {
   			return null;
		}
		Queue<Integer> x = new Queue<>();
		boolean[] arr3 = new boolean[g.members.length];
		int[] arr1 = new int[g.members.length];
		int[] arr2 = new int[g.members.length];
		for (int i = 0; i < arr3.length; i++) {
			arr2[i] = -1;
   			arr3[i] = false;
   			arr1[i] = Integer.MAX_VALUE; 
		}
		int a = g.map.get(p1);
		Person firstPerson = g.members[a];
		arr1[a] = 0; 
		arr3[a] = true;
		x.enqueue(a);
		while (!x.isEmpty()) {
			int b = x.dequeue(); 
			Person secondPerson = g.members[b];
   			for (Friend friendLoop = secondPerson.first; friendLoop != null; friendLoop = friendLoop.next) {
    			int friendNumber = friendLoop.fnum;
			    if (!arr3[friendNumber]) {
			    	arr1[friendNumber] = arr1[b] + 1; 
			    	arr2[friendNumber] = b;
			    	arr3[friendNumber] = true;
			    	x.enqueue(friendNumber); 
   				}
   			}
		}
		Stack<String> stack = new Stack<>();
		int stackInt = g.map.get(p2);
		if (!arr3[stackInt]) {
   			System.out.println("Cannot reach!");
  			return null;
		}
		while (stackInt != -1) {
   			stack.push(g.members[stackInt].name);
   			stackInt = arr2[stackInt];
		}
		while (!stack.isEmpty()) {
   			list1.add(stack.pop());
		}
		return list1;
	}
	
	/**
	 * Finds all cliques of students in a given school.
	 * 
	 * Returns an array list of array lists - each constituent array list contains
	 * the names of all students in a clique.
	 * 
	 * @param g Graph for which cliques are to be found.
	 * @param school Name of school
	 * @return Array list of clique array lists. Null or empty array list if there is no student in the
	 *         given school
	 */
	public static ArrayList<ArrayList<String>> cliques(Graph g, String school) {	
		ArrayList<ArrayList<String>> list = new ArrayList<>();
		if (g == null || school == null || school.length() == 0) {
   			return null;
		}
		school = school.toLowerCase();
		boolean[] arr3 = new boolean[g.members.length];
		for (int i = 0; i < arr3.length; i++) {
  			arr3[i] = false;
		}
		for (Person member : g.members) {
			if (!arr3[g.map.get(member.name)] && member.school != null && member.school.equals(school)) {
			    Queue<Integer> x = new Queue<>();
    			ArrayList<String> studentClique = new ArrayList<>();
			    int int1 = g.map.get(member.name);
    			arr3[int1] = true;
			    x.enqueue(int1);
    			studentClique.add(member.name);
    			while (!x.isEmpty()) {
			    	int a = x.dequeue(); 
     				Person secondPerson = g.members[a];
				    for (Friend friendLoop = secondPerson.first; friendLoop != null; friendLoop = friendLoop.next) {
        				int friendNumber = friendLoop.fnum;
      					Person person = g.members[friendNumber];
        				if (!arr3[friendNumber] && person.school != null && person.school.equals(school)) {
        					arr3[friendNumber] = true;
       						x.enqueue(friendNumber);
       						studentClique.add(g.members[friendNumber].name);
      					}
     				}
    			}
    			list.add(studentClique);
   			}
		}
		return list;
	}
	
	/**
	 * Finds and returns all connectors in the graph.
	 * 
	 * @param g Graph for which connectors needs to be found.
	 * @return Names of all connectors. Null or empty array list if there are no connectors.
	 */
	public static ArrayList<String> connectors(Graph g) {
		boolean[] arr3 = new boolean[g.members.length];
		int[] arr1 = new int[g.members.length];
		int[] arr2 = new int[g.members.length];
		ArrayList<String> list = new ArrayList<>();
		for (Person member : g.members) {
   			if (!arr3[g.map.get(member.name)]) {
    			arr1 = new int[g.members.length];
    			helper1(g.map.get(member.name), g.map.get(member.name), g, arr3, arr1, arr2, list);
   			}
		}
		for (int i = 0; i < list.size(); i++) {
  			Friend friendLoop = g.members[g.map.get(list.get(i))].first;
   			int count = 0;
   			while (friendLoop != null) {
    			friendLoop = friendLoop.next;
    			count++;
   			}
		    if (count == 0 || count == 1) {
    			list.remove(i);
   			}
		}
		for (Person member : g.members) {
   			if ((member.first.next == null && !list.contains(g.members[member.first.fnum].name))) {
    			list.add(g.members[member.first.fnum].name);
   			}
		}
		return list;
	}
	
	private static void helper1(int a, int start, Graph g, boolean[] arr3, int[] arr1, int[] arr2, ArrayList<String> list) {
		Person secondPerson = g.members[a];
		arr3[g.map.get(secondPerson.name)] = true;
		int counter = helper2(arr1) + 1;
		if (arr1[a] == 0 && arr2[a] == 0) {
   			arr1[a] = counter;
   			arr2[a] = arr1[a];
		}
		for (Friend friendLoop = secondPerson.first; friendLoop != null; friendLoop = friendLoop.next) {
		   if (!arr3[friendLoop.fnum]) {

			    helper1(friendLoop.fnum, start, g, arr3, arr1, arr2, list);
    			if (arr1[a] > arr2[friendLoop.fnum]) {
				    arr2[a] = Math.min(arr2[a], arr2[friendLoop.fnum]);
    			} 
    			else {
     				if (Math.abs(arr1[a] - arr2[friendLoop.fnum]) < 1 && Math.abs(arr1[a] - arr1[friendLoop.fnum]) <= 1 && arr2[friendLoop.fnum] == 1 && a == start) {
  				      continue;
     				}
    				if (arr1[a] <= arr2[friendLoop.fnum] && (a != start || arr2[friendLoop.fnum] == 1)) {
      					if (!list.contains(g.members[a].name)) {
       						list.add(g.members[a].name);
      					}
     				}	
   				}
   			} 
   			else {
    			arr2[a] = Math.min(arr2[a], arr1[friendLoop.fnum]);
   			}
		}
		return;
	}
	
	private static int helper2(int[] array) {
		int count = 0;
		for (int i = 0; i < array.length; i++) {
    		if (array[i] != 0) {
    			count++;
   			}
		}
		return count;
	}
}