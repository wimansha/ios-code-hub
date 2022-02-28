# How to setup a Grid Layout with UICollectionView

```swift
class GridView {
    private var cellSpace: CGFloat = 10
    private let noOfColumns: CGFloat = 3

    private(set) lazy var collectionView : UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
        collectionView.isPrefetchingEnabled = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.clear
        collectionView.contentInset = .init(top: cellSpace, left: cellSpace, bottom: cellSpace, right: cellSpace)
        collectionView.register(WIMSGalleryCell.self, forCellWithReuseIdentifier: WIMSGalleryCell.identifier)
        return collectionView
    }()

    lazy var flowLayout : UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = cellSpace
        flowLayout.minimumLineSpacing = cellSpace
        flowLayout.scrollDirection = .vertical
        return flowLayout
    }()

    func setupUI() {
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
          collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
          collectionView.topAnchor.constraint(equalTo: topView.bottomAnchor),
          collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

extension GridView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WIMSGalleryCell.identifier, for: indexPath) as! WIMSGalleryCell
        //modify here...
        return cell
    }

}

extension GridView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout
                            collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = floor((frame.width - cellSpace*(noOfColumns+1))/noOfColumns)
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
```
