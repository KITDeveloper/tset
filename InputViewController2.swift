//
//  InputViewController2.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/03.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import UIKit

class InputViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var textView2: UITextView!
    
    // UIPickerView.
    private var myUIPicker: UIPickerView!
    
    // 表示する値の配列.
    private let myValues: NSArray = ["その一","その二","その三","その四"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // コメントのTextViewに枠をつける。
        textView2.layer.borderWidth = 0.5
        // 枠の色を設定する。
        textView2.layer.borderColor = UIColor.lightGrayColor().CGColor
        // 枠の角を丸くする。
        textView2.layer.cornerRadius = 8
        
        // 時間指定
        myUIPicker = UIPickerView()
        
        // サイズを指定する.
        myUIPicker.frame = CGRectMake(0,390,self.view.bounds.width, 80)
        
        // Delegateを設定する.
        myUIPicker.delegate = self
        
        // DataSourceを設定する.
        myUIPicker.dataSource = self
        
        // Viewに追加する.
        self.view.addSubview(myUIPicker)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    pickerに表示する列数を返すデータソースメソッド.
    (実装必須)
    */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
    pickerに表示する行数を返すデータソースメソッド.
    (実装必須)
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myValues.count
    }
    
    /*
    pickerに表示する値を返すデリゲートメソッド.
    */
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myValues[row] as? String
    }
    
    /*
    pickerが選択された際に呼ばれるデリゲートメソッド.
    */
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row)")
        print("value: \(myValues[row])")
    }
}