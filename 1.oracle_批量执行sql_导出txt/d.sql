SET LINESIZE 200;
SET PAGESIZE 1000;
SET ECHO OFF;
SET FEEDBACK OFF;
SET HEADING ON;

SPOOL /path/to/output/query_results.txt;

-- 执行 SQL 查询
SELECT * FROM table1;
SELECT * FROM table2;
-- 添加更多的查询...

SPOOL OFF;
