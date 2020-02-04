//
//  HeartCell.swift
//  CollectionViewCell-Animation
//
//  Created by Alex Paul on 2/3/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class HeartCell: UICollectionViewCell {
  
  @IBOutlet weak var heartImageView: UIImageView!
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
    // here we are resetting the value of the image view back to its identity in order
    // to ensure the animation occurs while scrolling the collection view
    heartImageView.transform = CGAffineTransform.identity
  }
  
  private func pulsateHeart() {
    UIView.animate(withDuration: 0.5, delay: 0.0, options: [.repeat, .autoreverse], animations: {
      self.heartImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    }, completion: nil)
  }
  
  public func configureCell() {
    pulsateHeart()
  }
}
