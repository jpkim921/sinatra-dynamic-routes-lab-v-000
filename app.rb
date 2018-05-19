require_relative 'config/environment'


class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @output = ""
    @number.times do |x|
      @output += "#{@phrase}\n"
    end
    @output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end


end
