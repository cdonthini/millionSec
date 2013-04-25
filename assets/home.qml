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
                    title: "Date"
                    enabled: true
                    horizontalAlignment: HorizontalAlignment.Center
                    Option {
                        text: "1"
                        value: 1
                    }
                    Option {
                        text: "2"
                        value: 2
                    }
                    Option {
                        text: "3"
                        value: 3
                    }
                    Option {
                        text: "4"
                        value: 4
                    }
                    Option {
                        text: "5"
                        value: 5
                    }
                    Option {
                        text: "6"
                        value: 6
                    }
                    Option {
                        text: "7"
                        value: 7
                    }
                    Option {
                        text: "8"
                        value: 8
                    }
                    Option {
                        text: "9"
                        value: 9
                    }
                    Option {
                        text: "10"
                        value: 10
                    }
                    Option {
                        text: "11"
                        value: 11
                    }
                    Option {
                        text: "12"
                        value: 12
                    }
                    Option {
                        text: "13"
                        value: 13
                    }
                    Option {
                        text: "14"
                        value: 14
                    }
                    Option {
                        text: "15"
                        value: 15
                    }
                    Option {
                        text: "16"
                        value: 16
                    }
                    Option {
                        text: "17"
                        value: 17
                    }
                    Option {
                        text: "18"
                        value: 18
                    }
                    Option {
                        text: "19"
                        value: 19
                    }
                    Option {
                        text: "20"
                        value: 20
                    }
                    Option {
                        text: "11"
                        value: 21
                    }
                    Option {
                        text: "22"
                        value: 22
                    }
                    Option {
                        text: "23"
                        value: 23
                    }
                    Option {
                        text: "24"
                        value: 24
                    }
                    Option {
                        text: "25"
                        value: 25
                    }
                    Option {
                        text: "26"
                        value: 26
                    }
                    Option {
                        text: "27"
                        value: 27
                    }
                    Option {
                        text: "28"
                        value: 28
                    }
                    Option {
                        text: "29"
                        value: 29
                    }
                    Option {
                        text: "30"
                        value: 30
                    }
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                    DropDown {
                        id: month
                        title: "Month"
                        enabled: true
                        horizontalAlignment: HorizontalAlignment.Center
                        Option {
                            text: "January"
                            value: 1
                        }
                        Option {
                            text: "February"
                            value: 2
                        }
                        Option {
                            text: "March"
                            value: 3
                        }
                        Option {
                            text: "April"
                            value: 4
                        }
                        Option {
                            text: "May"
                            value: 5
                        }
                        Option {
                            text: "June"
                            value: 6
                        }
                        Option {
                            text: "July"
                            value: 7
                        }
                        Option {
                            text: "August"
                            value: 8
                        }
                        Option {
                            text: "September"
                            value: 9
                        }
                        Option {
                            text: "October"
                            value: 10
                        }
                        Option {
                            text: "November"
                            value: 11
                        }
                        Option {
                            text: "December"
                            value: 12
                        }
                    }
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                    DropDown {
                        id: year
                        enabled: true
                        title: "Year"
                        horizontalAlignment: HorizontalAlignment.Center
                        Option {
                            text: "1987"
                            value: 1987
                        }
                        Option {
                            text: "1988"
                            value: 1988
                        }
                        Option {
                            text: "1989"
                            value: 1989
                        }
                        Option {
                            text: "1990"
                            value: 1990
                        }
                        Option {
                            text: "1991"
                            value: 1991
                        }
                        Option {
                            text: "1992"
                            value: 1992
                        }
                        Option {
                            text: "1993"
                            value: 1993
                        }
                        Option {
                            text: "1994"
                            value: 1994
                        }
                        Option {
                            text: "1995"
                            value: 1995
                        }
                        Option {
                            text: "1996"
                            value: 1996
                        }
                        Option {
                            text: "1997"
                            value: 1997
                        }
                        Option {
                            text: "1998"
                            value: 1998
                        }
                    }
                }
                Button {
                    id: go
                    text: "GO"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        var resultpage = contentPageDefinition.createObject();
                        resultpage.date = day.selectedValue;
                        resultpage.month = month.selectedValue;
                        resultpage.year = year.selectedValue;
                        //home.calculate();
                        nav.push(resultpage);
                    }
                }
                Label {
                    id: homelabel
                    objectName: "homeLabel"
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
    peekEnabled: true
}
