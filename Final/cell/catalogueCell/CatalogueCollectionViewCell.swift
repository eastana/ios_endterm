 
import UIKit

class CatalogueCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: CatalogueCollectionViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func commonInit(_ product: Product){
        imageLabel.image = UIImage(named: product.image)
        titleLabel.text = product.title
        priceLabel.text = "\(product.price) $"
    }

}
