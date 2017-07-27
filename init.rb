Redmine::Plugin.register :summaries do
  name 'Summaries plugin'
  author 'Jonathan Robinson'
  description 'This is a project summary plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'


  permission :summaries, { :summaries => [:index] }, :public => true
  menu :top_menu, :summaries, { :controller => 'summaries', :action => 'index' }, :caption => 'Summary', :after => :projects

end