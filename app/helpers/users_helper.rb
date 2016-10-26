module UsersHelper

	def gravatar_for(user, size: 80)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "http://i.imgur.com/4SrBjCm.jpg#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
