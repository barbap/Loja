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
var momento = Date()

let p1 = Produto(codigo: 1, nome: "Cebola", descricao: "Comida", valor: 2.20, data_publicacao: momento)
let p2 = Produto(codigo: 2, nome: "Alho", descricao: "Comida", valor: 1.10, data_publicacao: momento)
let p3 = Produto(codigo: 3, nome: "Celular", descricao: "Eletronico", valor: 2100.20, data_publicacao: momento)
let p4 = Produto(codigo: 4, nome: "Notebook", descricao: "Eletronico", valor: 8005.20, data_publicacao: momento)
let p5 = Produto(codigo: 5, nome: "iPhone", descricao: "Telefone", valor: 7000.50, data_publicacao: momento)

var produtos = [Produto]()

produtos.append(p1)
produtos.append(p2)
produtos.append(p3)
produtos.append(p4)
produtos.append(p5)

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
            ListaProdutos()
            break;
        case "2":
            //chamada da funcao Cadastra de Produtos para Venda
            CadastraProduto()
            break;
        default:
            break;
        }
    }
    
}

func ListaProdutos(){
    var existe: Bool = false
    print("---------------- Lista de Produtos ----------------")
    for produto in produtos {
        print("Codigo: \(produto.codigo) \t Nome: \(produto.nome) \t Valor: \(produto.valor) \t Data: \(produto.data_publicacao) \n Descrição: \(produto.descricao)")
    }
    print("O que você deseja fazer?")
    print("1 - Adicionar Produto ao carrinho")
    print("2 - Voltar ao Menu")
    if let read = readLine() {
        switch read {
        case "1":
            print("Qual o código do produto?")
            if let read = readLine() {
                if let int = Int(read) {
                    for produto in produtos{
                        if produto.codigo == int {
                            InsereCarrinho()
                            existe = true
                        }
                    }
                    if existe {
                        print("Produto inserido no carrinho.")
                        ListaProdutos()
                    } else {
                        print("Produto não encontrado.")
                        ListaProdutos()
                    }
                }
            }
        case "2":
            MenuUsuario()
            
        default:
            break;
        }
    }
}

func InsereCarrinho(){
    print("algo foi feito")
}

func CadastraProduto(){
    
    let codigo: Int =  Int.random(in: 0..<100)
    var nome: String = ""
    var descricao: String = ""
    var valor: Double = 0.0
    let now = Date()

    print("----- Cadastro de Produtos -----")
    print("Nome ")
    if let nomeRead: String = readLine(){nome = nomeRead}
    print("Descricao")
    if let descricaoRead: String = readLine(){descricao = descricaoRead}
    print("Valor")
    if let valorRead = readLine(){
        if let doubleValor = Double(valorRead){
        valor = doubleValor
        }
    }
    
    let NovoProduto = Produto(codigo: codigo, nome: nome, descricao: descricao, valor:valor, data_publicacao: now)
    
    produtos.append(NovoProduto)
    print("Produto cadastrado com sucesso")
    MenuUsuario()
}

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
    //print(usuarios[3].email + usuarios[3].senha)
    print("Usuário Inválido")
    Login()
}
 
