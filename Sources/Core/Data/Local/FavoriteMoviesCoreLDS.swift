//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Combine

public protocol FavoriteMoviesCoreLDS {
  associatedtype Request
  associatedtype Response

  func getFavoriteMovies() -> AnyPublisher<[Response], Error>
  func updateFavorite(entity: Response, state: Bool) -> AnyPublisher<Bool, Error>
}
