namespace :db do
  desc "Import user"
  task users: [:environment] do
    user1 = User.create!(
      name: "SHOP 1",
      phone_number: "+841694949947",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.dinh.duc.shop@framgia.com",
      role: "shop",
      status: "actived",
      latitude: 21.0066625,
      longitude: 105.8157497,
      rate: 3.5)
    user1.user_tokens.create! authentication_token: Devise.friendly_token

    user2 = User.create!(
      name: "SHOP 2",
      phone_number: "+84976990043",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.thanh.hung.shop@framgia.com",
      role: "shop",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 2.5)
    user2.user_tokens.create! authentication_token: Devise.friendly_token

    user3 = User.create!(
      name: "SHOP 3",
      phone_number: "+84984063061",
      password: "12345678",
      password_confirmation: "12345678",
      email: "vu.duy.chuong.shop@framgia.com",
      role: "shop",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 1.5)
    user3.user_tokens.create! authentication_token: Devise.friendly_token

    user4 = User.create!(
      name: "SHIPPER 1",
      phone_number: "+841694949948",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.dinh.duc.shipper@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0066625,
      longitude: 105.8157497,
      rate: 3.5)
    user4.user_tokens.create! authentication_token: Devise.friendly_token

    user5 = User.create!(
      name: "SHIPPER 2",
      phone_number: "+84976990044",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.thanh.hung.shipper@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 2.5)
    user5.user_tokens.create! authentication_token: Devise.friendly_token

    user6 = User.create!(
      name: "SHIPPER 3",
      phone_number: "+84984063062",
      password: "12345678",
      password_confirmation: "12345678",
      email: "vu.duy.chuong.shipper@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 1.5)
    user6.user_tokens.create! authentication_token: Devise.friendly_token

    user8 = User.create!(
      name: "Nguyen Huu Tien",
      phone_number: "+841648295795",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.huu.tien@framgia.com",
      role: "shipper",
      status: "unactive",
      latitude: 21.0093557,
      longitude: 105.8554427,
      rate: 0)
    user8.user_tokens.create! authentication_token: Devise.friendly_token

    user9 = User.create!(
      name: "Dao Manh Nhat",
      phone_number: "+84977656089",
      password: "12345678",
      password_confirmation: "12345678",
      email: "dao.manh.nhat@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0072829,
      longitude: 105.8413891,
      rate: 4.5)
    user9.user_tokens.create! authentication_token: Devise.friendly_token

    user10 = User.create!(
      name: "Ta Tat Dat",
      phone_number: "+841674391369",
      password: "12345678",
      password_confirmation: "12345678",
      email: "ta.tat.dat@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0061393,
      longitude: 105.8419748,
      rate: 4)
    user10.user_tokens.create! authentication_token: Devise.friendly_token

    user11 = User.create!(
      name: "Mau Ha Quang",
      phone_number: "+84905068885",
      password: "12345678",
      password_confirmation: "12345678",
      email: "mau.ha.quang@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0144139,
      longitude: 105.8031754,
      rate: 3)
    user11.user_tokens.create! authentication_token: Devise.friendly_token

    user12 = User.create!(
      name: "SHOP",
      phone_number: "+841234567891",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguyen.van.a@framgia.com",
      role: "shop",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 5)
    user12.user_tokens.create! authentication_token: Devise.friendly_token

    user13 = User.create!(
      name: "SHIPPER",
      phone_number: "+841234567892",
      password: "12345678",
      password_confirmation: "12345678",
      email: "nguye.van.b@framgia.com",
      role: "shipper",
      status: "actived",
      latitude: 21.0167188,
      longitude: 105.7819804,
      rate: 1.5)
    user13.user_tokens.create! authentication_token: Devise.friendly_token

    user14 = User.create!(
      name: "ADMIN",
      phone_number: "+841234567890",
      password: "12345678",
      password_confirmation: "12345678",
      email: "admin@framgia.com",
      role: "admin",
      status: "actived",
      latitude: 21.0092948,
      longitude: 105.8099247,
      rate: 2.5)
    user14.user_tokens.create! authentication_token: Devise.friendly_token
  end
end
