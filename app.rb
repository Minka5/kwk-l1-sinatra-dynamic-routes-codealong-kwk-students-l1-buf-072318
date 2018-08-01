require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:greeter/:greetee" do
    @greeter = params[:greeter]
    @greetee = params[:greetee]
    "Hello #{@greetee} i'm #{@greeter}!"
    end
    
    get '/goodbye/:name' do
     @greetee  = params[:name]
     "Goodbye, #{@greetee}."
    
   end 
   
   get '/multiply/:num1/:num2' do
     @num1 = params[:num1].to_i
     @num2 = params[:num2].to_i
    @product   = @num1 * @num2
     "this is your product #{@product}"
   
  end

  # Code your final two routes here:

end
