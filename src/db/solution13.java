package db;

public class solution13 {
	public int func_a(int month, int day) {
		int monthList[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		int total = 0;
		for(int i = 0 ; i < month -1 ; i++) {
			total += monthList[i];
		}
		total += day;
		return total -1;
	}
	public int solution(int startMonth, int startDay, int endMonth, int endDay) {
		int startTotal = func_a(startMonth, startDay);
		int endTotal = func_a(endMonth, endDay);
		return endTotal - startTotal;
		
	}
	public static void main(String[] args) {
		solution13 sol = new solution13();
		int ret = sol.solution(4, 26, 12, 3);
		System.out.println("Solution: " + (ret + 1 ));
		
	}

}
