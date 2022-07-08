namespace FizzBuzz
{
    public class Tests
    {
        static string FizzBuzz(int number)
        {
            return number switch
            {
                < 1 or > 100 => "",
                _ => (number % 3, number % 5) switch
                {
                    (0, 0) => "FIZZBUZZ",
                    (0, _) => "FIZZ",
                    (_, 0) => "BUZZ",
                    (_, _) => number.ToString()
                }
            };
        }

        [TestCase(0, ExpectedResult = "")]
        [TestCase(1, ExpectedResult = "1")]
        [TestCase(2, ExpectedResult = "2")]
        [TestCase(3, ExpectedResult = "FIZZ")]
        [TestCase(4, ExpectedResult = "4")]
        [TestCase(5, ExpectedResult = "BUZZ")]
        [TestCase(6, ExpectedResult = "FIZZ")]
        [TestCase(7, ExpectedResult = "7")]
        [TestCase(8, ExpectedResult = "8")]
        [TestCase(9, ExpectedResult = "FIZZ")]
        [TestCase(10, ExpectedResult = "BUZZ")]
        [TestCase(11, ExpectedResult = "11")]
        [TestCase(12, ExpectedResult = "FIZZ")]
        [TestCase(13, ExpectedResult = "13")]
        [TestCase(14, ExpectedResult = "14")]
        [TestCase(15, ExpectedResult = "FIZZBUZZ")]
        [TestCase(16, ExpectedResult = "16")]
        [TestCase(100, ExpectedResult = "BUZZ")]
        [TestCase(101, ExpectedResult = "")]
        public string FizzBuzzTest(int number)
        {
            return FizzBuzz(number);
        }
    }
}