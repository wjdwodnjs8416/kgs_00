package db;

public class solution17 {

	public int solution(int[] scores) {
		int count = 0;
		for(int i = 0; i<scores.length; i++) {
			if(scores[i] >= 650 && scores[i] < 800) {
				count += 1;
			}
		}
		return count;


	}

	public static void main(String[] args) {
		solution17 sol = new solution17();
		int[] scores = {65
				0, 722, 914, 558, 714, 803, 650, 679, 669, 800};
		int ret = sol.solution(scores);

		System.out.println(ret);

	}

}
