# Daily Mood Mailer

A simple Rails application for sharing your mood via email.

After cloning, follow these steps to run locally:

```
bundle install
rails db:{create,migrate}
rails s
```

Please note: this app is configured to _not_ send emails in development.

### Branches

- `main`: Email will be sent synchronously, starting from `MailersController#create`.
- `background_workers_complete`: Completed code from Introduction to Background Workers class. Emails are sent using Sidekiq and Redis. _this branch will be pushed after class on 03/01/2022_

### Notable Technologies / Dependencies

- [Sidekiq](https://github.com/mperham/sidekiq/wiki/Getting-Started)
- [Redis](https://formulae.brew.sh/formula/redis)
