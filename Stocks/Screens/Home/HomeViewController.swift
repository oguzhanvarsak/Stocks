//
//  HomeViewController.swift
//  Stocks
//
//  Created by Oguzhan Varsak on 20/07/2023.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Watchlists"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.view.backgroundColor = .blue
    }
}
