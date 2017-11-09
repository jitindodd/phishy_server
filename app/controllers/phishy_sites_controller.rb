class PhishySitesController < ApplicationController
  def get
    @article = PhishySite.where(url: request.headers["url"])[0]
    msg = {}
    if (@article)
      msg = { url: @article.url,
              score: @article.score,
              category: @article.category}
    else
      msg = { url: request.headers["url"],
              score: 0,
              category: 'Safe'}
    end
    respond_to do |format|
      format.json  { render json: msg } # don't do msg.to_json
    end
  end
end
