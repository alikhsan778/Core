//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

import SwiftUI
import Combine

public class CoreDetailPresenter<Request, DataPoster, Response, Interactor: DetailCoreUseCase>: CorePresenter
where Interactor.Request == Request,
      Interactor.DataPoster == DataPoster,
      Interactor.Response == Response {
  
  @Published public var detailMovie: Response?

  private let _useCase: Interactor
  public init(useCase: Interactor) {
    _useCase = useCase
  }
  
  public func getDetailMovie(request: Request?,completion: @escaping(Bool) -> Void) {
    loadingState = true
    _useCase.executeDetail(request: request) { (result) in
      DispatchQueue.main.async {
        self.loadingState = false
        switch result {
          case .Success(let detailMovie):
            self.detailMovie = detailMovie
            completion(true)
          case .Error(let errorMessage) :
            self.errorMessage = errorMessage
            completion(false)
        }
      }
    }
  }
  
  public func makeFavoriteMovie (request: Request?, state: Bool) {
    loadingState = true
    _useCase.executeMakeFavorite(request: request, state: state)
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        self.loadingState = false
        switch completion {
          case .failure(let error): self.errorMessage = error.localizedDescription
          default: break
        }
      },
      receiveValue: { _ in })
      .store(in: &cancellable)
  }

  public var _dataPoster: DataPoster {
    return _useCase.getDataPoster()
  }
}
