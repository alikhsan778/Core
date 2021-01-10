//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

import Foundation
import Combine

public struct Interactor<Request, Response, R: Repository>: UseCase
where R.Request == Request, R.Response == Response {
  private let _repository: R

  public init(repository: R) {
    _repository = repository
  }

  public func executeData(request: Request?) -> AnyPublisher<Response, Error> {
    return _repository.executeData(request: request)
  }

  public func execute(request: Request?) -> AnyPublisher<[Response], Error> {
    return _repository.execute(request: request)
  }
}

