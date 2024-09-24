protocol TaskListInteractorProtocol {}

final class TaskListInteractor: TaskListInteractorProtocol {
    // MARK: - public variables

    public weak var presenter: TaskListPresenterProtocol?
}
