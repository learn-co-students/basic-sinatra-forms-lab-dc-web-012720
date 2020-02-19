require 'sinatra/base'

class App < Sinatra::Base


    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @team_name = params[:name]
        @coach = params[:coach]
        @point_guard = params[:pg]
        @shoot_guard = params[:sg]
        @small_f = params[:sf]
        @power_f = params[:pf]
        @center = params[:c]
        erb :team
    end
end
    # <label>Team Name: <input type="text" name="name" /></label><br/>
    # <label>Coach: <input type="text" name="coach" /></label><br/>
    # <label>Point Guard: <input type="text" name="pg" /></label><br/>
    # <label>Shooting Guard: <input type="text" name="sg" /></label><br/>
    # <label>Power Forward: <input type="text" name="pf" /></label><br/>
    # <label>Small Forward: <input type="text" name="sf" /></label><br/>
    # <label>Center: <input type="text" name="c" /></label><br/><br/>
    # <input type="submit" id="Submit" />

# @name = params[:name]
# @coach = params[:coach]
# @pg = params[:pg]
# @sg = params[:sg]
# @pf = params[:pf]
# @sf = params[:sf]
# @c = params[:c]
# erb :team