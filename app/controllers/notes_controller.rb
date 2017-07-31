class NotesController < ApplicationController
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
  
	def new
		@summary = Summary.find(params[:id])
		@note = Note.new
	end
	
	def create
		@summary = Summary.find(params[:summary_id])
		@note = @summary.notes(note_params)
			if @note.save
				flash[:notice] = "Note successfully created"
				redirect_to summary_id_path
			else
				render summary_id_path
		end
	end

	private
	 def note_params
	 	params.require(:note).permit(:title, :status)
	 end
end