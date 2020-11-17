//
//  LoginViewController.swift
//  Midterm1
//
//  Created by Darkhan Zhapparov on 10/17/20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBAction func userLogin(_ sender: Any) {
        
        let email = emailLabel.text!
        let password = passwordLabel.text!
        let url = URL(string: "https://reqres.in/api/login")
        
        guard let requestUrl = url else {
            fatalError()
        }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        let postString = "email=\(email)&&password=\(password)"
        request.httpBody = postString.data(using: String.Encoding.utf8)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print("Error")
                return
            }
            if let data = data, let dataString = String(data: data, encoding: .utf8){
                print(dataString)
            }
        }
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
