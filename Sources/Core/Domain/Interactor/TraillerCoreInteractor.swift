//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

import Combine

public struct TraillerCoreInteractor<Request, DataPoster, MovieTitle, Response, R: TraillerRepository>: TraillerCoreUseCase
where R.Request == Request,
      R.DataPoster == DataPoster,
      R.Response == Response {

  private let _repository: R
  private let _dataPoster: DataPoster
  private let _movieTitle: MovieTitle

  public init(repository: R, dataPoster: DataPoster, movieTitle: MovieTitle) {
    _repository = repository
    _dataPoster = dataPoster
    _movieTitle = movieTitle
  }

  public func executeTrailler(request: Request?) -> AnyPublisher<Response, Error> {
    return _repository.executeTrailler(request: request, posterMovie: _dataPoster)
  }

  public func getMovieTitle() -> MovieTitle {
    return _movieTitle
  }

}
