//
//  File.swift
//  
//
//  Created by Al Ikhsan on 20/12/20.
//

public protocol Mapper {
  associatedtype Response
  associatedtype Entity
  associatedtype Domain

  func transformRespToEntity(response: Response) -> Entity
  func transformEntityToDomain (entity: Entity) -> Domain
}
