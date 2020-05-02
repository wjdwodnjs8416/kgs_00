package db;

import java.util.Arrays;

public class solution15 {
	
	public int[] solution15(int[] arr) {
		int left = 0;
		int right = arr.length -1;
		
		while(left < right) {
			int temp = arr[left];
			arr[left] = arr[right];
			arr[right] = temp;
			left += 1;
			right -= 1;
		}
		return arr;
	}

	public static void main(String[] args) {
		solution15 sol = new solution15();
		int[] arr = {1, 4, 2, 3, 5, 8};
		int[] ret = sol.solution15(arr);
		
		System.out.println(Arrays.toString(ret));
	}

}
