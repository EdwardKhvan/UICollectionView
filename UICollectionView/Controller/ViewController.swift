import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        blankMenu.name = "Coca-cola"
        blankMenu.imageName = "kola"
        
        var blankMenu2 = Menu()
        blankMenu2.name = "Kofe"
        blankMenu2.imageName = "kofe2"
        return [blankMenu, blankMenu2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? menuCollectionViewCell {
            itemCell.menu = itemMenuArray[indexPath.row]
            
            return itemCell
        }
        return UICollectionViewCell()
    }
    
}
