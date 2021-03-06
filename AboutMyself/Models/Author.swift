//
//  Author.swift
//  AboutMyself
//
//  Created by Илья Першин on 26.10.2020.
//

struct Author {
    let firstname = "Илья"
    let surname = "Першин"
    let age = 19
    var aboutAuthor: String {
        getAuthorDescription()
    }
}

extension Author {
    private func getAuthorDescription () -> String {
        "Привет! Меня зовут Илья, мне \(age) лет. Сейчас я учусь в Белгородском Государственном Университете на факультете Инжинерных и цифровых технологий (3 курс), направление подготовки - Фундаментальная информатика и информационные технологии, профиль - Супервычисления. В общем у нас очень много параллельного программирования и всяких вычислений (у нас даже собственный суперкомпуктер есть). У меня все получается, учусь хорошо!!!1 Но мне больше нравится swift со всеми его плюшечками :) А еще на этих курсах вместе со мной учится мой друг Миша, передаю ему привет!"
    }
}
