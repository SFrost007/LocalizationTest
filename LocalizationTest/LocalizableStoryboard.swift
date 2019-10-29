//
//  LocalizableStoryboard.swift
//  LocalizationTest
//

// Taken from https://medium.com/@mario.negro.martin/easy-xib-and-storyboard-localization-b2794c69c9db

import UIKit

// MARK:- Localizable and XIBLocalizable protocols
// To lookup strings from the main localization file when encountered in the Storyboard

protocol Localizable {
    var localized: String { get }
}

extension String: Localizable {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

protocol XIBLocalizable {
    var xibLocKey: String? { get set }
}

// MARK:- XIBLocalizable implementations for UIKit controls
// Use of the IBInspectable flag exposes the XibLocKey field in the Storyboard editor

extension UILabel: XIBLocalizable {
    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            text = key?.localized
        }
    }
}

extension UIViewController: XIBLocalizable {
    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            title = key?.localized
        }
    }
}

extension UIButton: XIBLocalizable {
    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            setTitle(key?.localized, for: .normal)
        }
    }
}

extension UINavigationItem: XIBLocalizable {
    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            title = key?.localized
        }
    }
}
