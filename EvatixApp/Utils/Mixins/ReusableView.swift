
import UIKit

protocol ReusableView {
    static var reuseID: String { get }
}

extension ReusableView {
    static var reuseID: String {
        return String(describing: Self.self)
    }
}

extension UITableViewCell: ReusableView {}
extension UICollectionViewCell: ReusableView {}
extension UITableViewHeaderFooterView: ReusableView { }
