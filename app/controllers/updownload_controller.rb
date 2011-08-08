class UpdownloadController < ApplicationController
  def newAssgn
	#@assignment = Assignment.new
  end
  def newTest
	@test = Test.new
  end
  def newMaterial
	@material = Material.new
  end

  def addNewAssgn
	@assgnmnt = Assignment.new
	@assgnmnt.name = params[:assignment][:name]
	@assgnmnt.guideline = params[:assignment][:guideline]
	@assgnmnt.dateOfSubmission = params[:assignment][:dateOfSubmission]
	@assgnmnt.maxMarks = params[:assignment][:maxMarks]
	@assgnmnt.course_id = params[:assignment][:maxMarks]
	@assgnmnt.teacher_id = params[:assignment][:maxMarks]
	@assgnmnt.fileName = params[:assignment][:name]
	@assgnmnt.fileType = params[:assignment][:name]
	@assgnmnt.filePath = params[:assignment][:name]
	post = Assignment.save(params[:assignment])
	if @assgnmnt.save
        #format.html { redirect_to(:controller => 'teacher',:action => 'tHome', :notice => 'Successfully created.') }
        render :text => "File has been uploaded successfully"
        else
        #format.html { render :controller => 'course', :action => "new" }
        render :text => "File has not been uploaded successfully"
        end
	
  end
  def addNewTest
  end
  def addNewMaterial
  end

  def indexpage
     #render :file => 'app/views/upload/uploadfile.html.erb'
  end
  def uploadfile
  end
  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
  def downloadFile
        send_file("/home/amit/Desktop/RubyOnRails.pdf",
              :filename => "RubyOnRails.pdf",
              :type => "application/pdf")
  end
end
