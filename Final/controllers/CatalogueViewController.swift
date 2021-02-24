 
import UIKit

class CatalogueViewController: UIViewController {
    
//    static let identifier = String(describing: CatalogueViewController.self)
    @IBOutlet weak var collectionView: UICollectionView!
    
    var catalogueArr = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CatalogueCollectionViewCell.nib, forCellWithReuseIdentifier: CatalogueCollectionViewCell.identifier)
        self.setCatalogueArr()
    }
    
    func setCatalogueArr(){
        catalogueArr.append(Product(image: "iphone", title: "IPhone 11", price: 990.00))
        catalogueArr.append(Product(image: "macbookair", title: "MacBook Air 2020", price: 1100.00))
        catalogueArr.append(Product(image: "macbookpro", title: "MacBook Pro 2020", price: 1400.00))
        catalogueArr.append(Product(image: "airpods", title: "AirPods 2", price: 300.00))
        catalogueArr.append(Product(image: "camry3.5", title: "Camry 3.5 2020", price: 42800.00))
        catalogueArr.append(Product(image: "lada", title: "Lada Priora 2020", price: 10000.00))
        catalogueArr.append(Product(image: "bmw", title: "BMW M5 F90", price: 120000.00))
    }
    
}
 extension CatalogueViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catalogueArr.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatalogueCollectionViewCell.identifier, for: indexPath) as! CatalogueCollectionViewCell
        
        cell.commonInit(catalogueArr[indexPath.row])
         return cell
     }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 200, height: 207)
    }
 }
 
