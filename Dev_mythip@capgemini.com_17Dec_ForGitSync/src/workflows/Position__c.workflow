<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_Position_owners_when_there_are_no_Interviewers</fullName>
        <description>Email to Position owners when there are no Interviewers</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/html_new</template>
    </alerts>
    <alerts>
        <fullName>Test</fullName>
        <description>Test</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/custom_new</template>
    </alerts>
    <alerts>
        <fullName>html</fullName>
        <description>html</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/html_new</template>
    </alerts>
    <alerts>
        <fullName>newtest</fullName>
        <description>test</description>
        <protected>false</protected>
        <recipients>
            <recipient>mythip@capgemini.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Date_Opened_to_Today</fullName>
        <field>Date_opened__c</field>
        <formula>NOW()</formula>
        <name>Date Opened to Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_to_Recruiter_Queue_on_Approval</fullName>
        <field>OwnerId</field>
        <lookupValue>ReruiterQueue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Owner to Recruiter Queue on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Closed_on_Not_Approved</fullName>
        <field>status__c</field>
        <literalValue>Closed</literalValue>
        <name>Status to Closed on Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Open_on_Approval</fullName>
        <field>status__c</field>
        <literalValue>Open</literalValue>
        <name>Status to Open on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_for_Positions_in_Progress</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Sub-Status for Positions in Progress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_to_Approved_on_Approval</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Sub-Status to Approved on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sub_Status_to_Not_Approved_on_Reject</fullName>
        <field>Sub_Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Sub-Status to Not Approved on Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>nhgfj</fullName>
        <field>Education__c</field>
        <name>nhgfj</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>test</fullName>
        <field>OwnerId</field>
        <lookupValue>testnewuser1@cap.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>test</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>test_feb_8_test</fullName>
        <field>OwnerId</field>
        <lookupValue>ReruiterQueue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>test feb-8 test</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Position has no Interviewers</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Position__c.Number_of_Interviewers__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_to_Position_owners_when_there_are_no_Interviewers</name>
                <type>Alert</type>
            </actions>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>bvgf</fullName>
        <active>false</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Position__c.status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Position__c.Start_Date__c</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>test</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>-30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>html new</fullName>
        <actions>
            <name>html</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>new image test</fullName>
        <active>false</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>test feb-8</fullName>
        <actions>
            <name>test_feb_8_test</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Position__c.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>test new image</fullName>
        <actions>
            <name>Test</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>tst</fullName>
        <actions>
            <name>newtest</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Position__c.Name</field>
            <operation>contains</operation>
            <value>test</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
