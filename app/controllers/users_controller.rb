class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    respond_block(@users)
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    respond_block(@user)
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    respond_block(@user)
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html { redirect_to(@user) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format_error_case(format,"new",@user.errors)
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format_error_case(format,"edit",@user.errors)
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  
protected
  def respond_block(xml)
    respond_to do |format|
      format.html 
      format.xml  { render :xml => xml }
    end
  end
  
  def format_error_case(format,html_action,xml_object)
    format.html { render :action => html_action }
    format.xml  { render :xml => xml_object, :status => :unprocessable_entity }
  end
end
