import UIKit

class CartViewController: UIViewController {
    
    static let identifier = String(describing: CartViewController.self)
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    static var cartArr = [Product]()
    var sumTotal = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableConf()
        self.calcTotal()
    }

    func tableConf(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CartTableViewCell.nib, forCellReuseIdentifier: CartTableViewCell.identifier)
        tableView.rowHeight = 75
    }
    func calcTotal(){
        for item in CartViewController.cartArr {
            sumTotal += item.price
        }
        totalLabel.text = "\(sumTotal) $"
    }
}
 extension CartViewController: UITableViewDelegate, UITableViewDataSource{
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CartViewController.cartArr.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: CartTableViewCell.identifier, for: indexPath) as! CartTableViewCell
            cell.commonInit(CartViewController.cartArr[indexPath.row])
         return cell
     }
 }
