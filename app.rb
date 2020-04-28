require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reversed = params[:name].reverse 
    "#{@reversed}"
  end 

  get '/square/:number' do 
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end 

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @saying = params[:phrase]
    @string = []

    @num.times do 
      @string << @saying
    end
    
    "#{@string.join}"

  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@phrase}."
  end 

  get '/:operation/:number1/:number2' do 
    @first = params[:number1].to_i 
    @second = params[:number2].to_i
    @method = params[:operation]

    if @method == 'add'
      "#{@first + @second}"
    elsif @method == 'subtract'
      "#{@first - @second}"
    elsif @method == 'multiply'
      "#{@first * @second}"
    else @method == 'divide'
      "#{@first / @second}"
    end 
  end 

end