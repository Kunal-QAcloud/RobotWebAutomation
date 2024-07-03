*** Test Cases ***

#ForLoop1:
#    FOR    ${i}    IN RANGE    1   11
#    log to console    ${i}
#    END

#ForLoop2:
#    FOR    ${i}    IN   1 3 5 7
#    log to console    ${i}
#    END

#ForLoop3:
#    FOR    ${i}    IN   1   2   3   4   6
#    log to console    ${i}
#    END

#ForLoop4:
#    @{item}     create list    1    2   3   4   5   6   7   8
#    FOR    ${i}    IN   @{item}
#    log to console    ${i}
#    END

ForLoop4:
    @{item}     create list    1    2   3   4   5   6   7   8
    FOR    ${i}    IN   @{item}
    log to console    ${i}
    exit for loop if    ${i}==5
    END


#Forloop5:
#    @{names}     create list    Jhon  David  Smith  Scott
#    FOR    ${element}    IN    @{names}
#        log to console   ${element}
#    END

#
#Forloop6:
#    FOR    ${element}    IN    Jhon  David  Smith  Scott
#        log to console   ${element}
#    END


