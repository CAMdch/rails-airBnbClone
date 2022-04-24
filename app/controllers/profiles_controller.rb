class ProfilesController < ApplicationController
  # Afficher tous les appartements mient à la réservation par le user
  def dashboard
    @flats = Flat.where('user_id = ?', current_user)
  end
end
