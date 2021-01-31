//
//  File.swift
//  
//
//  Created by Al Ikhsan on 03/01/21.
//

import SwiftUI
import Combine

public class CoreFavoritePresenter<
  Request,
  Response,
  Interactor: FavoriteCoreUseCase>: CorePresenter
where Interactor.Request == Request,
      Interactor.Response == Response {

  @Published public var  data: Response?

  public let gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 16), count: 2)
  private let _useCase: Interactor
  public init(useCase: Interactor) {
    self._useCase = useCase
  }

  public func getFavoriteMovies(request: Request?) {
    loadingState = true
    self._useCase.getFavoriteMovies(request: request)
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        self.loadingState = false
        switch completion {
        case .failure(let error): self.errorMessage = error.localizedDescription
        default: break
        }
      },
      receiveValue: { response in
        self.data = response
      })
      .store(in: &cancellable)
  }
}
