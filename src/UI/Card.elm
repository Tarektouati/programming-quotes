module UI.Card exposing (card)

import Html exposing (Html, div, i, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import List exposing (head, reverse)
import Maybe exposing (withDefault)
import String exposing (replace, split, trim)


card : String -> msg -> Html msg
card defaultTweet toMsg =
    div [ class "card" ]
        [ i [ class "arrow left", onClick toMsg ]
            []
        , div
            [ class "quote" ]
            [ defaultTweet
                |> split "-"
                |> formatQuote
                |> text
            ]
        , i [ class "arrow right", onClick toMsg ] []
        , div
            [ class "author" ]
            [ defaultTweet
                |> split "-"
                |> getAuthor
                |> text
            ]
        ]


formatQuote : List String -> String
formatQuote tweet =
    tweet
        |> head
        |> withDefault ""
        |> trim
        |> replace "”" ""
        |> replace "“" ""


getAuthor : List String -> String
getAuthor tweet =
    tweet
        |> reverse
        |> head
        |> withDefault ""
        |> trim
