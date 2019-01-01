module PostsHelper
	def time_ago_in_words_jp(from_time, options = {})
		case time_ago_in_words(from_time, options = {})
		when '1日'
			'昨日'
		when '約1ヶ月'
			'一ヶ月前'
		when '7日'
			'一週間前'
		end
	end
end
