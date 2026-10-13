*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   variables.robot

*** Keywords ***
Create API Session
    Create Session    jsonplaceholder    ${BASE_URL}

Get Post By Id
    [Arguments]    ${post_id}
    ${response}=    GET On Session    jsonplaceholder    ${POSTS_ENDPOINT}/${post_id}    expected_status=any
    RETURN    ${response}

Get Posts By User
    [Arguments]    ${user_id}
    ${params}=    Create Dictionary    userId=${user_id}
    ${response}=    GET On Session    jsonplaceholder    ${POSTS_ENDPOINT}    params=${params}    expected_status=any
    RETURN    ${response}

Create Post
    [Arguments]    ${title}    ${body}    ${user_id}
    ${payload}=    Create Dictionary    title=${title}    body=${body}    userId=${user_id}
    ${response}=    POST On Session    jsonplaceholder    ${POSTS_ENDPOINT}    json=${payload}    expected_status=any
    RETURN    ${response}

Response Should Have Post Contract
    [Arguments]    ${body}
    Dictionary Should Contain Key    ${body}    userId
    Dictionary Should Contain Key    ${body}    id
    Dictionary Should Contain Key    ${body}    title
    Dictionary Should Contain Key    ${body}    body
