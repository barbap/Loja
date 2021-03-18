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
var usuario1 = Usuario(codigo: "1", nome: "Bárbara", email: "barbara@gmail.com", senha: "padrao")
var usuario2 = Usuario(codigo: "2", nome: "Eduarda", email: "Eduarda@gmail.com", senha: "padrao")
var usuario3 = Usuario(codigo: "3", nome: "José", email: "jose@gmail.com", senha: "padrao")
var usuarios = [Usuario]()
usuarios.append(usuario1)
usuarios.append(usuario2)
usuarios.append(usuario3)



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
func MenuInicial (){
    print("Lojas Brasileiras")
    print("1 - LogIn")
    print("2 - Criar conta")
    if let resposta = readLine(){
        switch resposta {
        
        case "1":
            Login()
            break;
        case "2":
            CadastraUsuario();
            break;
        default:
            break;
        }
    }
}

MenuInicial()

func MenuUsuario () {
    print("Lojas Brasileiras")
    print("1 - Lista de Produtos")
    print("2 - Cadastrar Produto para Venda")
    if let resposta = readLine(){
        switch resposta {
        case "1":
            //chamada da funcao Lista de Produtos
            break;
        case "2":
            //chamada da funcao Cadastra de Produtos para Venda
            break;
        default:
            break;
        }
    }
       

    
}

var produtos = [Produto] ()

func CadastraUsuario() {
    var nome: String = ""
    var email: String = ""
    var senha: String = ""
    print("----- Cadastro de Usuário -----")
    print("Nome ")
    if let nomeRead: String = readLine(){nome = nomeRead}
    print("E-mail")
    if let emailRead: String = readLine(){email = emailRead}
    print("Senha")
    if let senhaRead: String = readLine(){senha = senhaRead}
    print("passou aqui")
    let NovoUsuario = Usuario(codigo: "1", nome: nome, email: email, senha: senha)
    usuarios.append(NovoUsuario)
    MenuInicial()
}
func Login() {
    var email: String = ""
    var senha: String = ""
    print("----- LogIn ------")
    print("Email Cadastrado: ")
    if let emailRead: String = readLine(){email = emailRead}
    print("Senha Cadastrada: ")
    if let senhaRead: String = readLine(){senha = senhaRead}
    
    for user in usuarios {
        if  email == user.email && senha == user.senha{
            MenuUsuario()
            break;
        }
        
    }
    print(usuarios[3].email + usuarios[3].senha)
    print("Usuário Inválido")
    Login()
}
 
