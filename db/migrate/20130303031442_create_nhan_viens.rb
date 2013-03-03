class CreateNhanViens < ActiveRecord::Migration
  def change
    create_table :nhan_viens do |t|
      t.integer :MaNV
      t.string :TenNV
      t.string :ChucVu
      t.string :TaiKhoan
      t.string :MatKhau

      t.timestamps
    end
  end
end
