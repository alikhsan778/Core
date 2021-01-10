//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

public protocol DetailDataSource {
  associatedtype Request
  associatedtype ResponseDetail
  associatedtype ResponseCredit

  func executeDetail(request: Request?, completion: @escaping(CoreResults<ResponseDetail, String>) -> Void)
  func executeCredit(request: Request?, completion: @escaping(CoreResults<ResponseCredit, String>) -> Void)
}
