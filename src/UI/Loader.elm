module UI.Loader exposing (loader)

import Html exposing (Html, div)
import Html.Attributes exposing (class)


loader : Html msg
loader =
    div [ class "lds-ripple" ]
        [ div [] []
        , div [] []
        ]
