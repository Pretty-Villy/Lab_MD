/*  "books": [
 {
   "isbn": "9781593275846",
   "title": "Eloquent JavaScript, Second Edition",
   "subtitle": "A Modern Introduction to Programming",
   "author": "Marijn Haverbeke",
   "published": "2014-12-14T00:00:00.000Z",
   "publisher": "No Starch Press",
   "pages": 472,
   "description": "JavaScript lies at the heart of almost every modern web application, from social apps to the newest browser-based games. Though simple for beginners to pick up and play with, JavaScript is a flexible, complex language that you can use to build full-scale applications.",
   "website": "http://eloquentjavascript.net/"
 }, */

import Foundation


struct BookData: Codable {
    var title: String
    var subtitle: String
    var author: String
    var published: String
    var publisher: String
    var pages: Int
    var price: String
    var description: String
    var img: String
}
struct BooksData: Codable {
    var books: [BookData]
}
func parse(pathForFile: String?) -> [BookData]?{
    var d: Data?
    do{
        d = try Data(contentsOf: URL(fileURLWithPath: pathForFile!))
    } catch {
        print("Error Data: \(error.localizedDescription)")
        return nil
    }
    guard let data = d else {
        print("Error...")
        return nil
    }
    
    do{
       let booksdata = try JSONDecoder().decode(BooksData.self, from: data)
        return booksdata.books
    } catch {
        print("Error... \(error.localizedDescription)")
        return nil
    }
    
}
