part of orkut_v2_api_client;

class AclResource extends Resource {

  AclResource(Client client) : super(client) {
  }

  /**
   * Excludes an element from the ACL of the activity.
   *
   * [activityId] - ID of the activity.
   *
   * [userId] - ID of the user to be removed from the activity.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String activityId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/acl/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ActivitiesResource extends Resource {

  ActivitiesResource(Client client) : super(client) {
  }

  /**
   * Deletes an existing activity, if the access controls allow it.
   *
   * [activityId] - ID of the activity to remove.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String activityId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of activities.
   *
   * [userId] - The ID of the user whose activities will be listed. Can be me to refer to the viewer (i.e. the authenticated user).
   *
   * [collection] - The collection of activities to list.
   *   Allowed values:
   *     all - All activities created by the specified user that the authenticated user is authorized to view.
   *     scraps - The specified user's scrapbook.
   *     stream - The specified user's stream feed, intended for consumption. This includes activities posted by people that the user is following, and activities in which the user has been mentioned.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of activities to include in the response.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<ActivityList> list(String userId, String collection, {String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "people/{userId}/activities/{collection}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["all", "scraps", "stream"].contains(collection)) {
      paramErrors.add("Allowed values for collection: all, scraps, stream");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ActivityList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ActivityVisibilityResource extends Resource {

  ActivityVisibilityResource(Client client) : super(client) {
  }

  /**
   * Gets the visibility of an existing activity.
   *
   * [activityId] - ID of the activity to get the visibility.
   *
   * [optParams] - Additional query parameters
   */
  Future<Visibility> get(String activityId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Visibility.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the visibility of an existing activity. This method supports patch semantics.
   *
   * [request] - Visibility to send in this request
   *
   * [activityId] - ID of the activity.
   *
   * [optParams] - Additional query parameters
   */
  Future<Visibility> patch(Visibility request, String activityId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Visibility.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates the visibility of an existing activity.
   *
   * [request] - Visibility to send in this request
   *
   * [activityId] - ID of the activity.
   *
   * [optParams] - Additional query parameters
   */
  Future<Visibility> update(Visibility request, String activityId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Visibility.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class BadgesResource extends Resource {

  BadgesResource(Client client) : super(client) {
  }

  /**
   * Retrieves a badge from a user.
   *
   * [userId] - The ID of the user whose badges will be listed. Can be me to refer to caller.
   *
   * [badgeId] - The ID of the badge that will be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  Future<Badge> get(String userId, String badgeId, {Map optParams}) {
    var completer = new Completer();
    var url = "people/{userId}/badges/{badgeId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (badgeId == null) paramErrors.add("badgeId is required");
    if (badgeId != null) urlParams["badgeId"] = badgeId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Badge.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of visible badges of a user.
   *
   * [userId] - The id of the user whose badges will be listed. Can be me to refer to caller.
   *
   * [optParams] - Additional query parameters
   */
  Future<BadgeList> list(String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "people/{userId}/badges";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BadgeList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommentsResource extends Resource {

  CommentsResource(Client client) : super(client) {
  }

  /**
   * Deletes an existing comment.
   *
   * [commentId] - ID of the comment to remove.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String commentId, {Map optParams}) {
    var completer = new Completer();
    var url = "comments/{commentId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves an existing comment.
   *
   * [commentId] - ID of the comment to get.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<Comment> get(String commentId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "comments/{commentId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (hl != null) queryParams["hl"] = hl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Comment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new comment to an activity.
   *
   * [request] - Comment to send in this request
   *
   * [activityId] - The ID of the activity to contain the new comment.
   *
   * [optParams] - Additional query parameters
   */
  Future<Comment> insert(Comment request, String activityId, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/comments";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Comment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of comments, possibly filtered.
   *
   * [activityId] - The ID of the activity containing the comments.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of activities to include in the response.
   *   Minimum: 1
   *
   * [orderBy] - Sort search results.
   *   Default: DESCENDING_SORT
   *   Allowed values:
   *     ascending - Use ascending sort order.
   *     descending - Use descending sort order.
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommentList> list(String activityId, {String hl, int maxResults, String orderBy, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "activities/{activityId}/comments";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["ascending", "descending"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: ascending, descending");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunitiesResource extends Resource {

  CommunitiesResource(Client client) : super(client) {
  }

  /**
   * Retrieves the basic information (aka. profile) of a community.
   *
   * [communityId] - The ID of the community to get.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<Community> get(int communityId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Community.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the list of communities the current user is a member of.
   *
   * [userId] - The ID of the user whose communities will be listed. Can be me to refer to caller.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of communities to include in the response.
   *   Minimum: 1
   *
   * [orderBy] - How to order the communities by.
   *   Allowed values:
   *     id - Returns the communities sorted by a fixed, natural order.
   *     ranked - Returns the communities ranked accordingly to how they are displayed on the orkut web application.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityList> list(String userId, {String hl, int maxResults, String orderBy, Map optParams}) {
    var completer = new Completer();
    var url = "people/{userId}/communities";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["id", "ranked"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: id, ranked");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityFollowResource extends Resource {

  CommunityFollowResource(Client client) : super(client) {
  }

  /**
   * Removes a user from the followers of a community.
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(int communityId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/followers/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a user as a follower of a community.
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMembers> insert(int communityId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/followers/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMembers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityMembersResource extends Resource {

  CommunityMembersResource(Client client) : super(client) {
  }

  /**
   * Makes the user leave a community.
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(int communityId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the relationship between a user and a community.
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMembers> get(int communityId, String userId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMembers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Makes the user join a community.
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMembers> insert(int communityId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMembers.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists members of a community. Use the pagination tokens to retrieve the full list; do not rely on the member count available in the community profile information to know when to stop iterating, as that count may be approximate.
   *
   * [communityId] - The ID of the community whose members will be listed.
   *
   * [friendsOnly] - Whether to list only community members who are friends of the user.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of members to include in the response.
   *   Minimum: 1
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMembersList> list(int communityId, {bool friendsOnly, String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/members";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (friendsOnly != null) queryParams["friendsOnly"] = friendsOnly;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMembersList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityMessagesResource extends Resource {

  CommunityMessagesResource(Client client) : super(client) {
  }

  /**
   * Moves a message of the community to the trash folder.
   *
   * [communityId] - The ID of the community whose message will be moved to the trash folder.
   *
   * [topicId] - The ID of the topic whose message will be moved to the trash folder.
   *
   * [messageId] - The ID of the message to be moved to the trash folder.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(int communityId, String topicId, String messageId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages/{messageId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (messageId == null) paramErrors.add("messageId is required");
    if (messageId != null) urlParams["messageId"] = messageId;
    if (topicId == null) paramErrors.add("topicId is required");
    if (topicId != null) urlParams["topicId"] = topicId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a message to a given community topic.
   *
   * [request] - CommunityMessage to send in this request
   *
   * [communityId] - The ID of the community the message should be added to.
   *
   * [topicId] - The ID of the topic the message should be added to.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMessage> insert(CommunityMessage request, int communityId, String topicId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (topicId == null) paramErrors.add("topicId is required");
    if (topicId != null) urlParams["topicId"] = topicId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMessage.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the messages of a topic of a community.
   *
   * [communityId] - The ID of the community which messages will be listed.
   *
   * [topicId] - The ID of the topic which messages will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of messages to include in the response.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityMessageList> list(int communityId, String topicId, {String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (topicId == null) paramErrors.add("topicId is required");
    if (topicId != null) urlParams["topicId"] = topicId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityMessageList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityPollCommentsResource extends Resource {

  CommunityPollCommentsResource(Client client) : super(client) {
  }

  /**
   * Adds a comment on a community poll.
   *
   * [request] - CommunityPollComment to send in this request
   *
   * [communityId] - The ID of the community whose poll is being commented.
   *
   * [pollId] - The ID of the poll being commented.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityPollComment> insert(CommunityPollComment request, int communityId, String pollId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/polls/{pollId}/comments";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (pollId == null) paramErrors.add("pollId is required");
    if (pollId != null) urlParams["pollId"] = pollId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityPollComment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the comments of a community poll.
   *
   * [communityId] - The ID of the community whose poll is having its comments listed.
   *
   * [pollId] - The ID of the community whose polls will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of comments to include in the response.
   *   Minimum: 1
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityPollCommentList> list(int communityId, String pollId, {String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/polls/{pollId}/comments";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (pollId == null) paramErrors.add("pollId is required");
    if (pollId != null) urlParams["pollId"] = pollId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityPollCommentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityPollVotesResource extends Resource {

  CommunityPollVotesResource(Client client) : super(client) {
  }

  /**
   * Votes on a community poll.
   *
   * [request] - CommunityPollVote to send in this request
   *
   * [communityId] - The ID of the community whose poll is being voted.
   *
   * [pollId] - The ID of the poll being voted.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityPollVote> insert(CommunityPollVote request, int communityId, String pollId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/polls/{pollId}/votes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (pollId == null) paramErrors.add("pollId is required");
    if (pollId != null) urlParams["pollId"] = pollId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityPollVote.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityPollsResource extends Resource {

  CommunityPollsResource(Client client) : super(client) {
  }

  /**
   * Retrieves one specific poll of a community.
   *
   * [communityId] - The ID of the community for whose poll will be retrieved.
   *
   * [pollId] - The ID of the poll to get.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityPoll> get(int communityId, String pollId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/polls/{pollId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (pollId == null) paramErrors.add("pollId is required");
    if (pollId != null) urlParams["pollId"] = pollId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityPoll.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the polls of a community.
   *
   * [communityId] - The ID of the community which polls will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of polls to include in the response.
   *   Minimum: 1
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityPollList> list(int communityId, {String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/polls";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityPollList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityRelatedResource extends Resource {

  CommunityRelatedResource(Client client) : super(client) {
  }

  /**
   * Retrieves the communities related to another one.
   *
   * [communityId] - The ID of the community whose related communities will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityList> list(int communityId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/related";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommunityTopicsResource extends Resource {

  CommunityTopicsResource(Client client) : super(client) {
  }

  /**
   * Moves a topic of the community to the trash folder.
   *
   * [communityId] - The ID of the community whose topic will be moved to the trash folder.
   *
   * [topicId] - The ID of the topic to be moved to the trash folder.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(int communityId, String topicId, {Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics/{topicId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (topicId == null) paramErrors.add("topicId is required");
    if (topicId != null) urlParams["topicId"] = topicId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a topic of a community.
   *
   * [communityId] - The ID of the community whose topic will be retrieved.
   *
   * [topicId] - The ID of the topic to get.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityTopic> get(int communityId, String topicId, {String hl, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics/{topicId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (topicId == null) paramErrors.add("topicId is required");
    if (topicId != null) urlParams["topicId"] = topicId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityTopic.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a topic to a given community.
   *
   * [request] - CommunityTopic to send in this request
   *
   * [communityId] - The ID of the community the topic should be added to.
   *
   * [isShout] - Whether this topic is a shout.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityTopic> insert(CommunityTopic request, int communityId, {bool isShout, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (isShout != null) queryParams["isShout"] = isShout;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityTopic.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves the topics of a community.
   *
   * [communityId] - The ID of the community which topics will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user interface.
   *
   * [maxResults] - The maximum number of topics to include in the response.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * [optParams] - Additional query parameters
   */
  Future<CommunityTopicList> list(int communityId, {String hl, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "communities/{communityId}/topics";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (communityId == null) paramErrors.add("communityId is required");
    if (communityId != null) urlParams["communityId"] = communityId;
    if (hl != null) queryParams["hl"] = hl;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommunityTopicList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CountersResource extends Resource {

  CountersResource(Client client) : super(client) {
  }

  /**
   * Retrieves the counters of a user.
   *
   * [userId] - The ID of the user whose counters will be listed. Can be me to refer to caller.
   *
   * [optParams] - Additional query parameters
   */
  Future<Counters> list(String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "people/{userId}/counters";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Counters.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ScrapsResource extends Resource {

  ScrapsResource(Client client) : super(client) {
  }

  /**
   * Creates a new scrap.
   *
   * [request] - Activity to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<Activity> insert(Activity request, {Map optParams}) {
    var completer = new Completer();
    var url = "activities/scraps";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Activity.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

