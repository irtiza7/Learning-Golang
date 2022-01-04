import UIKit

extension UITableViewCell {
    static var reuseableIdentifier: String {
        return String(describing: self)
    }
}
