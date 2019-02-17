class SubjectsController < ApplicationController
 layout false
  
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    #@subject = Subject.new
    #add adding default value to the fields form
    @subject = Subject.new({:name => 'default'})
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject Created Sucessfully........"
      redirect_to(subjects_path)
    else
      render('new')
    end

  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject Updated Sucessfully........"
      redirect_to(subjects_path(@subject))
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}'Created Sucessfully........"
    redirect_to(subjects_path)
  end

  private 

  def subject_params
    params.required(:subject).permit(:name,:position,:visible)
  end

end
