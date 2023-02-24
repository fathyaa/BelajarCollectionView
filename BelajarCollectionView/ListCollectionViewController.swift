//
//  ViewController.swift
//  BelajarCollectionView
//
//  Created by Phincon on 24/02/23.
//

import UIKit

class ListCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var listProduct : [ProductStruct] = []
    @IBOutlet weak var productsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "ListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ListCollectionViewCell")
    }
    
    func setData(){
        let product1 = ProductStruct(image: "gucci", title: "Gucigang", subTitle: "BA-nya jennie blackpink", price: 500)
        let product2 = ProductStruct(image: "adinda", title: "Adinda", subTitle: "Cocok utk olahraga di gebuk (GBK)", price: 90)
        let product4 = ProductStruct(image: "naik", title: "NAIK", subTitle: "Naik ke puncak gunung", price: 200)
        let product3 = ProductStruct(image: "baju", title: "Tanaha Bangers", subTitle: "Local pride", price: 200)
        let product5 = ProductStruct(image: "baju", title: "Iyah", subTitle: "Iyah biar cepet", price: 500)
        let product6 = ProductStruct(image: "lekars", title: "LEKARS", subTitle: "BTS pernah beli ini", price: 90)
        let product7 = ProductStruct(image: "baju", title: "M&H", subTitle: "Hanya utk orang cakep", price: 200)
        let product8 = ProductStruct(image: "baju", title: "Lazadah", subTitle: "Pengiriman ceepat gratis ongkir", price: 200)
        
        listProduct.append(product1)
        listProduct.append(product2)
        listProduct.append(product3)
        listProduct.append(product4)
        listProduct.append(product5)
        listProduct.append(product6)
        listProduct.append(product7)
        listProduct.append(product8)
    }
}

extension ListCollectionViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as? ListCollectionViewCell else { return UICollectionViewCell() }
        
        cell.image.image = UIImage(named: listProduct[indexPath.row].image)
        cell.title.text = listProduct[indexPath.row].title
        cell.subTitle.text = listProduct[indexPath.row].subTitle
        cell.price.text = "$\(listProduct[indexPath.row].price)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width / 2.2, height: self.collectionView.frame.size.height / 4)
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt indexPath: IndexPath) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 2, bottom: 0, right: 2)
    }
}

