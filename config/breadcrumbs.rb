

crumb :root do
  link 'メルカリ', root_path
end

crumb :mypage do
  link 'マイページ', mypages_path
  parent :root
end


crumb :mypage_index do
  link 'プロフィール'
  parent :mypage, edit_mypage_path
end



# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).