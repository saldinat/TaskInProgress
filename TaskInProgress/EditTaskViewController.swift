//
//  EditTaskViewController.swift
//  TaskInProgress
//
//  Created by tomatique on 14/03/2019.
//  Copyright © 2019 tomatique. All rights reserved.
//

import UIKit

class EditTaskViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    // This tutorial helped to implement a picker view https://codewithchris.com/uipickerview-example/
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { //declaring a new Array instance variable to store the list of data
        return 1 //number of columns in your picker element
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count //the number of rows of data in your UIPickerView element
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row] //data for a specific row and specific component
    }
    
    @IBOutlet weak var picker: UIPickerView!
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self //set this ViewController instance as the delegate
        self.picker.dataSource = self //datasource of the Picker View we added to the storyboard
        pickerData = ["Completed", "Not yet started", "In progress"]
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*// Number of columns of data
     func numberOfComponents(in pickerView: UIPickerView) -&gt;
     Int {
     return 1
     }
     
     // The number of rows of data
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -&gt; Int {
     return pickerData.count
     }
     
     // The data to return fopr the row and component (column) that's being passed in
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -&gt; String? {
     return pickerData[row]
     }*/
    
}
