package db;

//다음과 같이 import를 사용할 수 있습니다.
import java.util.*;

class solution509 {
 public int[] solution(int[] score) {
     // 여기에 코드를 작성해주세요.
     int[] answer = new int[score.length];
     for(int i = 0; i < score.length; i++) {
    	 for(int j = 0; j < score.length; j++) {
    		 if(score[i]==score[j]) {
    			 continue;
    		 }else if(score[i]<score[j]) {
    			 /*
    			 int rank = 0;
    			 rank ++;
    			 answer[i] +=rank;
    			 */
    			 answer[i] += 1;
    		 }
    	 }
     }
     for (int k=0;k<answer.length;k++) {
    	 answer[k]++;
     }
     return answer;
 }
 // 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
 public static void main(String[] args) {
	 solution509  sol = new solution509 ();
     int[] score1 = {90, 87, 87, 23, 35, 28, 12, 46};
     int[] ret1 = sol.solution(score1);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + Arrays.toString(ret1) + " 입니다.");

     int[] score2 = {10, 20, 20, 30};
     int[] ret2 = sol.solution(score2);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + Arrays.toString(ret2) + " 입니다.");
     int[] score3 = {6,13,58,92,16,34,57,82,66,48,16};
     int[] ret3 = sol.solution(score3);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + Arrays.toString(ret3) + " 입니다.");

 }
}