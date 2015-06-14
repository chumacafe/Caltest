//
//  ViewController.swift
//  caltest
//
//  Created by Hiromi TANIGUCHI on 2015/06/14.
//  Copyright (c) 2015年 Hiromi TANIGUCHI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel:UILabel?
    
    //var button:UIButton?
    
    var imageView:UIImageView?
    
    // 前回入力した数値を覚えておくための変数
    var number:Double = 0.0
    
    // どの四則演算を行うか覚えておくための変数
    var operate:String = ""
    
    let transparent:CGFloat = 0.5
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 画像
        let image = UIImage(named: "bubble")
        
        // 画像を表示させるビュー
        imageView = UIImageView(image: image)
        
        // ビューを画面に追加
        self.view.addSubview(imageView!)
        
        let buttonx = makeButtonForImage(60, y: 30)
        let buttony = makeButtonForImage(190, y: 30)
        let buttonz = makeButtonForImage(310, y: 30)
        self.view.addSubview(buttonx)
        self.view.addSubview(buttony)
        self.view.addSubview(buttonz)
        
        //表示されるテキスト
        buttonx.setTitle("Sea1", forState: .Normal)
        buttony.setTitle("Sea2", forState: .Normal)
        buttonz.setTitle("Sea3", forState: .Normal)
        
        let button1 = makeButtonToAddView("AC",x:46.8,y:248)
        let button2 = makeButtonToAddView("+/-",x:140.6,y:248)
        let button3 = makeButtonToAddView("%",x:234.4,y:248)
        let button4 = makeButtonToAddView("7",x:46.8,y:343)
        let button5 = makeButtonToAddView("8",x:140.6,y:343)
        let button6 = makeButtonToAddView("9",x:234.4,y:343)
        let button7 = makeButtonToAddView("4",x:46.8,y:438)
        let button8 = makeButtonToAddView("5",x:140.6,y:438)
        let button9 = makeButtonToAddView("6",x:234.4,y:438)
        let button10 = makeButtonToAddView("1",x:46.8,y:533)
        let button11 = makeButtonToAddView("2",x:140.6,y:533)
        let button12 = makeButtonToAddView("3",x:234.4,y:533)
        let button13 = makeButtonToAddView(".",x:234.4,y:628)
        let button14 = makeButtonToAddView("÷",x:328.4,y:248)
        let button15 = makeButtonToAddView("×",x:328.4,y:343)
        let button16 = makeButtonToAddView("-",x:328.4,y:438)
        let button17 = makeButtonToAddView("+",x:328.4,y:533)
        let button18 = makeButtonToAddView("=",x:328.4,y:628)
        let button19 = makeButtonToAddView("0",x:94,y:628)
    
        //let button20 = makeButtonForImage(328.4,y:628)
        //self.view.addSubview(button20)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(button10)
        self.view.addSubview(button11)
        self.view.addSubview(button12)
        self.view.addSubview(button13)
        self.view.addSubview(button14)
        self.view.addSubview(button15)
        self.view.addSubview(button16)
        self.view.addSubview(button17)
        self.view.addSubview(button18)
        self.view.addSubview(button19)
        
        
        //self.view.backgroundColor = UIColor.blackColor()
        
        
        //背景色 変更
        button14.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button15.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button16.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button17.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button18.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button1.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button2.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        button3.backgroundColor = UIColor(red: 100/255, green: 146/255, blue: 255/255, alpha: transparent)
        
        
        //0ボタンのサイズ
        button19.frame = CGRectMake(0, 580, 188, 95)
        
        //テキストの色 変更
        button4.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button8.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button12.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button16.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button19.setTitleColor(UIColor.whiteColor(), forState: .Normal)
       
        // Labelを作成.
        myLabel = UILabel(frame: CGRectMake(0,0,374,202))
        
        // 背景をグレー色にする.
        myLabel?.backgroundColor = UIColor.clearColor() //UIColor(red: 124/255, green: 120/255, blue: 120/255, alpha: 1.0)
        
        // 枠を丸くする.
        myLabel?.layer.masksToBounds = false
        
        // コーナーの半径.
        myLabel?.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        myLabel?.text = ""
        
        myLabel?.font = UIFont(name: "Optima-ExtraBlack", size: 40)
        
        // 文字の色を白にする.
        myLabel?.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel?.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel?.textAlignment = NSTextAlignment.Right
        
        // 配置する座標を設定する.
        myLabel?.layer.position = CGPoint(x: self.view.bounds.width/2,y: 101)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel!)
    }
    
    func makeButtonToAddView(title:String, x:CGFloat, y:CGFloat) -> UIButton {
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //フォントの変更
        button.titleLabel?.font = UIFont(name: "Optima-ExtraBlack", size: 40)
        
        //タップした状態のテキスト
        button.setTitle(title, forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //表示される画像
        //button.setImage(UIImage(named: "neko"), forState: UIControlState.Normal)
        
        //タップした状態で表示される画像
        //button.setImage(UIImage(named: "neko"), forState: UIControlState.Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 94, 95)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色(透明色)
        button.backgroundColor = UIColor.clearColor()
        //            UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: transparent)
        
        //角丸
        button.layer.cornerRadius = 50
        
        //ボーダー幅
        //button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
    }
    
    
    func makeButtonForImage(x:CGFloat, y:CGFloat) -> UIButton {
        
        let button = UIButton()
        
        //表示されるテキスト
        //button.setTitle("Sea1", forState: .Normal)
        
        
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //フォントの変更
        button.titleLabel?.font = UIFont(name: "Optima-ExtraBlack", size: 20)
        
        //タップした状態のテキスト
        button.setTitle(title, forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //button.setImage(UIImage(named: "neko"), forState: UIControlState.Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 90, 60)
        
        //配置場所
        button.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button.backgroundColor = UIColor.clearColor()
        
        //角丸
        button.layer.cornerRadius = 50
        
        //ボーダー幅
        //button.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tappedForChangeImage:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return button
    }
    
    
    func tappedForChangeImage(button :UIButton) {
        
        if (button.titleLabel!.text! == "Sea1") {
        //背景画像を変更する
        imageView?.image = UIImage(named: "sea1")
        }
        else if(button.titleLabel!.text! == "Sea2") {
             imageView?.image = UIImage(named: "sea2")
    }
        else if(button.titleLabel!.text! == "Sea3") {
            imageView?.image = UIImage(named: "sea3")
        }
    }
    func tapped(button :UIButton) {
        
        if (button.titleLabel!.text! == "AC") {
            
            myLabel?.text? = ""
            
        } else if (button.titleLabel!.text! == "+") {
            
            number = (myLabel!.text! as NSString).doubleValue
            
            //myLabel?.text? += button.titleLabel!.text!
            myLabel?.text? = ""
            
            operate = "+"
            
        } else if (button.titleLabel!.text! == "-") {
            
            number = (myLabel!.text! as NSString).doubleValue
            
            myLabel?.text? = ""
            
            operate = "-"
            
            // ×ボタンが押された場合の処理
        } else if (button.titleLabel!.text! == "×") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            //×を覚えておく
            operate = "×"
            
            //÷ボタンが押された場合の処理
        } else if (button.titleLabel!.text! == "÷"){
            
            number = (myLabel!.text! as NSString).doubleValue
            
            myLabel?.text? = ""
            
            operate = "÷"
            
        } else if (button.titleLabel!.text! == "0") {
            
            if (myLabel?.text != "0") {
                
                myLabel?.text? += "0"
                
            }
            
        } else if (button.titleLabel!.text! == ".") {
            
            // ラベルの長さが0だったら (まだラベルに入力されていない)
            if (myLabel?.text?.lengthOfBytesUsingEncoding(NSStringEncoding.allZeros) == 0) {
                
                myLabel?.text? = "0."
                
            }
                
                // ラベルのテキストにコンマが含まれていなかったら
            else if (myLabel?.text?.rangeOfString(".") == nil) {
                
                myLabel?.text? += "."
                
            }
            
        } else if (button.titleLabel!.text! == "%") {
            
            let number = (myLabel!.text! as NSString).doubleValue
            
            let result = number / 100.0
            
            myLabel?.text? = String(format: "%g", result)
            
        } else if (button.titleLabel!.text! == "=") {
            
            if (operate == "+") {
                
                let number2 = (myLabel!.text! as NSString).doubleValue
                
                let result = number + number2
                
                myLabel?.text? = String(format: "%g", result)
                
            } else if (operate == "-") {
                
                let number2 = (myLabel!.text! as NSString).doubleValue
                
                let result = number - number2
                
                myLabel?.text? = String(format: "%g", result)
                
        } else if (operate == "×"){
            
            // ラベルの文字列を数値に変換
            let number2 = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            let result = number * number2
            
            //ラベルに計算結果を表示
            myLabel?.text? = String(format: "%g", result)
            
            
        } else if (operate == "÷"){
            
            let number2 = (myLabel!.text! as NSString).doubleValue
            myLabel?.text? = ""
            
            let result = number / number2
            
            myLabel?.text? = String(format: "%g", result)
            
            
        }
        
        } else {
    
            if (myLabel?.text == "0") {
    
                myLabel?.text? = button.titleLabel!.text!
                
            } else {
                
                myLabel?.text? += button.titleLabel!.text!
                
            }
        }
    }
    
    
    
}
        
        
    

     func didReceiveMemoryWarning() {
        //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




