function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';

  }
  var config = {
    env: env,
    authToken: 'live_s0XIIQyza3Q6j7eoB0qkwSCqX6DoEaDL0nnbyiXYcpOL5Y664TZjbxQu6m0a1q2t',
    myVarName: 'someValue',
    host: 'https://api.thedogapi.com/v1/',
    searchAll: 'images/search/',
    getSingleIMG: 'https://api.thedogapi.com/v1/images/rk5Eoe5Nm',
    getAccountIMG: 'https://api.thedogapi.com/v1/images/',
    uploadIMG: 'images/upload',
    deleteIMG: 'https://api.thedogapi.com/v1/images/DFd_iKJWT',
    getBreedIMG: 'https://api.thedogapi.com/v1/images/QC4DjFthd/breeds',
    createBreed: 'https://api.thedogapi.com/v1/images/QC4DjFthd/breeds',

    getBreed1: 'breeds',
    getBreedId1: 'breeds/3',
    deleteBreed: 'https://api.thedogapi.com/v1/images/QC4DjFthd/breeds/2',
    getBreedId: 'https://api.thedogapi.com/v1/breeds/2',
    createVotes: 'votes',
    deleteVotes: 'votes/',
    getVoteId: 'votes/',
    getVotes: 'votes',
    limit: 10,
    page: 0,
        contentType: 'application/json',
    contentTypeData: 'multipart/form-data'

  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}
