//
//  Diary.swift
//  TabTest1
//
//  Created by tatsuya hirano on 2016/03/04.
//  Copyright © 2016年 tatsuya hirano. All rights reserved.
//

import RealmSwift

class Diary: Object {
    // 管理用 ID。プライマリーキー
    dynamic var id = 0
    
    // タイトル
    dynamic var title = ""
    
    // 本文
    dynamic var body = ""
    
    // 最終更新日時
    dynamic var date = NSDate()
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}
