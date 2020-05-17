package db;

//다음과 같이 import를 사용할 수 있습니다.
import java.util.*;

class solution409 {
	public int solution(int[][] height) {
		// 여기에 코드를 작성해주세요.
		int count = 0;
		for(int i = 0; i<height.length; i++) {
			for(int j = 0; j<height[i].length; j++) {
				int left = i-1;
				int right = i+1;
				int up = j-1;
				int down = j+1;
				boolean warning = true;
				int current = height[i][j];
				if(left>0) {
					int leftVal = height[left][j];
					warning = warning && current < leftVal;
				}if(right<4) {
					int rightVal = height[right][j];
					warning = warning && current < rightVal;
				}if(up>0) {
					int upVal = height[i][up];
					warning = warning && current < upVal;
				}if(down<4) {
					int downVal = height[i][down];
					warning = warning && current < downVal;
				}if(warning) {
					count++;
				}
			}
		}
		return count;
	}

	// 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
	public static void main(String[] args) {
		solution409 sol = new solution409();
		int[][] height = {{3, 6, 2, 8}, {7, 3, 4, 2}, {8, 6, 7, 3}, {5, 3, 2, 9}};
		int ret = sol.solution(height);

		// [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
		System.out.println("solution 메소드의 반환 값은 " + ret + " 입니다.");
	}
}