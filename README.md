Swift ProgressView
==================

A simple progress view written in Swift.

The original code was take from my friend Eranga's [Coderwall](https://coderwall.com/p/su1t1a). It had some issues so I modified it. My plan is to keep improving it.

![](http://i.imgur.com/6yF2c46.png)

## Usage
Simply call the following method to show the progress view. Pass the view you want it to be overlayed as a parameter.

```
ProgressView.shared.showProgressView(view)
```
To hide the progress view,

```
ProgressView.shared.hideProgressView()
```


## Known Bugs
* When the view controller is embedded inside a `UINavigationController`, the overlay view doesn't cover the navigation bar.

## Todo
* Allow customization.
* Support landscape orientation.


======================================================================================
## Credits

* [Eranga Bandara](https://coderwall.com/itseranga)
