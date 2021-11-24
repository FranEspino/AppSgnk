//
//  Detalle.swift
//  CodiDrive
//
//  Created by vespro on 24/11/21.
//

import SwiftUI

struct Detalle: View {
    let nombre: String
    var body: some View {
        Text("\(nombre)")
    }
}

struct Detalle_Previews: PreviewProvider {
    static var previews: some View {
        Detalle(nombre: "test")
    }
}
