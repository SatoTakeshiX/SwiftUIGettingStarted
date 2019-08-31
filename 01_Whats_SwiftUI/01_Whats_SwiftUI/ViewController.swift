//
//  ViewController.swift
//  01_Whats_SwiftUI
//
//  Created by satoutakeshi on 2019/08/31.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let stringAttributes: [NSAttributedString.Key: Any] = [
            // 文字色
            .foregroundColor: UIColor.blue,
            // フォント
            .font: UIFont.preferredFont(forTextStyle: .body),
            // 背景色
            .backgroundColor: UIColor.yellow,
            // 下線
            .underlineStyle: 1
        ]
        let attributedText = NSAttributedString(string: "UIKit/Label",
                                                  attributes:stringAttributes)
        label.attributedText = attributedText
    }
}
