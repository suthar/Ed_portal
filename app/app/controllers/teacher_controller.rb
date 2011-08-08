class TeacherController < ApplicationController
  def thome
  end
  def showInfo
    @teacher = Teacher.new
    # @teacher.id = Teacher.find(session[:username]).id
     @teacher = Teacher.find(:first, :conditions => [ "uname = ?", session[:username]])

  end
  def updateInfo
     # @teacher = Teacher.new
      @teacher = Teacher.find(:first, :conditions => [ "uname = ?", session[:username]])
    #  @teacher.uname = User.find(session[:user_id]).uName
    end
    def update_process
      @teach = Teacher.find(:first, :conditions => [ "uname = ?", session[:username]])
     # @teach.params[:rollNo] = @teacher.rollNo
      respond_to do |format|
      if @teach.update_attributes(params[:teacher])
        format.html { redirect_to(:controller => 'teacher',:action => 'tHome', :notice => 'Successfully updated.') }
       # format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "updateInfo" }
      #  format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
end
