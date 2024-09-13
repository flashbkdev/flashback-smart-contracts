async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const FlashbackToken = await ethers.getContractFactory("FlashbackToken");
  const token = await FlashbackToken.deploy();

  console.log("FlashbackToken deployed to:", token.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
