import SwiftUI

struct characterCellView: View {
    let character: CharactersModel

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 120, height: 180)
                .cornerRadius(20)
            
            Text(character.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text("\(character.species) , \(character.status)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct characterCellView_Previews: PreviewProvider {
    static var previews: some View {
        characterCellView(character: CharactersModel(id: 1, name: "Rick sanchez", gender: "Male", species: "Human", status: "Alive"))
    }
}
