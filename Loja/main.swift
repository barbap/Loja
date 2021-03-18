//
//  main.swift
//  Loja
//
//  Created by Bárbara Araújo Paim  on 17/03/21.
//

import Foundation

class Usuario {
    let codigo: Int
    let nome: String
    let email: String
    let senha: String
    
    init(codigo: Int, nome: String, email: String, senha: String) {
        self.codigo = codigo
        self.nome = nome
        self.email = email
        self.senha = senha
    }
}
class Produto {
    let codigo: Int
    let nome: String
    let descricao: String
    let valor: Double
    let data_publicacao: Date
    
    init(codigo: Int,nome: String,descricao: String,valor: Double,data_publicacao: Date) {
        self.codigo = codigo
        self.nome = nome
        self.descricao = descricao
        self.valor = valor
        self.data_publicacao = data_publicacao
    }
}
