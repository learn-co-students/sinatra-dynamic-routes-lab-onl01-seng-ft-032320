require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @number = @num**2
   "#{@number.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    new_string = ""
    @number.times do
     new_string += @phrase
    end
    new_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5] 
    return "#{@word1 +" " +@word2 +" " +@word3 +" " +@word4 +" " + @word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    if @operation == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
    elsif @operation == "subtract"
      @sum = params[:number1].to_i - params[:number2].to_i
    elsif @operation == "multiply"
      @sum = params[:number1].to_i * params[:number2].to_i
    else @operation == "divids"
      @sum = params[:number1].to_i / params[:number2].to_i
    end
    return "#{@sum}"
  end

end