import XCTest
@testable import UIViewSeparator

@MainActor
final class UIViewExtensionsTests: XCTestCase {
    
    func testSeparatorAddsSubview() {
        let view = UIView()
        view.separator()
        
        XCTAssertEqual(view.subviews.count, 1)
    }
    
    func testSeparatorUsesCorrectColorAndHeight() {
        let view = UIView()
        let expectedColor: UIColor = .red
        let expectedHeight: CGFloat = 2.0
        
        view.separator(color: expectedColor, height: expectedHeight)
        
        guard let line = view.subviews.first else {
            XCTFail("Separator view not found")
            return
        }
        
        XCTAssertEqual(line.backgroundColor, expectedColor)
        
        let heightConstraint = line.constraints.first { $0.firstAttribute == .height }
        XCTAssertEqual(heightConstraint?.constant, expectedHeight)
    }
    
    func testSeparatorUsesAutoLayout() {
        let view = UIView()
        view.separator()
        
        guard let line = view.subviews.first else {
            XCTFail("Separator view not found")
            return
        }
        
        XCTAssertFalse(line.translatesAutoresizingMaskIntoConstraints)
    }
}
