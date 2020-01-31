require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher'

get '/' do
  text = params["text"]
  shift = params["shift"]
  cipher = caesar_cipher(text, shift.to_i) if !text.nil?
  erb :index, :locals => {:cipher => cipher}
end