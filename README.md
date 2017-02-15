IJProgressView
==================

A simple progress view written in Swift.

<img src="https://raw.githubusercontent.com/Isuru-Nanayakkara/IJProgressView/master/demo.gif" height="426" width="240" >


## Install

##### [CocoaPods](http://cocoapods.org/) (< v0.36)
- Create a `Podfile`.
- Add the line, `pod 'IJProgressView', :git => 'https://github.com/Isuru-Nanayakkara/IJProgressView.git'`.
- Run `pod install`.
- Add `import IJProgressView` to the files where you want to use the library. 


##### Manually
- Add the *IJProgressView.swift* file to your project.


## Usage
Simply call the following method to show the progress view. Pass the view you want it to be overlayed as a parameter.

```
IJProgressView.shared.showProgressView(view)
```
To hide the progress view,

```
IJProgressView.shared.hideProgressView()
```


## Known Bugs
* When the view controller is embedded inside a `UINavigationController`, the overlay view doesn't cover the navigation bar.

## Todo
* Allow customization.
* Support landscape orientation.

## Credits

* [Eranga Bandara](https://twitter.com/itseranga) is the original author of the [code snippet](https://coderwall.com/p/su1t1a).
