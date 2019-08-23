//
//  CalendarioViewController.swift
//  AlzheimerProject
//
//  Created by Guilherme Martins Dalosto de Oliveira on 20/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import FSCalendar

let screenSize = UIScreen.main.bounds

<<<<<<< HEAD
    override func viewDidLoad(){
=======
class CalendarioViewController: UIViewController {
    
    fileprivate lazy var dateFormatter : DateFormatter =  {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    fileprivate weak var calendar: FSCalendar!
    @IBOutlet weak var tableView: UITableView!
    
    var tarefas = ["levar pra passear", "escovar os dentes"]
    var dates = [String]()
    var days = [Days]()
    var events = [Events]()
    
    
    var selectedDay : Date? {
        didSet{
            
            tarefas.removeAll()
            
            for day in days{
                if selectedDay == day.day{
                tarefas = [day.event[0].title]
                }
            }
            reloadAll()
            
        }
    }
    
   
    
    
    override func viewDidLoad() {
>>>>>>> calendarSample
        super.viewDidLoad()
        createCalendar()
    }
<<<<<<< HEAD
  
=======
    
    @IBAction func createTask(_ sender: UIButton) {
        if let date = calendar!.selectedDate{
            let stringDate = toString(date)
            dates.append(stringDate)
            calendar(calendar, numberOfEventsFor: date)
            
            
            let day = Days(dayParameter: date)
            let event = Events(titleParameter: "dar banho")
            days.append(day)
            day.event.append(event)
            events.append(event)
            tarefas.append(event.title)
            
            reloadAll()
            
        }
    }
    
    func reloadAll(){
        calendar.reloadData()
        tableView.reloadData()
    }
    
    
    func toString(_ date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        return dateFormatter.string(from: date)
        
    }
    
 
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        selectedDay = date
    }
    
    
    
    
    func createCalendar(){
        let calendar = FSCalendar(frame: CGRect(x: screenSize.width/8, y: screenSize.height/4, width: 320, height: 300))
        
        calendar.dataSource = self
        calendar.delegate = self
        
        calendar.calendarHeaderView.backgroundColor = UIColor.white
        calendar.calendarWeekdayView.backgroundColor = UIColor.gray
        calendar.appearance.borderRadius = 1
        calendar.appearance.todayColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.6)
        calendar.appearance.eventDefaultColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        view.addSubview(calendar)
        self.calendar = calendar
    }
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        let dateString = self.dateFormatter.string(from: date)
        
        if self.dates.contains(dateString) {
            print(dateString)
            return 1
        }
        
        return 0
        
    }
>>>>>>> calendarSample

    
}

extension CalendarioViewController : FSCalendarDataSource{
    
}

extension CalendarioViewController : FSCalendarDelegate {
    
    
}

extension CalendarioViewController : UITableViewDataSource , UITableViewDelegate{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCalendar", for: indexPath) as! CellCalendar
        
        cell.titulo.text = tarefas[indexPath.row]
        
        return cell;
    }
    
    
    
    
    
    
}
