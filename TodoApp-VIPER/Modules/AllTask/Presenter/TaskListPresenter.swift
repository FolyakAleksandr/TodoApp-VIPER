protocol TaskListPresenterProtocol: AnyObject {}

final class TaskListPresenter: TaskListPresenterProtocol {
    // MARK: public variables

    public weak var view: TaskListViewControllerProtocol?
    public var interactor: TaskListInteractorProtocol?
    public var router: TaskListRouterProtocol?
}
