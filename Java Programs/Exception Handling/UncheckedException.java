import java.util.*;

import javax.sound.sampled.SourceDataLine;

class UncheckedException {

	public int getInput() {
		Scanner input = new Scanner(System.in);
		int index = input.nextInt();
		if (index < 0) {
			throw new IllegalArgumentException();
		}
		return index;
	}
	
	public static void main(String[] args) {
    
		System.out.println("First Statement");
		int numbers[] = new int[]{1,2,3};
		UncheckedException obj = new UncheckedException();

		try {
			int index = obj.getInput();
			System.out.println(numbers[index]);
		} catch(IllegalArgumentException exp) {
			System.out.println("Exception Occured");
			System.out.println(exp.getLocalizedMessage());
			System.out.println(exp.toString());
		} finally {	
			System.out.println("Program Ended");
		}
	}
}