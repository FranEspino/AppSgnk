//
//  ContentView.swift
//  CodiDrive
//
//  Created by vespro on 23/11/21.
//

import SwiftUI
struct ContentView: View {
    
    let nombres = ["π¨π»ββοΈ Jossep Melendez ","π¨π»βπ« Henry Delgado ","π¨π»βπ» Fran Espino ","π¨πΌβπΌ Henry Cayetano ","π§π»ββοΈ Michel ", "π¨πΌβπΌ Edgar ", "π©π»βπΌ Sarai "]
    
    let puestos = ["Jefe de Marketing","Programador Web","Desarrollador movil","Jefe de Ventas","Tester","Jefe de diseΓ±o","Community Manager"]
    
    var currentIndex = 0
        var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(nombres,id:\.self){ nombre in
                        NavigationLink(destination: Detalle(nombre: nombre)) {
                            Worker(nombre: nombre)
                        }
                        
                    }
                }
            }
            .navigationTitle("Vespro")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


