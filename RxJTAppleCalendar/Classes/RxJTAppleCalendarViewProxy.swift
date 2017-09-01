//
//  RxJTAppleCalendarViewProxy.swift
//  Pods
//
//  Created by Evan Anger on 8/31/17.
//
//

import Foundation
import JTAppleCalendar
import RxSwift
import RxCocoa
import UIKit

public class RxJTAppleCalendarViewDelegateProxy: DelegateProxy, JTAppleCalendarViewDelegate, DelegateProxyType {
    public static func currentDelegateFor(_ object: AnyObject) -> AnyObject? {
        let calendar: JTAppleCalendarView = object as! JTAppleCalendarView
        return calendar.calendarDelegate
    }

    public static func setCurrentDelegate(_ delegate: AnyObject?, toObject object: AnyObject) {
        let calendar: JTAppleCalendarView = object as! JTAppleCalendarView
        calendar.calendarDelegate = delegate as! JTAppleCalendarViewDelegate
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, shouldSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) -> Bool {
        return true
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, shouldDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) -> Bool {
        return true
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        
    }

    public func calendar(_ calendar: JTAppleCalendarView, didDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
        
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        return JTAppleCell()
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, headerViewForDateRange range: (start: Date, end: Date), at indexPath: IndexPath) -> JTAppleCollectionReusableView {
        return JTAppleCollectionReusableView()
    }
    
    public func scrollDidEndDecelerating(for calendar: JTAppleCalendarView) {
        
    }
    
    public func calendarSizeForMonths(_ calendar: JTAppleCalendarView?) -> MonthSize? {
        return nil
    }
    public func sizeOfDecorationView(indexPath: IndexPath) -> CGRect {
        return CGRect.zero
    }
}
