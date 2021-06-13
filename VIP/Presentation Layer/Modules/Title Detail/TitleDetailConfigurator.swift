//
//  TitleDetailConfigurator.swift
//  VIP
//
//  Created by Carlos Kimura on 13/06/21.
//

import Foundation

class TitleDetailConfigurator {
    
    static func configureModule(titleId: String, viewController: TitleDetailViewController) {
        let view = TitleDetailView()
        let router = TitleDetailRouterImplementation()
        let interactor = TitleDetailInteractorImplementation()
        let presenter = TitleDetailPresenterImplementation()
        
        interactor.titleId = titleId
        
        viewController.titleDetailView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
    }
}
