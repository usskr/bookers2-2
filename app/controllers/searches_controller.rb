class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    # @model = params[:model]
    # @content = params[:content]
    # @method = params[:method]
    # if @model == 'user'
    #   @records = User.search_for(@content, @method)
    # else
      # @records = Book.search_for(@content, @method)
    # end
    
    # カテゴリのみの検索
    @book = Book.new
    @books = Book.search(params[:keyword])
  end

end
