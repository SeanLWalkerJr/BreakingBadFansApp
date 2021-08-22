
import SwiftUI
import SDWebImageSwiftUI

struct CharactersView: View {
    
    @ObservedObject var characterViewModel = CharacterViewModel()
    
    let columns = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16),
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16),
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 16)
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(characterViewModel.characters) { character in
                        
                        NavigationLink(destination: CharacterDetailView(character: character), label: {
                            WebImage(url: character.img)
                                .resizable()
                                .indicator(.activity)
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                                .cornerRadius(8)
                            
                        })
                        
                    }
                })
                .padding()
            }
            .navigationTitle("Characters")
            .onAppear(perform: {
                characterViewModel.fetchCharacters()
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}

