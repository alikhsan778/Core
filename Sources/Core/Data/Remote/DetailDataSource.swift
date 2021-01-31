//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

import Combine

public protocol DetailDataSource {
  associatedtype Request
  associatedtype ResponseDetail
  associatedtype ResponseCredit

  func executeDetail(request: Request?) -> AnyPublisher<ResponseDetail, Error>
  func executeCredit(request: Request?) -> AnyPublisher<ResponseCredit, Error>
}
