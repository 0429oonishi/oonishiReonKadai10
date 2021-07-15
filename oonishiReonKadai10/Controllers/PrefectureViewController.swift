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
    
    private let prefectureNames: Observable<[String]> = Prefecture.name
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupBindings()
        
    }
    
    private func setupTableView() {
        tableView.register(PrefectureTableViewCell.nib,
                           forCellReuseIdentifier: PrefectureTableViewCell.identifier)
        tableView.tableFooterView = UIView()
    }
    
    private func setupBindings() {
        // データソースを使う
        prefectureNames.bind(
            to: tableView.rx.items(cellIdentifier: PrefectureTableViewCell.identifier,
                                   cellType: PrefectureTableViewCell.self)
        ) { row, element, cell in
            cell.tag = row + 1
            cell.configure(with: element)
        }
        .disposed(by: disposeBag)
    }
    
}
