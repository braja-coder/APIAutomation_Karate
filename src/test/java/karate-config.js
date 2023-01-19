function(){
	var env = karate.env;
	if(!env){
		env = 'dev';
	}

var config = {
env: env,
myVarName: 'Hello Karate',
baseUrl: 'https://gorest.co.in',
tokenId: '5b926753bc3dd663694cf69fd3c0ab57c37846c309ca90d6d9bb80a54f6102a4'
}

if(env == 'dev'){
	
}else if(env == 'qa'){
	
}
return config;
}