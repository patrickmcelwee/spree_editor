class Spree::ContentImagesController < Spree::BaseController
  def create
    @content_image = Spree::ContentImage.new(params[:content_image])
    @content_image.save!

    render :text => @content_image.attachment.url
  end

end
