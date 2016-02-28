//
//  MemoViewController.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/25.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController
{
    
    @IBOutlet weak var _view: UIView!
    @IBOutlet weak var tableView: UITableView!
   
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//=======================
//Swipe画面遷移Start
//=======================
        _view.userInteractionEnabled = true
        let swipeLeftRecognizer = UISwipeGestureRecognizer(
            target: self, action: "swipeLeftHandler:")
        swipeLeftRecognizer.direction = .Left
        _view.addGestureRecognizer(swipeLeftRecognizer)
    }
    func swipeLeftHandler(sender: UISwipeGestureRecognizer)
    {
    //Segueを呼びだす
    self.performSegueWithIdentifier("toBotScene", sender: self)
    
       //ルートViewが表示された後に呼ばれる
     func viewDidAppear(animated: Bool)
        {
        super.viewDidAppear(animated)
        //Segueを名前で呼びだす
        self.performSegueWithIdentifier("toBotScene", sender: self)
        }

    //Segueが実行される際に呼ばれる
      func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
      {
          //名前を確かめてtoBotSceneだったら
         switch segue.identifier
         {
         case .Some("toBotScene")  :
            //遷移先のViewControllerのインスタンスを取得
             _ = segue.destinationViewController 
         default:
             break
         }
     }
   }
//=======================
//Swipe画面遷移End
//=======================
    
//======================
//tableViewにメモ表示
//======================
    
    
    
    // セルを削除可能
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Delete;
    }
    // 各セルを選択した時に実行される
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("cellSegue",sender: nil)
    }


}
