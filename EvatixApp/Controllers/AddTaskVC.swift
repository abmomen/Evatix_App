//
//  AddTaskVC.swift
//  EvatixApp
//
//  Created by ShareTrip iOS on 7/2/21.
//

import UIKit

class AddTaskVC: UIViewController {
    private let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension AddTaskVC: StoryboardBased {
    static var storyboardName: String {
        return "Main"
    }
}
