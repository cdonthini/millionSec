import bb.cascades 1.0

Page {
    
    property alias date: dateLabel.text
    
    id: result
    titleBar: TitleBar {
        id: title
        title: "Result Page"
    }
    Label {
        id: dateLabel
        text: "date Page"
        verticalAlignment: VerticalAlignment.Top
        horizontalAlignment: HorizontalAlignment.Center
    }
    
    
}
