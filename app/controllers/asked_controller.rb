class AskedController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @who = params[:name]
    @question = params[:question]
    @open = params[:select]
    
    if @open == "private"
      @who = "익명"
    end
      
    Question.create(
      who: @who,
      question: @question,
    )
    redirect_to :back #뒤로 돌아가라
  end
  
  def sign_up
    
  end
  
  def sign_up_process
    @email = params[:email]
    @name = params[:name]
    @password = params[:password]
    
    User.create(
      email: @email,
      name: @name,
      password: @password
    )
  end
  
  def login
  end
  
  def login_process
    @email = params[:email]
    @password = params[:password]
    @message = ""
    
    #유저인증
    user = User.find_by(email: @email)
    #해당하는 email을 가진 user가 있다면
    if user
      if user.password == @password
        session[:user_email] = user.email
        redirect_to '/'
      else
        @message = "비밀번호가 틀렸어."
      end
    else
      @message = "야 너 가입 안했거나 이메일 틀렸어."
    end
  end
  
  def logout
    session.clear
    redirect_to '/'
  end
end