//
//  ViewController.swift
//  oonishiReonKadai10
//
//  Created by 大西玲音 on 2021/07/15.
//

import UIKit

final class ViewController: UIViewController {
    
    private let prefectureNames = Prefecture.name
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PrefectureTableViewCell.nib,
                           forCellReuseIdentifier: PrefectureTableViewCell.identifier)
        tableView.tableFooterView = UIView()
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return prefectureNames.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: PrefectureTableViewCell.identifier
        ) as! PrefectureTableViewCell
        let prefecutreName = prefectureNames[indexPath.row]
        cell.tag = indexPath.row + 1
        cell.configure(with: prefecutreName)
        return cell
    }
    
    
}
