//
//  HomeVC.swift
//  EvatixApp
//
//  Created by Sharetrip-iOS on 06/02/2021.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var numberOfTaskLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var cells = [CellType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
    }
    
    private func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.separatorColor = .clear
        tableView.registerNibCell(TaskCatagoryCell.self)
        tableView.registerNibCell(TaskScheduleCell.self)
        
        addButton.layer.cornerRadius = 8.0
    }
    
    private func setupData() {
        cells.append(.catagory)
        
        let date = Date()
        let calender = Calendar.current
        let hour = calender.component(.hour, from: date)
        for _ in 0..<(24 - hour) {
            cells.append(.schedule)
        }
    }
    
    //MARK: - Button Actions
    @IBAction func addTaskButtonTapped(_ sender: UIButton) {
        
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch cells[indexPath.row] {
        case .header:
            return UITableViewCell()
        case .catagory:
            let cell = tableView.dequeueReusableCell(TaskCatagoryCell.self, for: indexPath) as TaskCatagoryCell
            return cell
        case .schedule:
            let cell = tableView.dequeueReusableCell(TaskScheduleCell.self, for: indexPath) as TaskScheduleCell
            let date = Date()
            let calender = Calendar.current
            let hour = calender.component(.hour, from: date)
            let hourString = "\(hour + indexPath.row)"
            cell.configure(hour: hourString)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch cells[indexPath.row] {
        case .header:
            return 0.0
        case .catagory:
            return UITableView.automaticDimension
        case .schedule:
            return 74.0
        }
    }
}

extension HomeVC {
    enum CellType {
        case header
        case catagory
        case schedule
    }
}

extension HomeVC: StoryboardBased {
    static var storyboardName: String {
        return "Main"
    }
}
