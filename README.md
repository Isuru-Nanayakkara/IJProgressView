IJProgressView
==================

A simple progress view written in Swift.

The original code was take from my friend Eranga's [Coderwall](https://coderwall.com/p/su1t1a). It had some issues so I modified it. My plan is to keep improving it.

<img src="https://raw.githubusercontent.com/Isuru-Nanayakkara/IJProgressView/master/demo.gif" height="426" width="240" >

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

* [Eranga Bandara](https://coderwall.com/itseranga)
