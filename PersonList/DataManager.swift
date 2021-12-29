//
//  DataManager.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Иван", "Петр", "Игорь", "Лев", "Денис", "Сергей", "Вадим", "Тимур"
    ]
    
    let surnames = [
        "Петров", "Иванов", "Сидоров", "Васильев", "Муратов", "Насыров", "Медведев", "Путин"
    ]
    
    let emails = [
        "dd1@tt1.ru", "dd2@tt1.ru", "dd3@tt1.ru", "dd4@tt1.ru", "dd5@tt1.ru", "dd6@tt1.ru", "dd7@tt1.ru", "dd8@tt1.ru"
    ]
    
    let phones = [
        "4598752", "4621025", "9874523", "9996587", "7236589", "9987587", "7774158", "1111111"
    ]
    
    private init() {}
    
}
