class Api::GiftsController < Api::ApiController
	def new
		gift = Gift.generate
		render json: { content: "#{gift.who.content} #{gift.what.content}, #{gift.why.content}" }
	end
end