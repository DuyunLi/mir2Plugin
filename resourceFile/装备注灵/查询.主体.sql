DECLARE @soulConfig TABLE
    (
      level INT PRIMARY KEY ,
      color INT ,
      name NVARCHAR(128) ,
      probability DECIMAL(15, 2) ,
      isActive INT
    );
DECLARE @equipCustomType TABLE
    (
      idx INT PRIMARY KEY ,
      name NVARCHAR(128) ,
      description NVARCHAR(128) ,
      isActive INT
    );
DECLARE @soulAttribute TABLE
    (
      idx INT PRIMARY KEY
              IDENTITY(1, 1) ,
      stdmode INT NOT NULL ,
      srcIdx INT NOT NULL ,
      level INT NOT NULL ,
      type INT NOT NULL ,
      valueType INT NOT NULL ,
      value INT NOT NULL ,
      probability DECIMAL(15, 2) ,
      isActive INT
    );
--alter table @soulAttribute add constraint soulAttributeUnique unique (type, value, valueType)


INSERT  INTO @equipCustomType
        ( idx ,
          name ,
          description ,
          isActive
        )
        SELECT  0 ,
                'AC' ,
                'AC:' ,
                1
        UNION ALL
        SELECT  1 ,
                'MAC' ,
                '' ,
                1
        UNION ALL
        SELECT  2 ,
                'DC' ,
                '' ,
                1
        UNION ALL
        SELECT  3 ,
                'MC' ,
                '' ,
                1
        UNION ALL
        SELECT  4 ,
                'SC' ,
                '' ,
                1
        UNION ALL
        SELECT  5 ,
                'HP' ,
                '' ,
                1
        UNION ALL
        SELECT  6 ,
                'MP' ,
                '' ,
                1;

INSERT  INTO @soulConfig
        ( level ,
          color ,
          probability ,
          name ,
          isActive
        )
        SELECT  0 ,
                7 ,
                1 ,
                'D' ,
                1
        UNION ALL
        SELECT  1 ,
                8 ,
                0.6 ,
                'C' ,
                1
        UNION ALL
        SELECT  2 ,
                9 ,
                0.36 ,
                'B' ,
                1
        UNION ALL
        SELECT  3 ,
                10 ,
                0.21 ,
                'A' ,
                1
        UNION ALL
        SELECT  4 ,
                11 ,
                0.13 ,
                'S' ,
                1
        UNION ALL
        SELECT  5 ,
                12 ,
                0.07 ,
                'SS' ,
                1
        UNION ALL
        SELECT  6 ,
                13 ,
                0.02 ,
                'SSS' ,
                1;

INSERT  INTO @soulAttribute
        ( level ,
          stdmode ,
          srcIdx ,
          type ,
          valueType ,
          value ,
          probability ,
          isActive
        )
        SELECT  0 ,
                5 ,
                0 ,
                0 ,
                0 ,
                5 ,
                10.0 ,
                1
        UNION ALL
        SELECT  0 ,
                0 ,
                0 ,
                1 ,
                1 ,
                6 ,
                5.0 ,
                1
        UNION ALL
        SELECT  0 ,
                0 ,
                0 ,
                2 ,
                1 ,
                7 ,
                8.0 ,
                1
        UNION ALL
        SELECT  1 ,
                0 ,
                0 ,
                0 ,
                0 ,
                6 ,
                12.0 ,
                1
        UNION ALL
        SELECT  1 ,
                0 ,
                0 ,
                5 ,
                0 ,
                8 ,
                19.0 ,
                1
        UNION ALL
        SELECT  2 ,
                0 ,
                0 ,
                0 ,
                0 ,
                9 ,
                15.0 ,
                1
        UNION ALL
        SELECT  3 ,
                0 ,
                0 ,
                0 ,
                0 ,
                10 ,
                2.0 ,
                1
        UNION ALL
        SELECT  4 ,
                0 ,
                0 ,
                0 ,
                0 ,
                15 ,
                5.0 ,
                1;

DECLARE @p0 INT = 2 * 255 + 4,
    @p1a INT = 0 ,
    @p1b INT = 5 ,
    @p1c INT = 0 ,
    @p2a INT = 2 ,
    @p2b INT = 7 ,
    @p2c INT = 1 ,
    @p3a INT = 5 ,
    @p3b INT = 8 ,
    @p3c INT = 0;

SELECT  ( CASE WHEN ect.description IS NULL
                    OR LEN(ect.description) = 0 THEN ect.name + ': +'
               ELSE ect.description
          END ) + CONVERT(NVARCHAR(4), attr.value)
        + CASE WHEN attr.valueType = 0 THEN ''
               ELSE '%'
          END customName ,
        sc.color ,
        sc.name ,
        msc.color ,
        msc.name 
FROM    @soulAttribute attr
        JOIN @soulConfig sc ON sc.level = attr.level
        JOIN @equipCustomType ect ON ect.idx = attr.type
        JOIN @soulConfig msc ON msc.level = @p0 % 255
WHERE   attr.isActive = 1
        AND sc.isActive = 1
        AND ect.isActive = 1
        AND @p0 % 255 >= attr.level
        AND ( ( @p0 / 255 > 0
                AND @p1a = attr.type
                AND @p1b = attr.value
                AND @p1c = attr.valueType
              )
              OR ( @p0 / 255 > 1
                   AND @p2a = attr.type
                   AND @p2b = attr.value
                   AND @p2c = attr.valueType
                 )
              OR ( @p0 / 255 > 2
                   AND @p3a = attr.type
                   AND @p3b = attr.value
                   AND @p3c = attr.valueType
                 )
            );

--DECLARE @p0 INT = 2 ,
--    @p1 INT = 5 ,
--    @p2 INT = 0;

--SELECT  idx ,
--        attr.probability * sc.probability probability ,
--        type ext1 ,
--        value ext2 ,
--        valueType ext3 ,
--FROM    @soulAttribute attr
--        JOIN @soulConfig sc ON sc.level = attr.level
--WHERE   attr.level <= @p0
--        AND ( attr.stdmode = 0
--              OR attr.stdmode = @p1
--            )
--        AND ( attr.srcIdx = 0
--              OR attr.srcIdx = @p2
--            );
