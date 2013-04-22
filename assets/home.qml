import bb.cascades 1.0

NavigationPane {
    id: nav
    Page {
        id: home
        titleBar: TitleBar {
            id: titleBar
            visibility: ChromeVisibility.Visible
            title: "Home"
        }
        Container {
            layout: StackLayout {
            }
            background: backgroundPaint.imagePaint
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            visible: true
            Label {
                text: "Pick Your Birth Date"
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
            }
            Container {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                DropDown {
                    id: day
                    title: "Choose your BirthDate"
                    horizontalAlignment: HorizontalAlignment.Center
                    Option {
                        text: "1"
                        value: "1"
                    }
                    Option {
                        text: "2"
                        value: "2"
                    }
                    Option {
                        text: "3"
                        value: "3"
                    }
                    Option {
                        text: "4"
                        value: "4"
                    }
                    Option {
                        text: "5"
                        value: "5"
                    }
                    Option {
                        text: "6"
                        value: "6"
                    }
                    Option {
                        text: "7"
                        value: "7"
                    }
                    Option {
                        text: "8"
                        value: "8"
                    }
                    
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                    DropDown {
                        id: month
                        title: "Month"
                        horizontalAlignment: HorizontalAlignment.Center

                        //options:
                    }
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                    DropDown {
                        id: year
                        title: "Year"
                        horizontalAlignment: HorizontalAlignment.Center

                        //options:
                    }
                }
                Button {
                    id: go
                    text: "GO"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        var resultpage = contentPageDefinition.createObject();
                        nav.push(resultpage);
                    }
                }
            }
        }
    }
    attachedObjects: [

        // This is the definition of the Content page used to create a page in the onTriggered signal-handler above.
        ComponentDefinition {
            id: contentPageDefinition
            source: "result.qml"
        }
    ]
    onPopTransitionEnded: {
        // Transition is done destroy the Page to free up memory.
        page.destroy();
    }
}
