// HelloToken.sol 파일을 가져와서 HelloToken 이라는 변수에 담겠다.
const VoteContract = artifacts.require("VoteContract"); // .json확장자 생략

module.exports = function (deployer) {
  deployer.deploy(VoteContract); //가져온 파일을 배포한다는 뜻
};

// 그냥 기본으로 생성되어있는 initial_migration.js 파일 그대로 복붙해서
// 이름만 바꿔주면 됨