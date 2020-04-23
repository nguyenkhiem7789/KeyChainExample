//
//  ViewController.swift
//  KeyChainExample
//
//  Created by Nguyen on 4/23/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import KeychainSwift

class ViewController: UIViewController {

    @IBOutlet weak var startTextLabel: UITextField!

    @IBOutlet weak var textFromKeyChain: UILabel!

    let MY_NAME_KEY = "my_name"

    lazy var keychain: KeychainSwift = {
        KeychainSwift()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSaveToKeyChainButton(_ sender: Any) {
        guard let startText = startTextLabel.text, !startText.isEmpty else {
            MessageView.shared.showOnView(message: "Start text không được để trống", theme: .error)
            return
        }
        keychain.set(startText, forKey: MY_NAME_KEY)
        MessageView.shared.showOnView(message: "Đã lưu xuống Keychain", theme: .success)
    }

    @IBAction func clickDeleteFromKeyChainButton(_ sender: Any) {
        keychain.delete(MY_NAME_KEY)
    }

    @IBAction func clickSwitchSynchronizable(_ sender: Any) {
        ///Set synchronizable property to true to enable keychain items synchronization across user's multiple devices. The synchronization will work for users who have the "Keychain" enabled in the iCloud settings on their devices.
        keychain.synchronizable = true
    }

    @IBAction func clickGetFromKeyChainButton(_ sender: Any) {
        let name = keychain.get(MY_NAME_KEY)
        textFromKeyChain.text = name
    }

}

