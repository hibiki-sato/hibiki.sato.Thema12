//
//  ViewController.swift
//  Thema12
//
//  Created by 佐藤響 on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var moneyTextField: UITextField!
    @IBOutlet private weak var taxTextField: UITextField!
    @IBOutlet private weak var countLabel: UILabel!

    enum UserDefaultsKey {
        static let tax = "tax"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        taxTextField.text = String(
            UserDefaults.standard.integer(forKey: UserDefaultsKey.tax)
        )
    }

    @IBAction func calculateButton(_ sender: Any) {
        // 入力
        let money = Int(moneyTextField.text ?? "") ?? 0
        let tax = Int(taxTextField.text ?? "") ?? 0
        // 計算
        let amount = money + money * tax / 100
        // 表示
        countLabel.text = "\(amount)"
        // NSUserDefaulsに保存
        UserDefaults.standard.set(tax, forKey: UserDefaultsKey.tax)
    }
}
