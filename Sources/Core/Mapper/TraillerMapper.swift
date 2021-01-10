//
//  File.swift
//  
//
//  Created by Al Ikhsan on 02/01/21.
//

public protocol TraillerMapper {
  associatedtype Response
  associatedtype Domain

  func transformRespToDomain(response: Response) -> Domain
}
