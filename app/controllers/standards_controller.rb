class StandardsController < ApplicationController
	def index
		standards = Standard.all
		ActiveModel::Serializer::CollectionSerializer.new(standards,
		 {serializer: StandardSerializer}).as_json
		render json: standards

	end
end