require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/display' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |details|
      Course.new(details)
    end
    @courses = course.all
  end

end
