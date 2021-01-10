//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

import Combine

public protocol TraillerDataSource {
  associatedtype Request
  associatedtype Response

  func executeTraillerView(request: Request?) -> AnyPublisher<Response, Error>
}

