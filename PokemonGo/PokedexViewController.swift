//
//  PokedexViewController.swift
//  PokemonGo
//
//  Created by Jorge Garnica Blanco on 5/24/17.
//  Copyright © 2017 Jorge Garnica Blanco. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var pokemonsAtrapados:[Pokemon] = []
    var pokemonsNoAtrapados:[Pokemon] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        pokemonsAtrapados = obtenerPokemonsAtrapados()
        pokemonsNoAtrapados = obtenerPokemonsNoAtrapados()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Atrapados"
        } else{
            return "No Atrapados"
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemon : Pokemon
        if indexPath.section == 0 {
            pokemon = pokemonsAtrapados[indexPath.row]
        }else{
            pokemon = pokemonsNoAtrapados[indexPath.row]
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = pokemon.nombre
        cell.imageView?.image = UIImage(named: pokemon.imagenNombre!)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return pokemonsAtrapados.count
        } else{
            return pokemonsNoAtrapados.count
        }
    }
    @IBAction func mapTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
