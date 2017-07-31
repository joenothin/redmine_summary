module SummariesHelper
	  # Renders the projects index
  def render_project_hierarchy(projects)
    render_project_nested_lists(projects) do |project|
      # s = link_to_project(project, {}, :class => "#{project.css_classes} #{User.current.member_of?(project) ? 'my-project' : nil}")
			link_to @project, controller: "notes", action: "index", id: @summary
		end
	end
end
