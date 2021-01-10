//
//  File.swift
//  
//
//  Created by Al Ikhsan on 26/12/20.
//

import SwiftUI
import Combine

public class CorePresenter: ObservableObject {
  public var cancellable: Set<AnyCancellable> = []
  @Published public var errorMessage: String = ""
  @Published public var loadingState: Bool = false
}
