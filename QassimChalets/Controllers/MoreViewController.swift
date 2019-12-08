//
//  MoreViewController.swift
//  QassimChalets
//
//  Created by Yousef on 12/3/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class MoreViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate {
    
    
    let vc = AddBuildingViewController()
    var menuButtons = ["الانتقال الي مزودي الخدمة","اضف عقارك معنا","تواصل معنا","من نحن","تغيير اللغة" ,"تقييم التطبيق" , "مشاركة التطبيق"]
    var imageButtons = ["switch","addlist","contact","about","world","rate","share"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(menuButtons.count)
     return   menuButtons.count
    }
    let arrowImage = UIImage(named: "xmlid1")
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomTableViewCell
//        if indexPath.row == menuButtons.count
//        {
//            cell.separatorInset =
//        }
       
        cell.itemLabel.text = menuButtons[indexPath.row]
        cell.arrow.image = arrowImage
        cell.symbol.image = UIImage(named: imageButtons[indexPath.row])
        return cell
    }
//   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        self.hidesBottomBarWhenPushed = true
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row == 1)
        {
          let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AddBuildingViewController") as? AddBuildingViewController
          self.navigationController?.pushViewController(vc!, animated: true)
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        tableView.rowHeight = 50.0
        tableView.isScrollEnabled = false
    }
    func configureTableView()
        {
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 150.0
    }
    
    

   

}
