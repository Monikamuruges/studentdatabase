const {buildModule} =require("@nomicfoundation/hardhat-ignition/modules");
module.exports = buildModule("stu_ds",(m)=>{
    const stu_ds=m.contract("stu_ds");
    return{stu_ds};
})