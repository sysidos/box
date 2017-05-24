import UIKit

class VGridVisorDetailCellHeader:VGridVisorDetailCell
{
    private weak var imageView:UIImageView!
    private weak var labelTitle:UILabel!
    private let kImageHeight:CGFloat = 200
    private let kTitleHeight:CGFloat = 60
    
    override init(frame:CGRect)
    {
        super.init(frame:frame)
        isUserInteractionEnabled = false
        
        let finder:UIImageView = UIImageView()
        finder.isUserInteractionEnabled = false
        finder.translatesAutoresizingMaskIntoConstraints = false
        finder.contentMode = UIViewContentMode.center
        finder.clipsToBounds = true
        finder.image = #imageLiteral(resourceName: "assetGenericFinder")
        
        let imageView:UIImageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = UIViewContentMode.center
        imageView.isUserInteractionEnabled = false
        self.imageView = imageView
        
        let labelTitle:UILabel = UILabel()
        labelTitle.isUserInteractionEnabled = false
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.backgroundColor = UIColor.clear
        labelTitle.font = UIFont.bold(size:16)
        labelTitle.textColor = UIColor.white
        labelTitle.textAlignment = NSTextAlignment.center
        self.labelTitle = labelTitle
        
        addSubview(finder)
        addSubview(imageView)
        addSubview(labelTitle)
        
        NSLayoutConstraint.topToTop(
            view:imageView,
            toView:self)
        NSLayoutConstraint.height(
            view:imageView,
            constant:kImageHeight)
        NSLayoutConstraint.equalsHorizontal(
            view:imageView,
            toView:self)
        
        NSLayoutConstraint.equals(
            view:finder,
            toView:imageView)
        
        NSLayoutConstraint.bottomToBottom(
            view:labelTitle,
            toView:self)
        NSLayoutConstraint.height(
            view:labelTitle,
            constant:kTitleHeight)
        NSLayoutConstraint.equalsHorizontal(
            view:labelTitle,
            toView:self)
    }
    
    required init?(coder:NSCoder)
    {
        return nil
    }
    
    override func config(controller:CGridVisorDetail, model:MGridVisorDetailItem)
    {
        super.config(controller:controller, model:model)
        
        guard
        
            let modelHeader:MGridVisorDetailItemHeader = model as? MGridVisorDetailItemHeader
        
        else
        {
            return
        }
        
        imageView.image = modelHeader.image
        labelTitle.text = modelHeader.title
    }
}
