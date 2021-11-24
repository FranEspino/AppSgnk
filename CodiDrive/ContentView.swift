//
//  ContentView.swift
//  CodiDrive
//
//  Created by vespro on 23/11/21.
//

import SwiftUI
struct ContentView: View {
    
    let nombres = ["👨🏻‍⚕️ Jossep Melendez ","👨🏻‍🏫 Henry Delgado ","👨🏻‍💻 Fran Espino ","👨🏼‍💼 Henry Cayetano ","🧔🏻‍♂️ Michel ", "👨🏼‍💼 Edgar ", "👩🏻‍💼 Sarai "]
    
    let puestos = ["Jefe de Marketing","Programador Web","Desarrollador movil","Jefe de Ventas","Tester","Jefe de diseño","Community Manager"]
    
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


