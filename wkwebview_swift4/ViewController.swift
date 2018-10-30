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
        
        let address = "https://github.com/"
        
        let url = URL(string:address)
        let req = URLRequest(url: url!)
        self.webView!.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

