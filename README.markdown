# Time-Freezer

##How to install:

	$ gem install time-freezer

##How to use:

```ruby
Time.freeze
Time.now
#Wed Aug 17 16:36:34 +0300 2011
sleep(2);
Time.now
#Wed Aug 17 16:36:34 +0300 2011
Time.travel(Time.now+60)
Time.now
#Wed Aug 17 16:37:34 +0300 2011
Time.reset
```