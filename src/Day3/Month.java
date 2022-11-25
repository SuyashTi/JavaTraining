package Day3;

import java.util.Scanner;


public enum Month {

    January(1),
    Febraury(2),
    March(3),
    April(4),
    May(5),
    june(6),
    july(7),
    august(8),
    september(9),
    october(10),
    november(11),
    december(12);

    private  int mon;
    private Month(int mon)
    {
        this.mon=mon;
    }




    public static void main(String[] args) {

        System.out.println("Enter the num of corresponding month: ");
        Scanner sc = new Scanner(System.in);
        int num=sc.nextInt();

        for(Month monthName:Month.values())
        {
            if( monthName.mon==num)
            {
                System.out.println(num+"th month of the year is "+monthName);
            }
        }

    }
}

