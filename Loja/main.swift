//
//  main.swift
//  Loja
//
//  Created by Bárbara Araújo Paim  on 17/03/21.
//

import Foundation

class Usuario {
    let codigo: String
    let nome: String
    let email: String
    let senha: String
    
    init(codigo: String, nome: String, email: String, senha: String) {
        self.codigo = codigo
        self.nome = nome
        self.email = email
        self.senha = senha
    }
}
class Produto {
    let codigo: String
    let nome: String
    let descricao: String
    let valor: Double
    let data_publicacao: Date
    
    init(codigo: String,nome: String,descricao: String,valor: Double,data_publicacao: Date) {
        self.codigo = codigo
        self.nome = nome
        self.descricao = descricao
        self.valor = valor
        self.data_publicacao = data_publicacao
    }
}
func CadastraUsuario() {
    var nome: String = ""
    var email: String = ""
    var senha: String = ""
    print("Nome ")
    if let nomeRead: String = readLine(){nome = nomeRead}
    print("E-mail")
    if let emailRead: String = readLine(){email = emailRead}
    print("Senha")
    if let senhaRead: String = readLine(){senha = senhaRead}
    let codigo: String = "1";
    var NovoUsuario = Usuario(codigo: codigo, nome: nome, email: email, senha: senha)
    print(NovoUsuario.nome)
    
}
func Login() {
    
}
 
print("Lojas Brasileiras")
print("1 - LogIn")
print("2 - Criar conta")
if let resposta = readLine(){
    switch resposta {
    
    case "1":
        
        break;
    case "2":
        CadastraUsuario();
        break;
    default:
        break;
}
}
   
