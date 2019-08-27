module Init exposing (init)

import API.Quotes exposing (getQuotes)
import Messages exposing (Msg(..))
import Types exposing (Flags, Model)


init : Flags -> ( Model, Cmd Msg )
init { api } =
    let
        model =
            { tweets = []
            , default = { text = "", created_at = "" }
            }
    in
    ( model
    , getQuotes api SetTweets
    )
