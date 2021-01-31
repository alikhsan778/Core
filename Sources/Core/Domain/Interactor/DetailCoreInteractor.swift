//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

import Combine

public struct DetailCoreInteractor<Request, DataPoster, Response, R: DetailRepository>: DetailCoreUseCase
where R.Request == Request,
      R.DataPoster == DataPoster,
      R.Response == Response {

  private let _repository: R
  private let _dataPoster: DataPoster

  public init(repository: R, dataPoster: DataPoster) {
    _repository = repository
    _dataPoster = dataPoster
  }

  public func executeDetail(request: Request?) -> AnyPublisher<Response, Error> {
    return _repository.executeDetailMovie(request: request, dataPoster: _dataPoster)
  }

  public func executeMakeFavorite(request: Request?, state: Bool) -> AnyPublisher<Bool, Error> {
    return _repository.executeMakeFavorite(request: request, for: _dataPoster, state: state)
  }

  public func getDataPoster() -> DataPoster {
    return _dataPoster
  }

}
