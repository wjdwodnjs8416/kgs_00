package db;

//다음과 같이 import를 사용할 수 있습니다.
import java.util.*;

public class solution604 {
 public int solution(String[][] cards) {
     // 여기에 코드를 작성해주세요.
     int answer = 0;
     for(int i = 0; i<cards.length; i++) {
    	 for(int j = 0; j<cards[i].length; j++) {
    		 int gwonsu = Integer.parseInt(cards[0][1]);
    		 int gwonsu1 = Integer.parseInt(cards[1][1]);
    		 int gwonsu2 = Integer.parseInt(cards[2][1]);
    		 int gwonsu3 = gwonsu+gwonsu1+gwonsu2;
    		 if(cards[0][0].equals(cards[1][0])&&cards[1][0].equals(cards[2][0])) {
    			 answer = gwonsu3*3;
    			 
    		 }else if (cards[0][0].equals(cards[1][0]) || cards[1][0].equals(cards[2][0])|| cards[0][0].equals(cards[2][0])) {
    			 answer = gwonsu3*2;
    		 }else 
    			 answer = gwonsu3;
    		 
    	 }
     }
     return answer;
 }

 // 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
 public static void main(String[] args) {
	 solution604 sol = new solution604();
     String[][] cards1 = {{new String("blue"), new String("2")}, {new String("red"), new String("5")}, {new String("black"), new String("3")}};
     int ret1 = sol.solution(cards1);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + ret1 + " 입니다.");

     String[][] cards2 = {{new String("blue"), new String("2")}, {new String("blue"), new String("5")}, {new String("black"), new String("3")}};
     int ret2 = sol.solution(cards2);

     // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
     System.out.println("solution 메소드의 반환 값은 " + ret2 + " 입니다.");
 }
}