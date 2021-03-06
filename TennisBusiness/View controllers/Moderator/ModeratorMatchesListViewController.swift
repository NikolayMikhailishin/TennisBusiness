//
//  ModeratorMatchesListViewController.swift
//  TennisBusiness
//
//  Created by Valeiia Tarasenko on 10/6/19.
//  Copyright © 2019 nikolay.mihailishin. All rights reserved.
//

import UIKit

class ModeratorMatchesListViewController: UIViewController {
    // MARK: - Inner
    
    private struct Constants {
        static let matchCellReuseIdentifier = "matchCell"
    }

    
    
    // MARK: - Properties
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var matches: [Match] = [] {
        didSet {
            guard isViewLoaded else { return }
            tableView.reloadData()
        }
    }
    
    
    
    // MARK: - Public
    
    func update(with matches: [Match]) {
        self.matches = matches
    }
}



// MARK: - UITableViewDataSource
extension ModeratorMatchesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.matchCellReuseIdentifier) as? ModeratorMatchTableViewCell,
            matches.indices.contains(indexPath.row) else {
                return UITableViewCell()
        }
        let match = matches[indexPath.row]
        cell.update(with: match)
        return cell
    }
}



// MARK: - UITableViewDelegate
extension ModeratorMatchesListViewController: UITableViewDelegate {
    
}
