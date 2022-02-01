//
//  ViewController.swift
//  Sunny
//
//  Created by Андрей Бучевский on 31.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.presentSearchAlertConroller(withTitle: "Enter city name", message: nil, style: .alert)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString =
        "https://api.openweathermap.org/data/2.5/weather?q=London&apikey=5b683b1b0acc488d1d164f35aa9227ce"
        let url = URL(string: urlString)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        task.resume()
    }


}

