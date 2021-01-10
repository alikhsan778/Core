//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

public protocol DetailMapper {
  associatedtype DetailResponse
  associatedtype CreditResponse
  associatedtype Domain

  func transformDetailRespToDomain(
    detailResponse: DetailResponse,
    creditResponse: CreditResponse,
    movieFavorite: Bool) -> Domain
}
