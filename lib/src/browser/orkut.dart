part of orkut_v2_api_browser;

/** Client to access the orkut v2 API */
/** Lets you manage activities, comments and badges in Orkut. More stuff coming in time. */
class Orkut extends BrowserClient {

  AclResource_ _acl;
  AclResource_ get acl => _acl;
  ActivitiesResource_ _activities;
  ActivitiesResource_ get activities => _activities;
  ActivityVisibilityResource_ _activityVisibility;
  ActivityVisibilityResource_ get activityVisibility => _activityVisibility;
  BadgesResource_ _badges;
  BadgesResource_ get badges => _badges;
  CommentsResource_ _comments;
  CommentsResource_ get comments => _comments;
  CommunitiesResource_ _communities;
  CommunitiesResource_ get communities => _communities;
  CommunityFollowResource_ _communityFollow;
  CommunityFollowResource_ get communityFollow => _communityFollow;
  CommunityMembersResource_ _communityMembers;
  CommunityMembersResource_ get communityMembers => _communityMembers;
  CommunityMessagesResource_ _communityMessages;
  CommunityMessagesResource_ get communityMessages => _communityMessages;
  CommunityPollCommentsResource_ _communityPollComments;
  CommunityPollCommentsResource_ get communityPollComments => _communityPollComments;
  CommunityPollVotesResource_ _communityPollVotes;
  CommunityPollVotesResource_ get communityPollVotes => _communityPollVotes;
  CommunityPollsResource_ _communityPolls;
  CommunityPollsResource_ get communityPolls => _communityPolls;
  CommunityRelatedResource_ _communityRelated;
  CommunityRelatedResource_ get communityRelated => _communityRelated;
  CommunityTopicsResource_ _communityTopics;
  CommunityTopicsResource_ get communityTopics => _communityTopics;
  CountersResource_ _counters;
  CountersResource_ get counters => _counters;
  ScrapsResource_ _scraps;
  ScrapsResource_ get scraps => _scraps;

  /** OAuth Scope2: Manage your Orkut activity */
  static const core.String ORKUT_SCOPE = "https://www.googleapis.com/auth/orkut";

  /** OAuth Scope2: View your Orkut data */
  static const core.String ORKUT_READONLY_SCOPE = "https://www.googleapis.com/auth/orkut.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Orkut([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/orkut/v2/";
    rootUrl = "https://www.googleapis.com:443/";
    _acl = new AclResource_(this);
    _activities = new ActivitiesResource_(this);
    _activityVisibility = new ActivityVisibilityResource_(this);
    _badges = new BadgesResource_(this);
    _comments = new CommentsResource_(this);
    _communities = new CommunitiesResource_(this);
    _communityFollow = new CommunityFollowResource_(this);
    _communityMembers = new CommunityMembersResource_(this);
    _communityMessages = new CommunityMessagesResource_(this);
    _communityPollComments = new CommunityPollCommentsResource_(this);
    _communityPollVotes = new CommunityPollVotesResource_(this);
    _communityPolls = new CommunityPollsResource_(this);
    _communityRelated = new CommunityRelatedResource_(this);
    _communityTopics = new CommunityTopicsResource_(this);
    _counters = new CountersResource_(this);
    _scraps = new ScrapsResource_(this);
  }
}
