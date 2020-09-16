package com.shop.controller;

public class Test {

    public static void main(String[] args) {
        /*for(int i =1;i<5;i++){
            for(int j=0;j<5-i;j++){
                System.out.print(" ");
            }
            for(int j=0;j<i*2-1;j++){
                System.out.print("?");
            }
            System.out.println();
        }
*/

        int[] arr = new int[]{5,26,85,35,2,55,14};
        //正宗的冒泡
        for (int i =0;i<arr.length;i++){
            for (int j = 0;j<arr.length-1;j++){
                if(arr[j]>arr[j+1]){
                    int temp = arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }
        for (int i = 0;i<arr.length;i++){
            System.out.print(arr[i] + " ");
        }




        //System.out.println("5"+2);

        //不太正宗的冒泡
        /*for(int i = 0;i<arr.length;i++){
            for (int j = i+1;j<arr.length;j++){
                if(arr[i]>arr[j]){
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
        for (int i = 0;i<arr.length;i++){
            System.out.print(arr[i] + " ");
        }

        int temp = 0;
        for (int i =0;i<arr.length;i++){
            for (int j = 0;j<arr.length-i-1;j++){
                if(arr[j]<arr[j+1]){
                    temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
        for (int i =0;i<arr.length;i++){
            System.out.print(arr[i]+"\t");
        }
*/



                /*String s;
                System.out.println("s=" + s);*/







    }
}
