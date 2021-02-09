

import UIKit

class DetailViewController: UIViewController {
    
    var entriesVC: JournalTableViewController?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var entryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //make an entry
        let entry = Entry()
        entry.date = datePicker.date
        entry.text = entryTextView.text
        
        //add entry to tableview arr
        entriesVC?.entries.append(entry)
        
    }

}
