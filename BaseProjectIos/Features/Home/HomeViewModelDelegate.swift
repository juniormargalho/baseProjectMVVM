//
//  HomeViewModelDelegate.swift
//  BaseProjectIos
//
//  Created by Junior Margalho on 05/07/22.
//

import Foundation

protocol HomeViewModelDelegate: AnyObject {
    func home(didShowLoading show: Bool)
    func home(didSuccess response: HomeResponseModel)
    func home(didFailure message: String)
}
