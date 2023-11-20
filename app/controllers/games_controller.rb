require "open-uri"

url = ""
class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10)
  end

  def score
    @letters = params[:letters]
    @word = params[:word].upcase
    @result = JSON.parse(URI.open("https://wagon-dictionary.herokuapp.com/#{@word}").read)
  end
end
