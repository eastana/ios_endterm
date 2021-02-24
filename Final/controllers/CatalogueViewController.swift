 
import UIKit

class CatalogueViewController: UIViewController {
    
//    static let identifier = String(describing: CatalogueViewController.self)
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CatalogueCollectionViewCell.nib, forCellWithReuseIdentifier: CatalogueCollectionViewCell.identifier)
        
         
    }
    
}


 extension CatalogueViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 10
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatalogueCollectionViewCell.identifier, for: indexPath) as! CatalogueCollectionViewCell
          
         
         return cell
     }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 200, height: 207)
       }
 }
 
