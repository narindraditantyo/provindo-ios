
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var txtDesc: UILabel!
    
    var province: Province?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = province {
            title = data.name
            txtDesc.text = data.desc
            imgThumbnail.image = UIImage(named: data.pictureId!)
        }
    }

}
