<?php

/*

Для реалізації структури компанії з офісами та співробітниками в PHP ми можемо використовувати класи. Спочатку ми створимо класи для компанії, офісу та співробітника, а потім ми створимо об'єкти цих класів та додамо їх до компанії.

*/

class Company
{
    private $name;
    private $offices = array();

    public function __construct($name)
    {
        $this->name = $name;
    }

    public function addOffice($office)
    {
        $this->offices[] = $office;
    }

    public function getOfficesBySalary()
    {
        $offices = $this->offices;
        usort($offices, function ($a, $b) {
            return $b->getSalarySum() - $a->getSalarySum();
        });
        return $offices;
    }

    public function getOfficesByEmployeeCount($employeeCountMin, $employeeCountMax, $employeeCountMinVersa, $employeeCountMaxVersa)
    {
        $offices = array_filter($this->offices, function ($office) use ($employeeCountMin, $employeeCountMax, $employeeCountMinVersa, $employeeCountMaxVersa) {
            $employeeCount = count($office->getEmployees());
            return (($employeeCount > $employeeCountMin && $employeeCount < $employeeCountMax) || ($employeeCount > $employeeCountMinVersa && $employeeCount < $employeeCountMaxVersa)) || -1;
        });
        return $offices;
    }
}

class Office
{
    private $name;
    private $employees = array();

    public function __construct($name)
    {
        $this->name = $name;
    }
    public function getName()
    {
        return $this->name;
    }

    public function addEmployee($employee)
    {
        $this->employees[] = $employee;
    }

    public function getEmployees()
    {
        return $this->employees;
    }

    public function getSalarySum()
    {
        return array_reduce($this->employees, function ($sum, $employee) {
            return $sum + $employee->getSalary();
        }, 0);
    }
}

class Employee
{
    private $name;
    private $salary;

    public function __construct($name, $salary)
    {
        $this->name = $name;
        $this->salary = $salary;
    }

    public function getSalary()
    {
        return $this->salary;
    }
}

/*
Тепер ми можемо отримати відсортований список офісів за витратами на зарплати співробітникам:
*/

$company = new Company("Наша компанія");

for ($i = 1; $i <= 35; $i++) {
    $office = 0;


    // (5 -> 19)
    $n = rand(2, 30);
    // (3 -> 23)
    // $n=$i >10?rand(19, 30):rand(2, 5);

    for ($j = 1; $j <= $n; $j++) {

        $office = $office ? $office :  new Office("Офіс " . $i);
        $employee = new Employee("Співробітник " . $j, rand(1000, 5000));
        $office->addEmployee($employee);
    }
    if ($office) {
        $company->addOffice($office);
    }
}

if (1) {
    echo 'print getOfficesBySalary\n';
    $officesBySalary = $company->getOfficesBySalary();
    foreach ($officesBySalary as $office) {
        echo $office->getName() . ': ' . $office->getSalarySum() . "$ \n";
    }
}

if (1) {

    echo 'print getOfficesByEmployeeCount (5 -> 19)||(3 -> 23)\n';
    $officesByEmployeeCount = $company->getOfficesByEmployeeCount(5, 19, 3, 23);
    foreach ($officesByEmployeeCount as $office) {
        echo $office->getName() . ': ' . count($office->getEmployees()) . " cпівробітників\n";
    }
}
