class HomeController < ApplicationController
 before_filter :login_required, :only => :my_account
   
    def index
      @user = User.new
      @user.uName = params[:uName]
    end
 
    def process_login
	              
                @usr = User.new(params[:user])
               # flash[:notice] = @usr.uName + @usr.uPassword
                valid_user = User.find(:first,:conditions => ["uName = ? and uPassword = ? and uRole = ?",@usr.uName, @usr.uPassword,@usr.uRole])
                if valid_user
                session[:user_id]=valid_user.id
                session[:username]=valid_user.uName
                flash[:notice] = "login succcessful"
                if @usr.uRole == "Admin"
                  redirect_to :controller => 'home',:action => 'index'
                else if @usr.uRole == "Teacher"
                  redirect_to :controller => 'teacher',:action => 'tHome'
                else
                  redirect_to :controller => 'student',:action => 'sHome'
                end
              end
                else
                flash[:notice] = "Invalid User/Password/Role"
                redirect_to :action => 'index'
                end
    end

    def logout
      reset_session
      flash[:message] = 'Logged out.'
      redirect_to :action => 'index'
    end
    
    def change_password
      
    end
    
    def chpass_process
      if params[:user][:nPassword] == params[:user][:rPassword]
        user_name = User.find(session[:user_id]).uName;
        old_pass =  User.find(:first,:conditions => ["uName = ? and uPassword = ?",user_name, params[:user][:oPassword]])
        if old_pass
          @usr = User.find(session[:user_id])
          @usr.uPassword = params[:user][:nPassword]
           if @usr.save
          flash[:notice] = "Password changed successfully"
          redirect_to :controller => 'student',:action => 'sHome'
        end
        else
          flash[:notice] = "Entered Password is not correct"
          redirect_to :controller => "home", :action => "change_password"
              end
            else
              flash[:notice] = "Both password mismatch"
                redirect_to :controller => "home", :action => "change_password"
              end
    end

    def my_account
	puts "its came in my account"
  end
end
