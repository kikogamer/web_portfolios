class ContactsController < PortfolioResourcesController
  
  protected

  def load_portfolio_resources
    @portfolio.contact
  end

  def load_portfolio_resource
    @portfolio.contact
  end

  def build_portfolio_resource
    @portfolio.build_contact
  end

  def portfolio_resource_params
    params.require(:contact).permit(:email, :phone, :website, :address_city, :address_country)
  end
end