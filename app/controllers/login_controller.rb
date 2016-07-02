class LoginController < ApplicationController
  def index
    @msg = "ログイン画面ですよ"
    @test = Loginuser.all
  end

  def tomain
  end
end
