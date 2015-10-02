{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorscountsQuery@.
module Network.Google.Resource.Webmasters.URLCrawlErrorscounts.Query
    (
    -- * REST Resource
      URLCrawlErrorscountsQueryResource

    -- * Creating a Request
    , uRLCrawlErrorscountsQuery'
    , URLCrawlErrorscountsQuery'

    -- * Request Lenses
    , uceqQuotaUser
    , uceqPrettyPrint
    , uceqPlatform
    , uceqUserIP
    , uceqCategory
    , uceqSiteURL
    , uceqKey
    , uceqLatestCountsOnly
    , uceqOAuthToken
    , uceqFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorscountsQuery@ which the
-- 'URLCrawlErrorscountsQuery'' request conforms to.
type URLCrawlErrorscountsQueryResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsCounts" :>
           "query" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "platform"
                   WebmastersURLCrawlErrorscountsQueryPlatform
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "category"
                       WebmastersURLCrawlErrorscountsQueryCategory
                       :>
                       QueryParam "key" Key :>
                         QueryParam "latestCountsOnly" Bool :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] URLCrawlErrorsCountsQueryResponse

-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ 'uRLCrawlErrorscountsQuery'' smart constructor.
data URLCrawlErrorscountsQuery' = URLCrawlErrorscountsQuery'
    { _uceqQuotaUser        :: !(Maybe Text)
    , _uceqPrettyPrint      :: !Bool
    , _uceqPlatform         :: !(Maybe WebmastersURLCrawlErrorscountsQueryPlatform)
    , _uceqUserIP           :: !(Maybe Text)
    , _uceqCategory         :: !(Maybe WebmastersURLCrawlErrorscountsQueryCategory)
    , _uceqSiteURL          :: !Text
    , _uceqKey              :: !(Maybe Key)
    , _uceqLatestCountsOnly :: !Bool
    , _uceqOAuthToken       :: !(Maybe OAuthToken)
    , _uceqFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorscountsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceqQuotaUser'
--
-- * 'uceqPrettyPrint'
--
-- * 'uceqPlatform'
--
-- * 'uceqUserIP'
--
-- * 'uceqCategory'
--
-- * 'uceqSiteURL'
--
-- * 'uceqKey'
--
-- * 'uceqLatestCountsOnly'
--
-- * 'uceqOAuthToken'
--
-- * 'uceqFields'
uRLCrawlErrorscountsQuery'
    :: Text -- ^ 'siteUrl'
    -> URLCrawlErrorscountsQuery'
uRLCrawlErrorscountsQuery' pUceqSiteURL_ =
    URLCrawlErrorscountsQuery'
    { _uceqQuotaUser = Nothing
    , _uceqPrettyPrint = True
    , _uceqPlatform = Nothing
    , _uceqUserIP = Nothing
    , _uceqCategory = Nothing
    , _uceqSiteURL = pUceqSiteURL_
    , _uceqKey = Nothing
    , _uceqLatestCountsOnly = True
    , _uceqOAuthToken = Nothing
    , _uceqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uceqQuotaUser :: Lens' URLCrawlErrorscountsQuery' (Maybe Text)
uceqQuotaUser
  = lens _uceqQuotaUser
      (\ s a -> s{_uceqQuotaUser = a})

-- | Returns response with indentations and line breaks.
uceqPrettyPrint :: Lens' URLCrawlErrorscountsQuery' Bool
uceqPrettyPrint
  = lens _uceqPrettyPrint
      (\ s a -> s{_uceqPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
uceqPlatform :: Lens' URLCrawlErrorscountsQuery' (Maybe WebmastersURLCrawlErrorscountsQueryPlatform)
uceqPlatform
  = lens _uceqPlatform (\ s a -> s{_uceqPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uceqUserIP :: Lens' URLCrawlErrorscountsQuery' (Maybe Text)
uceqUserIP
  = lens _uceqUserIP (\ s a -> s{_uceqUserIP = a})

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
uceqCategory :: Lens' URLCrawlErrorscountsQuery' (Maybe WebmastersURLCrawlErrorscountsQueryCategory)
uceqCategory
  = lens _uceqCategory (\ s a -> s{_uceqCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
uceqSiteURL :: Lens' URLCrawlErrorscountsQuery' Text
uceqSiteURL
  = lens _uceqSiteURL (\ s a -> s{_uceqSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uceqKey :: Lens' URLCrawlErrorscountsQuery' (Maybe Key)
uceqKey = lens _uceqKey (\ s a -> s{_uceqKey = a})

-- | If true, returns only the latest crawl error counts.
uceqLatestCountsOnly :: Lens' URLCrawlErrorscountsQuery' Bool
uceqLatestCountsOnly
  = lens _uceqLatestCountsOnly
      (\ s a -> s{_uceqLatestCountsOnly = a})

-- | OAuth 2.0 token for the current user.
uceqOAuthToken :: Lens' URLCrawlErrorscountsQuery' (Maybe OAuthToken)
uceqOAuthToken
  = lens _uceqOAuthToken
      (\ s a -> s{_uceqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uceqFields :: Lens' URLCrawlErrorscountsQuery' (Maybe Text)
uceqFields
  = lens _uceqFields (\ s a -> s{_uceqFields = a})

instance GoogleAuth URLCrawlErrorscountsQuery' where
        authKey = uceqKey . _Just
        authToken = uceqOAuthToken . _Just

instance GoogleRequest URLCrawlErrorscountsQuery'
         where
        type Rs URLCrawlErrorscountsQuery' =
             URLCrawlErrorsCountsQueryResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLCrawlErrorscountsQuery'{..}
          = go _uceqQuotaUser (Just _uceqPrettyPrint)
              _uceqPlatform
              _uceqUserIP
              _uceqCategory
              _uceqSiteURL
              _uceqKey
              (Just _uceqLatestCountsOnly)
              _uceqOAuthToken
              _uceqFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLCrawlErrorscountsQueryResource)
                      r
                      u