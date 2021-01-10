//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

import Combine

public protocol TraillerCoreUseCase {
  associatedtype Request
  associatedtype DataPoster
  associatedtype Response
  associatedtype MovieTitle

  func executeTrailler(request: Request?) -> AnyPublisher<Response, Error>
  func getMovieTitle() -> MovieTitle
}
