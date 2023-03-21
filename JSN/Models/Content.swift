//
//  Content.swift
//  JSN
//
//  Created by Ярослав Любиченко on 21.3.2023.
//

import Foundation

struct PostalCode: Decodable {
    let cep: String?
    let logradouro: String?
    let complemento: String?
    let bairro: String?
    let localidade: String?
    let uf: String?
    let ibde: String?
    let gia: String?
    let ddd: String?
    let siafi: String?
}
