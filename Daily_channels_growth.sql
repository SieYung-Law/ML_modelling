

SELECT 
	YEAR(website_sessions.created_at) AS yr,
	QUARTER(website_sessions.created_at) AS qtr, 
	MONTH(website_sessions.created_at) AS mo,
    WEEK(website_sessions.created_at) AS wk,
    WEEKDAY(website_sessions.created_at) AS wkday,
    COUNT(DISTINCT CASE WHEN utm_source = 'gsearch' AND utm_campaign = 'nonbrand' THEN website_session_id ELSE NULL END) AS gsearch_nonbrand_websessions, 
    COUNT(DISTINCT CASE WHEN utm_source = 'bsearch' AND utm_campaign = 'nonbrand' THEN website_session_id ELSE NULL END) AS bsearch_nonbrand_websessions,
    COUNT(DISTINCT CASE WHEN utm_source = 'gsearch' AND utm_campaign = 'brand' THEN website_session_id ELSE NULL END) AS gsearch_brand_websessions,
    COUNT(DISTINCT CASE WHEN utm_source = 'bsearch' AND utm_campaign = 'brand' THEN website_session_id ELSE NULL END) AS bsearch_brand_websessions,
      COUNT(DISTINCT CASE WHEN utm_source  = 'socialbook' AND utm_campaign = 'pilot' THEN website_session_id ELSE NULL END) AS socialbook_pilot_websessions,
    COUNT(DISTINCT CASE WHEN utm_source  = 'socialbook' AND utm_campaign = 'desktop_targeted' THEN website_session_id ELSE NULL END) AS socialbook_desktop_targeted_websessions,
    COUNT(DISTINCT CASE WHEN utm_source IS NULL AND http_referer IS NOT NULL THEN website_session_id ELSE NULL END) AS organic_search_websessions,
    COUNT(DISTINCT CASE WHEN utm_source IS NULL AND http_referer IS NULL THEN website_session_id ELSE NULL END) AS direct_type_in_websessions
FROM website_sessions 
 GROUP BY 1,2,3,4,5
 ORDER BY 1,2,3,4,5;