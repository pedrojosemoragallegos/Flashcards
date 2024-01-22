import Foundation

protocol ModelProtocol: Identifiable, AnyObject {
    var id: UUID? { get set }
}
