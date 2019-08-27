module Update exposing (update)

import Messages exposing (Msg(..))
import Random exposing (generate)
import Random.List exposing (shuffle)
import Types exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeTweet ->
            ( model
            , model.tweets
                |> shuffle
                |> generate SetTweetShuffled
            )

        SetTweetShuffled randomTweets ->
            ( { model | tweets = randomTweets }, Cmd.none )

        SetTweets result ->
            case result of
                Ok tweets ->
                    ( { model | tweets = tweets }
                    , Cmd.none
                    )

                Err _ ->
                    ( model, Cmd.none )
