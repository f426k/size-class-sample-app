//
//  ViewController.swift
//  sizeClassSampleApp
//
//  Created by Fuka Takashima on 2024/09/02.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        Logger.standard.debug("loadView: \(self.isCompactRegular())")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.standard.debug("viewDidLoad: \(self.isCompactRegular())")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Logger.standard.debug("viewWillAppear: \(self.isCompactRegular())")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Logger.standard.debug("viewDidAppear: \(self.isCompactRegular())")
    }

    private func isCompactRegular() -> Bool {
        switch (traitCollection.horizontalSizeClass, traitCollection.verticalSizeClass) {
        case (.compact, .regular):
            return false
        default:
            return true
        }
    }

}

