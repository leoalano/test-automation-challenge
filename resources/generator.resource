*** Settings ***
Resource          ../page_objects/generator_page.resource

*** Keywords ***
I am at ${URL}
    Go To                                ${URL}

I fill the paragraph field with "${NUMBER_PARAG}"  
    Wait Until Element Is Visible        ${PARAGRAPHS_FIELD}
    Input Text                           ${PARAGRAPHS_FIELD}    ${NUMBER_PARAG}

I submit the form
    Wait Until Element is Visible        ${SUBMIT_BUTTON}
    Click Element                        ${SUBMIT_BUTTON}

I should receive a text with "${NUMBER_PARAG}" paragraphs 
    ${count} = 	                         Get Element Count 	     ${PARAGRAPH} 
    Should Be True 	                     ${count} == ${NUMBER_PARAG} + 5	        # adding 5 because of 5 paragraphs outside the response

I make sure checkbox "${BACON_START_CHECK}" is selected
    Checkbox Should Be Selected          ${BACON_START_CHECK}

Then I should receive a text that starts with ${BACON_START}  
    Element Should Contain               ${PARAGRAPH}            ${BACON_START}   