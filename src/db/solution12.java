package db;

public class solution12 {

	public static void main(String[] args) {
		solution12 sol = new solution12();
		
		int price1 = 2500;
		String grade1 = "V";
		System.out.println(sol.solution(price1, grade1));
		
		int price2 = 96900;
		String grade2 = "S";
		System.out.println(sol.solution(price2, grade2));

	}
	public int solution(int price, String grade) {
		int result=0;
		
		if(grade.equals("S")) {
			result = (int)(price*0.95);
		}else if(grade.equals("G")) {
			result = (int)(price*0.90);
		}else if(grade.equals("V")) {
			result = (int)(price*0.85);
		}
		
		return result;
	}

}
