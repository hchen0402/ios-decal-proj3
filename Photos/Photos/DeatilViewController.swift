import UIKit

class DeatilViewController: UIViewController {
    var photo: Photo!
    
    
    @IBOutlet weak var userName: UILabel! {
        didSet{
            userName.text = "Username: \(photo.username)"
        }
        
    }
    @IBOutlet weak var likes: UILabel!{
        didSet{
            likes.text = "Likes: \(photo.likes)"
        }
    }
    
    @IBOutlet weak var date: UILabel!{
        didSet{
            date.text = "Date: \(photo.date)"
        }
    }
    
    @IBOutlet weak var image: UIImageView! {
        didSet{
            if let data = try? NSData(contentsOfURL: NSURL(string: photo.url)!, options: []) {
                image.image = UIImage(data: data)!
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
