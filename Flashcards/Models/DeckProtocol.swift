import Foundation

protocol DeckProtocol: ModelProtocol where SpecialCardType: SpecialCardProtocol {
    associatedtype SpecialCardType: SpecialCardProtocol
    
    var name: String { get }
    var specialCards: [SpecialCardType] { get set }
    var algorithmName: String { get }
    
    static func createSpecialCard(flashcard: Flashcard) -> SpecialCardType
    
}
