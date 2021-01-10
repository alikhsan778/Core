//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Combine

public protocol DataSource {
  associatedtype Request
  associatedtype Response

  func execute(request: Request?) -> AnyPublisher<Response, Error>
  func execute(request: Request?, page: Int) -> AnyPublisher<Response, Error>
}


