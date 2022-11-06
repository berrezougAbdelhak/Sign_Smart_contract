
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

    it("get manager",async()=>{
        const manager=await test_Contract_instance.getManager()
        assert.ok(manager)

    })

    it("Set message",async()=>{
        await test_Contract_instance.setMessage("newMsg")
        const message=await test_Contract_instance.message()
        assert.equal(message, "newMsg")
    })

    it("Test access control ",async()=>{
        try {
            await test_Contract_instance.setMessage("Test access control").call(accounts[1])
            assert(false)
        } catch (error) {
            assert(error)
        }
    })
})