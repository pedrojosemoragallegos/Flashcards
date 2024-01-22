import Foundation

protocol SpecialCardProtocol: ModelProtocol {
    associatedtype PerformanceType: PerformanceProtocol
    
    var flashcard: Flashcard { get }
    
    func updatePerformance(performance: PerformanceType)
    
}
