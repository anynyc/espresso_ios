//
//  VideoAPIManager.swift
//  espressoV1
//
//  Created by Mike on 2/11/17.
//  Copyright © 2017 GoodGood. All rights reserved.
//

import Foundation
import Alamofire


struct VideoAPIConstants {
  static let videos = "videos"
}

class VideoAPIManager: NSObject {
  
  
  func getTodaysVideos(completion: @escaping ([[String: AnyObject]]) -> ()) {
    let baseUrl = "https://604ca666.ngrok.io"
    let videoUrlString = baseUrl + APIConstants.espressoApiUrl + APIConstants.espressoVideoUrl
    guard let videoUrl = URL(string: videoUrlString) else {
      print("CAPI: contacts url failed")
      completion([[String: AnyObject]]())
      return
    }
    
    Alamofire.request(videoUrl, method: .get, encoding: URLEncoding.default).responseJSON { response in
      if let jsonResponse = response.result.value as? [String: AnyObject] {
        //Do we want to return contacts not on app? or contacts on app?
        if let videosOnApp = jsonResponse[VideoAPIConstants.videos] as? [[String: AnyObject]] {
          completion(videosOnApp)
        } else {
          print("CAPI: json dictionary for contacts key invalid")
          completion([[String: AnyObject]]())
        }
      } else {
        print("CAPI: json response failed")
        completion([[String: AnyObject]]())
      }
    }
  }
  
  
  
}
