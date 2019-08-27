module Types exposing (Flags, Model)

import API.Quotes exposing (Tweet)


type alias Model =
    { tweets : List Tweet
    , default : Tweet
    }


type alias Flags =
    { api : String
    }
