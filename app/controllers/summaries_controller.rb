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
      format.api  {
        @offset, @limit = api_offset_and_limit
        @project_count = scope.count
        @projects = scope.offset(@offset).limit(@limit).to_a
      }
      format.atom {
        projects = scope.reorder(:created_on => :desc).limit(Setting.feeds_limit.to_i).to_a
        render_feed(projects, :title => "#{Setting.app_title}: #{l(:label_project_latest)}")
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
      format.api  {
        @offset, @limit = api_offset_and_limit
        @project_count = scope.count
        @projects = scope.offset(@offset).limit(@limit).to_a
      }
      format.atom {
        projects = scope.reorder(:created_on => :desc).limit(Setting.feeds_limit.to_i).to_a
        render_feed(projects, :title => "#{Setting.app_title}: #{l(:label_project_latest)}")
      }
    end
    @project_name = (params[:id]).capitalize
  end
end
