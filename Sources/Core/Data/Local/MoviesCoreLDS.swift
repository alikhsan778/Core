//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Combine

public protocol MoviesCoreLDS {
  associatedtype Request
  associatedtype Response

  func list(request: Request?) -> AnyPublisher<[Response], Error>
  func add(entities: [Response]) -> AnyPublisher<Bool, Error>
}
