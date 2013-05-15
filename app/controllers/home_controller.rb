class HomeController < ApplicationController
  def index
    @video_uid = Youtube::Video.find(:scope => 'wOzOc0xxJu8', :params => {:v => '2'})
    @video_uid.entry.size # => 1
    @video_uid.entry[0].title # => "Michael Watford - So Into You (Dub Mix)"

    @video_search = Youtube::Video.find(:params => {:q => 'ruby on rails', :"max-results" => '5', :v => '2'})
    @video_search.entry.size             # => 5
    @video_search.title                  # => "YouTube Videos matching query: ruby on rails"
    @video_search.entry[3].link[1].href  # => http://gdata.youtube.com/feeds/api/videos/UCB57Npj9U0/responses?v=2


    @user = Youtube::User.find(:scope => 'ROSTERMUSIC', :type => 'uploads', :params => {:"max-results" => '50'})#, :type => 'playlists' , :params => {:v => '2'}
    #@user.entry[2].title #) = "shinnenkai"


end

  def mas_vistos
    @video_uid = Youtube::Video.find(:scope => 'wOzOc0xxJu8', :params => {:v => '2'})
    @video_uid.entry.size # => 1
    @video_uid.entry[0].title # => "Michael Watford - So Into You (Dub Mix)"

    @video_search = Youtube::Video.find(:params => {:q => 'ruby on rails', :"max-results" => '5', :v => '2'})
    @video_search.entry.size             # => 5
    @video_search.title                  # => "YouTube Videos matching query: ruby on rails"
    @video_search.entry[3].link[1].href  # => http://gdata.youtube.com/feeds/api/videos/UCB57Npj9U0/responses?v=2


     @user_rostermusic = Youtube::User.find(:scope => 'ROSTERMUSIC', :type => 'uploads', :params => {:"max-results" => '50'})#, :type => 'playlists' , :params => {:v => '2'}
     @user_blanconegro = Youtube::User.find(:scope => 'blancoynegro', :type => 'uploads', :params => {:"max-results" => '50'})
     @user_kontor = Youtube::User.find(:scope => 'kontor', :type => 'uploads', :params => {:"max-results" => '50'})
     @user_caribemix = Youtube::User.find(:scope => 'caribemix', :type => 'uploads', :params => {:"max-results" => '50'})
     @user_SpinninRec = Youtube::User.find(:scope => 'SpinninRec', :type => 'uploads', :params => {:"max-results" => '50'})

    @users = [@user_rostermusic,@user_blanconegro,@user_kontor,@user_caribemix,@user_SpinninRec]
    @videos = []

    @users.each do|usuario|
      usuario.entry.each do|video|
        @videos << video
      end
    end

  end

  
  def mas_recientes
  end


end
