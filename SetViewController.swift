//
//  SetViewController.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/03.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import UIKit

class SetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 参考ホームページ：https://akira-watson.com/iphone/table-view-section.html
    // http://tiro105.hateblo.jp/entry/2015/03/24/153906
    
    // sectionのタイトル
    let sectionTitle: NSArray = ["Twitter", "設定", "アプリについて"]
    
    // section毎の項目
    let cellArray1: NSArray = ["アカウント設定","連動"]
    let cellArray2: NSArray = ["パスコード設定","アプリのテーマ", "データのバックアップ"]
    let cellArray3: NSArray = ["バージョン","お問い合わせ","このアプリの評価","ヘルプ","プライバシーポリシー"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューを作る
        let myTableView = UITableView(frame: view.frame, style: .Grouped)
        // テーブルビューのデリゲートを設定する
        myTableView.delegate = self
        // テーブルビューのデータソースを設定する
        myTableView.dataSource = self
        // テーブルビューを表示する
        view.addSubview(myTableView)
    }
    
    /*　UITableViewDataSourceプロトコル */
    // セクションの個数を決める sectionTitleの数に設定する
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    // Table Viewのセルの数を指定
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cellArray1.count
        }
        else if section == 1 {
            return cellArray2.count
        }
        else if section == 2 {
            return cellArray3.count
        }
        else{
            return 0
        }
    }
    
    // セクションのタイトルを決める
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return String(sectionTitle[section])
        }
        else if section == 1 {
            return String(sectionTitle[section])
        }
        else {
            return String(sectionTitle[section])
        }
    }
    
    // 各セルの要素を設定する
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
         // Section毎に処理を分ける、ちょっと冗長的です
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell.textLabel?.text = String(cellArray1[indexPath.row])
            
            ///////////////////////
            ///////////////////////
            // セルの編集
            
            // 文字色変更
            cell.textLabel?.textColor = UIColor.brownColor()
            // 文字サイズ変更
            cell.textLabel?.font = UIFont.systemFontOfSize(20)
            // チェックマークをつける            
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
            
            ///////////////////////
            ///////////////////////
            
            return cell
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = String(cellArray2[indexPath.row])
            return cell
        }
        else if indexPath.section == 2 {
            cell.textLabel?.text = String(cellArray3[indexPath.row])
            return cell
        }
        else {
            
        }
        return cell
    }
    
    /*
    // セクションのタイトルを決める
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Twitter"
        }
        else if section == 1 {
            return "設定"
        }
        else {
            return "アプリについて"
        }
    }
    
    // セルを作る
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "セル" + String(indexPath.row)
        cell.detailTextLabel?.text = "サブタイトル"
        return cell
    }
    */
    
    
    /* UITableViewDelegateデリゲートメソッド */
    // 行がタップされると実行される
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("セクション\(indexPath.section)")
        print("セル\(indexPath.row)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

