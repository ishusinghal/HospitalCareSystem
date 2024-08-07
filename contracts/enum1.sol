pragma solidity >=0.8.9;

contract test {
    enum PizzaSize {
        SMALL, MEDIUM, LARGE
    }

    PizzaSize choice;
    PizzaSize defaultChoice= PizzaSize.LARGE;
    function setMedium()  public {
        choice = PizzaSize.MEDIUM;
    }

    function getchoice() public view returns (PizzaSize)
    {
            return choice;
    }

    function getDefaultOrChoice() public view returns (uint){
        return uint(defaultChoice);
    }

}