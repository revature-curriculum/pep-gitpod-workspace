
_revpro_autocomplete()
{
    local lab_names="Start HelloWorld MethodParameters Comparisons CombineStrings IfStatement BooleanOperators Add Subtract GreaterOrLesser IntroToOOP Instantiation Constructors Arrays WhileLoop ForLoop Math EvenOrOdd HardcodedLogin FizzBuzz SetAllArrayElementsToN ReturnArrayContents GuessingGame Exceptions UncheckedException ThrowCustomException Lists Sets Map Queue Stack Casting ArraySum Average GetMax BankAccount StaticKeyword CreateTable DropTable Insert SelectAll PrimaryKey SelectColumns SelectWhere Update Delete SelectWhereAndOr OrderBy Contains DoesNotContain ArraysAreEqual MaxMinusMin GroceryList Truncate AlterTable AggregateFunctions GroupBy StringMethods CreatingEndpoints StatusCodes PathParameters RequestBody IndexOf IsSorted ReturnLongestString FlightTracker ForeignKey InnerJoin OuterJoin CreateView Pyramid ContainsDuplicates Search2dArray CombineArrays Library AdvancedBooleans OtherStringMethods RemoveAllCharacter IsThereSum WordCount ArrayAbsoluteValue ParentObjectClassMethods Overriding Interfaces Generic PigLatin CharComparison Isogram InsertPosition ReverseAString LargestSum MostCommonCharacter Fibonacci StringIsPalindrome SubArray WordCountMap"
    local revpro_commands="submit start save test open"
    local cur prev

    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}

    case ${COMP_CWORD} in
        1)
            COMPREPLY=($(compgen -W "$revpro_commands" -- $cur))
            # echo $COMPREPLY
            ;;
        2)
            case ${prev} in
                open)
                    COMPREPLY=($(compgen -W "$lab_names" -- $cur))
                    ;;
            esac
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}

complete -F _revpro_autocomplete revpro