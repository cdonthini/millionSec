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
    Label {
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        textStyle.fontSize: FontSize.PointValue
        textStyle.fontSizeValue: 20
        id: answer
        text: date + month + year + " "
        textStyle.color: Color.DarkGreen
    }
}
