import Foundation

public protocol AbstractRepository {
    associatedtype T: Identifiable
    func save(value: T)
    func remove(value: T)
    func find(predicate: NSPredicate) -> [T]
    func getById(id: T.Identifier) -> T?
    func remove(id: T.Identifier)
    func get(predicate: NSPredicate) -> T?
}
