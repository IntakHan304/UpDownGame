//
//  ViewController.swift
//  UpDownGame
//
//  Created by InTak Han on 2/27/25.
//

import UIKit

class ViewController: UIViewController {
    //스토리 보드 요소와 연결할때 쓰는 어노테이션
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"),for: UIControl.State.normal)
        //움직이는 슬라이더에 이미지 생성
    }
    //동작에 반응하는 액션
    @IBAction func sliderValueChanged(_ sender: UISlider){//슬라이더를 음직일떄 마다 값이 출력됨(실시간 반영)
        //print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){//버튼을 누를때 마다 출력됨
        /*
         print(slider.value)
         */
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){ //리셋 버튼을 누를때 발생하는 이벤트 들
        //print("touch up reset button")
    } //이름을 바꿀땐 그냥 바꾸는 것이 아니라 이름에다가(오른쪽 클릭 후)Refactor -> rename으로 들어가서 바꿀 수 있게 한다
}

//주석(Comments) - 프로그래밍을 하면서 코드에 대한 내용을 메모하는 목적으로 사용
// 소스코드를 더 쉽게 이해할 수 있게 도와준다
// 코드가 동작 될 때에는 무시되는 문장이다 - 코드에 영향을 주지 않음
// 너무 많으면 지저분 해 질수 있으니 유의
