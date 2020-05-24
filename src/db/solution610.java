package db;

class solution610 {
    public int solution(int weight, int[] boxes) {
        int answer = 0;

        for(int i = 0; i < boxes.length; i++) 
        	if(weight * 11/10 < boxes[i] || weight * 9/10 > boxes[i])
        		answer++;
        
        return answer;
    }
    
    // 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
    public static void main(String[] args) {
    	solution610 sol = new solution610();
        int weight = 600;
        int[] boxes = {653, 670, 633, 640, 660, 730, 490, 700, 570, 580};
        int ret = sol.solution(weight, boxes);
        
        // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
        System.out.println("solution 메소드의 반환 값은 " + ret + " 입니다.");
    }
}