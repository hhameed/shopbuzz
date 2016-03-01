class SiteController < ApplicationController

  def index
    @products = Product.take(8)
  end

  def browse
    #@products = Product.(page: params[:page], per_page: 5)

    #print y
     if request.xhr?
       x=[]
       params[:brand_ids].each do|i|
         print i
         i.each do|j|
           print j
           x << j["value"]
           print j["value"]
         end
       end

       y=params[:cat_id]
        x.each do|t| print t
       end
       print y

       @products = Product.where(:brand_id=>x,:category_id=>y).paginate(page: params[:page], per_page: 10)
       respond_to do |format|
         format.html
       end

       #redirect_to action: "browse"
     else
       @products = Product.where(params.permit(:category_id)).paginate(page: params[:page], per_page: 10)
     end



  end

end
