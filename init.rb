Redmine::Plugin.register :summaries do
  name 'Summaries plugin'
  author 'Jonathan Robinson'
  description 'This is a project summary plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/joenothin/redmine_summary'
  author_url 'https://github.com/joenothin'


  permission :summaries, { :summaries => [:index] }, :public => true
  menu :top_menu, :summaries, { :controller => 'summaries', :action => 'index' }, :caption => 'Summary', :after => :projects

end