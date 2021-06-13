//
//  TitleDetailInteractor.swift
//  VIP
//
//  Created by Carlos Kimura on 13/06/21.
//

import Foundation

protocol TitleDetailInteractor: AnyObject {
    var titleId: String? { get }
    func viewDidLoad()
}

class TitleDetailInteractorImplementation: TitleDetailInteractor {
    
    var titleId: String?
    var presenter: TItleDetailPresenter?
    
    private let titlesService = TitlesServiceImplementation()
    
    func viewDidLoad() {
        do {
            if let title = try titlesService.getTitle(with: self.titleId!) {
                presenter?.interactor(didRetrieveTitle: title)
            }
        } catch {
            presenter?.interactor(didFailRetrieveTitle: error)
        }
    }
}
