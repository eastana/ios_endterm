 
import UIKit

class HistoryTableViewCell: UITableViewCell {
    static let identifier = String(describing: HistoryTableViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ product: Product){
        titleLabel.text = product.title
        priceLabel.text = "\(product.price) $"
        imageV.image = UIImage(named: product.image)
    }
    
}
