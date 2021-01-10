//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Foundation
import Alamofire

public struct CoreConstants {
  private static let apiKey = "8f2db84156e67f642d647fdaa1ae8f44"

  public static var parameter: Parameters {
    var nParameter: Parameters = [:]
    nParameter.updateValue(CoreConstants.apiKey, forKey: "api_key")
    nParameter.updateValue("en_us", forKey: "language")
    return nParameter
  }
}
