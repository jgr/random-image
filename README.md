# Random Image Redirect

This small rack app lists the contents of an s3 bucket, picks one file at random, and then redirects to that file at a given base URL.  It expects your AWS creds and a couple other pertinent bits to be provided as ENV variables (a .env.dist is provided for you to work from) and runs great with foreman or on Heroku!
