//
//  File.swift
//  
//
//  Created by Al Ikhsan on 03/01/21.
//

import Combine

public struct FavoriteCoreInteractor<Request, Response, R: FavoriteRepository>: FavoriteCoreUseCase
where R.Request == Request,
      R.Response == Response {
  private let _repository: R
  public init(repository: R) {
    self._repository = repository
  }

  public func getFavoriteMovies(request: Request?) -> AnyPublisher<Response, Error> {
    return _repository.getFavoriteMovies(request: request)
  }
}
