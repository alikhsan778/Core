//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

import SwiftUI
import Combine

public class CoreTraillerPresenter<
  Request,
  DataPoster,
  MovieTitle,
  Response,
  Interactor: TraillerCoreUseCase>: CorePresenter
where Interactor.Request == Request,
      Interactor.DataPoster == DataPoster,
      Interactor.MovieTitle == MovieTitle,
      Interactor.Response == Response {

  @Published public var data: Response?

  private let _useCase: Interactor
  public init(useCase: Interactor) {
    self._useCase = useCase
  }

  public func getTrailler(request: Request?) {
    loadingState = true
    _useCase.executeTrailler(request: request)
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        self.loadingState = false
      },
      receiveValue: { result in
        self.data = result
      })
      .store(in: &cancellable)
  }

  public func getMovieTitle() -> MovieTitle{
    return _useCase.getMovieTitle()
  }

}
