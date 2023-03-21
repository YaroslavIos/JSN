//
//  ViewController.swift
//  JSN
//
//  Created by Ярослав Любиченко on 21.3.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let postal = "https://viacep.com.br/ws/01001000/json/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCode()
    }
}

// MARK: - Networking
extension MainViewController {
    private func fetchCode() {
        guard let url = URL(string: postal) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }

            let decoder = JSONDecoder()

            do {
                let code = try decoder.decode(PostalCode.self, from: data)
                print(code)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
