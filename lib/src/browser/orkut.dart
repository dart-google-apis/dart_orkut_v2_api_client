part of orkut_v2_api_browser;

/** Client to access the orkut v2 API */
/** Lets you manage activities, comments and badges in Orkut. More stuff coming in time. */
class Orkut extends BrowserClient {

  AclResource _acl;
  AclResource get acl => _acl;
  ActivitiesResource _activities;
  ActivitiesResource get activities => _activities;
  ActivityVisibilityResource _activityVisibility;
  ActivityVisibilityResource get activityVisibility => _activityVisibility;
  BadgesResource _badges;
  BadgesResource get badges => _badges;
  CommentsResource _comments;
  CommentsResource get comments => _comments;
  CommunitiesResource _communities;
  CommunitiesResource get communities => _communities;
  CommunityFollowResource _communityFollow;
  CommunityFollowResource get communityFollow => _communityFollow;
  CommunityMembersResource _communityMembers;
  CommunityMembersResource get communityMembers => _communityMembers;
  CommunityMessagesResource _communityMessages;
  CommunityMessagesResource get communityMessages => _communityMessages;
  CommunityPollCommentsResource _communityPollComments;
  CommunityPollCommentsResource get communityPollComments => _communityPollComments;
  CommunityPollVotesResource _communityPollVotes;
  CommunityPollVotesResource get communityPollVotes => _communityPollVotes;
  CommunityPollsResource _communityPolls;
  CommunityPollsResource get communityPolls => _communityPolls;
  CommunityRelatedResource _communityRelated;
  CommunityRelatedResource get communityRelated => _communityRelated;
  CommunityTopicsResource _communityTopics;
  CommunityTopicsResource get communityTopics => _communityTopics;
  CountersResource _counters;
  CountersResource get counters => _counters;
  ScrapsResource _scraps;
  ScrapsResource get scraps => _scraps;

  /** OAuth Scope2: Manage your Orkut activity */
  static const String ORKUT_SCOPE = "https://www.googleapis.com/auth/orkut";

  /** OAuth Scope2: View your Orkut data */
  static const String ORKUT_READONLY_SCOPE = "https://www.googleapis.com/auth/orkut.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Orkut([OAuth2 auth]) : super(auth) {
    basePath = "/orkut/v2/";
    rootUrl = "https://www.googleapis.com:443/";
    _acl = new AclResource(this);
    _activities = new ActivitiesResource(this);
    _activityVisibility = new ActivityVisibilityResource(this);
    _badges = new BadgesResource(this);
    _comments = new CommentsResource(this);
    _communities = new CommunitiesResource(this);
    _communityFollow = new CommunityFollowResource(this);
    _communityMembers = new CommunityMembersResource(this);
    _communityMessages = new CommunityMessagesResource(this);
    _communityPollComments = new CommunityPollCommentsResource(this);
    _communityPollVotes = new CommunityPollVotesResource(this);
    _communityPolls = new CommunityPollsResource(this);
    _communityRelated = new CommunityRelatedResource(this);
    _communityTopics = new CommunityTopicsResource(this);
    _counters = new CountersResource(this);
    _scraps = new ScrapsResource(this);
  }
}
