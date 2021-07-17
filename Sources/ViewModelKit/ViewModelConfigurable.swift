//
//  ViewModelConfigurable.swift
//
//
//  Created by Anton Pomozov on 17.07.2021.
//

import UIKit

public protocol ViewModelConfigurable where Self == VM.VC {
    associatedtype VM: ViewModel

    var viewModel: VM? { get }

    func configure(with viewModel: VM)
}
