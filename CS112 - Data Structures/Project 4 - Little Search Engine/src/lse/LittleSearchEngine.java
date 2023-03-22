package lse;

import java.io.*;
import java.util.*;

/**
 * This class builds an index of keywords. Each keyword maps to a set of pages in
 * which it occurs, with frequency of occurrence in each page.
 *
 */
public class LittleSearchEngine {
	
	/**
	 * This is a hash table of all keywords. The key is the actual keyword, and the associated value is
	 * an array list of all occurrences of the keyword in documents. The array list is maintained in 
	 * DESCENDING order of frequencies.
	 */
	HashMap<String,ArrayList<Occurrence>> keywordsIndex;
	
	/**
	 * The hash set of all noise words.
	 */
	HashSet<String> noiseWords;
	
	/**
	 * Creates the keyWordsIndex and noiseWords hash tables.
	 */
	public LittleSearchEngine() {
		keywordsIndex = new HashMap<String,ArrayList<Occurrence>>(1000,2.0f);
		noiseWords = new HashSet<String>(100,2.0f);
	}
	
	/**
	 * Scans a document, and loads all keywords found into a hash table of keyword occurrences
	 * in the document. Uses the getKeyWord method to separate keywords from other words.
	 * 
	 * @param docFile Name of the document file to be scanned and loaded
	 * @return Hash table of keywords in the given document, each associated with an Occurrence object
	 * @throws FileNotFoundException If the document file is not found on disk
	 */
	public HashMap<String,Occurrence> loadKeywordsFromDocument(String docFile) 
	throws FileNotFoundException {
		if (docFile == null) {
			throw new FileNotFoundException("No document to scan was found.");
		}
		HashMap<String, Occurrence> mapOfKeywords = new HashMap<String, Occurrence>();
		Scanner read = new Scanner(new File(docFile));
		while (read.hasNext()) {
			String keyword = getKeyword(read.next());
			if (keyword != null) {
				if(mapOfKeywords.containsKey(keyword)) {
					Occurrence front = mapOfKeywords.get(keyword); 
					front.frequency++;	
				}
				else {
					Occurrence sequence = new Occurrence(docFile,1);
					mapOfKeywords.put(keyword, sequence);
				}
			}
		}
		return mapOfKeywords;
	}
	
	/**
	 * Merges the keywords for a single document into the master keywordsIndex
	 * hash table. For each keyword, its Occurrence in the current document
	 * must be inserted in the correct place (according to descending order of
	 * frequency) in the same keyword's Occurrence list in the master hash table. 
	 * This is done by calling the insertLastOccurrence method.
	 * 
	 * @param kws Keywords hash table for a document
	 */
	public void mergeKeywords(HashMap<String,Occurrence> kws) {
		for (String keyword: kws.keySet()) {
			ArrayList<Occurrence> portion = new ArrayList<Occurrence>();
			if(keywordsIndex.containsKey(keyword)) {
				portion = keywordsIndex.get(keyword);
			}
			portion.add(kws.get(keyword));
			insertLastOccurrence(portion);
			keywordsIndex.put(keyword, portion);
		}
	}
	
	/**
	 * Given a word, returns it as a keyword if it passes the keyword test,
	 * otherwise returns null. A keyword is any word that, after being stripped of any
	 * trailing punctuation(s), consists only of alphabetic letters, and is not
	 * a noise word. All words are treated in a case-INsensitive manner.
	 * 
	 * Punctuation characters are the following: '.', ',', '?', ':', ';' and '!'
	 * NO OTHER CHARACTER SHOULD COUNT AS PUNCTUATION
	 * 
	 * If a word has multiple trailing punctuation characters, they must all be stripped
	 * So "word!!" will become "word", and "word?!?!" will also become "word"
	 * 
	 * See assignment description for examples
	 * 
	 * @param word Candidate word
	 * @return Keyword (word without trailing punctuation, LOWER CASE)
	 */
	public String getKeyword(String word) {
		if (word == null || word.equals(null)) {
			return null;
		}
		word = word.toLowerCase();
		if (helper1(word)) {
			return null;
		}
		word = helper2(word);
		if (noiseWords.contains(word)) {
			return null;
		}
		if (word.length() <= 0) {
			return null;
		}
		return word;
	}
	
	/**
	 * Inserts the last occurrence in the parameter list in the correct position in the
	 * list, based on ordering occurrences on descending frequencies. The elements
	 * 0..n-2 in the list are already in the correct order. Insertion is done by
	 * first finding the correct spot using binary search, then inserting at that spot.
	 * 
	 * @param occs List of Occurrences
	 * @return Sequence of mid point indexes in the input list checked by the binary search process,
	 *         null if the size of the input list is 1. This returned array list is only used to test
	 *         your code - it is not used elsewhere in the program.
	 */
	public ArrayList<Integer> insertLastOccurrence(ArrayList<Occurrence> occs) {
		if (occs.size() == 1) {
			return null;
		}
		ArrayList<Integer> center = new ArrayList<Integer>(); 
		Occurrence temp = occs.get(occs.size() - 1);
		occs.remove(occs.size() - 1);
		int hi = 0; 
		int lo = occs.size() - 1;
		int mid = 0;
		int centerFrequency;
		while (hi <= lo) {
			mid = (hi + lo) / 2;
			centerFrequency = occs.get(mid).frequency;
			if (centerFrequency == temp.frequency) {
				center.add(mid);
				break;
			}
			if (centerFrequency < temp.frequency) {
				lo = mid - 1;
				center.add(mid);
			}
			if (centerFrequency > temp.frequency) {
				hi = mid + 1;
				center.add(mid);
				mid++;
			}
		}
		occs.add(mid, temp);
		return center;
	}
	
	/**
	 * This method indexes all keywords found in all the input documents. When this
	 * method is done, the keywordsIndex hash table will be filled with all keywords,
	 * each of which is associated with an array list of Occurrence objects, arranged
	 * in decreasing frequencies of occurrence.
	 * 
	 * @param docsFile Name of file that has a list of all the document file names, one name per line
	 * @param noiseWordsFile Name of file that has a list of noise words, one noise word per line
	 * @throws FileNotFoundException If there is a problem locating any of the input files on disk
	 */
	public void makeIndex(String docsFile, String noiseWordsFile) 
	throws FileNotFoundException {
		// load noise words to hash table
		Scanner sc = new Scanner(new File(noiseWordsFile));
		while (sc.hasNext()) {
			String word = sc.next();
			noiseWords.add(word);
		}
		
		// index all keywords
		sc = new Scanner(new File(docsFile));
		while (sc.hasNext()) {
			String docFile = sc.next();
			HashMap<String,Occurrence> kws = loadKeywordsFromDocument(docFile);
			mergeKeywords(kws);
		}
		sc.close();
	}
	
	/**
	 * Search result for "kw1 or kw2". A document is in the result set if kw1 or kw2 occurs in that
	 * document. Result set is arranged in descending order of document frequencies. 
	 * 
	 * Note that a matching document will only appear once in the result. 
	 * 
	 * Ties in frequency values are broken in favor of the first keyword. 
	 * That is, if kw1 is in doc1 with frequency f1, and kw2 is in doc2 also with the same 
	 * frequency f1, then doc1 will take precedence over doc2 in the result. 
	 * 
	 * The result set is limited to 5 entries. If there are no matches at all, result is null.
	 * 
	 * See assignment description for examples
	 * 
	 * @param kw1 First keyword
	 * @param kw1 Second keyword
	 * @return List of documents in which either kw1 or kw2 occurs, arranged in descending order of
	 *         frequencies. The result size is limited to 5 documents. If there are no matches, 
	 *         returns null or empty array list.
	 */
	public ArrayList<String> top5search(String kw1, String kw2) {
		ArrayList<String> result = new ArrayList<String>();
		ArrayList<Occurrence> listOfOccurrences1 = keywordsIndex.get(kw1);
		ArrayList<Occurrence> listOfOccurrences2 = keywordsIndex.get(kw2);
		if(listOfOccurrences1 == null && listOfOccurrences2 == null) {
			return result;
		}
		boolean first = false;
		boolean second = false;
		int kw1Length = 0;
		int kw2Length = 0;
		if (listOfOccurrences1 == null) {
			second = true;
			kw2Length = (keywordsIndex.get(kw2)).size();
		}
		if (listOfOccurrences2 == null) {
			first = true;
			kw1Length=(keywordsIndex.get(kw1)).size();
		}
		if (keywordsIndex.containsKey(kw2) && keywordsIndex.containsKey(kw1)) {
			kw1Length = (keywordsIndex.get(kw1)).size();
			kw2Length = (keywordsIndex.get(kw2)).size();
		}
		int n = 0;
		int a = 0;
		int b = 0;	
		while (first == false && second == false && n < 10) {
				int kw1Frequency = keywordsIndex.get(kw1).get(a).frequency;
				int kw2Frequency = keywordsIndex.get(kw2).get(b).frequency;			
				if (kw1Frequency >= kw2Frequency) {
					result.add(keywordsIndex.get(kw1).get(a).document);
					n++;
					a++;
				}
				if (kw2Frequency > kw1Frequency) {
					result.add(keywordsIndex.get(kw2).get(b).document);
					n++;
					b++;
				}
				if (a == kw1Length) {
					second = true;
				}
				if (b == kw2Length) {
					first = true;
				}
		}
		if (n < 10 && first && a < kw1Length) {
			while(n < 10 && a < kw1Length){
				result.add(keywordsIndex.get(kw1).get(a).document);
				n++;
				a++;
			}
		}
		if (n < 10 && second && b < kw2Length) {
			while(n < 10 && b < kw2Length){
				result.add(keywordsIndex.get(kw2).get(b).document);
				n++;
				b++;
			}
		}
		ArrayList<String> listOfResults = new ArrayList<String>();
		int x = 0;
		while (x < result.size()) {
			if (!listOfResults.contains(result.get(x)) && listOfResults.size() < 5) {
				listOfResults.add(result.get(x));
			}
			x++;
		}
		return listOfResults;
	}
	
	// Filters characters
	private boolean helper1 (String keyword) {
		boolean isLetter = false;
		int x = 0;
		while (x < keyword.length()) {
			char y = keyword.charAt(x);
			if (!(Character.isLetter(y))) {
				isLetter = true;
			}
			if((isLetter) && (Character.isLetter(y))) {
				return true;
			}
			x++;
		}
		return false;
	}
	
	// Takes care of the punctuation 
	private String helper2 (String keyword) {
		int x = 0;
		while (x < keyword.length()) {
			char y = keyword.charAt(x);
			if (!(Character.isLetter(y))) {
				break;
			}
			x++;
		}
		return keyword.substring(0,x);
	}
}