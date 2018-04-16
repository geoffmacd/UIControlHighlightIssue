## UIControl Highlight Issue on Plus sized devices

This sample app demonstrates an issue with highlighting UIControls within the leading 40 pts of plus sized devices embedded in a navigation controller. This only happens in a navigation controller that has pushed at least once

Reproduction

1. Run app on 6+, 7+ or 8+
2. Tap button to push a new view controller
3. Touch down on left side of button (within 40pts)
4. Observe lack of highlight state
5. Touch up and observer another push


[Video demonstrating issue](highlightissue.mov)
