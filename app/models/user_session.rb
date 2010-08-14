class UserSession < Authlogic::Session::Base
  include ActiveModel::Conversion 
  find_by_login_method :find_by_login

  generalize_credentials_error_messages "Login failed."
  def to_key 
    new_record? ? nil : [ self.send(self.class.primary_key) ] 
  end
end