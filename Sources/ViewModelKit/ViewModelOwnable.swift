//
//  ViewModelOwnable.swift
//  
//
//  Created by Anton Pomozov on 17.07.2021.
//

import Foundation

public protocol ViewModelOwnable: ViewModelConfigurable {
    var currentViewModel: VM! { get }
}

public extension ViewModelOwnable {
    var currentViewModel: VM! { viewModel! }
}
