require 'rails_helper'
require 'capybara/rails'

feature 'Task lists' do

  scenario 'User can view task lists' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")
  end

  scenario 'Anonymous user can view about page' do
    visit signin_path
    click_on "About"
    expect(page).to have_content("About")
  end

  scenario 'User can add a task list' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")

    click_on "Add Task List"
    fill_in "Name", with: "Lindsay"
    click_on "Create Task List"
    expect(page).to have_content("Task List was created successfully!")
    expect(page).to have_content("My Lists")
  end

  scenario 'User must fill out a title for the task list' do
    create_user email: "user@example.com"
    TaskList.create!(name: "Work List")
    TaskList.create!(name: "Household Chores")

    visit signin_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Work List")
    expect(page).to have_content("Household Chores")

    click_on "Add Task List"
    click_on "Create Task List"
    expect(page).to have_content("Your task could not be created")
    expect(page).to have_content("Add a task list")
  end

  scenario 'User can edit a task list' do
    create_user email: "user@example.com"

    visit signin_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("My Lists")

    click_on "Add Task List"
    fill_in "Name", with: "Lindsay has a task list"
    click_on "Create Task List"
    expect(page).to have_content("Task List was created successfully!")
    expect(page).to have_content("Lindsay has a task list")
    click_on "Edit"

    expect(page).to have_content("Edit a task list")
    fill_in "Name", with: "new task list"
    click_on "Update Task List"
    # save_and_open_page
    expect(page).to have_content("new task list")
    expect(page).to have_content("Task List was updated successfully!")
  end

  scenario 'User can add a task' do
    create_user email: "user@example.com"

    visit signin_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("My Lists")

    click_on "Add Task List"
    fill_in "Name", with: "ToDo"
    click_on "Create Task List"
    expect(page).to have_content("Task List was created successfully!")
    expect(page).to have_content("ToDo")

    click_on "New Task"
    fill_in "Description", with: "walk the dog"
    click_on "Create Task"
    expect(page).to have_content("Task was created successfully!")
    expect(page).to have_content("ToDo")

  end

  scenario 'User can delete a task' do
    create_user email: "user@example.com"

    visit signin_path
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("My Lists")

    click_on "Add Task List"
    fill_in "Name", with: "ToDo"
    click_on "Create Task List"
    expect(page).to have_content("Task List was created successfully!")
    expect(page).to have_content("ToDo")

    click_on "New Task"
    fill_in "Description", with: "walk the dog"
    click_on "Create Task"
    expect(page).to have_content("Task was created successfully!")
    expect(page).to have_content("ToDo")

    expect(page).to have_content("walk the dog")
    #save_and_open_page

    click_on "Delete"
    expect(page).to have_content("Task was deleted successfully!")
    expect(page).to have_no_content("walk the dog")

  end



end