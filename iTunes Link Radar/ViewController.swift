//
//  ViewController.swift
//  iTunes Link Radar
//
//  Created by John Brayton on 5/5/19.
//  Copyright © 2019 John Brayton. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UITableViewController {
    
    let url = URL(string: "https://podcasts.apple.com/at/podcast/accidental-tech-podcast/id617416468?l=en&mt=2")!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = String.localizedStringWithFormat("Show URL")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LinkDisplayMechanism.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mechanism = LinkDisplayMechanism.allCases[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self))!
        cell.textLabel?.text = mechanism.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mechanism = LinkDisplayMechanism.allCases[indexPath.row]
        switch mechanism {
        case .openUrl:
            UIApplication.shared.open(self.url, options: [:]) { (result) in
                print("result of opening with no options: \(result)")
            }
        case .universalLink:
            UIApplication.shared.open(self.url, options: [UIApplication.OpenExternalURLOptionsKey.universalLinksOnly: true]) { (result) in
                print("result of opening with universalLinksOnly: \(result)")
            }
        case .safariViewController:
            let safariViewController = SFSafariViewController(url: self.url)
            self.present(safariViewController, animated: true, completion: nil)
        }
    }

}

