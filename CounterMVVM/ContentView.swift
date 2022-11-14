//
//  ContentView.swift
//  CounterMVVM
//
//  Created by neso on 2022-11-14.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.counter)")
                .font(.system(size: 128))
                .bold()
                .foregroundColor(.purple)
                .padding()
            
            HStack {
                Button("Reset") {
                    viewModel.reset()
                }
                .padding()
                
                Button("Sub") {
                    viewModel.sub()
                }
                .padding()
                
                Button("Add") {
                    viewModel.add()
                }
                .padding()
                
                Button("+5") {
                    viewModel.add(5)
                }
                .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
