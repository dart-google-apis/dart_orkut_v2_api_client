part of orkut_v2_api_client;

class AclResource_ extends Resource {

  AclResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String activityId, core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/acl/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ActivitiesResource_ extends Resource {

  ActivitiesResource_(Client client) : super(client) {
  }

  /**
   * Deletes an existing activity, if the access controls allow it.
   *
   * [activityId] - ID of the activity to remove.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<ActivityList> list(core.String userId, core.String collection, {core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/activities/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ActivityVisibilityResource_ extends Resource {

  ActivityVisibilityResource_(Client client) : super(client) {
  }

  /**
   * Gets the visibility of an existing activity.
   *
   * [activityId] - ID of the activity to get the visibility.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Visibility> get(core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Visibility> patch(Visibility request, core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Visibility> update(Visibility request, core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/visibility";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class BadgesResource_ extends Resource {

  BadgesResource_(Client client) : super(client) {
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
  async.Future<Badge> get(core.String userId, core.String badgeId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/badges/{badgeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<BadgeList> list(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/badges";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommentsResource_ extends Resource {

  CommentsResource_(Client client) : super(client) {
  }

  /**
   * Deletes an existing comment.
   *
   * [commentId] - ID of the comment to remove.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String commentId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Comment> get(core.String commentId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Comment> insert(Comment request, core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommentList> list(core.String activityId, {core.String hl, core.int maxResults, core.String orderBy, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunitiesResource_ extends Resource {

  CommunitiesResource_(Client client) : super(client) {
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
  async.Future<Community> get(core.int communityId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityList> list(core.String userId, {core.String hl, core.int maxResults, core.String orderBy, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/communities";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityFollowResource_ extends Resource {

  CommunityFollowResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.int communityId, core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/followers/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMembers> insert(core.int communityId, core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/followers/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityMembersResource_ extends Resource {

  CommunityMembersResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.int communityId, core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMembers> get(core.int communityId, core.String userId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMembers> insert(core.int communityId, core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/members/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMembersList> list(core.int communityId, {core.bool friendsOnly, core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/members";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityMessagesResource_ extends Resource {

  CommunityMessagesResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.int communityId, core.String topicId, core.String messageId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages/{messageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMessage> insert(CommunityMessage request, core.int communityId, core.String topicId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityMessageList> list(core.int communityId, core.String topicId, {core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics/{topicId}/messages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityPollCommentsResource_ extends Resource {

  CommunityPollCommentsResource_(Client client) : super(client) {
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
  async.Future<CommunityPollComment> insert(CommunityPollComment request, core.int communityId, core.String pollId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/polls/{pollId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityPollCommentList> list(core.int communityId, core.String pollId, {core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/polls/{pollId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityPollVotesResource_ extends Resource {

  CommunityPollVotesResource_(Client client) : super(client) {
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
  async.Future<CommunityPollVote> insert(CommunityPollVote request, core.int communityId, core.String pollId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/polls/{pollId}/votes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityPollsResource_ extends Resource {

  CommunityPollsResource_(Client client) : super(client) {
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
  async.Future<CommunityPoll> get(core.int communityId, core.String pollId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/polls/{pollId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityPollList> list(core.int communityId, {core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/polls";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityRelatedResource_ extends Resource {

  CommunityRelatedResource_(Client client) : super(client) {
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
  async.Future<CommunityList> list(core.int communityId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/related";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CommunityTopicsResource_ extends Resource {

  CommunityTopicsResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.int communityId, core.String topicId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics/{topicId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityTopic> get(core.int communityId, core.String topicId, {core.String hl, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics/{topicId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityTopic> insert(CommunityTopic request, core.int communityId, {core.bool isShout, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<CommunityTopicList> list(core.int communityId, {core.String hl, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "communities/{communityId}/topics";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class CountersResource_ extends Resource {

  CountersResource_(Client client) : super(client) {
  }

  /**
   * Retrieves the counters of a user.
   *
   * [userId] - The ID of the user whose counters will be listed. Can be me to refer to caller.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Counters> list(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/counters";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class ScrapsResource_ extends Resource {

  ScrapsResource_(Client client) : super(client) {
  }

  /**
   * Creates a new scrap.
   *
   * [request] - Activity to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Activity> insert(Activity request, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/scraps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

