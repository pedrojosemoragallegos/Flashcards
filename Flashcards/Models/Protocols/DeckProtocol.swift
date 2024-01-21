import Foundation

protocol DeckProtocol: AnyObject {
    var id: UUID? { get set }
    var name: String { get set }
    var specialCards: [SpecialCardProtocol] { get set }
    var algorithmName: String { get }
}

