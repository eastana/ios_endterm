 
import UIKit

class ProductViewController: UIViewController {
    
    static let identifier = String(describing: ProductViewController.self)
    
    @IBOutlet  var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var imageStr: String!
    var titleStr: String!
    var priceNum: String!
    var descStr: String!
    override func viewDidLoad() {
        super.viewDidLoad() 
        self.setProduct()
    }
     
    
    func setProduct(){
        imageView.image = UIImage(named: imageStr)
        titleLabel.text = titleStr
        priceLabel.text = priceNum
        descLabel.text = descStr
    }
    @IBAction func addToCart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as! CartViewController
        CartViewController.cartArr.append(Product(image: imageStr, title: titleStr, price: (priceNum as NSString).doubleValue, description: descStr))
        navigationController?.pushViewController(vc, animated: true)
    }
}
