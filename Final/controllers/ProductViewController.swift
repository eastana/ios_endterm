 
import UIKit

class ProductViewController: UIViewController {
    
    static let identifier = String(describing: ProductViewController.self)
    
    @IBOutlet  var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //style
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
    }
    
 
}
