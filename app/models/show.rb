require 'pry'
class Show < ActiveRecord::Base
	has_many :characters
	has_many :actors, through: :characters
	belongs_to :network

	def build_network(network_attrs)
		new_network = Network.create(network_attrs)
		self.network_id = new_network.id
	end
end