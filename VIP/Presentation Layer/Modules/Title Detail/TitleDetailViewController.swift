//
//  TitleDetailViewController.swift
//  VIP
//
//  Created by Carlos Kimura on 13/06/21.
//

import UIKit

protocol TitleDetailPresenterOutput {
    func presenter(didRetrieveItem item: String)
    func presenter(didFailRetrieveItem message: String)
}

class TitleDetailViewController: UIViewController {
    
    // MARK: - Properties
    var titleDetailView: TitleDetailView?
    var interactor: TitleDetailInteractor?
    weak var presenter: TItleDetailPresenter?
    var router: TitleDetailRouter?
    
    // MARK: - Lifecycle Methods
    override func loadView() {
        super.loadView()
        self.view = titleDetailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactor?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Presenter Output
extension TitleDetailViewController: TitleDetailPresenterOutput {
    func presenter(didRetrieveItem item: String) {
        titleDetailView?.updateLabel(with: item)
    }
    
    func presenter(didFailRetrieveItem message: String) {
        showError(with: message)
    }
}
