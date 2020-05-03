require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  # get "/hello/:name" do
  #   @user_name = params[:name]
  #   "Hello #{@user_name}!"
  # end
   get "/reversename/:name" do 
     @name_r = params[:name].reverse
     "#{@name_r}"
  end
  
  get "/square/:number" do 
    @product = params[:number].to_i ** 2#params[:number].to_i
    "#{@product}"
  end
  
  get "/say/:number/:phrase" do
    #binding.pry 
    @total = params[:phrase] * params[:number].to_i
    "#{@total}"
  end 
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
     #binding.pry 
     @word1 = params[:word1]
     @word2 = params[:word2]
     @word3 = params[:word3]
     @word4 = params[:word4]
     @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get "/:operation/:number1/:number2" do 
    #binding.pry 

    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    case @operation 
      when "add"
      (@number1 + @number2).to_s
      when "subtract"
      (@number1 - @number2).to_s
      when "multiply"
      (@number1 * @number2).to_s 
      when "divide"
      (@number1/@number2).to_s
      end 



  end 

end