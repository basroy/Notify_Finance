Process Flow on Miro to establish existing project progression flow, whether a project is in states active/complete/close'.
   When project is active/new, resource planning and timesheets can be logged.
   When the project is completed, this is a manual action at the exclusive access of an Engagement Manager, which indicates that no timecards remain behind unapproved.
         The proiject can be reverted back to state 'active' in case, additional work is to be incorporated or stray timesheets are to subitetd by project resources. 
   When the project is closed, this should be triggered by the EM only after finnace has reviewed the completed project budget.

  Theer are finance/SOX governance controls that no finance member - receivables, governance or payables, can log into the PSA application
  to make any changes to a project in any state. 
  To automate notifications to finance and EM and Resource Manager and other personas such as Delivery Manager, that 
  projects are open too long beyond the Project/Contract Planned  End Date, or that a project is completed and not yet closed, even after 4 weeks of completion, or 
   that a closed/copleted project is going over-budget, the process flow captures each such event and designs the process flow to capture trigering of an event 
   and the respobse/action to be taken by different personas.

Additional factors included in this folder is a snowflake query to identify 'Impact' projects and identify the time/day in future to send out a survey notification, which is 
supposed to be triggered every 6 months from when the impact product was purchased by the customer.
     The snowflake query does the following:- 
              - Cleanse
              - Manipulate
              - Filter out relevant record for the purpose
            Additional activities such as Data Visualisation is being done in a separate script.
    
