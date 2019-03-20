# iOS-12-AutoFill-Password-Suggestion-ByPass-Example

**iOS 12** recognise password textFields by `isSecureTextEntry` property and not just by `textContentType` property.

Workaround:

1. set `isSecureTextEntry`  property to false.

2. Add a UITextField shouldChangeCharactersInRange Delegate Method and enable the `isSecureTextEntry`  property.

NOTE: -
`shouldBeginEditing` UITextField delegate method Still show Auto-filling Suggestion.
`textFieldDidChange` UITextField delegate method Auto-deletes the first charachter as it Will happen after the first charachter is displayed. And 'secureTextEntry' will empty the field.
