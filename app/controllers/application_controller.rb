class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_categories

  def set_categories
    @categories = Category.where(params[:id])
    @category_children1 = Category.where(ancestry:1)
    @category_children2 = Category.where(ancestry:104)
    @category_children3 = Category.where(ancestry:156)
    @category_children4 = Category.where(ancestry:267)
    @category_children5 = Category.where(ancestry:386)
    @category_children6 = Category.where(ancestry:438)
    @category_children7 = Category.where(ancestry:521)
    @category_children8 = Category.where(ancestry:605)
    @category_children9 = Category.where(ancestry:680)
    @category_children10 = Category.where(ancestry:775)
    @category_children11 = Category.where(ancestry:818)
    @category_children12 = Category.where(ancestry:869)
    @category_children13 = Category.where(ancestry:926)
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
