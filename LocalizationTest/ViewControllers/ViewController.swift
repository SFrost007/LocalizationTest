//
//  ViewController.swift
//  LocalizationTest
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: Any) {
        let alert = UIAlertController(title: NSLocalizedString("alert_title", comment: "_error_"),
                                      message: NSLocalizedString("alert_message", comment: "_message_"),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("alert_button", comment: "_ok_"),
                                      style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

