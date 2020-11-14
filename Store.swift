//
//  Store.swift
//  SwiftUITest
//
//  Created by Xinbo Lian on 2020/11/14.
//

import Foundation
import Combine


import Combine

class Store: ObservableObject {
    
    init() {
        setupObservers()
    }
    
    @Published var appState = AppState()
    
    /// sink{ ... }.store(in: &disposeBag)
    var disposeBag = [AnyCancellable]()
    
    func dispatch(_ action: AppAction) {
        #if DEBUG
        print("[ACTION]: \(action)")
        #endif
        let result = Store.reduce(state: appState, action: action)
        
        appState = result.0
        
        if let command = result.1 {
            #if DEBUG
            print("[COMMAND]: \(command)")
            #endif
            command.execute(in: self)
        }
    }
    
    static func reduce(state: AppState,action: AppAction) -> (AppState, AppCommand?)
    {
        var appState = state
        var appCommand: AppCommand?
        switch action {
        case .loadData:
            break
        }
        return (appState, appCommand)
    }
    
    
    ///  添加启动时需要的监听
    func setupObservers() {
        
    }
}
