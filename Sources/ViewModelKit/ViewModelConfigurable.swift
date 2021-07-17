//
//  ViewModelConfigurable.swift
//
//
//  Created by Anton Pomozov on 17.07.2021.
//

import Foundation

public protocol ViewModelConfigurable: AnyObject {
    associatedtype VM: ViewModel

    var viewModel: VM? { get }

    func configure(with viewModel: VM)
}
