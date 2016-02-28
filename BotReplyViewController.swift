//
//  BotReplyViewController.swift
//  memobotter
//
//  Created by Suita Shigeo on 2016/02/25.
//  Copyright © 2016年 SG. All rights reserved.
//

import UIKit

class BotReplyViewController: UIViewController
{
    
    @IBOutlet weak var _view3: UIView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _view3.userInteractionEnabled = true
        let swipeRightRecognizer = UISwipeGestureRecognizer(
            target: self, action: "swipeRightHandler:")
        swipeRightRecognizer.direction = .Right
        _view3.addGestureRecognizer(swipeRightRecognizer)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func swipeRightHandler(sender: UISwipeGestureRecognizer)
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
                //遷移先のViewControllerのインスタンスを取得し、
                //ルートViewの背景を緑にする
                let dest = segue.destinationViewController
                dest.view.backgroundColor = UIColor.greenColor()
            default:
                break
            }
        }
    }
}
