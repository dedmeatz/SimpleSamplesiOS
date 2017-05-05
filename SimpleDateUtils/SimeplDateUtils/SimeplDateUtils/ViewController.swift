//
//  ViewController.swift
//  SimeplDateUtils
//
//  Created by Solutions on 2/5/17.
//  Copyright © 2017 Blank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class func getNowStringISO8601() -> String {
        
        let formatter: NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let dateString = formatter.stringFromDate(NSDate())
        
        return dateString;
    }
    
    class func getDateISO8601(dateString:String) -> NSDate {
        
        let formatter: NSDateFormatter = NSDateFormatter()
        formatter.calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierISO8601)!
        formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssxxx"
        
        let dateValue = formatter.dateFromString(dateString)
        
        return dateValue!;
    }
    
    func getTimeStringFromDate(dateValue:NSDate) -> String {
        let cal = NSCalendar.currentCalendar()
        let comps = cal.components([NSCalendarUnit.Hour, .Minute], fromDate: dateValue)
        cal.timeZone = NSTimeZone.systemTimeZone();
        let finalDate = cal.dateFromComponents(comps)!
        
        let formatter: NSDateFormatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        let dateString = formatter.stringFromDate(finalDate)
        return dateString;
    }
    
    class func getTodayMidnight() -> NSDate {
        
        let cal = NSCalendar.currentCalendar()
        let comps = cal.components([NSCalendarUnit.Year, .Month, .Day, .Hour, .Minute, .Second], fromDate: NSDate())
        comps.hour = 0
        comps.minute = 0
        comps.second = 0
        let timeZone = NSTimeZone.systemTimeZone()
        cal.timeZone = timeZone
        let midnightOfToday = cal.dateFromComponents(comps)!
        
        return midnightOfToday
    }
    
    func date(date:NSDate, inBetweenDate beginDate:NSDate, andDate endDate:NSDate) -> Bool {
        if(date.compare(beginDate) == .OrderedAscending) {
            return false;
        }
        if(date.compare(endDate) == .OrderedDescending) {
            return false;
        }
        return true;
    }

}

