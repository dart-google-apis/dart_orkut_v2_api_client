part of orkut_v2_api;

abstract class Client extends ClientBase {
  core.String basePath = "/orkut/v2/";
  core.String rootUrl = "https://www.googleapis.com/";

  //
  // Resources
  //

  AclResource_ get acl => new AclResource_(this);
  ActivitiesResource_ get activities => new ActivitiesResource_(this);
  ActivityVisibilityResource_ get activityVisibility => new ActivityVisibilityResource_(this);
  BadgesResource_ get badges => new BadgesResource_(this);
  CommentsResource_ get comments => new CommentsResource_(this);
  CommunitiesResource_ get communities => new CommunitiesResource_(this);
  CommunityFollowResource_ get communityFollow => new CommunityFollowResource_(this);
  CommunityMembersResource_ get communityMembers => new CommunityMembersResource_(this);
  CommunityMessagesResource_ get communityMessages => new CommunityMessagesResource_(this);
  CommunityPollCommentsResource_ get communityPollComments => new CommunityPollCommentsResource_(this);
  CommunityPollVotesResource_ get communityPollVotes => new CommunityPollVotesResource_(this);
  CommunityPollsResource_ get communityPolls => new CommunityPollsResource_(this);
  CommunityRelatedResource_ get communityRelated => new CommunityRelatedResource_(this);
  CommunityTopicsResource_ get communityTopics => new CommunityTopicsResource_(this);
  CountersResource_ get counters => new CountersResource_(this);
  ScrapsResource_ get scraps => new ScrapsResource_(this);

  //
  // Parameters
  //

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
}
