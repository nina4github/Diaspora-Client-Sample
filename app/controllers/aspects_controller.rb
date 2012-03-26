class AspectsController < ApplicationController
  # GET /aspects
  # GET /aspects.xml
  def index
    @aspects = Aspect.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aspects }
    end
  end

  # GET /aspects/1
  # GET /aspects/1.xml
  def show
    @aspect = Aspect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aspect }
    end
  end

  # GET /aspects/new
  # GET /aspects/new.xml
  def new
    @aspect = Aspect.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aspect }
    end
  end

  # GET /aspects/1/edit
  def edit
    @aspect = Aspect.find(params[:id])
  end

  # POST /aspects
  # POST /aspects.xml
  def create
    @aspect = Aspect.new(params[:aspect])

    respond_to do |format|
      if @aspect.save
        format.html { redirect_to(@aspect, :notice => 'Aspect was successfully created.') }
        format.xml  { render :xml => @aspect, :status => :created, :location => @aspect }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aspect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aspects/1
  # PUT /aspects/1.xml
  def update
    @aspect = Aspect.find(params[:id])

    respond_to do |format|
      if @aspect.update_attributes(params[:aspect])
        format.html { redirect_to(@aspect, :notice => 'Aspect was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aspect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aspects/1
  # DELETE /aspects/1.xml
  def destroy
    @aspect = Aspect.find(params[:id])
    @aspect.destroy

    respond_to do |format|
      format.html { redirect_to(aspects_url) }
      format.xml  { head :ok }
    end
  end
end
