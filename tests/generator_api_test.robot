*** Settings ***
Library               RequestsLibrary
Library               Collections

*** Variables ***
${NUMBER_PARAGRAPHS}         29
${EMPTY_NUMBER}
${DEFAULT_NUMBER}            5
${BIG_NUMBER}                105
${MAX_NUMBER}                99

*** Test Cases ***
Test case 01 - Specific number of paragraphs 
    ${RESPONSE}=            GET  url=https://baconipsum.com/api/?type=all-meat&paras=${NUMBER_PARAGRAPHS}&start-with-lorem=1    expected_status=200
    ${BODY}= 	            Convert to string 	   ${response.content} 	  
    ${NUMBER_COMMAS}=  	    Get Count 	           ${BODY} 	                ","    
    Should Be True          ${NUMBER_COMMAS}+1 == ${NUMBER_PARAGRAPHS}   

Test case 02 - No number of paragraphs given
    ${RESPONSE}=            GET  url=https://baconipsum.com/api/?type=meat-and-filler                                            expected_status=200
    ${BODY}= 	            Convert to string 	   ${response.content} 	  
    ${NUMBER_COMMAS}=  	    Get Count 	           ${BODY} 	                    ","    
    Should Be True          ${NUMBER_COMMAS}+1 == ${DEFAULT_NUMBER}   

Test case 03 - Testing limit of 99 paragraphs
    ${RESPONSE}=            GET  url=https://baconipsum.com/api/?type=all-meat&paras=${BIG_NUMBER}                               expected_status=200
    ${BODY}= 	            Convert to string 	   ${response.content} 	  
    ${NUMBER_COMMAS}=  	    Get Count 	           ${BODY} 	                    ","    
    Should Be True          ${NUMBER_COMMAS} == ${MAX_NUMBER}    #max number the number of commas is the same as number of paragraphs.


Test case 04 - Text starts with "Bacon ipsum dolor amet..." 
    ${RESPONSE}=            GET  url=https://baconipsum.com/api/?type=meat-and-filler&start-with-lorem=1                          expected_status=200
    ${BODY}= 	            Convert to string 	   ${response.content} 	  
    Should Contain          ${BODY}                Bacon ipsum dolor amet
