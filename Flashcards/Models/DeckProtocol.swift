import Foundation

protocol DeckProtocol: ModelProtocol {
    associatedtype SpecialCardType: SpecialCardProtocol
    
    var name: String { get }
    var specialCards: [SpecialCardType] { get set }
    var algorithmName: String { get }
    
    //static func createSpecialCard(flashcard: Flashcard) -> SpecialCardType
    
}
