//
//  FoodDeliveryTableViewController.swift
//  DITFoodDelivery
//
//  Created by D7702_09 on 2018. 5. 17..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class FoodDeliveryTableViewController: UITableViewController {
    
    var foodstoreName = ["늘해랑", "번개반점", "아딸", "왕짜장", "토마토도시락", "홍콩반점"]
    var foodstoreImages = ["01", "02", "03", "04", "05", "06"]
    var foodstoreAddress = ["부산광역시 부산진구 중앙대로928번길", "부산광역시 부산진구 양지로34", "부산광역시 부산진구 중앙대로909번길 4", "부산광역시 부산진구 진남로 505", "부산광역시 부산진구 양지로 28", "부산광역시 부산진구 중앙대로 902"]
    var foodstoreType = ["돼지국밥", "중화요리", "분식", "중화요리", "도시락", "중화요리"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.title = "DIT 배달통"
    }

    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodstoreName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        cell.textLabel?.text=foodstoreName[indexPath.row]
        cell.detailTextLabel?.text=foodstoreType[indexPath.row]
        cell.imageView?.image=UIImage(named: foodstoreImages[indexPath.row])
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
