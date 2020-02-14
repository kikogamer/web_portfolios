# frozen_string_literal: true

# HideCompanies controller
class HideCompaniesController < PortfolioResourcesController
  protected

  def load_portfolio_resources
    @portfolio.hide_companies
  end

  def load_portfolio_resource
    @portfolio.hide_companies.find(params[:id])
  end

  def build_portfolio_resource
    @portfolio.hide_companies.build
  end

  def portfolio_resource_params
    params.require(:hide_company).permit(:name)
  end
end
