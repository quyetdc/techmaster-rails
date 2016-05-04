class Task < ActiveRecord::Base
  after_save :expire_fragment_cache
  before_destroy :expire_fragment_cache

  def expire_fragment_cache
    action_controller_obj = ActionController::Base.new
    action_controller_obj.expire_fragment('all_uncompleted_tasks')
    action_controller_obj.expire_fragment('all_completed_tasks')
  end
end
