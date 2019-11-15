class VideosController < ApplicationController
  skip_before_action :get_rooted, only: [:index, :show]

  def index
    @videos = Video.order('created_at DESC')
  end
  
  def show
    @video = Video.find(params[:id])
  end
  

  def new
    @video = Video.new
  end

  def create
      @video = current_user.videos.new(video_params)
      if @video.save
          flash[:success] = 'Video added!'
          redirect_to root_url
      else
          render :new
      end
  end

  private

  def video_params
  params.require(:video).permit(:link)
  end
    
end
