class TableausController < ApplicationController
  include TableauTrustedInterface

  def index
    tabserver = 'localhost'
    tabuser   = 'username'
    tabpath   = 'views/zzz_DR_JavascriptTest/Sheet1#2'
    tabparams = ':embed=yes&:toolbar=no'
    ticket    = tableau_get_trusted_ticket(tabserver, tabuser, request.remote_ip)

    url = "http://public.tableausoftware.com/views/WorldIndicators/GDPpercapita"
    redirect_to url

    if ticket = true
      return
    end

    render :status => 403, :text => "Error with request"
  end
end
