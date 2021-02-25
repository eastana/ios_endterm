import UIKit

class HistoryViewController: UIViewController {

    static let identifier = String(describing: HistoryViewController.self)
    @IBOutlet weak var tableView: UITableView!
    
    static var historyArr = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableConf()
    }
    
    func tableConf(){
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(HistoryTableViewCell.nib, forCellReuseIdentifier: HistoryTableViewCell.identifier)
            tableView.rowHeight = 75
    }
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource{
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HistoryViewController.historyArr.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: HistoryTableViewCell.identifier, for: indexPath) as! HistoryTableViewCell
        cell.commonInit(HistoryViewController.historyArr[indexPath.row])
         return cell
     }
 }
