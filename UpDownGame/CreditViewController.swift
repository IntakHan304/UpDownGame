//
//  CreditViewController.swift
//  UpDownGame
//
//  Created by InTak Han on 3/6/25.
//

import UIKit

class CreditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpDissmissButton(_ sender: UIButton) {
        dismiss(animated: true,
                completion:nil)
        //present 메서드와 반대되는 메서드 - dismiss는 화면에서 사라지게 해줌
    }

}
