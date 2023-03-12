import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the miniMaxSum function below.
    static void miniMaxSum(int[] arr) {
        //int [] arr= new int[5];
        int smallest=arr[0];
        int highest=arr[0];
        int sum=0;
        for(int j=0;j<5; j++){
            smallest=Math.min(smallest, arr[j]);
            highest=Math.max(highest, arr[j]);
            if(arr[j] > smallest){
                sum=sum + arr[j];
            }
        }
        System.out.println("Min is "+ smallest +  " Max is " + highest + " Sum is " + sum);

    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of array ");
        int n=sc.nextInt();
        int arr[] = new int[n];
        System.out.println("please enter "+n+" elements");
        //int i;
        //String[] string = new String [sc.nextInt()];
        //sc.nextLine();
        //int[] arr = new int[5];
        int sum=0;
        //String[] string = scanner.nextLine().split(" ");
        //scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
        //for (int i = 0; i < 5; i++) {
        for (int i = 0; i < 5; i++) {
            arr[i] = sc.nextInt();
            sum+=arr[i];
            //int arrItem = Integer.parseInt(arrItems[i]);
            //arr[i] = arrItem;
        }
        Arrays.sort(arr);
        int min=arr[4];
        int max=arr[0];
        int minSum = sum-min;
        int maxSum = sum-max;
        System.out.println(minSum+" "+ " " +maxSum);


       // miniMaxSum(arr);

        scanner.close();
    }
}