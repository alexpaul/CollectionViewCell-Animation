# CollectionViewCell-Animation

Animating contents of a UICollecitonViewCell. In this app we are creating a pulsating heart animation which repeats forever. Also we are ensuring that the animation continues to run by resetting the transform identity in prepareForResuse() in the HeartCell.

#### Resetting the tranform identity in prepareForResuse is needed to ensure animation continues when scrolling collection view

```swift 
override func prepareForReuse() {
  super.prepareForReuse()

  // here we are resetting the value of the image view back to its identity in order
  // to ensure the animation occurs while scrolling the collection view
  heartImageView.transform = CGAffineTransform.identity
}
```

![pulsating heart](Assets/pulsating-heart.gif)


