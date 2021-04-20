import Foundation

// Singleton, API class example

class API {
    
    static let shared = API() // Static property can be accessed globally
    var isRequestPending = false
    
    private init () {} // Mark init as private, so this class cannot be initialised from the outside
    
    func makeAPIRequest() {
        if isRequestPending {
            return
        }
        isRequestPending = true
        
        // Make https request
    }
    
    func onReturnAPIRequest() {
        isRequestPending = false
        
        // Handle request data
    }
    
}

// Call API singleton anywhere
API.shared.makeAPIRequest()



