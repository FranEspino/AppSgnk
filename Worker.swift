//
//  Worker.swift
//  CodiDrive
//
//  Created by vespro on 24/11/21.
//

import SwiftUI

struct Worker: View {
    let nombre: String
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(nombre)
                    .font(.headline)
                Text("Trabajador de Vespro")
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "pencil")
        }
    }
}

struct Worker_Previews: PreviewProvider {
    static var previews: some View {
        Worker(nombre: "test")
    }
}
