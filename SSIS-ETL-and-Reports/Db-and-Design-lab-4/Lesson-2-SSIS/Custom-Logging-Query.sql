use SSISDB
go

declare @RowcountExecution_id bigint = (select max(execution_id) from [catalog] . [execution_data_statistics]);

select
@RowcountExecution_id as SSISExecutionID
, [package_name]
, [dataflow_path_id_string]
, [source_component_name]
, [destination_component_name]
, sum([rows_sent]) as [Rows]
from [catalog].[execution_data_statistics]
where execution_id = @RowcountExecution_id
group by 
[package_name]
, [dataflow_path_id_string]
, [source_component_name]
, [destination_component_name]