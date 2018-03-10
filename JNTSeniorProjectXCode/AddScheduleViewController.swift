//
//  JNTSeniorProjectXCode
//
//  Copyright © 2018 Tom, Jack, and Natalie. All rights reserved.
//

import UIKit

class AddScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
   
    
    //A HUGE thank you to user Matt Le Fleur on Stackoverflow for the extensive walkthrough on adding a UITableView
    //https://stackoverflow.com/questions/33234180/uitableview-example-for-swift
    
    
    // Array for the days of the week.
    let days: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    // Original comment- cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"

    
    // Extra code added to the default viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Original comment- Register the table view cell class and its reuse id
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    // Default Methods for table views.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.days.count
    }
    
    //Original comment- create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Original comment- create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the array
        cell.textLabel?.text = self.days[indexPath.row]
        
        return cell
    }
    
    // Runs when a cell is pressed.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var TitleTextField: UITextField!
    @IBOutlet weak var StartingDate: UIButton!
    @IBOutlet weak var StartEndTime: UIButton!
    @IBOutlet weak var EndDateSwitch: UISwitch!
    @IBOutlet weak var EndDateButton: UIButton!
    
    
    @IBOutlet weak var FrequencyButton: UIButton!
    
    
    
   
}


