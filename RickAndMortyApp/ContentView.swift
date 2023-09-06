import SwiftUI

struct ContentView: View {
    @State private var characters: [CharactersModel] = []

    var body: some View {
        NavigationView {
            List(characters, id: \.id) { character in
                Text(character.name)
                Text(character.gender)

            }
            .onAppear {
                Task {
                    do {
                        characters = try await fetchCharacters()
                        print("API conectada com sucesso")
                    } catch {
                        print("Error fetching data: \(error)")
                    }
                }
            }
            .navigationBarTitle("Character List")
        }
    }


    func fetchCharacters() async throws -> [CharactersModel] {
            guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
                print("Api conectada com sucesso")
                throw URLError(.badURL)

            }

            let (data, _) = try await URLSession.shared.data(from: url)
            let dataResponse = try JSONDecoder().decode(CharactersResponse.self, from: data)
            print("Busca de personagens bem-sucedida")
            return dataResponse.results
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// func funcaoChamaAPI() async throw -> 
