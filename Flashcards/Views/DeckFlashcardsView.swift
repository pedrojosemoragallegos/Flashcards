import SwiftUI

struct DeckFlashcardsView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckFlashcardsViewModel<AnkiAlgorithmDeck>
    @State private var selectedCards: [UUID: Bool] = [:] // State variable to track selected cards

    var body: some View {
        List(viewModel.specialCards, id: \.id) { specialCard in
            VStack(alignment: .leading, spacing: 5) {
                Text("\(String(describing: type(of: specialCard)))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text(specialCard.flashcard.question) // Assuming specialCard has a flashcard property
                    Spacer()
                }
                
                if selectedCards[specialCard.id!, default: false] {
                    Text(specialCard.flashcard.answer)
                        .foregroundColor(.gray)
                }
            }
            .onTapGesture {
                withAnimation {
                    selectedCards[specialCard.id!] = !(selectedCards[specialCard.id!] ?? false)
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(viewModel.deck.name)
    }
}
