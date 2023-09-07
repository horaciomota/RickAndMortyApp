import SwiftUI

struct characterCellView: View {
    let character: CharactersModel

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: character.image)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 150, height: 200)
                        
                } else {
                    Rectangle()
                        .frame(width: 150, height: 200)
                        .cornerRadius(20)                }
            }

            
            Text(character.name)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Text("\(character.species) , \(character.status)")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }
}

struct characterCellView_Previews: PreviewProvider {
    static var previews: some View {
        characterCellView(character: CharactersModel(id: 1, name: "Rick sanchez", gender: "Male", species: "Human", status: "Alive", image: "xxxx"))
    }
}
