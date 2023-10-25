//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Семен Выдрин on 14.10.2023.
//

import UIKit

final class MainViewController: UITableViewController {
    private let cellID = "characterCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        return cell
    }
    
    @objc private func nextPagePressed() {}
    
    @objc private func prevPagePressed() {}
}


private extension MainViewController {
    func setupUI() {
        tableView.register(CharacterCellView.self, forCellReuseIdentifier: cellID)
        view.backgroundColor = .black
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        title = "Rick and Morty"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .black
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        setupNavigationItems()
        
        navigationController?.navigationBar.tintColor = .white
    }
    
    func setupNavigationItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Next",
            style: .plain,
            target: self,
            action: #selector(nextPagePressed)
        )
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Prev",
            style: .plain,
            target: self,
            action: #selector(prevPagePressed)
        )
    }
}

#Preview {
    MainViewController()
}
