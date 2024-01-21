import Foundation

struct LeitnerSystem: SpacedRepetitionProtocol {
    static func doSomething() {
        
    }
    
}


/*
 class Deck {
     private var flashcards: [Flashcard] = []
     private var boxMapping: [Int: [Flashcard]] = [:]
     let numberOfBoxes: Int = 5

     // Add a new flashcard
     func addFlashcard(question: String, answer: String) {
         let newCard = Flashcard(question: question, answer: answer)
         flashcards.append(newCard)
         boxMapping[1, default: []].append(newCard)
     }

     // Update the box of a flashcard based on user's answer
     func updateFlashcardBox(card: Flashcard, isCorrect: Bool) {
         guard let currentBox = boxMapping.first(where: { $0.value.contains(where: { $0.question == card.question && $0.answer == card.answer }) })?.key else { return }

         boxMapping[currentBox]?.removeAll(where: { $0.question == card.question && $0.answer == card.answer })

         let newBox = isCorrect ? min(currentBox + 1, numberOfBoxes) : 1
         boxMapping[newBox, default: []].append(card)
     }

     // Function to get cards for review from a specific box
     func getCardsForReview(fromBox box: Int) -> [Flashcard] {
         return boxMapping[box, default: []]
     }
 }

 */
