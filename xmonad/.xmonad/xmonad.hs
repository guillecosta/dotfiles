import XMonad
import XMonad.Config.Desktop
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Hooks.DynamicLog (statusBar, xmobarPP)
import XMonad.Util.EZConfig (additionalKeys)

main :: IO ()
main = xmonad  =<< statusBar "xmobar" xmobarPP toggleStrutsKey myConfig

-- main config
myConfig = desktopConfig
    { terminal    = "alacritty"
    , modMask     = myModMask
    , layoutHook  = myLayoutHook
    , borderWidth = 0
    } `additionalKeys` myAdditionalKeys

-- layout
myLayoutHook = smartBorders (tiled ||| Mirror tiled ||| Full)
    where tiled = Tall nmaster delta ratio
          nmaster = 1
          delta = 3/100
          ratio = 1/2

-- hide status bar
toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

-- keybindings
myModMask = mod4Mask
myAdditionalKeys =
    [ ((mod4Mask, xK_p), spawn "dmenu_run -fn Iosevka-14")
    ]
