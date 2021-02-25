 
import UIKit

class ProfileViewController: UIViewController {

    static let identifier = String(describing: ProfileViewController.self)

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    static var profileArr = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = ProfileViewController.profileArr[ProfileViewController.profileArr.count-1].username
        emailLabel.text = ProfileViewController.profileArr[ProfileViewController.profileArr.count-1].email
        cardLabel.text = ProfileViewController.profileArr[ProfileViewController.profileArr.count-1].card
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
    }
    
    @IBAction func historyBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "HistoryViewController") as! HistoryViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func cartBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as! CartViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
