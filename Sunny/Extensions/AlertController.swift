//
//  AlertController.swift
//  Sunny
//
//  Created by Андрей Бучевский on 01.02.2022.
//

import Foundation
import UIKit

extension ViewController {
    func presentSearchAlertConroller(withTitle title: String?, message: String?, style: UIAlertController.Style) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        ac.addTextField {tf in
            let cities = ["San Francisco", "Moscow", "Viena", "New York", "Stambul"]
            tf.placeholder = cities.randomElement()
        }
        let search = UIAlertAction(title: "Search", style: .default) {action in
            let textField = ac.textFields?.first
            guard let cityName = textField?.text else {return}
            if cityName != "" {
                print("search info for the \(cityName)")
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        ac.addAction(search)
        ac.addAction(cancel)
        present(ac, animated: true, completion: nil)
    }
}
