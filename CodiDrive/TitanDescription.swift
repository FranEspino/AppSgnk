//
//  TitanDescription.swift
//  CodiDrive
//
//  Created by vespro on 24/11/21.
//

import SwiftUI

struct TitanDescription: View {
    let titan : String
    let nombre : String

    var body: some View {
   
        VStack(alignment: .center) {
            Text("\(nombre)")
            Text("\(titan)")
                .padding(24)
                
        }
            
        
    }
}

struct TitanDescription_Previews: PreviewProvider {
    static var previews: some View {
        TitanDescription(titan: "test",nombre: "name")
    }
}
