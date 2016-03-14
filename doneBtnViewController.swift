
import UIKit

class InputViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {
   
    @IBOutlet weak var _textField: UITextField!
    @IBOutlet weak var _textView: UITextView!
	
	
	override func viewDidLoad(){
		super.ViewDidLoad()
		//委譲先を元のViewControllerに設定
		
		_textField.delegate = self
	    _textView.delegate = self
		
		//tool Barを生成
		let accessoryBar = UIToolBar()
		accessoryBar.sizeToFit()
		
		let doneBtn = UIBarButtonItem(title:"done",style: .Done, target: self, action: "doneBtnDidPush")
		//右端に寄せる
		let spacer = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
		
		accessoryBar.setItems([spacer,doneBtn], animated: true)
		        _textField.inputAccessoryView = accessoryBar
		        _textView.inputAccessoryView = accessoryBar
		}
				
		func textFieldShouldReturn(textField: UITextField) -> Bool {			      
		//textFieldをFirstResponderでなくする
	      textField.resignFirstResponder()
        
       return true
       }
       func doneBtnDidPush() {
           self._textView!.resignFirstResponder()
		   self._textField!.resignFirstResponder()
	   }
	   
	   override func didReceiveMemoryWarning() {
		   super.didReceiveMemoryWarning()
	   }
	   
}