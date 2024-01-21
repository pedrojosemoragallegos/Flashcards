import Foundation

protocol PerformanceProtocol {}

protocol SpacedRepetitionProtocol {
    associatedtype SpecialCardType
    associatedtype PerformanceType
    
    static func updateCard(specialCard: SpecialCardType, performance: PerformanceType)
}
