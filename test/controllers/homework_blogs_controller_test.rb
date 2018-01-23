require 'test_helper'

class HomeworkBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homework_blog = homework_blogs(:one)
  end

  test "should get index" do
    get homework_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_homework_blog_url
    assert_response :success
  end

  test "should create homework_blog" do
    assert_difference('HomeworkBlog.count') do
      post homework_blogs_url, params: { homework_blog: { body: @homework_blog.body, published: @homework_blog.published, title: @homework_blog.title } }
    end

    assert_redirected_to homework_blog_url(HomeworkBlog.last)
  end

  test "should show homework_blog" do
    get homework_blog_url(@homework_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_homework_blog_url(@homework_blog)
    assert_response :success
  end

  test "should update homework_blog" do
    patch homework_blog_url(@homework_blog), params: { homework_blog: { body: @homework_blog.body, published: @homework_blog.published, title: @homework_blog.title } }
    assert_redirected_to homework_blog_url(@homework_blog)
  end

  test "should destroy homework_blog" do
    assert_difference('HomeworkBlog.count', -1) do
      delete homework_blog_url(@homework_blog)
    end

    assert_redirected_to homework_blogs_url
  end
end
