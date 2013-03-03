class NhanViensController < ApplicationController
  # GET /nhan_viens
  # GET /nhan_viens.json
  def index
    @nhan_viens = NhanVien.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nhan_viens }
    end
  end

  # GET /nhan_viens/1
  # GET /nhan_viens/1.json
  def show
    @nhan_vien = NhanVien.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nhan_vien }
    end
  end

  # GET /nhan_viens/new
  # GET /nhan_viens/new.json
  def new
    @nhan_vien = NhanVien.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nhan_vien }
    end
  end

  # GET /nhan_viens/1/edit
  def edit
    @nhan_vien = NhanVien.find(params[:id])
  end

  # POST /nhan_viens
  # POST /nhan_viens.json
  def create
    @nhan_vien = NhanVien.new(params[:nhan_vien])

    respond_to do |format|
      if @nhan_vien.save
        format.html { redirect_to @nhan_vien, notice: 'Nhan vien was successfully created.' }
        format.json { render json: @nhan_vien, status: :created, location: @nhan_vien }
      else
        format.html { render action: "new" }
        format.json { render json: @nhan_vien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nhan_viens/1
  # PUT /nhan_viens/1.json
  def update
    @nhan_vien = NhanVien.find(params[:id])

    respond_to do |format|
      if @nhan_vien.update_attributes(params[:nhan_vien])
        format.html { redirect_to @nhan_vien, notice: 'Nhan vien was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nhan_vien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nhan_viens/1
  # DELETE /nhan_viens/1.json
  def destroy
    @nhan_vien = NhanVien.find(params[:id])
    @nhan_vien.destroy

    respond_to do |format|
      format.html { redirect_to nhan_viens_url }
      format.json { head :no_content }
    end
  end
end
