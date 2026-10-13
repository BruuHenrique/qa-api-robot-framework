*** Settings ***
Resource    ../resources/keywords.robot
Suite Setup    Create API Session

*** Test Cases ***
CT01 Retrieve Existing Post
    [Tags]    positive    contract
    ${response}=    Get Post By Id    1
    Should Be Equal As Integers    ${response.status_code}    200
    ${body}=    Set Variable    ${response.json()}
    Response Should Have Post Contract    ${body}
    Should Be Equal As Integers    ${body}[id]    1
    Should Not Be Empty    ${body}[title]

CT02 Filter Posts By User
    [Tags]    positive    filtering
    ${response}=    Get Posts By User    ${DEFAULT_USER_ID}
    Should Be Equal As Integers    ${response.status_code}    200
    ${body}=    Set Variable    ${response.json()}
    Should Not Be Empty    ${body}
    FOR    ${item}    IN    @{body}
        Should Be Equal As Integers    ${item}[userId]    ${DEFAULT_USER_ID}
    END

CT03 Create Post
    [Tags]    positive    create
    ${response}=    Create Post    QA portfolio    Robot Framework API automation    ${DEFAULT_USER_ID}
    Should Be Equal As Integers    ${response.status_code}    201
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal As Strings    ${body}[title]    QA portfolio
    Should Be Equal As Strings    ${body}[body]    Robot Framework API automation
    Should Be Equal As Integers    ${body}[userId]    ${DEFAULT_USER_ID}
    Dictionary Should Contain Key    ${body}    id

CT04 Retrieve Non Existing Post
    [Tags]    negative    not-found
    ${response}=    Get Post By Id    999999
    Should Be Equal As Integers    ${response.status_code}    404
