import SwiftUI

struct DeckFlashcardsView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckFlashcardsViewModel

    var body: some View {
        List(viewModel.specialCards, id: \.id) { specialCard in
            VStack(alignment: .leading, spacing: 5) {
                Text("\(String(describing: type(of: specialCard)))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Question:")
                        .fontWeight(.bold)
                    Text(specialCard.flashcard.question)
                    Spacer()
                }

                HStack {
                    Text("Answer:")
                        .fontWeight(.bold)
                    Text(specialCard.flashcard.answer)
                    Spacer()
                }
            }
            .padding(.vertical) // Adds some vertical padding for better spacing
        }
        .navigationTitle(viewModel.deck.name)
    }
}
