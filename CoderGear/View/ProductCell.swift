//
//  ProductCell.swift
//  Coder Gear
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    
    func updateCell(product: Product) {
        productImg.image = UIImage(named: product.imageName)
        productNameLbl.text = product.name
        productPriceLbl.text = product.price
        
    }
    
}
