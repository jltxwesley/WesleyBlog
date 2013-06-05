module Helpers
  def login(name, password)
    visit login_path
    fill_in 'user_name', :with => name
    fill_in 'user_password', :with => password
    click_button 'Login'
  end

  def post_article name
    visit articles_path
    click_link 'New Article'
    fill_in 'article_name', :with => name
    fill_in 'article_content', :with => 'Test Content'
    fill_in 'article_tag_list', :with => 'ruby, rails'
    select '2013', :from => 'article_published_on_1i'
    select 'June', :from => 'article_published_on_2i'
    select '1', :from => 'article_published_on_3i'
    click_button 'Create Article'
  end
 end

