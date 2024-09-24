import UIKit

protocol TaskListRouterProtocol {}

final class TaskListRouter: TaskListRouterProtocol {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    static func builderTaskListModule(_ navigationController: UINavigationController) -> UIViewController {
        let view = TaskListViewController()
        let presenter = TaskListPresenter()
        let interactor = TaskListInteractor()
        
        view.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = TaskListRouter(navigationController: navigationController)
        presenter.view = view
        
        interactor.presenter = presenter
        
        return view
    }
}
