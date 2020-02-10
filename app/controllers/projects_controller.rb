# frozen_string_literal: true

# projects controller
class ProjectsController < PortfolioResourcesController
  protected

  def load_portfolio_resources
    @portfolio.projects
  end

  def load_portfolio_resource
    @portfolio.projects.find(params[:id])
  end

  def build_portfolio_resource
    @portfolio.projects.build
  end

  def portfolio_resource_params
    params.require(:project).permit(:title, :description, :kind, :url)
  end
end
