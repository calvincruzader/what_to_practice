class ComposerController < ApplicationController

  def show
    @composers = Composer.first
  end
end