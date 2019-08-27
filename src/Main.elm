module Main exposing (main)

import Browser exposing (element)
import Init exposing (init)
import Messages exposing (Msg(..))
import Types exposing (Flags, Model)
import Update exposing (update)
import View exposing (view)


main : Program Flags Model Msg
main =
    element
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
