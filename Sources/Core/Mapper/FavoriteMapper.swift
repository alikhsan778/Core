//
//  File.swift
//  
//
//  Created by Al Ikhsan on 01/01/21.
//

public protocol FavoriteMapper {
  associatedtype Response
  associatedtype ObjEntity
  associatedtype ArrEntity
  associatedtype Domain

  func transformRespToEntity(response: Response) -> ObjEntity
  func transformEntityToDomain(entity: ArrEntity) -> Domain
}
