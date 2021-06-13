//
//  TitleDetailPresenter.swift
//  VIP
//
//  Created by Carlos Kimura on 13/06/21.
//

import Foundation

protocol TItleDetailPresenter: AnyObject {
    func interactor(didRetrieveTitle title: Title)
    func interactor(didFailRetrieveTitle error: Error)
}

class TitleDetailPresenterImplementation: TItleDetailPresenter {
    
    var viewController: TitleDetailPresenterOutput?
    
    func interactor(didRetrieveTitle title: Title) {
        let titleString = title.text
        viewController?.presenter(didRetrieveItem: titleString ?? "")
    }
    
    func interactor(didFailRetrieveTitle error: Error) {
        viewController?.presenter(didFailRetrieveItem: error.localizedDescription)
    }
}
