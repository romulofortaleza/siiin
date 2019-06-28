class HomeController < ApplicationController
  def index
    @nomeusuario = current_user.name
    @mainTitle = "Instituto de Desenvolvimento Econômico e Social - INDES"
    @mainDesc = "Sistema de Informações Internas"
  end

  def minor
  end
end
