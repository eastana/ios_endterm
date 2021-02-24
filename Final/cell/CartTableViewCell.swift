import UIKit

class CartTableViewCell: UITableViewCell {

    static let identifier = String(describing: CartTableViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet var imageV: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func commonInit(_ product: Product){
        titleLabel.text = product.title
        priceLabel.text = "\(product.price) $"
        imageV.image = UIImage(named: product.image)
    }
}
