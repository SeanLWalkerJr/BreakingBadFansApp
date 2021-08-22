import SwiftUI
import SDWebImageSwiftUI

struct CharacterDetailView: View {
    
    var character : Character
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                WebImage(url: character.img)
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .black, radius: 10)
                Text(character.name)
                    .font(.title)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                
                Text(character.nickname)
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                Spacer()
                    .frame(height: 15)
                Text("Status")
                    .font(.title2)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                Text(character.status)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
            }
            .padding(.horizontal)
            .background(
                WebImage(url: character.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 20)
            )
        }
    }
}
