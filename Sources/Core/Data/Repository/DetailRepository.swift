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

  func executeMakeFavorite(
    request: Request?,
    for Bind: DataPoster,
    state: Bool) -> AnyPublisher<Bool, Error>

  func executeDetailMovie(
    request: Request?,
    dataPoster: DataPoster) -> AnyPublisher<Response, Error>
}
