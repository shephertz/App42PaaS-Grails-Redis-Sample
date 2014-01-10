Getting Started with App42PaaS-Grails-Redis Sample Application:
---------------------------------------------------------

This application is basically a simple User Input Form that takes input from user and saves it in database.

<b>[Download the source code from git.](https://github.com/shephertz/App42PaaS-Grails-Redis-Sample/archive/master.zip)</b>

Note: This project is build with grails 2.2.1 .

Project Configuration:
--------------------------

         1. Open BuildConfig.groovy (located in grails-app/conf folder).

		 2. Add the Redis dependency.
		  
				compile ":redis:1.4.2"
				
		 3. Open Config.groovy (located in grails-app/Cconf folder).
		 
         4. Add Redis configuration details in it.

                  grails {
						redis {
							poolConfig {
									// jedis pool specific tweaks here, see jedis docs & src
									// ex: testWhileIdle = true
								}
							timeout = 2000 //default in milliseconds
							
							password = "<redis_password>" //defaults to no password

							// use a single redis server 
							port = redis_port  // eg 14245
							host = "<redis_host>" // eg 162.173.3.12

						}
					}

         5. Run the following command to create war: 
				
				grails war
					

Deploying Application on App42 PaaS using Binary:
---------------------------------------------------
					
		
	1. Run the app42 deploy command.
        
                  $ app42 deploy
                  $ Enter App Name: <your_app_name>
				  $ 1: Binary
				  $	2: Source
				  $ Choose Upload Type [Binary]: 1
                  $ Would you like to deploy from the current directory? [Yn]: n
                  $ Binary Deployment Path: <your_binary_path>
                  $ This process may take a while, be patient with it.
                  $ Deploying Application... OK
                  $ Please wait it may take few minutes.
                  $ Latest Status....|
                  $ App deployed successfully.
				  

Deploying Application on App42 PaaS using Source (Git):
--------------------------------------------------------

	1. Run the app42 deploy command.
	
				  $ app42 deploy
                  $ Enter App Name: <your_app_name>
				  $ 1: Binary
				  $	2: Source
				  $ Choose Upload Type [Binary]: 2
				  $ Enter Git URL?: <your_public_git_url>
				  $ Deploying Application... OK
                  $ Please wait it may take few minutes.
                  $ Latest Status....|
                  $ App deployed successfully.
