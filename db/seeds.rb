# coding: utf-8

# ユーザ作成
User.create!(name: "サンプルユーザA",
  email: "sample-a@email.com",
  password: "password",
  password_confirmation: "password",
  admin: false)

User.create!(name: "サンプルユーザB",
  email: "sample-b@email.com",
  password: "password",
  password_confirmation: "password",
  admin: false)

User.create!(name: "サンプルユーザC",
  email: "sample-c@email.com",
  password: "password",
  password_confirmation: "password",
  admin: false)
