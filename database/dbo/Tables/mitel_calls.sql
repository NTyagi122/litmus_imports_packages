CREATE TABLE [dbo].[mitel_calls]
(
  [conversation_id] VARCHAR(255) NOT NULL PRIMARY KEY
  ,[type] VARCHAR(255) NULL
  ,[folder] VARCHAR(255) NULL
  ,[owner_id] VARCHAR(255) NULL
  ,[case_id] VARCHAR(255) NULL
  ,[from_address] VARCHAR(255) NULL
  ,[from_name] VARCHAR(255) NULL
  ,[media_server_id] VARCHAR(255) NULL
  ,[media_server_type] VARCHAR(255) NULL
  ,[media_type] VARCHAR(255) NULL
  ,[to_address] VARCHAR(255) NULL
  ,[conversation_state] VARCHAR(255) NULL
  ,[queue_id] VARCHAR(255) NULL
  ,[queue_name] VARCHAR(255) NULL
  ,[queue_reporting] VARCHAR(255) NULL
  ,[queue_is_wrap_up_time_enabled] BIT NULL
  ,[time_offered_to_system] DATETIME2 NULL
  ,[agent_id] VARCHAR(255) NULL
  ,[agent_reporting] VARCHAR(255) NULL
  ,[agent_name] VARCHAR(255) NULL
  ,[last_agent_action] VARCHAR(255) NULL
  ,[last_agent_action_date] DATETIME2 NULL
  ,[direction] VARCHAR(255) NULL
  ,[failed_route_reason] VARCHAR(255) NULL
  ,[allow_agent_preview] BIT NULL
  ,[cc] VARCHAR(255) NULL
  ,[bcc] VARCHAR(255) NULL
  ,[month_year_created] VARCHAR(255) NULL
  ,[modified_on] DATETIME2 NULL
  ,[native] BIT NULL
  ,[reseize_timer_value] VARCHAR(255) NULL

)
