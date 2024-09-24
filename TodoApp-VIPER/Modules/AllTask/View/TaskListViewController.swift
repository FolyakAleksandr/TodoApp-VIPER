import UIKit

protocol TaskListViewControllerProtocol: AnyObject {}

final class TaskListViewController: UIViewController {
    // MARK: public variables

    public var presenter: TaskListPresenterProtocol?
}

// MARK: - TaskListViewControllerProtocol

extension TaskListViewController: TaskListViewControllerProtocol {}
