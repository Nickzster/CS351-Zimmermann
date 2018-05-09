//Nick Zimmermann

package concurrencydemo;

import java.util.concurrent.Semaphore;

class ValuableTerritory
{
    static String flagColor = "";
}

class redTeam implements Runnable
{
    Semaphore sem;
    String color;
    redTeam(Semaphore s, String n)
    {
        this.color = n;
        this.sem = s;
    }
    public void run()
    {
        try { //We need a try block to catch interrupted exceptions.
        //Wait for access.
        sem.acquire();
        //Let's do what we want to do while we have access.
        ValuableTerritory.flagColor = this.color;
        System.out.println(ValuableTerritory.flagColor);
        Thread.sleep(10);
        }
        catch(InterruptedException e)
        {
            System.out.println(e);
        }
        //If all goes well, Release access.
        System.out.println("RED TEAM has lost access to the thread");
        sem.release();
    }
}

class blueTeam implements Runnable
{
    Semaphore sem;
    String color;
    blueTeam(Semaphore s, String n)
    {
        this.color = n;
        this.sem = s;
    }
    public void run()
    {
        try { //We need a try block to catch interrupted exceptions.
        //Wait for access.
        sem.acquire();
        //Let's do what we want to do while we have access.
        ValuableTerritory.flagColor = this.color;
        System.out.println(ValuableTerritory.flagColor);
        Thread.sleep(10);
        }
        catch(InterruptedException e)
        {
            System.out.println(e);
        }
        //If all goes well, Release access.
        System.out.println("BLUE TEAM has lost access to the thread!");
        sem.release();
    }
}

class greenTeam implements Runnable
{
    Semaphore sem;
    String color;
    greenTeam(Semaphore s, String n)
    {
        this.color = n;
        this.sem = s;
    }
    public void run()
    {
        try { //We need a try block to catch interrupted exceptions.
        //Wait for access.
        sem.acquire();
        //Let's do what we want to do while we have access.
        ValuableTerritory.flagColor = this.color;
        System.out.println(ValuableTerritory.flagColor);
        Thread.sleep(10);
        }
        catch(InterruptedException e)
        {
            System.out.println(e);
        }
        //If all goes well, Release access.
        System.out.println("GREEN TEAM has lost access to the thread!");
        sem.release();
    }
}


public class ConcurrencyDemo
{
    public static void main(String[] args) 
    {
        Semaphore sem = new Semaphore(1);
        new Thread (new redTeam(sem, "Red Team now has access to this thread.")).start();
        new Thread (new blueTeam(sem, "Blue Team now has access to this thread.")).start();
        new Thread (new greenTeam(sem, "Green Team now has access to this thread.")).start();
    }
    
}
