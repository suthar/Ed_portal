class StudentController < ApplicationController
  def sHome
    end
    def showInfo
      @student = Student.new
      @student = Student.find(:first, :conditions => [ "rollNo = ?", session[:username]])
    end
    def updateInfo
     # @student = Student.new
     # @student = Student.find(params[:id])
    @student = Student.find(:first, :conditions => [ "rollNo = ?", session[:username]])
    #  @student.rollNo = User.find(session[:user_id]).uName
    end
    def update_process
      @stdnt = Student.find(:first, :conditions => [ "rollNo = ?", session[:username]])
     # @stdnt.params[:rollNo] = @student.rollNo
      respond_to do |format|
      if @stdnt.update_attributes(params[:student])
        format.html { redirect_to(:controller => 'student',:action => 'sHome', :notice => 'Successfully updated.') }
       # format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "updateInfo" }
      #  format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
end
