// The Swift Programming Language
// https://docs.swift.org/swift-book



import Foundation
import UIKit

public extension UIView {
    
    /// SwifterSwift: Adds a horizontal separator view to the bottom of the view.
    ///
    ///     let view = UIView()
    ///     view.separator(color: .lightGray, height: 1, spacing: 8)
    ///
    /// - Parameters:
    ///   - color: The separator color. Default is `.black`.
    ///   - height: The height of the separator line. Default is `1`.
    ///   - spacing: The vertical spacing from the bottom edge. Default is `0`.
    func addViewSeparator(color: UIColor = .black, height: CGFloat = 1, spacing: CGFloat = 0) {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = color
        line.layer.cornerRadius = height / 2
        self.addSubview(line)
        NSLayoutConstraint.activate([
              line.heightAnchor.constraint(equalToConstant: height),
              line.leadingAnchor.constraint(equalTo: self.leadingAnchor),
              line.trailingAnchor.constraint(equalTo: self.trailingAnchor),
              line.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: spacing) // 기본적으로 하단에 배치
          ])
    }
}



class SeparatorVC: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 200),
            view.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        view.addViewSeparator(height: 12)
    }

}

@available(iOS 17.0, *)
#Preview {
    SeparatorVC()
}
