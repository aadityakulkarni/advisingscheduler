/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uta.cse6329;

import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Aaditya
 */
public class CheckWeek {
    public static boolean checkWeekandYear(Date date1, Date date2) {
    if (null == date1 || null == date2) {
        return false;
    }

    Calendar firstDate = Calendar.getInstance();
    Calendar lastDate = Calendar.getInstance();

    if (date1.before(date2)) {
        firstDate.setTime(date1);
        lastDate.setTime(date2);
    } else {
        firstDate.setTime(date2);
        lastDate.setTime(date1);
    }
    if (checkYear(date1, date2)) {
        int week1 = firstDate.get(Calendar.WEEK_OF_YEAR);
        int week2 = lastDate.get(Calendar.WEEK_OF_YEAR);
        if (week1 == week2) {
            return true;
        }
    } else {
        int dayOfWeek = firstDate.get(Calendar.DAY_OF_WEEK); 
        firstDate.add(Calendar.DATE, 7 - dayOfWeek);
        if (checkYear(firstDate.getTime(), lastDate.getTime())) {
            int week1 = firstDate.get(Calendar.WEEK_OF_YEAR);
            int week2 = lastDate.get(Calendar.WEEK_OF_YEAR);
            if (week1 == week2) {
                return true;
            }
        }
    }
    return false;
}

public static boolean checkYear(Date date1, Date date2) {
    if (null == date1 || null == date2) {
        return false;
    }
    Calendar firstYear = Calendar.getInstance();
    firstYear.setTime(date1);
    int year1 = firstYear.get(Calendar.YEAR);
    Calendar secondYear = Calendar.getInstance();
    secondYear.setTime(date2);
    int year2 = secondYear.get(Calendar.YEAR);
    if (year1 == year2)
        return true;

    return false;
}
}
