//
//  HomeViewModel.swift
//  BaseProjectIos
//
//  Created by Junior Margalho on 30/06/22.
//

import Foundation

protocol HomeViewModelProtocol {
    var delegate: HomeViewModelDelegate? { get set }
    func getConfigurations()
}

class HomeViewModel: HomeViewModelProtocol {
    // MARK: Properties
    private var service: HomeServiceProtocol
    weak var delegate: HomeViewModelDelegate?

    // MARK: Initialization
    init(service: HomeServiceProtocol = HomeService()) {
        self.service = service
    }

    // MARK: Methods

    // MARK: Services
    func getConfigurations() {
        delegate?.home(didShowLoading: true)
        service.getConfigurations { response in
            delegate?.home(didSuccess: response)
            delegate?.home(didShowLoading: false)
        } failure: { message in
            delegate?.home(didFailure: message)
            delegate?.home(didShowLoading: false)
        }
    }
}
