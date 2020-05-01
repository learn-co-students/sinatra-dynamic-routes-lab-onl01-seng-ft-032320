require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do 
    sqrd_num = params[:number].to_i ** 2
    "#{sqrd_num}"
  end

  get '/say/:number/:phrase' do 
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase_array = []
    num.times{phrase_array << phrase}
    "#{phrase_array}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."    
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    case op 
    when "add"
      answer = num1 + num2
    when "subtract"
      answer = num1 - num2
    when "multiply"
      answer = num1 * num2
    when "divide"
      answer = num1 / num2
    end
    "#{answer}"

  end
end