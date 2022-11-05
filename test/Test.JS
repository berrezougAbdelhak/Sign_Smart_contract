
const Test_Contract=artifacts.require("Test")

contract("Test",(accounts)=>{
    let test_Contract_instance

    beforeEach("setup our contract",async()=>{
        test_Contract_instance=await Test_Contract.deployed()
    })

    it("Deploy the contract with the initial message",async()=>{
        const message=await test_Contract_instance.message()
        assert.equal(message,"Essalam elikom")
    })

})