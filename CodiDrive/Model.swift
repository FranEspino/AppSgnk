
import SwiftUI
import Combine
struct Titanes: Codable,Identifiable {
    let id: Int
    let img: URL
    let name, altura, definition: String
    let poder: [Int]
    let titaneDescription: String

    enum CodingKeys: String, CodingKey {
        case id, img, name, altura, definition, poder
        case titaneDescription = "description"
    }
}


struct Cliente: Codable,Identifiable {
    let id: Int
    let firstName, lastName, email: String
    let gender: Gender
    let address: String
    let foto: String

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case email, gender, address, foto
    }
}

enum Gender: String, Codable {
    case agender = "Agender"
    case bigender = "Bigender"
    case female = "Female"
    case genderfluid = "Genderfluid"
    case genderqueer = "Genderqueer"
    case male = "Male"
    case nonBinary = "Non-binary"
    case polygender = "Polygender"
}


class ClienteModel:ObservableObject {
    @Published var clientes:  [Cliente]
    init(){
        guard let url  = Bundle.main.url(forResource: "CLIENTES", withExtension: "json") else{
            clientes = []
            return
        }
        do{
            let data =  try Data(contentsOf: url)
            clientes = try JSONDecoder().decode([Cliente].self, from: data)
            
        }catch{
            print("Error en la carga \(error)")
            clientes = []
        }
    }
}



class TitanesModel:ObservableObject {
    @Published var titanes:  [Titanes]
    init(){
        guard let url  = Bundle.main.url(forResource: "TITANES", withExtension: "json") else{
            titanes = []
            return
        }
        do{
            let data =  try Data(contentsOf: url)
            titanes = try JSONDecoder().decode([Titanes].self, from: data)
            
        }catch{
            print("Error en la carga \(error)")
            titanes = []
        }
    }
}


class NetworkModel: ObservableObject{
    @Published var avatar = Image(systemName: "person.fill")
    
    var suscriber = Set<AnyCancellable>()
    
    func getImage(url:URL){
        URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .compactMap { UIImage(data: $0) }
            .map {Image(uiImage: $0) }
            .replaceEmpty(with: Image(systemName:"person.fill"))
            .replaceError(with: Image(systemName:"person.fill"))
            .assign(to: \.avatar, on:self)
            .store(in: &suscriber)
    }
    
}
