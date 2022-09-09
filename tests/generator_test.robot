*** Settings ***
Documentation        Testing baconipsum.com generator
Library              SeleniumLibrary

Resource             ../resources/generator.resource
Resource             ../configs/config.resource

Test Setup           Open Browser          browser=chrome
Test Teardown        Close All Browsers

*** Variables ***
${NUMBER_PARAG}      17
${DEFAULT_PARAG}     1       # default paragraph has only 1 extra. 1 here so caclulation totals 6. 
${BIG_NUMBER_PARAG}  105
${BIG_NUMBER_CUT}    10
${BACON_START}       Bacon ipsum dolor amet
${PARAGRAPH}         //p

*** Test Cases ***
Test case 01 - Specific number of paragraphs 
    Given I am at ${URL}
     When I fill the paragraph field with "${NUMBER_PARAG}"  
      And I submit the form
     Then I should receive a text with "${NUMBER_PARAG}" paragraphs            

Test case 02 - No number of paragraphs given
    Given I am at ${URL}
     When I fill the paragraph field with "" 
      And I submit the form
     Then I should receive a text with "${DEFAULT_PARAG}" paragraphs

Test case 03 - Testing limit of 99 paragraphs 
    Given I am at ${URL}
     When I fill the paragraph field with "${BIG_NUMBER_PARAG}"  
      And I submit the form
     Then I should receive a text with "${BIG_NUMBER_CUT}" paragraphs      

Test case 04 - Text starts with "Bacon ipsum dolor amet..."
    Given I am at ${URL}
     When I make sure checkbox "${BACON_START_CHECK}" is selected
      And I submit the form
     Then I should receive a text that starts with ${BACON_START}                             