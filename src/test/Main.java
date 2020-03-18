package test;

import BlankServe.BlankServe;
import BlankServe.imp.BlankServeImp;
import entity.Blank;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        BlankServe blankServe=new BlankServeImp();
        Blank blank=new Blank();

       /*List<Blank>list=blankServe.userName("pzy");
        for (Blank b:list) {
            System.out.println(b.getUserId());
        }*/


    }
}
