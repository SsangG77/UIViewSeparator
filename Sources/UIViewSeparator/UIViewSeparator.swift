// The Swift Programming Language
// https://docs.swift.org/swift-book




import UIKit

public extension UIView {
    func addSeparator(color: UIColor = .black, height: CGFloat = 1) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(separator)

        if let stackView = self as? UIStackView {
            // UIStackView의 경우 arrangedSubview로 추가
            stackView.addArrangedSubview(separator)
            NSLayoutConstraint.activate([
                separator.heightAnchor.constraint(equalToConstant: height)
            ])
        } else {
            // 일반 UIView 및 UIScrollView의 경우 기본적으로 하단에 추가
            NSLayoutConstraint.activate([
                separator.heightAnchor.constraint(equalToConstant: height),
                separator.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                separator.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                separator.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        }
    }
}
