package db;

class solution501 {
    public int solution(int[][] ladders, int win) {
        int answer = 0;
        
        int[] player = { 1, 2, 3, 4, 5, 6 };
        
        for(int i = 0; i < ladders.length; i++) {
            int temp = player[ladders[i][0]-1];
            player[ladders[i][0]-1] = player[ladders[i][0]];
            player[ladders[i][0]] = temp;
        }
        
        answer = player[win-1];
        
        return answer;
    }
    
    // 아래는 테스트케이스 출력을 해보기 위한 main 메소드입니다.
    public static void main(String[] args) {
    	solution501 sol = new solution501();
        int[][] ladders = {{1, 2}, {3, 4}, {2, 3}, {4, 5}, {5, 6}};
        int win = 3;
        int ret = sol.solution(ladders, win);
        
        // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
        System.out.println("solution 메소드의 반환 값은 " + ret + " 입니다.");
    }
}
