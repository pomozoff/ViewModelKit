import XCTest
@testable import ViewModelKit

final class ViewModelKitTests: XCTestCase {
    func testObjectConfiguredByViewModel() {
        let controller = Controller()
        let viewModel = TestViewModel()
        controller.configure(with: viewModel)

        XCTAssert(controller.viewModel === viewModel, "Incorrect view model is set")
    }
}

private class Controller {
    private(set) var viewModel: TestViewModel?
}

extension Controller: ViewModelConfigurable {
    func configure(with viewModel: TestViewModel) {
    }
}

private class TestViewModel {}

extension TestViewModel: ViewModel {}
