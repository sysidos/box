import UIKit

class MHelpBasicRelease:MHelpProtocol
{
    private let attributedString:NSAttributedString
    
    init()
    {
        let attributesTitle:[String:AnyObject] = [
            NSFontAttributeName:UIFont.bold(size:20),
            NSForegroundColorAttributeName:UIColor.white]
        let attributesDescription:[String:AnyObject] = [
            NSFontAttributeName:UIFont.regular(size:18),
            NSForegroundColorAttributeName:UIColor(white:1, alpha:0.7)]
        
        let stringTitle:NSAttributedString = NSAttributedString(
            string:NSLocalizedString("MHelpBasicRelease_title", comment:""),
            attributes:attributesTitle)
        let stringDescription:NSAttributedString = NSAttributedString(
            string:NSLocalizedString("MHelpBasicRelease_description", comment:""),
            attributes:attributesDescription)
        let mutableString:NSMutableAttributedString = NSMutableAttributedString()
        mutableString.append(stringTitle)
        mutableString.append(stringDescription)
        
        attributedString = mutableString
    }
    
    var message:NSAttributedString
    {
        get
        {
            return attributedString
        }
    }
    
    var image:UIImage
    {
        get
        {
            return #imageLiteral(resourceName: "assetHelpBasicRelease")
        }
    }
}