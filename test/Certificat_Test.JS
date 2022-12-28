const Test_Contract=artifacts.require("Certificat")

contract("Test",(accounts)=>{
    let Certificat_test

    beforeEach("Intialisation",async()=>{ 
        Certificat_test=Certificat_test.deployed()
    })
    it ("Return the token tails",async()=>{
        const token=await test_Contract_instance.tokens(1)
        console.debug(token)
    })


} )