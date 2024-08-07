pragma solidity >=0.8.9;

contract test {
        struct Employee {
            uint empid;
            string empName;
            string empDept;
            uint256 salary;
            uint8 empexp;
        }

        Employee employee;

        function setEmployee() public {
            employee = Employee(1001, "ishu", "Finance", 10000, 11);
        }
        
        function getEmployeeId() public view returns (uint){
            return employee.empid;
        }

        function getEmpName() public view returns (string memory){
            return employee.empName;
        }

         function getempDept() public view returns (string memory){
            return employee.empDept;
        }

          function getEmployeeSalary() public view returns (uint256){
            return employee.salary;
        }

        function getEmployeeExp() public view returns (uint8){
            return employee.empexp;
        }
}