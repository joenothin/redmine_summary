class NotesController < ApplicationController

	def new
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