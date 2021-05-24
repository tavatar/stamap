class LoginController < ApplicationController
  def index
    @msg = "ログイン画面ですよ"
  end

  def tomain
    user = Loginuser.first

    if user = Loginuser.find_by(userid: params[:id]) then
        @msg = "メイン画面ですよ！"
	    render template: "main/index"
	else
        @msg = "ユーザー名か、パスワードがちゃいます"
	    render template: "login/index"
	end
  end
end
