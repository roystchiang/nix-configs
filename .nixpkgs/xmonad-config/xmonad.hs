import XMonad
import XMonad.Util.Run
import XMonad.Layout.Spacing
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Actions.SpawnOn

myLayout = spacing 10 $ Tall 1 (3/100) (1/2)

main = do
  xmobar <- spawnPipe "xmobar"
  xmonad $ def
    { borderWidth = 1
    , terminal = "termite"
    , normalBorderColor = "#000000"
    , focusedBorderColor = "#FFFFFF"
    , logHook = dynamicLogWithPP $ xmobarPP { ppOutput = hPutStrLn xmobar}
    , layoutHook = avoidStruts $ myLayout
    , modMask = mod4Mask
    , startupHook = spawnHere "feh --bg-scale --randomize $HOME/wallpapers/*"
    }
    
