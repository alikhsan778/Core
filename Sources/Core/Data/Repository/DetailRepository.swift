//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//
import Combine

public protocol DetailRepository {
  associatedtype Request
  associatedtype DataPoster
  associatedtype Response

  func executeDetail(request: Request?, dataPoster: DataPoster, completion: @escaping(CoreResults<Response, String>) -> Void)
  func executeFavorite(dataPoster: DataPoster, completion: @escaping(CoreResults<Bool, Error>) -> Void)
  func executeMakeFavorite(request: Request?,for Bind: DataPoster, state: Bool) -> AnyPublisher<Bool, Error>
}
