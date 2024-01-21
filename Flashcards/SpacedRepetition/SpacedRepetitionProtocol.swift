import Foundation

protocol PerformanceProtocol {}

protocol SpacedRepetitionProtocol {
    associatedtype SpecialCardProtocol
    associatedtype PerformanceProtocol
    
    static func updateCard(specialCard: SpecialCardProtocol, performance: PerformanceProtocol)
}
