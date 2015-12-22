class Client < ActiveRecord::Base


	enum status: [:moroso, :suspendido, :al_dia, :de_baja]

	def default_status
    	self.status ||= 2
  	end
end
