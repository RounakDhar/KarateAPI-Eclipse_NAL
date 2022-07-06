function fn() {
var env = karate.env;
if (!env) {
env = 'dev';
}

var config = {
env: env,
myVarName: 'hello karate',
baseUrl: 'https://gorest.co.in',
tokenID: f554a8b4ae6429a41a0a654af5f96183997f2a77bcf7d871fe1646a1d3ca3e82
}

if (env == 'dev') {

//customize

} else if (env == 'e2e') {

//customize

}

return config;

}