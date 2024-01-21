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
            Button(action: {
                //never call it like that but its for testing
                serviceContainer.learningService.updateCard(flashcard: specialCard)
            }) {
                Text("Perform Action")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.vertical)
        }
        .navigationTitle(viewModel.deck.name)
    }
}

