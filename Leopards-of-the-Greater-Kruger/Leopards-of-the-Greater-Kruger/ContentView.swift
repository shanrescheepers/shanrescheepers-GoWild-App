//
//  ContentView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/10.
//

import SwiftUI //core functionality to build swift frontend

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
