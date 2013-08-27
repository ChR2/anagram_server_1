require "./app/models/word.rb"

get '/' do
  # Look in app/views/index.erb
  @word = params[:word]
  erb :index
  #<p>your anagrams are  </p>
end

post '/anagram' do
  @input = params[:user_input]
  @anagram_list = Word.get_anagrams(@input)
  # redirect to("/?word=#{input}")
  @anagram_list
  erb :index
end
