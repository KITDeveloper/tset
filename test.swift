//
//  test.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/03.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // UIPickerView.
    private var myUIPicker: UIPickerView!
    
    // 表示する値の配列.
    private let myValues: NSArray = ["その一","その二","その三","その四"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myUIPicker = UIPickerView()
        
        // サイズを指定する.
        myUIPicker.frame = CGRectMake(0,300,self.view.bounds.width, 180.0)
        
        // Delegateを設定する.
        myUIPicker.delegate = self
        
        // DataSourceを設定する.
        myUIPicker.dataSource = self
        
        // Viewに追加する.
        self.view.addSubview(myUIPicker)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
