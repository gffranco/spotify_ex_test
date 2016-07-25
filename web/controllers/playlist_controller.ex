defmodule SpotifyExTest.PlaylistController do
  use SpotifyExTest.Web, :controller
  plug SpotifyExTest.Plugs.Auth

  def index(conn, _params) do
    {:ok, playlist} = Spotify.Playlist.featured(conn)
    render conn, "index.html", profile: profile, another_profile: another_profile
  end


end
