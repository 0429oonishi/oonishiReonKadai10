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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with prefectureName: String) {
        prefectureNameLabel.text = prefectureName
        prefecutreNumberLabel.text = String(tag) + "番目"
        backgroundColor = backgroundColors[tag % backgroundColors.count]
    }
    
}
