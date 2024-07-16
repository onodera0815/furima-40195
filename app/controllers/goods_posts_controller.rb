class GoodsPostsController < ApplicationController


  def index
    @goods_posts = GoodsPost. all
  end

  def new
    @goods_posts= GoodsPost. new

  end

  def create
    Goods_post.create(goods_post_params)
    redirect_to '/'
  end

  def show
    @goods_posts = Goods_post.find(params[:id])  
  end

  def destroy
    goods_post = Goods_post.find(params[:id])
    goods_post.destroy
    redirect_to root_path
  end

  def edit
    @Goods_post = Goods_post.find(params[:id])
  end

  def update
    goods_post = Goods_post.find(params[:id])
    goods_post.update(goods_post_params)
  end

  
  def message_params
   params.require(:goods_post).permit(:content, :image).merge(user_id: current_user.id)
  end

end