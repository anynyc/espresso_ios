//
//  EspressoVideoModel.swift
//  espressoV1
//
//  Created by Mike on 2/11/17.
//  Copyright © 2017 GoodGood. All rights reserved.
//

import Foundation

struct VideoConstants {
  static let videoId = "id"
  static let videoUrl = "video_url"
  static let gifUrl = "gif_url"
  static let headline = "headline"
  static let emojiOne = "emoji_one"
  static let emojiTwo = "emoji_two"
  static let emojiThree = "emoji_three"

}

class EspressoVideoModel: ContentItemModel, NSCoding {
  
  var videoId: Int
  var videoUrl: String
  var gifUrl: String
  var headline: String
  var emojiOne: String
  var emojiTwo: String
  var emojiThree: String

  
  
  
  override init?(dictionary: [String: AnyObject]) {
    guard let video = dictionary[VideoConstants.videoId] as? Int else {
      return nil
    }
    videoId = video
    
    guard let url = dictionary[VideoConstants.videoUrl] as? String else {
      return nil
    }
    
    videoUrl = url
    
    guard let gif = dictionary[VideoConstants.gifUrl] as? String else {
      return nil
    }
    
    gifUrl = gif
    
    guard let headlineText = dictionary[VideoConstants.headline] as? String else {
      return nil
    }
    
    headline = headlineText
    
    guard let firstEmoji = dictionary[VideoConstants.emojiOne] as? String else {
      return nil
    }
    
    emojiOne = firstEmoji
    
    guard let secondEmoji = dictionary[VideoConstants.emojiTwo] as? String else {
      return nil
    }
    
    emojiTwo = secondEmoji
    
    guard let thirdEmoji = dictionary[VideoConstants.emojiThree] as? String else {
      return nil
    }
    
    emojiThree = thirdEmoji
    
    
    super.init(dictionary: dictionary)
  }
  
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(videoId, forKey: VideoConstants.videoId)
    aCoder.encode(videoUrl, forKey: VideoConstants.videoUrl)
    aCoder.encode(gifUrl, forKey: VideoConstants.gifUrl)
    aCoder.encode(headline, forKey: VideoConstants.headline)
    aCoder.encode(emojiOne, forKey: VideoConstants.emojiOne)
    aCoder.encode(emojiTwo, forKey: VideoConstants.emojiTwo)
    aCoder.encode(emojiThree, forKey: VideoConstants.emojiThree)
    
    super.encodeWithEncoder(aCoder)
  }
  
  required init?(coder aDecoder: NSCoder) {
    let video = aDecoder.decodeInteger(forKey: VideoConstants.videoId)
    videoId = video
    
    guard let url = aDecoder.decodeObject(forKey: VideoConstants.videoUrl) as? String else {
      return nil
    }
    
    videoUrl = url
    
    guard let gif = aDecoder.decodeObject(forKey: VideoConstants.gifUrl) as? String else {
      return nil
    }
    
    gifUrl = gif
    
    guard let headlineText = aDecoder.decodeObject(forKey: VideoConstants.headline) as? String else {
      return nil
    }
    
    headline = headlineText
    
    guard let firstEmoji = aDecoder.decodeObject(forKey: VideoConstants.emojiOne) as? String else {
      return nil
    }
    
    emojiOne = firstEmoji
    
    guard let secondEmoji = aDecoder.decodeObject(forKey: VideoConstants.emojiTwo) as? String else {
      return nil
    }
    
    emojiTwo = secondEmoji
    
    guard let thirdEmoji = aDecoder.decodeObject(forKey: VideoConstants.emojiThree) as? String else {
      return nil
    }
    
    emojiThree = thirdEmoji
    
    
    super.init(coder: aDecoder)
  }
  
}
