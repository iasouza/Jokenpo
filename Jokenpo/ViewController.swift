//
//  ViewController.swift
//  Jokenpo
//
//  Created by Ilana Concilio on 02/04/20.
//  Copyright © 2020 Ilana Concilio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagemJogador: UIImageView!
    @IBOutlet weak var imagemMaquina: UIImageView!
    @IBOutlet weak var resultado: UILabel!
    
    let opcoes = ["pedra", "papel", "tesoura"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemJogador.image = #imageLiteral(resourceName: "place")
        imagemMaquina.image = #imageLiteral(resourceName: "place")
       
        
   
    }

    @IBAction func botaoSelecionado(_ sender: UIButton) {

        let maquina = opcoes.randomElement()!
        let jogador = sender.currentTitle!
        imagemMaquina.image = UIImage(named:maquina+".jpg")
        
        imagemJogador.image = UIImage(named: jogador+".jpg")
        
        verificaResultado(resJogador: jogador, resMaquina: maquina)
    }
    
    func verificaResultado(resJogador: String, resMaquina: String){
        
        if resJogador == resMaquina{
            resultado.textColor = UIColor.yellow
            resultado.text = "Empatou!"
        }else if resJogador == "pedra" && resMaquina == "tesoura" || resJogador == "papel" && resMaquina == "pedra" || resJogador == "tesoura" && resMaquina == "papel"{
            resultado.textColor = UIColor.green
            resultado.text = "Ganhou!"
        }else {
            resultado.textColor = UIColor.red
            resultado.text = "Perdeu!"
        }
        
    }
    
    
}

