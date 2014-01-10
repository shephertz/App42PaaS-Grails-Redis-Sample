package com.shephertz.app42.paas.user

class UserController {

    def redisService
    
    def index() { 
    
    }
    
    def save(){
        redisService.lpush("username", params.name)
        redirect(action: "show")
    }
    
    def show(){
        def userInstance = redisService.lrange("username", 0, 1000)
        [userInstance: userInstance]
    }
}
