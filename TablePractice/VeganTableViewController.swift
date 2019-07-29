//
//  VeganTableViewController.swift
//  TablePractice
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

struct cacti {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class VeganTableViewController: UITableViewController {
    var allMusic = [
        cacti(id: 1,
              title: "Kacey Musgraves",
            text: "Kacey Musgraves is a five time Grammy Award winning Artist.",
            image: "Kacey"),
        cacti(id: 2,
              title: "Stevie Nicks",
            text: "Stevie Nicks is a former member of the rock band Fleetwood Mac.",
            image: "Stevie"),
        cacti(id: 3,
              title: "Taylor Swift",
              text: "Taylor Swift is the daughter of Scott and Andrea Swift",
              image: "Taylor")
    ]
    


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allMusic.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = allMusic[indexPath.row].title
        cell.detailTextLabel?.text = allMusic[indexPath.row].text
        cell.imageView?.image = UIImage(named:allMusic[indexPath.row].image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Section \(section)"
    }


}
