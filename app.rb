require_relative 'config/environment'

class App < Sinatra::Base
    # Write your code here!

    get '/reversename/:name' do
        "#{params[:name].reverse}"
    end

    get '/square/:number' do
        @num = params[:number].to_i
        "#{@num * @num}"
    end

    get '/say/:number/:phrase' do
        @phrase = ""
        params[:number].to_i.times do
            @phrase << params[:phrase]
        end
        "#{@phrase}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
        @display = ""
        @num1 = params[:number1].to_i
        @num2 = params[:number2].to_i
        case params[:operation]
        when "add"
            @display = "#{@num1 + @num2}"
        when "subtract"
            @display = "#{@num1 - @num2}"
        when "multiply"
            @display = "#{@num1 * @num2}"
        when "divide"
            @display = "#{@num1 / @num2}"
        end

        "#{@display}"
    end
end
