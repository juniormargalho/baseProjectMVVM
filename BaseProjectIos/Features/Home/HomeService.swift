//
//  HomeService.swift
//  BaseProjectIos
//
//  Created by Junior Margalho on 30/06/22.
//

import Foundation

protocol HomeServiceProtocol {
    func getConfigurations(success: ((HomeResponseModel) -> Void),
                           failure: ((String) -> Void))
}

class HomeService: HomeServiceProtocol {
    // MARK: Properties

    // MARK: Methods
    func getConfigurations(success: ((HomeResponseModel) -> Void),
                           failure: ((String) -> Void)) {
        let response = HomeResponseModel(title: "HOME")
        success(response)
        failure("Ocorreu um erro")
    }
}
