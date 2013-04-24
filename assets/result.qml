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
        Label {
            bottomMargin: 50
            horizontalAlignment: HorizontalAlignment.Right
            id: answer
            text: date + month + year + " "
            textStyle.color: Color.white
            textStyle.base: textStyleBoldTitle.style
        }
        
        Label {
           onCreationCompleted: _millionSec.calculate(date)
            bottomMargin: 50
            horizontalAlignment: HorizontalAlignment.Right
            id: str
            textStyle.color: Color.white
            textStyle.base: textStyleBoldTitle.style
            objectName: "strLabel"
        }
    }
    
}
