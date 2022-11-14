//
//  ContentView-ViewModel.swift
//  CounterMVVM
//
//  Created by neso on 2022-11-14.
//

import Foundation

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published private(set) var counter = 0
        
        func add(_ value: Int = 1) {
            counter += value;
        }
        
        func sub() {
            if (counter < 1) { return }
                
            counter -= 1;
        }
        
        func reset() {
            counter = 0
        }
    }
}
