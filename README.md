# Embedded Ember App Inside Existing Page

Proof of concept for including an Ember app inside an existing web page

## File Structure

* `/public` - contains the files representing an existing website. The 
	specifics here are unimportant - in our case, the contents of this 
	folder would actually be coming from a Rails application.
* `/ember-subroute` - this is where we keep the Ember app. At build 
	time, the compiled Ember app gets embedded inside the `/careers` page 
	from the `/public/careers` directory.


