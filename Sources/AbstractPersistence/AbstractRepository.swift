import Foundation

public struct FindRequest {
    public var skip: Int?
    public var limit: Int?
    public var sortDescriptors: [NSSortDescriptor]?
    public var predicate: NSPredicate

    public init(predicate: NSPredicate = .init(value: true), sortDescriptors: [NSSortDescriptor]?=nil, limit: Int?=nil, skip: Int?=nil) {
        self.predicate = predicate
        self.skip = skip
        self.limit = limit
        self.sortDescriptors = sortDescriptors
    }

}

public protocol AbstractRepository {

    associatedtype T: Identifiable
    func insert(value: T) throws
    func insertMany(value: [T]) throws
    func save(value: T) throws
    func saveMany(value: [T]) throws
    func remove(value: T) throws
    func remove(id: T.Identifier) throws
    func find(request: FindRequest) -> [T]
    func getById(id: T.Identifier) -> T?
    func get(predicate: NSPredicate) -> T?
    
}
