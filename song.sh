#!/bin/bash
song=$(spotify_player get key playback)
if test "$song" = null
then echo Not Playing
else echo $song | jq .item.name | tr -d '"'
fi