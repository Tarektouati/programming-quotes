module API.Quotes exposing (Tweet, getQuotes)

import Http
import Json.Decode exposing (Decoder, field, string)
import String exposing (append)


type alias Tweet =
    { text : String
    , created_at : String
    }


getQuotes : String -> (Result Http.Error (List Tweet) -> msg) -> Cmd msg
getQuotes endpoint toMsg =
    Http.get
        { url = endpoint
        , expect = Http.expectJson toMsg tweetsDecoder
        }


tweetDecoder : Decoder Tweet
tweetDecoder =
    Json.Decode.map2 Tweet
        (field "text" Json.Decode.string)
        (field "created_at" Json.Decode.string)


tweetsDecoder : Decoder (List Tweet)
tweetsDecoder =
    Json.Decode.list tweetDecoder
