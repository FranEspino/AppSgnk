
import SwiftUI

@main
struct CodiDriveApp: App {
    @StateObject var clientes = ClienteModel()

    var body: some Scene {
        WindowGroup {
            Clientes()
                .environmentObject(clientes)
        }
    }
}
