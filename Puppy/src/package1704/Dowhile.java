package package1704;
//import java.util.Scanner;

public class Dowhile {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n=1;
		int sum=0;
		do {
		 sum += n;	
		 n++;
		}
		while(n<=10);
		System.out.println("sum tu 1 den 10: " +sum);
	}
}
