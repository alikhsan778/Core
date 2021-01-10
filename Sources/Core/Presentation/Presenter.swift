//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import SwiftUI
import Combine

public class Presenter<Request, Response, Interactor: UseCase>: CorePresenter
where Interactor.Request == Request,
      Interactor.Response == Response {

  @Published public var data: Response?
  
  private let _useCase: Interactor
  public init(useCase: Interactor) {
    _useCase = useCase
  }

  public func getData(request: Request?) {
    loadingState = true
    _useCase.executeData(request: request)
      .receive(on: RunLoop.main)
      .sink(receiveCompletion: { completion in
        self.loadingState = false
        switch completion {
          case .failure(let error): self.errorMessage = error.localizedDescription
          default: break
        }
      }, receiveValue: { response in
        self.data = response
      })
      .store(in: &cancellable)
  }
}
