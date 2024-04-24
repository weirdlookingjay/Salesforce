// if divisible by 3 return fizz
// if divisible by 5 return buzz
// if divisible by 3 and 5 return fizz buzz

@IsTest
private class FizzBuzz_Tests {
    @IsTest
    static void itShouldReturnTrueFizz() {
        //given
        FizzBuzz fizzbuzz = new FizzBuzz();
        //when
        Boolean result = fizzbuzz.isFizz(3);
        //then
        System.assert(result == true, 'It should return true');
    }

    @IsTest
    static void itShouldNotReturnTrueForFizz() {
        //given
        FizzBuzz fizzbuzz = new FizzBuzz();
        //when
        Boolean result = fizzbuzz.isFizz(2);
        //then
        System.assert(result == false, 'It should return false');
    }

    @IsTest
    static void itShouldReturnTrueBuzz() {
        //given
        FizzBuzz fizzbuzz = new FizzBuzz();
        //when
        Boolean result = fizzbuzz.isBuzz(5);
        //then
        System.assert(result == true, 'It should return true');
    }

    @IsTest
    static void itShouldReturnFalseBuzz() {
        //given
        FizzBuzz fizzbuzz = new FizzBuzz();
        //when
        Boolean result = fizzbuzz.isBuzz(6);
        //then
        System.assert(result == false, 'It should return false');
    }

    @IsTest
    static void itShouldReturnTrueFizzBuzz() {
        //given
        FizzBuzz fizzbuzz = new FizzBuzz();
        //when
        Boolean result = fizzbuzz.isFizzBuzz(15);
        //then
        System.assert(result == true, 'It should return true');
    }
}