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
    override func viewDidLoad() {
        super.viewDidLoad()
        // NSUserDefaultsを呼び込む
        if let text1 = UserDefaults.standard.string(forKey: "text1") {
            self.taxTextField.text = text1
        }
    }

    @IBAction func calculateButton(_ sender: Any) {
        // 入力
        let num1 = Int(moneyTextField.text ?? "") ?? 0
        let num2 = Int(taxTextField.text ?? "") ?? 0
        // 計算
        let amount = num1 + num1 * num2/100
        // 表示
        countLabel.text = "\(amount)"
        // NSUserDefaulsに保存
        UserDefaults.standard.set(self.taxTextField.text, forKey: "text1")
    }
}
