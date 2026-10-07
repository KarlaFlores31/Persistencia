//
//  ContentView.swift
//  Persistencia
//
//  Created by Karla Flores on 05/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                Text("Hola")
            }
            Tab("Ubicacion", systemImage: "location"){
                Text("Ubicacion")
            }
        }
    }
}

#Preview {
    ContentView()
}
