//
//  ViewController.swift
//  FtableView
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
   

    @IBOutlet weak var tableView: UITableView!
    var imgArray = ["a","b","c","d","e"]
    var namArray = ["Black","White","special","red","yellow"]
    var priseArray = ["350 Tk","400 Tk","500 Tk","750 Tk","850 Tk"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.cellImage.image = UIImage(named: imgArray[indexPath.row])
        cell.cellName.text = namArray[indexPath.row]
        cell.price.text = priseArray[indexPath.row]
        //cell.cellPrice.text = priseArray[indexPath.row]
        return cell
        
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

