package db;

public class solution19 {

	public String solution(String characters) {
		String result = "";
		result += characters.charAt(0);
		for(int i = 1; i < characters.length(); i++) {
			if(characters.charAt(i-1) != characters.charAt(i))
				result += characters.charAt(i);

		}
		return result;
	}

	public static void main(String[] args) {
		solution19 sol = new solution19();
		String characters = "senteeeenccccccceeee";
		String ret = sol.solution(characters);

		System.out.println(ret);

	}

}
