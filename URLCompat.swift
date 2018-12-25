import Foundation

protocol URLCompat {
    
    var asString: String { get }
    var asUrl: URL? { get }
}

extension String : URLCompat {
    
    var asString: String {
        return self
    }
    
    var asUrl: URL? {
        return URL(string: self)
    }
}

extension URL : URLCompat {
    
    var asString: String {
        return absoluteString
    }
    
    var asUrl: URL? {
        return self
    }
}
