class Client < ActiveRecord::Base


	enum status: [:moroso, :suspendido, :al_dia, :de_baja]
end
