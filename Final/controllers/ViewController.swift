import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var catalogueBtn: UIButton!
    @IBOutlet weak var cartBtn:UIButton!
    @IBOutlet weak var historyBtn:UIButton!
    @IBOutlet weak var profileBtn:UIButton!
    @IBOutlet weak var productBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapToProductBtn(_ sender: Any) {
        let vcProd=storyboard?.instantiateViewController(withIdentifier: "ProductViewController") as! ProductViewController
        
       
        navigationController?.pushViewController(vcProd, animated: true)
    }
    @IBAction func tapToProfileBtn(_ sender: Any) {
        let vcProd=storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
     
        navigationController?.pushViewController(vcProd, animated: true)
    }
    @IBAction func tapToHistoryBtn(_ sender: Any) {
        let vcProd=storyboard?.instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
     
        navigationController?.pushViewController(vcProd, animated: true)
    }
    @IBAction func tapToCartBtn(_ sender: Any) {
        let vcProd=storyboard?.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
     
        navigationController?.pushViewController(vcProd, animated: true)
    }
    @IBAction func tapToCatalogueBtn(_ sender: Any) {
        print("Hello")
        let vcProd=storyboard?.instantiateViewController(withIdentifier: "CatalogueViewController") as! CatalogueViewController
        
        print(vcProd)
    
     
        navigationController?.pushViewController(vcProd, animated: true)
    }
  
}

