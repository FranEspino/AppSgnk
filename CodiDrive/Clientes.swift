//
//  Clientes.swift
//  CodiDrive
//
//  Created by vespro on 24/11/21.
//

import SwiftUI

struct Clientes: View {
    
    @EnvironmentObject var titanes: TitanesModel
    
    var body: some View {
        NavigationView {
            
            List{
                ForEach(titanes.titanes){
                        titan in
                    NavigationLink(destination:
                                    TitanDescription(titan: titan.titaneDescription, nombre: titan.name)) {
                        TitanRow(titan: titan)
                        }
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Titanes")
        }


    }
}

struct Clientes_Previews: PreviewProvider {
    static var previews: some View {
        Clientes()
            .environmentObject(TitanesModel())
    }
}

struct TitanRow: View {
    let titan : Titanes
    @ObservedObject var imagenTtan = NetworkModel()
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("\(titan.name)")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text("\(titan.definition)")
                    .font(.footnote)
            }
            Spacer()
            VStack{
                imagenTtan.avatar
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(50)
                Spacer()
                Text("\(titan.altura)")
            }
        }
        .onAppear {
            imagenTtan.getImage(url: titan.img)
        }
    }
}
