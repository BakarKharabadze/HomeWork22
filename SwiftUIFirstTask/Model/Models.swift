//
//  Models.swift
//  SwiftUIFirstTask
//
//  Created by Bakar Kharabadze on 5/22/24.
//

import Foundation

struct News {
    let title: String
    let description: String
    let id = UUID()
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    static var allNews: [News] = [
        News(title: "რა დაუწუნა ბარბარემ ნიკის?", description: "ნიკის ამაზე ჯერ განცხადება არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს"),
        News(title: "რა ზომის ფეხი აქვს ვასოს?", description: "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ზომა ფეხი აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას"),
        News(title: "რა სიმაღლისაა ანჟელა ew?", description: "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ Swift-ის სიმაღლისაა და დიდი ფეხი აქვს"),
        News(title: "რატომ გაებუტა ბარბარეს ჭეპეტე?", description: "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში."),
        News(title: "MVC vs MVVM", description: "აი ეს MVC გასაგებია, მაგრამ MVVM ჩემამდე არ დადის რა, ამ სვიბთ იუაიში სად ვიყენებთ მაგას?"),
        News(title: "ნეტავ რამდენი ხანი გაგრძელდება ეს?", description: "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-ით. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase?"),
        News(title: "ახალი ფუნქციონალი SwiftUI 4-ში", description: "Apple-მა წარადგინა SwiftUI 4 WWDC23-ზე, რომელიც მოიცავს Observable Objects-ის და Data Flow-ის გაუმჯობესებებს."),
        News(title: "Xcode 15 Beta გამოვიდა", description: "Apple-მა გამოუშვა Xcode 15 Beta დეველოპერებისთვის, რომელიც მოიცავს Swift 5.9-ს და SwiftUI-ს ახალ ფუნქციებს."),
        News(title: "Apple-ის ახალი AR/VR ჰედსეტი", description: "ჭორების მიხედვით, Apple მუშაობს ახალ AR/VR ჰედსეტზე, რომელიც შეიძლება გამოვიდეს 2023 წლის ბოლოს."),
        News(title: "WWDC23 Keynote-ის თარიღი დადგინდა", description: "Apple-მა დააანონსა, რომ WWDC23 Keynote გაიმართება ივნისის პირველ ორშაბათს, როგორც ყოველთვის."),
        News(title: "UIKit აპლიკაციის SwiftUI-ზე მიგრაცია", description: "დეველოპერები აქტიურად განიხილავენ UIKit აპლიკაციების SwiftUI-ზე მიგრაციის საუკეთესო პრაქტიკებს.")
    ]
}

enum MusicTitle: String {
    case original = "We love property wrappers and closures"
    case changed = "We love music"
}

