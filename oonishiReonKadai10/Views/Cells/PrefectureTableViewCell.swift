//
//  PrefectureTableViewCell.swift
//  oonishiReonKadai10
//
//  Created by 大西玲音 on 2021/07/15.
//

import UIKit

final class PrefectureTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var prefectureNameLabel: UILabel!
    @IBOutlet private weak var prefecutreNumberLabel: UILabel!
    
    static var identifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }
    private let backgroundColors: [UIColor] = [.systemRed, .systemGreen, .systemBlue]
    
    func configure(prefectureName: String, index: Int) {
        prefectureNameLabel.text = prefectureName
        prefecutreNumberLabel.text = String(index) + "番目の都道府県です"
        backgroundColor = backgroundColors[index % backgroundColors.count]
    }
    
}
