package db;

//다음과 같이 import를 사용할 수 있습니다.
import java.util.*;

class solution603 {
 public int[] solution(int[] people) {
     // 여기에 코드를 작성해주세요.
     int[] answer = new int[4];
     for(int i = 0; i < people.length; i++) {
    	 if(people[i]<95) {
    		 answer[0]++;
    	 }else if(people[i]>=95 && people[i]<100) {
    		 answer[1]++;
    	 }else if(people[i]>=100 && people[i]<105) {
    		 answer[2]++;
    	 }else if(people[i]>105) {
    		 answer[3]++;
    	 }
     }
    	
     return answer;
 }

 // 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
 public static void main(String[] args) {
	 solution603 sol = new solution603();
     int[] people = {97, 102, 93, 100, 107};
     int[] ret = sol.solution(people);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + Arrays.toString(ret) + " 입니다.");
 }
}