//
//  EspressoAPIConstants.swift
//  espressoV1
//
//  Created by Mike on 2/11/17.
//  Copyright © 2017 GoodGood. All rights reserved.
//

import Foundation

struct APIConstants {
  static let espressoApiUrl = "/api/v1"
  static let espressoVideoUrl = "/videos"
}


enum ContentItemError: Error {
  case networkUnreachableError
  case apiError(Error)
  case typeMismatch(String)
  case notFound(String)
  
  var isNetworkUnreachable: Bool {
    switch self {
    case .networkUnreachableError: return true
    default: return false
    }
  }
}
