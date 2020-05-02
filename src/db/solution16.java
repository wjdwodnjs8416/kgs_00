package db;

public class solution16 {

	public int solution(int number) {
		int count = 0;
		for(int i = 1; i <=number; i++) {
			int current = i;

			while (current != 0) {
				if(current % 10 == 3 || current % 10 == 6 || current % 10 == 9) {
					count++;
					System.out.println("current>>"+current);
				}
				current /= 10;
			}
		}
		return count;
	}

	public static void main(String[] args) {
		solution16 sol = new solution16();
		int number = 140;
		int ret = sol.solution(number);
		System.out.println(ret);

	}

}
