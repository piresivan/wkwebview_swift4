import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var containerView : UIView? = nil
    
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"https://github.com/")
        let req = URLRequest(url: url!)
        self.webView!.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

