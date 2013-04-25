import bb.cascades 1.0

Page {

    //property variant date
    property int date
    property int month
    property int year
    id: result
    titleBar: TitleBar {
        id: title
        title: "Result Page"
        visibility: ChromeVisibility.Visible
    }
    objectName: "resultPage"
    Container {
        animations: [
            SequentialAnimation {
            }
        ]
        layout: DockLayout {
        }
        Label {
           
            bottomMargin: 50
            preferredWidth: 280
                            preferredHeight: 400
                            
            horizontalAlignment: HorizontalAlignment.Center
            id: str
            textStyle.base: textStyleBoldTitle.style
            objectName: "strLabel"
            text: {
                 var dmy = new Date();
                 var days = ( ( 30 - date ) + dmy.getDate() ) ;
                 var months = (12 - month) + dmy.getMonth() + parseInt(days/30);
                 var years = dmy.getFullYear() - 1 - year + parseInt(months/12);
                 "\n\n"+ years+ " Years \n" + 
                 months%12 + " Months \n" 
                  + days%30 + " Days    \n  " 
                  +" old" 
            }
            textStyle.color: Color.DarkCyan
            textStyle.fontWeight: FontWeight.Bold
            textStyle.fontSize: FontSize.Large
            verticalAlignment: VerticalAlignment.Center
            textStyle.textAlign: TextAlign.Center
            topPadding: 11.0
            bottomPadding: 13.0
            multiline: true
        }
    }
//    attachedObjects: {
//        str. text( millionSec.calculate(date));
//        } 
    
}
