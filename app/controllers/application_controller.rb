class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :enable_query_cache

  private

  def enable_query_cache
    ActiveRecord::Base.connection.enable_query_cache!
  end
end
