const main = async () => {
    const [developer] = await hre.ethers.getSigners();
    const accountBalance = await developer.getBalance();

    console.log("Deploying contracts with account: ", developer.address);
    console.log("Account Balance: ", accountBalance.toString());

    const Token = await hre.ethers.getContractFactory("WavePortal");
    const portal = await Token.deploy();
    await portal.deployed();

    console.log("WavePortal address: ", portal.address);
};

const runMain = async () => {
    try{
        await main();
        process.exit(0);
    } catch (error) {
        console.error(error);
        process.exit(1);
    }
};

runMain();