# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

	attr_accessor :emails

	def initialize(emails)
		@emails = emails
	end

	def to_param
		self.emails.split(/[, ]/).reject{|a| a.empty?}
	end

	def parse
		self.to_param.uniq
		# if self.emails.split(", ").length > 1
		# 	self.emails.split(", ").uniq
		# else
		# 	self.emails.split(" ").uniq
		# end
	end
end