//
//  SecondViewController.swift
//  beginning-ios
//
//  Created by Shahan Khan on 6/11/16.
//  Copyright © 2016 Shahan Khan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var displayTextLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var meme: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        // display corresponding text
        if let text = textField.text as? NSString {
            let newText = text.stringByReplacingCharactersInRange(range, withString: string)
            displayTextLabel.text = newText
        } else {
            displayTextLabel.text = string
        }

        // display meme
        if let text = displayTextLabel.text where text == "meme" {
            meme.hidden = false
        } else {
            meme.hidden = true
        }
        

        return true
    }

}
