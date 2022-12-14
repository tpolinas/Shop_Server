import Vapor
import Fluent

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }
    
    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    // - MARK: - User
    
    app.get("dummyUser") { request -> User in
        let mockUser = User(id: 123456, login: "login", name: "name", lastname: "last name")
        return mockUser
    }
    
    app.get("id_user", ":numericValue") { request -> User in
        guard let userId = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockUser = User(id: userId, login: "", name: "", lastname: "")
        return mockUser
    }
    
    app.get("user_login", ":stringValue") { request -> User in
        guard let login = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockUser = User(id: 0, login: login, name: "", lastname: "")
        return mockUser
    }
    
    app.get("user_name", ":stringValue") { request -> User in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockUser = User(id: 0, login: "", name: name, lastname: "")
        return mockUser
    }
    
    app.get("user_lastname", ":stringValue") { request -> User in
        guard let lastName = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        let mockUser = User(id: 0, login: "", name: "", lastname: lastName)
        return mockUser
    }
    
    
    // MARK: - Product
    
    app.get("dummyProduct") { request -> Product in
        let mockProduct = Product(result: 0, productName: "", productPrice: 0, productDescription: "")
        return mockProduct
    }
    
    app.get("product_name", ":stringValue") { request -> Product in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockProduct = Product(result: 0, productName: name, productPrice: 0, productDescription: "")
        return mockProduct
    }
    
    app.get("product_price", ":numericValue") { request -> Product in
        guard let price = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockProduct = Product(result: 0, productName: "", productPrice: price, productDescription: "")
        return mockProduct
    }
    
    app.get("product_description", ":stringValue") { request -> Product in
        guard let description = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockProduct = Product(result: 0, productName: "", productPrice: 0, productDescription: description)
        return mockProduct
    }
    
    // MARK: - Catalog
    
    app.get("dummyCatalog") { request -> Catalog in
        let mockCatalog = Catalog(idProduct: 0, productName: "", price: 0)
        return mockCatalog
    }
    
    app.get("id_product", ":numericValue") { request -> Catalog in
        guard let id = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCatalog = Catalog(idProduct: id, productName: "", price: 0)
        return mockCatalog
    }
    
    app.get("product_name", ":stringValue") { request -> Catalog in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCatalog = Catalog(idProduct: 0, productName: name, price: 0)
        return mockCatalog
    }
    
    app.get("price", ":numericValue") { request -> Catalog in
        guard let price = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCatalog = Catalog(idProduct: 0, productName: "", price: price)
        return mockCatalog
    }
    
    // MARK: - Change Info
    
    app.get("dummyChangeInfo") { request -> ChangeInfo in
        let mockChangeInfo = ChangeInfo(userID: 123456, username: "", password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("id_user", ":numericValue") { request -> ChangeInfo in
        guard let id = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: id, username: "", password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("username", ":stringValue") { request -> ChangeInfo in
        guard let username = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: username, password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("password", ":stringValue") { request -> ChangeInfo in
        guard let password = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: "", password: password, email: "", gender: "", creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("email", ":stringValue") { request -> ChangeInfo in
        guard let email = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: "", password: "", email: email, gender: "", creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("gender", ":stringValue") { request -> ChangeInfo in
        guard let gender = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: "", password: "", email: "", gender: gender, creditCard: "", bio: "")
        return mockChangeInfo
    }
    
    app.get("credit_card", ":stringValue") { request -> ChangeInfo in
        guard let card = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: "", password: "", email: "", gender: "", creditCard: card, bio: "")
        return mockChangeInfo
    }
    
    app.get("bio", ":stringValue") { request -> ChangeInfo in
        guard let bio = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockChangeInfo = ChangeInfo(userID: 0, username: "", password: "", email: "", gender: "", creditCard: "", bio: bio)
        return mockChangeInfo
    }
    
    // MARK: - Logout
    
    app.get("dummyLogout.json") { request -> Logout in
        let mockLogout = Logout(id: 123456)
        return mockLogout
    }
    
    // MARK: - Regestration
    
    app.get("dummyRegistration") { request -> Registration in
        let mockRegistration = Registration(userID: 123456, username: "", password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("id_user", ":numericValue") { request -> Registration in
        guard let id = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: id, username: "", password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("username", ":stringValue") { request -> Registration in
        guard let username = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: username, password: "", email: "", gender: "", creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("password", ":stringValue") { request -> Registration in
        guard let password = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: "", password: password, email: "", gender: "", creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("email", ":stringValue") { request -> Registration in
        guard let email = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: "", password: "", email: email, gender: "", creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("gender", ":stringValue") { request -> Registration in
        guard let gender = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: "", password: "", email: "", gender: gender, creditCard: "", bio: "")
        return mockRegistration
    }
    
    app.get("credit_card", ":stringValue") { request -> Registration in
        guard let card = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: "", password: "", email: "", gender: "", creditCard: card, bio: "")
        return mockRegistration
    }
    
    app.get("bio", ":stringValue") { request -> Registration in
        guard let bio = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRegistration = Registration(userID: 0, username: "", password: "", email: "", gender: "", creditCard: "", bio: bio)
        return mockRegistration
    }
    
    // MARK: - Auth
    
    app.get("dummyAuth.json") { request -> Auth in
        let mockAuth = Auth(username: "", password: "")
        return mockAuth
    }
    
    app.get("username", ":stringValue") { request -> Auth in
        guard let username = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockAuth = Auth(username: username, password: "")
        return mockAuth
    }
    
    app.get("password", ":stringValue") { request -> Auth in
        guard let password = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockAuth = Auth(username: "", password: password)
        return mockAuth
    }
    
    // MARK: - Reviews
    
    app.get("dummyReviews") { request -> ReviewsList in
        let mockReviewsList = ReviewsList(list: [
            Reviews.init(message: "review"), Reviews.init(message: "review"), Reviews.init(message: "review"), Reviews.init(message: "review"), Reviews.init(message: "review")
        ])
        return mockReviewsList
    }
    
    app.get("message", ":stringValue") { request -> ReviewsList in
        guard let message = request.parameters.get("stringValue", as: Reviews.self) else {
            throw Abort(.badRequest)
        }
        
        let mockReviewsList = ReviewsList(list: [message])
        return mockReviewsList
    }
    
    // MARK: - Add Review
    
    app.get("dummyAddReview.json") { request -> AddReview in
        let mockReview = AddReview(message: "")
        return mockReview
    }
    
    app.get("message", ":stringValue") { request -> AddReview in
        guard let message = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockReview = AddReview(message: message)
        return mockReview
    }
    
    // MARK: - Remove Review
    
    app.get("dummyRemoveReview.json") { request -> RemoveReview in
        let mockReview = RemoveReview(result: 1)
        return mockReview
    }
    
    app.get("result", ":numericValue") { request -> RemoveReview in
        guard let result = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockReview = RemoveReview(result: result)
        return mockReview
    }
    
    // MARK: - Cart
    
    app.get("dummyCart") { request -> Cart in
        let mockCart = Cart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0,
            bill: 0
        )
        return mockCart
    }
    
    app.get("item", ":stringValue") { request -> Cart in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCart = Cart(
            item: Product.init(
                result: 1,
                productName: name,
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0,
            bill: 0
        )
        return mockCart
    }
    
    app.get("price", ":numericValue") { request -> Cart in
        guard let price = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCart = Cart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: price,
                productDescription: ""
            ),
            amount: 0,
            bill: 0
        )
        return mockCart
    }
    
    app.get("amount", ":numericValue") { request -> Cart in
        guard let amount = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCart = Cart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: amount,
            bill: 0
        )
        return mockCart
    }
    
    app.get("bill", ":numericValue") { request -> Cart in
        guard let bill = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockCart = Cart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0,
            bill: bill
        )
        return mockCart
    }
    

    // MARK: - AddToCart
    
    app.get("dummyAddToCart.json") { request -> AddToCart in
        let mockAddToCart = AddToCart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0
        )
        return mockAddToCart
    }
    
    app.get("item", ":stringValue") { request -> AddToCart in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockAddToCart = AddToCart(
            item: Product.init(
                result: 1,
                productName: name,
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0
        )
        return mockAddToCart
    }
    
    app.get("price", ":numericValue") { request -> AddToCart in
        guard let price = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockAddToCart = AddToCart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: price,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0
        )
        return mockAddToCart
    }
    
    app.get("amount", ":numericValue") { request -> AddToCart in
        guard let amount = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockAddToCart = AddToCart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            price: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: amount
        )
        return mockAddToCart
    }
    
    // MARK: - RemoveFromCart
    
    app.get("dummyRemoveFromCart.json") { request -> RemoveFromCart in
        let mockRemoveFromCart = RemoveFromCart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0
        )
        return mockRemoveFromCart
    }
    
    app.get("item", ":stringValue") { request -> RemoveFromCart in
        guard let name = request.parameters.get("stringValue", as: String.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRemoveFromCart = RemoveFromCart(
            item: Product.init(
                result: 1,
                productName: name,
                productPrice: 0,
                productDescription: ""
            ),
            amount: 0
        )
        return mockRemoveFromCart
    }
    
    app.get("amount", ":numericValue") { request -> RemoveFromCart in
        guard let amount = request.parameters.get("numericValue", as: Int.self) else {
            throw Abort(.badRequest)
        }
        
        let mockRemoveFromCart = RemoveFromCart(
            item: Product.init(
                result: 1,
                productName: "",
                productPrice: 0,
                productDescription: ""
            ),
            amount: amount
        )
        return mockRemoveFromCart
    }
    
    // MARK: - Pay Method
    
    let payController = PayController()
    app.post("payment", use: payController.pay(_:))
    
}
