//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

import Combine

public protocol TraillerRepository {
  associatedtype Request
  associatedtype DataPoster
  associatedtype Response

  func executeTrailler(request: Request?, posterMovie: DataPoster) -> AnyPublisher<Response, Error>
}
