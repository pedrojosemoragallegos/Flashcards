import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: FlashcardViewModel
    
    var body: some View {
        VStack {
            List(viewModel.flashcards, id: \.id) { flashcard in
                VStack(alignment: .leading) {
                      Text("Q: \(flashcard.question)")
                      Text("A: \(flashcard.answer)")
                  }
            }
            
            Button("Add Flashcard") {
                viewModel.addFlashcard(question: "Question", answer: "Answer")
            }
        }

    }
}

