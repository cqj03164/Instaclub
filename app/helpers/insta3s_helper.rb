module Insta3sHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      insta3s_path
    elsif action_name == 'edit'
      insta3_params
      _path
    end
  end
end