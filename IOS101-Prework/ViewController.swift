//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Joseph Lobowicz on 11/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var careerLabel: UILabel!
    @IBOutlet weak var switchLabel: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextView()
        // Do any additional setup after loading the view.
    }
    
    func updateTextView() {
        let link = "https://github.com/lobowicz"
        let text = textView.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: link, in: text, as: "here")
        let font = textView.font
        textView.attributedText = attributedString
        textView.font = font
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        textView.backgroundColor = randomColor
    }
    
    @IBAction func changeFontColor(_ sender: UIButton) {
        nameLabel.textColor = UIColor.white
        schoolLabel.textColor = UIColor.white
        careerLabel.textColor = UIColor.white
        textView.textColor = UIColor.white
    }
    
    @IBAction func changeDarkMode(_ sender: UISwitch) {
        if sender.isOn {
            nameLabel.textColor = UIColor.white
            schoolLabel.textColor = UIColor.white
            careerLabel.textColor = UIColor.white
            view.backgroundColor = UIColor.black
            textView.textColor = UIColor.white
            textView.backgroundColor = UIColor.black
        }
        else {
            nameLabel.textColor = UIColor.black
            schoolLabel.textColor = UIColor.black
            careerLabel.textColor = UIColor.black
            view.backgroundColor = UIColor.white
            textView.textColor = UIColor.black
            textView.backgroundColor = UIColor.white
        }
    }
    
}

