
import UIKit

extension UICollectionView {
    func registerCell<T: UICollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: T.reuseID)
    }

    func registerNibCell<T: UICollectionViewCell>(_ cellClass: T.Type, nibName: String = T.reuseID) {
        register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: T.reuseID)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseID, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseID) for cell at \(indexPath)")
        }
        return cell
    }
}
