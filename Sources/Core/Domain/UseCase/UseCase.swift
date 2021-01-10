//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Combine

public protocol UseCase {
  associatedtype Request
  associatedtype Response

  func executeData(request: Request?) -> AnyPublisher<Response, Error>
  func execute(request: Request?) -> AnyPublisher<[Response], Error>
}
