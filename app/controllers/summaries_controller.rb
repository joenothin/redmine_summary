class SummariesController < ApplicationController
  def index

    scope = Project.visible.sorted

    respond_to do |format|
      format.html {
        unless params[:closed]
          scope = scope.active
        end
        @projects = scope.to_a
      }
    end
  end

  def show
    
    scope = Project.visible.sorted

    respond_to do |format|
      format.html {
        unless params[:closed]
          scope = scope.active
        end
        @projects = scope.to_a
      }
    end
    @project_name = (params[:project])
  end

  def new
    @summary = Summary.new
  end

  def create
    @summary = Summary.new(summary_params)
    if @summary.save
      redirect_to action: 'show', id: @summary.id
    else
      render 'index'
    end
  end

private
  def summary_params
    params.require(:summary).permit(:title, :status)
  end

end
