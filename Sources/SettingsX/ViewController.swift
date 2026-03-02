import UIKit
import WebKit

class ViewController: UIViewController {

    override func loadView() {

        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.bounces = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never

        view = webView

        let url = URL(string: "https://172.20.10.2:3000")!
        webView.load(URLRequest(url: url))
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
}