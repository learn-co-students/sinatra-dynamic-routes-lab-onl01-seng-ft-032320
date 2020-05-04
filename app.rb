require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse 
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
    
  end

  get '/say/:number/:phrase' do
    @final_phrase = ''
    @counter = 0
    @number = params[:number].to_i
    @phrase = params[:phrase]
    while @counter < @number
      @final_phrase << @phrase
      @counter += 1
    end
    @final_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1,@word2,@word3,@word4,@word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    @final_phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    
  end

  get '/:operation/:number1/:number2' do
    @operation,@number1,@number2 = params[:operation],params[:number1].to_i,params[:number2].to_i
    if @operation == "add"
      @final = @number1 + @number2
      @final.to_s

    elsif @operation == "subtract"
      @final = @number1 - @number2
      @final.to_s

    elsif @operation == "multiply"
      @final = @number1 * @number2
      @final.to_s
    elsif @operation == "divide"
      @final = @number1 / @number2
      @final.to_s
    end

  end

end