import SwiftUI

struct DeckFlashcardsView: View {
    @Environment(\.serviceContainer) var serviceContainer: ServiceContainer
    @ObservedObject var viewModel: DeckFlashcardsViewModel
    
    var body: some View {
        List(viewModel.flashcards, id: \.id) { flashcard in
            HStack {
                Text("Question: \(flashcard.question)")
                Text("Answer: \(flashcard.answer)")
            }
        }
        .navigationTitle(viewModel.deck.name)
        .toolbar {
            Button("Add Flashcard") {
                viewModel.addFlashcard(question: "Test", answer: "Test")
            }
        }
    }
}
