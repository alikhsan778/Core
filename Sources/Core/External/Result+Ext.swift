//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Foundation
import RealmSwift

extension Results {

  public func toArray<T>(ofType: T.Type) -> [T] {
    var array = [T]()
    for index in 0 ..< count {
      if let result = self[index] as? T {
        array.append(result)
      }
    }
    return array
  }

  public func toObject<T> (ofType: T.Type) -> T? {
    return self as? T
  }
}
