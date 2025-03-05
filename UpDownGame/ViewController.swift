//
//  ViewController.swift
//  UpDownGame
//
//  Created by InTak Han on 2/27/25.
//

import UIKit

class ViewController: UIViewController {
    //스토리 보드 요소와 연결할때 쓰는 어노테이션
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"),for: UIControl.State.normal)
        //움직이는 슬라이더에 이미지 생성
        reset()
    }
    //동작에 반응하는 액션
    @IBAction func sliderValueChanged(_ sender: UISlider){//슬라이더를 음직일떄 마다 값이 출력됨(실시간 반영)
        print(sender.value)
        let integerValue: Int = Int(sender.value)
        sliderValueLabel.text = String(integerValue)
    }
    
    func showAlert(message: String){
        let alert = UIAlertController(title: nil , message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.reset()
        }
        alert.addAction(okAction)
        present(alert, animated: true,completion: nil)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){//버튼을 누를때 마다 출력됨
        print(slider.value)
        let hitValue: Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount = tryCount + 1
        tryCountLabel.text = "\(tryCount) / 5"
        
        if randomValue == hitValue {
            //print("YOU HIT!!")
            showAlert(message: "YOU HIT!!")
            reset()
        }else if tryCount >= 5 {
            //print("You lose")
            showAlert(message: "You lose...")
            reset()
        }else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLabel.text = "\(hitValue)"
        } else {
            slider.maximumValue = Float(hitValue)
            maximumValueLabel.text = "\(hitValue)"
        }
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){ //리셋 버튼을 누를때 발생하는 이벤트 들
        print("touch up reset button")
        reset()
    } //이름을 바꿀땐 그냥 바꾸는 것이 아니라 이름에다가(오른쪽 클릭 후)Refactor -> rename으로 들어가서 바꿀 수 있게 한다
    
    func reset(){
        print("reset")
        randomValue = Int.random(in: 0...30)
        //범위 연산자 a...b까지 a..<b 로 표기되면 a부터 b직전까지(b값은 포함 안됨)
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}

//주석(Comments) - 프로그래밍을 하면서 코드에 대한 내용을 메모하는 목적으로 사용
// 소스코드를 더 쉽게 이해할 수 있게 도와준다
// 코드가 동작 될 때에는 무시되는 문장이다 - 코드에 영향을 주지 않음
// 너무 많으면 지저분 할수 있으니 유의
