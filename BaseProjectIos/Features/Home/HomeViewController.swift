//
//  HomeViewController.swift
//  BaseProjectIos
//
//  Created by Junior Margalho on 30/06/22.
//

import UIKit

final class HomeViewController: UIViewController {
    // MARK: Properties
    private var viewModel: HomeViewModelProtocol
    
    // MARK: Outlets
    @IBOutlet weak var viewContent: UIView!
    
    // MARK: Initialization
    init(viewModel: HomeViewModelProtocol = HomeViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        viewModel.getConfigurations()
    }
    
    // MARK: Actions
    
    // MARK: BindEvents
    
    // MARK: Methods
    
    // MARK: Updates
    
    // MARK: Setups
    private func setupUI() {
        viewModel.delegate = self
        viewContent.backgroundColor = UIColor(named: "principalColor")
    }
}

// MARK: Extensions
extension HomeViewController: HomeViewModelDelegate {
    func home(didShowLoading show: Bool) {
        show ? print("\(#function) startLoadig") : print("\(#function) stopLoading")
    }
    
    func home(didSuccess response: HomeResponseModel) {
        guard let title = response.title else { return }
        print("\(#function)", title)
    }
    
    func home(didFailure message: String) {
        print("\(#function)", message)
    }
}
