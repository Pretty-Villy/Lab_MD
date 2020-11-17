//
//  ViewController.swift
//  Midterm1
//
//  Created by Darkhan Zhapparov on 10/17/20.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let books = parse(pathForFile: Bundle.main.path(forResource: "books", ofType: "json"))
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.books!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BooksTableViewCell
        
        cell.bookTitle.text = self.books![indexPath.row].title
        cell.bookDesc.text = self.books![indexPath.row].subtitle
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView?.reloadData()
    }


}

