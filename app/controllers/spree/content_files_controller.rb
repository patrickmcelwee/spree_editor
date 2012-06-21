class Spree::ContentFilesController < Spree::BaseController
  def create
    @content_file = Spree::ContentFile.new(params[:content_file])
    @content_file.save!

    render :text => "#{@content_file.attachment.url},#{@content_file.attachment_file_name}"
  end

end
