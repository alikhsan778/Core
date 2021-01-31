//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

import Combine

public protocol DetailCoreUseCase {
  associatedtype Request
  associatedtype DataPoster
  associatedtype Response

  func executeDetail(request: Request?) -> AnyPublisher<Response, Error>
  func executeMakeFavorite(request: Request?, state: Bool) -> AnyPublisher<Bool, Error>
  func getDataPoster() -> DataPoster
}
