import bb.cascades 1.0

// This is the file used for the SceneCover shown when the application
// is running in minimized mode on the running apps page.

// In the SceneCover the content property keyword has to be explicitly added
Container {
    Container {        
        layout: DockLayout {
        }
        background: Color.Black
        ImageView {
            imageSource: "asset:///images/minimized.png"
            scalingMethod: ScalingMethod.AspectFit
        }

        // A title is put on a dark background, it is pixelaligned in order
        // to get it to match the checkerd pattern in the background image.
        Container {
            bottomPadding: 500
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Bottom

            Container {
                preferredWidth: 260
                preferredHeight: 84
                background: Color.create("#121212")
                layout: DockLayout {
                }
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    verticalAlignment: VerticalAlignment.Center
                    text: "DOB"
                    textStyle.color: Color.create("#ebebeb")
                    textStyle.fontSize: FontSize.PointValue
                    textStyle.fontSizeValue: 20
                }
            }
        }
    }
}
