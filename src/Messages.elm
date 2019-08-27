module Messages exposing (Msg(..))

import API.Quotes exposing (Tweet)
import Http exposing (Error)


type Msg
    = SetTweets (Result Http.Error (List Tweet))
    | ChangeTweet
    | SetTweetShuffled (List Tweet)
