//
//  SingleViewController.swift
//  MisRecetas
//
//  Created by Jose Luis Mejia Rojas on 15/04/17.
//  Copyright © 2017 Jose Luis Mejia Rojas. All rights reserved.
//

import UIKit

class SingleViewController: UIViewController{

    @IBOutlet var tableView: UITableView!
    
    var recipes : [Recipe] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tableView.dataSource = self
        //self.tableView.delegate = self
        
        var recipe1 = Recipe(name: "Tortilla de Patatas",image: #imageLiteral(resourceName: "tortilla"), time : 20,
                             ingredients : ["Patatas","Huevos","Cebolla"],
                             steps : ["Pelar las patatas y la cebolla","Cortar las patatas y la cebolla y sofreir",
                                      "Batir los huevos y echarlos duranto un minuto con el resto"])
        
        recipes.append(recipe1)
        
        recipe1 = Recipe(name: "Pizza Margarita", image: #imageLiteral(resourceName: "pizza"),
                         time : 60,
                         ingredients : ["Harina","Levadura","Aceite","Sal","Salsa de Tomate","Queso"],
                         steps : ["Hacemos la masa con harina, levadura aceite y sal",
                                  "Dejamos reposar la masa 30 minutos",
                                  "Extendemos las masa encima de una bandeja y añadimos el resto de ingredientes",
                                  "Hornear durante 12  minutos"])
        recipes.append(recipe1)
        
        recipe1 = Recipe(name: "Hamburguesa con queso", image: #imageLiteral(resourceName: "hamburguesa"),
                         time : 10,
                         ingredients : ["Pan de Hamburguesa","Lechuga","Tomate","Queso","Carne Angus"],
                         steps : ["Poner al fuego la carne al gusto",
                                  "Montar la hamburguesa con sus ingredientes entre los panes"])
        recipes.append(recipe1)
        
        recipe1 = Recipe(name: "Ensalada César", image : #imageLiteral(resourceName: "ensalada"),
                         time : 15,
                         ingredients : ["Lechuga","Tomate","Cebolla","Pimiento","Salsa César","Pollo"],
                         steps : ["Limpiar todas las verduras y trocearlas",
                                  "Cocer el pollo al gusto",
                                  "Juntar todos los ingredientes en una ensaladera y servir con salsa César por encima"])
        recipes.append(recipe1)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SingleViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellId  = "RecipeCell"
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text =  recipe.name
        cell.imageView?.image =  recipe.image
        return cell
        
    }
}












