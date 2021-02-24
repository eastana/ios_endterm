 
import UIKit

class CatalogueViewController: UIViewController {
    
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
        catalogueArr.append(Product(image: "iphone", title: "IPhone 11", price: 990.00, description: "256GB BLACK"))
        catalogueArr.append(Product(image: "macbookair", title: "MacBook Air 2020", price: 1100.00, description: "i3 intel core, 8GB RAM, 256GB SSD"))
        catalogueArr.append(Product(image: "macbookpro", title: "MacBook Pro 2020", price: 1400.00, description: "i5 intel core, 8GB RAM, 256GB SSD"))
        catalogueArr.append(Product(image: "airpods", title: "AirPods 2", price: 300.00, description: "AirPods new edition white color"))
        catalogueArr.append(Product(image: "camry3.5", title: "Camry 3.5 2020", price: 42800.00, description: "Toyota Camry 3.5L 2020 year KHANN"))
        catalogueArr.append(Product(image: "lada", title: "Lada Priora 2020", price: 10000.00, description: "Lada Priora 1.6L 2020 year"))
        catalogueArr.append(Product(image: "bmw", title: "BMW M5 F90", price: 120000.00, description: "BMW M5 F90 2020 Competition 4.4L"))
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let array = catalogueArr[indexPath.row]
        let vc = storyboard?.instantiateViewController(identifier: "ProductViewController") as! ProductViewController
        vc.imageStr = array.image
        vc.titleStr = array.title
        vc.priceNum = "\(array.price) $"
        vc.descStr = array.description
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 200, height: 207)
    }
 }
 
