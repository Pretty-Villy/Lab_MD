//
//  ProfileViewController.swift
//  Midterm1
//
//  Created by Darkhan Zhapparov on 10/18/20.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileLastname: UILabel!
    @IBOutlet weak var profileEmail: UILabel!
    var users = [Data]()
    /*func getUser() {
        guard let url = URL(string: "https://reqres.in/api/users/2") else { return }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do{
                let users = try JSONDecoder().decode([profileData].self, from: data!)
                let user = users[1]
                self.profileName.text = user.first_name as String
                self.profileLastname.text = user.last_name.description as String
                self.profileEmail.text = user.email.description as String
            } catch {
            print("error")
            }
        }
    }*/
    func getUsers(){
        Alamofire.request("https://reqres.in/api/users/2", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<Data>) in
            if let result = response.result.value{
                self.profileName.text = result.firstName
                self.profileEmail.text = result.email
                self.profileLastname.text = result.lastName
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
