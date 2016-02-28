//
//  BotViewController.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/25.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class BotViewController: UIViewController
{
    
    @IBOutlet weak var _view2: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _view2.userInteractionEnabled = true
        let swipeLeftRecognizer = UISwipeGestureRecognizer(
            target: self, action: "swipeLeftHandler:")
        swipeLeftRecognizer.direction = .Left
        _view2.addGestureRecognizer(swipeLeftRecognizer)
        let swipeRightRecognizer = UISwipeGestureRecognizer(
            target: self, action: "swipeRightHandler:")
        swipeRightRecognizer.direction = .Right
        _view2.addGestureRecognizer(swipeRightRecognizer)

    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func swipeLeftHandler(sender: UISwipeGestureRecognizer)
    {
        
        
        //Segueを呼びだす
        self.performSegueWithIdentifier("toReplyScene", sender: self)
        
        //ルートViewが表示された後に呼ばれる
        func viewDidAppear(animated: Bool)
        {
            super.viewDidAppear(animated)
            //Segueを名前で呼びだす
            self.performSegueWithIdentifier("toReplycene", sender: self)
        }
        //Segueが実行される際に呼ばれる
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
        {
            //名前を確かめてtoBotSceneだったら
            switch segue.identifier
            {
            case .Some("toReplyScene")  :
                //遷移先のViewControllerのインスタンスを取得
                _ = segue.destinationViewController 
                
            default:
                break

            }
        }
    }
    func swipeRightHandler(sender: UISwipeGestureRecognizer)
    {
        
        
        //Segueを呼びだす
        self.performSegueWithIdentifier("toMemoScene", sender: self)
        
        //ルートViewが表示された後に呼ばれる
        func viewDidAppear(animated: Bool)
        {
            super.viewDidAppear(animated)
            //Segueを名前で呼びだす
            self.performSegueWithIdentifier("toMemoScene", sender: self)
        }
        //Segueが実行される際に呼ばれる
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
        {
            //名前を確かめてtoMemoSceneだったら
            switch segue.identifier
            {
            case .Some("toMemoScene")  :
                //遷移先のViewControllerのインスタンスを取得
                _ = segue.destinationViewController
                default:
                break
            }
        }
    }


    
}
