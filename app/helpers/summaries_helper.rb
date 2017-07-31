module SummariesHelper
	  # Renders the projects index
  def render_project_hierarchy(projects)
    render_project_nested_lists(projects) do |project|
      link_to_project(project, {}, controller: "summaries", action: "show", id: @project_id , :class => "#{project.css_classes} #{User.current.member_of?(project) ? 'my-project' : nil}")
      # link_to_project(project, {},  project_summary_path(@project_id), :class => "#{project.css_classes} #{User.current.member_of?(project) ? 'my-project' : nil}")
			# link_to @project, project_notes_path(@project)
		end
	end
end
