//
//  File.swift
//  
//
//  Created by Al Ikhsan on 03/01/21.
//

import Combine

public protocol FavoriteCoreUseCase {
  associatedtype Request
  associatedtype Response

  func getFavoriteMovies(request: Request?) -> AnyPublisher<Response, Error>
}
