// The Swift Programming Language
// https://docs.swift.org/swift-book


import UIKit

public extension UIView {
    func addSeparator(color: UIColor = .black, height: CGFloat = 1) {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = color
        self.addSubview(line)

        NSLayoutConstraint.activate([
            line.heightAnchor.constraint(equalToConstant: height),
            line.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            line.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            line.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
