 
import UIKit

class ProfileViewController: UIViewController {

    static let identifier = String(describing: ProfileViewController.self)

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet var cardLabel: UIView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
    }
    

 

}
