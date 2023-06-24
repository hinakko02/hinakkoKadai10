//
//  ViewController.swift
//  HinakkoKadai10
//
//  Created by Hina on 2023/06/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let data = PrefectureData()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.prefecturesList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! PrefeturesTableViewCell
        cell.prefectureLabel?.text = data.prefecturesList[indexPath.row]
        cell.numberLabel?.text = "\(indexPath.row + 1)番目の都道府県です"

        switch indexPath.row % 3 {
        case 0:
            cell.backgroundColor = UIColor.init(red: 255/255, green: 100/255, blue: 100/255, alpha: 100/100)
        case 1:
            cell.backgroundColor = UIColor.init(red: 100/255, green: 255/255, blue: 100/255, alpha: 100/100)
        default:
            cell.backgroundColor = UIColor.init(red: 100/255, green: 100/255, blue: 255/255, alpha: 100/100)
        }
        return cell
    }
}
