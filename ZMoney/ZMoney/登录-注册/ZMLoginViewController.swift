//
//  ZMLoginViewController.swift
//  ZMoney
//
//  Created by apple on 2018/9/11.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit
import CountryCodeSelect

class ZMLoginViewController: UIViewController {

    
    @IBOutlet weak var languageBtn: UIButton!
    @IBOutlet weak var AreaCodeTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var verificationCode: UITextField!
    
    @IBOutlet weak var AreaCodeBtn: UIButton!
    
    @IBOutlet weak var VerificationCodeBtn: UIButton!
    
    @IBOutlet weak var longinBtn: UIButton!
    
    @IBOutlet weak var registeredBtn: UIButton!
    
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    
    @IBOutlet weak var emailLoginBtn: UIButton!
    
    lazy var countryCodePickerView: CountryCodePicker! = {
        let pickerView = CountryCodePicker()
        return pickerView
    }()
    
    lazy var countryCodePickerViewToolbar: UIToolbar! = {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        toolbar.items = [UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
                         UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonPressed(_:)))]
        return toolbar
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置占位文字颜色
        phoneTextField.attributedPlaceholder = NSAttributedString.init(string: "请输入手机号码", attributes: [NSAttributedStringKey.foregroundColor : UIColor.darkGray])
        verificationCode.attributedPlaceholder = NSAttributedString.init(string: "请输入手机验证码", attributes: [NSAttributedStringKey.foregroundColor : UIColor.darkGray])
        AreaCodeTextField.inputView = countryCodePickerView
        AreaCodeTextField.inputAccessoryView = countryCodePickerViewToolbar
        
    }
    
    /// 选择区号
    @objc func doneButtonPressed(_ sender: Any) {
        AreaCodeTextField.text = countryCodePickerView.selectedCountryCode
        AreaCodeTextField.resignFirstResponder()
    }
    
    /// 切换语言
    @IBAction func switchLanguages(_ sender: UIButton) {
        print("切换语言")
    }
    
//    /// 选择区号
//    @IBAction func selectAreaCode(_ sender: UIButton) {
//        print("选择区号")
//        phoneTextField.inputView = countryCodePickerView
//        phoneTextField.inputAccessoryView = countryCodePickerViewToolbar
//    }
    
    /// 获取验证码
    @IBAction func getVerificationCode(_ sender: UIButton) {
        print("获取验证码")
    }
    
    /// 登录
    @IBAction func Longin(_ sender: UIButton) {
        print("登录")
    }
    
    /// 注册
    @IBAction func registered(_ sender: UIButton) {
        print("注册")
    }
    
    /// 忘记密码
    @IBAction func forgotPassword(_ sender: UIButton) {
        print("忘记密码")
    }
    
    /// 邮箱登录
    @IBAction func emailLogin(_ sender: UIButton) {
        print("邮箱登录")
    }

    /// 收起键盘
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
