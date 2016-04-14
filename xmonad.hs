import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName

main = xmonad =<< xmobar defaultConfig
        { terminal          =   myTerminal
        , modMask           =   myModMask
        , borderWidth       =   myBorderWidth
        , normalBorderColor =   myNormalBorderColor
        , focusedBorderColor=   myFocusedBorderColor
        , startupHook       =   setWMName "LG3D"
        }

myTerminal              =   "terminator"
myModMask               =   mod4Mask    -- Super
myBorderWidth           =   2
myNormalBorderColor     =   "#000000" --Black
myFocusedBorderColor    =   "#ffff00" --Yellow