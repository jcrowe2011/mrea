module PagesHelper
  
  def test
    if @yes < '4'
      render :partial => 'layouts/header'
    else
      render :partial => 'layouts/footer'
    end
  end
  
  def dashboard_nav
    if @dashboard == "1"
      render :partial => 'layouts/dashboardNav'
      else
        render :partial => 'layouts/menu-nav'
    end
  end  
end
