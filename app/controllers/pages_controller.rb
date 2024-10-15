class PagesController < ApplicationController
  before_action :home
  def home
    @carouselData = [
      {"path" => ActionController::Base.helpers.asset_path("black_tusk.jpg"), "description" => "Black Tusk from Panorama Ridge, Garibaldi Provincial Park BC"},
      {"path" => ActionController::Base.helpers.asset_path("cheakamus_from_hn_whistler.JPG"), "description" => "Cheakamus Lake from High Note Trail, Whistler BC"},
      {"path" => ActionController::Base.helpers.asset_path("garibaldi_from_pr.jpg"), "description" => "Garibaldi Lake from Panorama Ridge, Garibaldi Provincial Park BC"},
      {"path" => ActionController::Base.helpers.asset_path("haleakala_volcano.jpg"), "description" => "Haleakalā Crater, Maui HI"},
      {"path" => ActionController::Base.helpers.asset_path("moraine.jpg"), "description" => "Moraine Lake, Banff National Park AB"},
      {"path" => ActionController::Base.helpers.asset_path("mt_sefton_nz.jpg"), "description" => "Mount Sefton from Hooker Valley Track, New Zealand"}
    ]
  end

  def about
  end
end
