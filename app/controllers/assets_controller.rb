class AssetsController < ApplicationController
  before_action :set_portfolio

  def create
    @asset = @portfolio.assets.create(asset_params)

    if @asset.save
      flash[:notice] = "Asset added to portfolio"
      redirect_to portfolio_path(@portfolio)
    else
      flash[:alert] = "Error adding asset"
      redirect_to portfolio_path(@portfolio)
    end
  end

  def destroy
    @asset = @portfolio.assets.find(params[:id])
    @asset.destroy
    redirect_to portfolio_path(@portfolio)
  end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  def asset_params
    params.require(:asset).permit(:ticker, :desired_weight)
  end
end
