//
//  ProfileView.swift
//  Persistencia
//
//  Created by Karla Flores on 05/10/26.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("nombre") private var nombreguardado: String = ""
    @AppStorage("edad") private var edadguardado: Int = 0
    @State private var name: String = ""
    @State private var age: Int = 0
    var body: some View {
        VStack(spacing: 5){
            Text("Datos previamente guardados: \(nombreguardado) vs \(name)")
            Text("Datos previamente guardados: \(edadguardado) vs \(age)")
            TextField("Dime tu nombre:", text: $name)
            .textFieldStyle(.roundedBorder)
            .padding()
            
            TextField("Dime tu edad:", value: $age, format: .number)
            .textFieldStyle(.roundedBorder)
            .padding()
            
            Button(action:{}){
                Text("Guardar")
            }
            .padding(15)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(Capsule())
            
            Button(action:{
                nombreguardado = name
                edadguardado = age
            }){
                Text("Borrar todo")
            }
            .foregroundColor(.black)
            .padding(10)
        }
    }
}

#Preview {
    ProfileView()
}
