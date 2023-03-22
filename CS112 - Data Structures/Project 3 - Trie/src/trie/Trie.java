package trie;

import java.util.ArrayList;

/**
 * This class implements a Trie. 
 * 
 * @author Sesh Venugopal
 *
 */
public class Trie {
	
	// prevent instantiation
	private Trie() { }
	
	/**
	 * Builds a trie by inserting all words in the input array, one at a time,
	 * in sequence FROM FIRST TO LAST. (The sequence is IMPORTANT!)
	 * The words in the input array are all lower case.
	 * 
	 * @param allWords Input array of words (lowercase) to be inserted.
	 * @return Root of trie with all words inserted from the input array
	 */
	public static TrieNode buildTrie(String[] allWords) {
		TrieNode top = new TrieNode(null,null,null);
		
		if (allWords.length == 0) {
			return top;
		}
		
		top.firstChild = new TrieNode(new Indexes(0,(short)(0), (short)(allWords[0].length() - 1)), null, null);
		TrieNode first = top.firstChild;
		TrieNode pointer = top.firstChild;
		int sameIndex = -1;
		int topIndex = -1;
		int listIndex = -1;
		int firstIndex = -1;
		
		for (int i = 1; i < allWords.length; i++) {
			String word = allWords[i];
			
			while (pointer != null) {
				firstIndex = pointer.substr.endIndex;
				topIndex = pointer.substr.startIndex;
				listIndex = pointer.substr.wordIndex;
				int x = 0;
				while (x < allWords[listIndex].substring(topIndex, firstIndex + 1).length() && x < word.substring(topIndex).length() && allWords[listIndex].substring(topIndex, firstIndex + 1).charAt(x) == word.substring(topIndex).charAt(x)) { 
					x++;
				}
				sameIndex = (x - 1);
				if (topIndex > word.length()) {
					first = pointer;
					pointer = pointer.sibling;
					continue;
				}
				if (sameIndex != -1) {
					sameIndex += topIndex;
				}
				if (sameIndex == -1) { 
					first = pointer;
					pointer = pointer.sibling;
				}
				else {
					if (sameIndex < firstIndex) { 
						first = pointer;
						break;
					}
					else if (sameIndex == firstIndex) { 
						first = pointer;
						pointer = pointer.firstChild;
					}
				}
			}
			
			if (pointer == null) {
				Indexes indices = new Indexes(i, (short)topIndex, (short)(word.length() - 1));
				first.sibling = new TrieNode(indices, null, null);
			} 
			else {
				TrieNode currentFirstChild = first.firstChild; 				
				Indexes currentIndices = first.substr; 
				Indexes newIndicesForCurrentWord = new Indexes(currentIndices.wordIndex, (short)(sameIndex + 1), currentIndices.endIndex);
				currentIndices.endIndex = (short)sameIndex; 
				first.firstChild = new TrieNode(newIndicesForCurrentWord, null, null);
				first.firstChild.firstChild = currentFirstChild;
				first.firstChild.sibling = new TrieNode(new Indexes((short)(i), (short)(sameIndex + 1), (short)(word.length() - 1)), null, null);
			}
			
			sameIndex = topIndex;
			topIndex = firstIndex;
			firstIndex = listIndex;
			listIndex = -1;
			first = top.firstChild;
			pointer = first;
		}
		
		return top;
	}
	
	
	/**
	 * Given a trie, returns the "completion list" for a prefix, i.e. all the leaf nodes in the 
	 * trie whose words start with this prefix. 
	 * For instance, if the trie had the words "bear", "bull", "stock", and "bell",
	 * the completion list for prefix "b" would be the leaf nodes that hold "bear", "bull", and "bell"; 
	 * for prefix "be", the completion would be the leaf nodes that hold "bear" and "bell", 
	 * and for prefix "bell", completion would be the leaf node that holds "bell". 
	 * (The last example shows that an input prefix can be an entire word.) 
	 * The order of returned leaf nodes DOES NOT MATTER. So, for prefix "be",
	 * the returned list of leaf nodes can be either hold [bear,bell] or [bell,bear].
	 *
	 * @param root Root of Trie that stores all words to search on for completion lists
	 * @param allWords Array of words that have been inserted into the trie
	 * @param prefix Prefix to be completed with words in trie
	 * @return List of all leaf nodes in trie that hold words that start with the prefix, 
	 * 			order of leaf nodes does not matter.
	 *         If there is no word in the tree that has this prefix, null is returned.
	 */
	public static ArrayList<TrieNode> completionList(TrieNode root, String[] allWords, String prefix) {
		
		if (root == null) {
			return null;
		}
		
		ArrayList<TrieNode> leafNodes = new ArrayList<>();
		TrieNode pointer = root;
		
		while (pointer != null) {
			if (pointer.substr == null) { 
				pointer = pointer.firstChild;
			}
			String remainder = allWords[pointer.substr.wordIndex];
			String prefixPart = remainder.substring(0, pointer.substr.endIndex + 1);
			if (remainder.startsWith(prefix) || prefix.startsWith(prefixPart)) {
				if (pointer.firstChild != null) { 
					leafNodes.addAll(completionList(pointer.firstChild, allWords, prefix));
					pointer = pointer.sibling;
				}
				else { 
					leafNodes.add(pointer);
					pointer = pointer.sibling;
				}
			}
			else {
				pointer = pointer.sibling;
			}
		}
		
		return leafNodes;
	}
	
	
	public static void print(TrieNode root, String[] allWords) {
		System.out.println("\nTRIE\n");
		print(root, 1, allWords);
	}
	
	
	private static void print(TrieNode root, int indent, String[] words) {
		if (root == null) {
			return;
		}
		for (int i=0; i < indent-1; i++) {
			System.out.print("    ");
		}
		
		if (root.substr != null) {
			String pre = words[root.substr.wordIndex]
							.substring(0, root.substr.endIndex+1);
			System.out.println("      " + pre);
		}
		
		for (int i=0; i < indent-1; i++) {
			System.out.print("    ");
		}
		System.out.print(" ---");
		if (root.substr == null) {
			System.out.println("root");
		} else {
			System.out.println(root.substr);
		}
		
		for (TrieNode ptr=root.firstChild; ptr != null; ptr=ptr.sibling) {
			for (int i=0; i < indent-1; i++) {
				System.out.print("    ");
			}
			System.out.println("     |");
			print(ptr, indent+1, words);
		}
	}
 }