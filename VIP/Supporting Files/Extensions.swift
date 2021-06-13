//
//  Extensions.swift
//  VIP
//
//  Created by Carlos Kimura on 13/06/21.
//

import UIKit

extension UIViewController {
    func showError(with message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        DispatchQueue.main.async {
            self.present(alert, animated: true)
        }
    }
}
