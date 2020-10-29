
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var provinceTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ProvIndo"
                
        provinceTV.dataSource = self
        provinceTV.delegate = self
        
        provinceTV.register(UINib(nibName: "ProvinceTableViewCell", bundle: nil), forCellReuseIdentifier: "provinceCell")
        
        let profile = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        let profileButton = UIBarButtonItem(image: UIImage(named: "profile_photo"), style: .plain, target: self, action: self.navigationController?.pushViewController(profile, animated: true))
        
        self.navigationItem.rightBarButtonItem = profileButton
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.province = arrProvince[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 152
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProvince.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "provinceCell", for: indexPath) as? ProvinceTableViewCell {
            let province = arrProvince[indexPath.row]
            
            cell.txtProvince.text = province.name
            cell.txtCapital.text = province.capital
            cell.txtArea.text = "\(String(province.area!)) km2"
            cell.imgThumbnail.image = UIImage(named: province.pictureId!)
            
            return cell
        } else {
            return UITableViewCell()
        }
        
        
    }

}
