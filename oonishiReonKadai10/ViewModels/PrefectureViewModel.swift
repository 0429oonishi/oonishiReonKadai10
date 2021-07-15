//
//  PrefectureViewModel.swift
//  oonishiReonKadai10
//
//  Created by 大西玲音 on 2021/07/16.
//

import Foundation
import RxSwift

protocol PrefectureViewModelInput {
    
}

protocol PrefectureViewModelOutput: AnyObject {
    var prefectureNames: Observable<[String]> { get }
}

protocol PrefectureViewModelType {
    var inputs: PrefectureViewModelInput { get }
    var outputs: PrefectureViewModelOutput { get }
}

final class PrefectureViewModel: PrefectureViewModelInput,
                                 PrefectureViewModelOutput {
    
    let prefectureNames: Observable<[String]> = Prefecture.name
    
}

extension PrefectureViewModel: PrefectureViewModelType {
    
    var inputs: PrefectureViewModelInput {
        return self
    }
    
    var outputs: PrefectureViewModelOutput {
        return self
    }
    
}
