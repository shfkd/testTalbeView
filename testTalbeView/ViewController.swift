//
//  ViewController.swift
//  testTalbeView
//
//  Created by D7703_07 on 2019. 4. 30..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "Default"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.frame = self.view.bounds
        self.tableView.autoresizingMask = [.flexibleWidth, .flexibleWidth]
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view.addSubview(self.tableView)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section + 1)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //func tableView (_ tableView: UITableViewDelegate, numberOfRowsInSection section: Int) -> Int {
        //return 10
    //}
    
    static let cellReuseIdentifier = "identifier"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: ViewController.cellReuseIdentifier)
        
        if cell == nil{
            cell = UITableViewCell.init(style: .default, reuseIdentifier: ViewController.cellReuseIdentifier)
        }
        
        cell?.textLabel?.text = "Row \(indexPath.row + 1)"
        cell?.textLabel?.text = indexPath.description
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    

}

