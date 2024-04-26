CREATE TABLE IF NOT EXISTS public.twitter_users_partitioned (
    user_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name text COLLATE pg_catalog."default",
    screen_name text COLLATE pg_catalog."default",
    date timestamp with time zone NOT NULL,
    twitter_join_date date,
    location text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    verified boolean,
    followers_count integer,
    friends_count integer,
    listed_count integer,
    favourites_count integer,
    preferred_language text COLLATE pg_catalog."default"
   )
PARTITION BY RANGE(EXTRACT(YEAR FROM twitter_join_date));


-- create child tables for each partition
CREATE TABLE public.twitter_users_partitioned_2006 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2006) TO (2007);
CREATE TABLE public.twitter_users_partitioned_2007 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2007) TO (2008);
CREATE TABLE public.twitter_users_partitioned_2008 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2008) TO (2009);
CREATE TABLE public.twitter_users_partitioned_2009 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2009) TO (2010);
CREATE TABLE public.twitter_users_partitioned_2010 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2010) TO (2011);
CREATE TABLE public.twitter_users_partitioned_2011 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2011) TO (2012);
CREATE TABLE public.twitter_users_partitioned_2012 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2012) TO (2013);
CREATE TABLE public.twitter_users_partitioned_2013 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2013) TO (2014);
CREATE TABLE public.twitter_users_partitioned_2014 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2014) TO (2015);
CREATE TABLE public.twitter_users_partitioned_2015 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2015) TO (2016);
CREATE TABLE public.twitter_users_partitioned_2016 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2016) TO (2017);
CREATE TABLE public.twitter_users_partitioned_2017 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2017) TO (2018);
CREATE TABLE public.twitter_users_partitioned_2018 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2018) TO (2019);
CREATE TABLE public.twitter_users_partitioned_2019 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2019) TO (2020);
CREATE TABLE public.twitter_users_partitioned_2020 PARTITION OF public.twitter_users_partitioned FOR VALUES FROM (2020) TO (2021);