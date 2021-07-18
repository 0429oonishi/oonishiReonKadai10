//
//  PrefectureViewController.swift
//  oonishiReonKadai10
//
//  Created by 大西玲音 on 2021/07/15.
//

import UIKit
import RxSwift
import RxCocoa

final class PrefectureViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let viewModel: PrefectureViewModelType = PrefectureViewModel()
    private let disposeBag = DisposeBag()
    private var prefectureNames: [String] {
        viewModel.outputs.prefectureNames
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }
    
    private func setupTableView() {
        tableView.register(PrefectureTableViewCell.nib,
                           forCellReuseIdentifier: PrefectureTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
}

extension PrefectureViewController: UITableViewDelegate {
    
}

extension PrefectureViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return prefectureNames.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: PrefectureTableViewCell.identifier
        ) as! PrefectureTableViewCell
        let prefectureName = prefectureNames[indexPath.row]
        cell.configure(prefectureName: prefectureName, index: indexPath.row)
        return cell
    }
    
    
}
