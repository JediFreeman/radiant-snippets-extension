class Admin::SnippetFilesController < Admin::ResourceController
  paginate_models
  only_allow_access_to :index, :show, :new, :create, :edit, :update, :remove, :destroy,
    :when => [:designer, :admin],
    :denied_url => { :controller => 'admin/pages', :action => 'index' },
    :denied_message => 'You must have designer privileges to perform this action.'
  #def show;end
  #private
  #def load_models
  #  SnippetFile.all
  #end

  responses do |r|
    r.singular.default { }
  end
end