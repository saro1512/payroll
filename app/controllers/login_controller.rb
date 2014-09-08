class LoginController < ApplicationController
def index
end

def register
end

def ldap_validate
	debugger
	@auth={:username => "cn=#{params[:login]},dc=localhost,dc=com",
	       :method	 => :simple,
	       :password => "#{params[:password]}"}
	require 'net-ldap'
	ldap = Net::LDAP.new(:host => 'localhost',:auth => @auth)
	if ldap.bind
		redirect_to url_for(:controller => 'files',:action => 'home')
	else
		redirect_to :back
		respond_to do |format|
			formar.js {render :js => "alert('authentication failed')"}
		end
	end
end

def validate
	if(params[:login] == "admin" and params[:password] == "admin")
		redirect_to url_for(:controller => "employees", :action => 'list')
	else
		redirect_to :back
		respond_to do |format|
                        formar.js {render :js => "alert('authentication failed')"}
                end

	end
end

def create
end

end
