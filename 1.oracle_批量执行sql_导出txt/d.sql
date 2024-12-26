SET SERVEROUTPUT ON;
SPOOL /path/to/output/query_results.txt;

DECLARE
    v_sql VARCHAR2(4000);
BEGIN
    -- 将您的 SQL 查询放入数组或直接执行
    FOR i IN 1..10 LOOP
        -- 根据需要替换下面的 SQL 查询
        CASE i
            WHEN 1 THEN v_sql := 'SELECT * FROM table1';
            WHEN 2 THEN v_sql := 'SELECT * FROM table2';
            WHEN 3 THEN v_sql := 'SELECT column1, column2 FROM table3 WHERE condition';
            -- 添加更多的 SQL 语句...
            WHEN 10 THEN v_sql := 'SELECT * FROM table10';
        END CASE;

        -- 输出 SQL 语句
        DBMS_OUTPUT.PUT_LINE('Executing SQL: ' || v_sql);
        
        -- 执行 SQL 并输出结果
        FOR rec IN (EXECUTE IMMEDIATE v_sql) LOOP
            -- 输出查询结果，假设每行只有两列
            DBMS_OUTPUT.PUT_LINE(rec.column1 || ', ' || rec.column2);
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('----------------------------------');
    END LOOP;
END;
/

SPOOL OFF;
