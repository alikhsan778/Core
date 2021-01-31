//
//  File.swift
//  
//
//  Created by Al Ikhsan on 31/01/21.
//

import Foundation
import Combine

public protocol DetailMovieCoreLDS {
  associatedtype Request
  associatedtype Entity

  func getFavorite(id: Int) -> AnyPublisher<Bool, Error>
  func executeDetailMovie(id: Int) -> AnyPublisher<Entity, Error>
  func addDetailMovie(id: Int, entity: Entity) -> AnyPublisher<Bool, Error>
}
