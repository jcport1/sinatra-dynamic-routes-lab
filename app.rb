require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 

    #accepts name & renders name backwards

    @name = params[:name]

    "#{@name.reverse}"

  end 

  get '/square/:number' do

    #accepts a number & returns the square of that number

    @number = params[:number]

    result = @number.to_i * @number.to_i 

    result.to_s

  end 

  get '/say/:number/:phrase' do 
    
    #accepts a number & a phrase & returns that phrase in a single string the number of times given

    string = ""
    @number = params[:number]
    @phrase = params[:phrase]
    integer = @number.to_i

    integer.times { string += "#{@phrase}\n" }
    string

  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 

    #accepts five words & returns a string containing all five words

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end 

  get '/:operation/:number1/:number2' do 

    #accepts an opertation & performs the operation on the two numbers provided, returning a String

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i 

    if params[:operation] == "add"
      "#{@number1+@number2}"
    elsif params[:operation] == "subtract"
      "#{@number1-@number2}"
    elsif params[:operation] == "multiply"
      "#{@number1*@number2}"
    elsif params[:operation] == "divide"
      "#{@number1/@number2}"
    end
  end 
end