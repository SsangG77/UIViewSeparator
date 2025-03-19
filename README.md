# UIViewSeparator

A lightweight and easy-to-use library for adding a separator (divider) to the bottom of any `UIView`.  
With `UIViewSeparator`, you can quickly add a customizable bottom line without writing extra code.

## Features
- Easily add a bottom separator to any `UIView`.
- Fully customizable: adjust color, thickness, and insets.
- Supports Auto Layout and frame-based layouts.
- Works with all `UIView` subclasses, including `UILabel`, `UIButton`, `UITableViewCell`, etc.

## Installation

### Swift Package Manager (SPM)
1. Open Xcode and go to `File > Add Packages...`
2. Enter the repository URL:
https://github.com/SsangG77/UIViewSeparator.git

3. Choose the latest version and add it to your project.

## Usage

### Adding a Separator to a UIView
Simply call `.addSeparator()` on any `UIView` to add a bottom separator.

```swift
import UIViewSeparator

let view = UIView()
view.addSeparator()
```


Customization
You can customize the separator with the following parameters:

```swift
import UIViewSeparator
view.separator(color: .gray , height: 2, spacing: 12)
```



Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request.
