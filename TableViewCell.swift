import UIKit

class ArticleCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var subtitleLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        commonInit()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        commonInit()
    }
    
    func commonInit() {
        titleLabel?.text = ""
        subtitleLabel?.text = ""
    }
    
    func configureCell(with article: Article) {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        
        titleLabel?.text = article.title
        subtitleLabel?.text = "\(formatter.string(from: article.date)) | \(article.author)"
    } 
    
}