
using ShallowDeepCopy;
using System.Runtime.Serialization;

Product pr1 = new Product
{
    Name = "Product1",
    Price = 10,
    Category = "Drink",
    Country = new Country
    {
        Name = "Turkey"
    }
};

//Product pr2 = pr1.ShallowCopy();
Product pr2 = pr1.DeepCopy();


pr2.Name = "Product2";
pr2.Country.Name = "England";

Console.WriteLine(pr1);
Console.WriteLine(pr2);


Car car1 = new Car
{
    Color = "Black",
    Name = "E200",
    Year=2020
};


Car car2 = car1 with
{
    Color = "Gray"
};





