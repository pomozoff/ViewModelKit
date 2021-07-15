public protocol ViewModel {}

public protocol ViewModelConfigurable: AnyObject {
    associatedtype VM: ViewModel

    var viewModel: VM? { get }

    func configure(with viewModel: VM)
}
