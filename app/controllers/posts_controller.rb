class PostsController < ApplicationController
  def index
    # @parents = Category.all.order("id ASC").limit(13)

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
  
  

end
