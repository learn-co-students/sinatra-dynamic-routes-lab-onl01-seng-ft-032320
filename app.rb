require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    rev = params[:name].reverse
  end

  get "/square/:number" do
    squared = params[:number].to_i
    result = (squared*squared).to_s
  end

  get "/say/:number/:phrase" do 
    results = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do results << "#{@phrase}" end
    results.join(" ")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do

    answer = nil
    case params[:operation]
      when  "add"
        answer = params[:number1].to_i + params[:number2].to_i
      when  "subtract"
        answer = params[:number1].to_i - params[:number2].to_i
      when  "multiply"
        answer = params[:number1].to_i * params[:number2].to_i
      when  "divide"
        answer = params[:number1].to_i / params[:number2].to_i

    end
    answer.to_s
  end

end