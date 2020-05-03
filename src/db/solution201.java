package db;

class solution201 {
	final int maxProductNumber = 10;

	public int[] func_a(int[] gloves){
		int[] counter = new int[maxProductNumber + 1];
		for(int i = 0; i < gloves.length; i++)
			counter[gloves[i]] += 1;
			return counter;
	}

	public int solution(int[] leftGloves, int[] rightGloves) {
		int[] leftCounter = func_a(leftGloves);
		int[] rightCounter = func_a(rightGloves);
		int total = 0;
		for(int i = 1; i <= maxProductNumber; i++)
			total += Math.min(leftCounter[i], rightCounter[i]);
		return total;
	}

	// 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
	public static void main(String[] args) {
		solution201 sol = new solution201();
		int[] leftGloves = {3, 5, 2, 4, 1, 2, 3, 4, 3, 3};
		int[] rightGloves = {2, 2, 3, 1, 4, 3, 3, 1, 2};
		int ret = sol.solution(leftGloves, rightGloves);

		// [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
		System.out.println("solution 메소드의 반환 값은 " + ret + " 입니다.");
	}
}