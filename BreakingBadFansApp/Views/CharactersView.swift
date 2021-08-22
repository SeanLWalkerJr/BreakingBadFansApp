
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
                LazyVGrid(columns: columns, content:
                            {
                                ForEach(characterViewModel.characters)
                                { character in
                                    NavigationLink(destination: CharacterDetailView(character: character), label:
                                                    {
                                                        VStack(alignment: .center)
                                                        {
                                                            WebImage(url: character.img)
                                                                .resizable()
                                                                .indicator(.activity)
                                                                .aspectRatio(contentMode: .fit)
                                                                .frame(height: 150)
                                                                .cornerRadius(8)
                                                            Text(character.nickname)
                                                                .foregroundColor(.secondary)
                                                        }
                                                        
                                                    })
                                }
                            })
                    .padding()
            }
            .navigationTitle("Breaking Bad Fans")
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

