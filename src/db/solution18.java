package db;

public class solution18 {

	boolean solution(String sentence) {
		String str = "";
		for(int i = 0; i < sentence.length(); i++) {
			char c = sentence.charAt(i);


			if(c != ' ' && c != '.') {
			
				str += c;
			}
		}
		int len = str.length();
		for(int i = 0; i <len /2; i++) {
			if(str.charAt(i) != str.charAt(len -1 - i)) {
				return false;
			}
		}
		return true;
	}
	public static void main(String[] args) {
		solution18 sol = new solution18();
		String sentence1 = "never odd or even.";
		boolean ret1 = sol.solution(sentence1);

		System.out.println(sentence1 + "is" + ret1);


		String sentence2 = "palindrome";
		boolean ret2 = sol.solution(sentence2);


		System.out.println(sentence2 + "is" + ret2);

	}

}
