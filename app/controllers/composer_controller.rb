class ComposerController < ApplicationController

  def show
    composers = Composer.select_all

  end
end
