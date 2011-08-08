class CourseController < ApplicationController
  def new
    @course = Course.new
  end
  def show
     @assgns = Assignment.all
     @course = Course.find(params[:id])
     respond_to do |format|
     format.html # show.html.erb
     format.xml  { render :xml => @course }
  end
  end
  def edit
  end
  def destroy
  end
  def list
    @courses = Course.all
  end
  def create
    @corse = Course.new(params[:course])
    respond_to do |format|
    if @corse.save
        format.html { redirect_to(:controller => 'teacher',:action => 'tHome', :notice => 'Successfully created.') }
       # format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :controller => 'course', :action => "new" }
      #  format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
  end
end
end
