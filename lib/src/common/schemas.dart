part of orkut_v2_api_client;

class Acl {

  /** Human readable description of the access granted. */
  String description;

  /** The list of ACL entries. */
  List<AclItems> items;

  /** Identifies this resource as an access control list. Value: "orkut#acl" */
  String kind;

  /** The total count of participants of the parent resource. */
  int totalParticipants;

  /** Create new Acl from JSON data */
  Acl.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AclItems.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalParticipants")) {
      totalParticipants = json["totalParticipants"];
    }
  }

  /** Create JSON Object for Acl */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalParticipants != null) {
      output["totalParticipants"] = totalParticipants;
    }

    return output;
  }

  /** Return String representation of Acl */
  String toString() => JSON.stringify(this.toJson());

}

class AclItems {

  /** The ID of the entity. For entities of type "person" or "circle", this is the ID of the resource. For other types, this will be unset. */
  String id;

  /** The type of entity to whom access is granted. */
  String type;

  /** Create new AclItems from JSON data */
  AclItems.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AclItems */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AclItems */
  String toString() => JSON.stringify(this.toJson());

}

class Activity {

  /** Identifies who has access to see this activity. */
  Acl access;

  /** The person who performed the activity. */
  OrkutAuthorResource actor;

  /** The ID for the activity. */
  String id;

  /** The kind of activity. Always orkut#activity. */
  String kind;

  /** Links to resources related to this activity. */
  List<OrkutLinkResource> links;

  /** The activity's object. */
  ActivityObject object;

  /** The time at which the activity was initially published. */
  String published;

  /** Title of the activity. */
  String title;

  /** The time at which the activity was last updated. */
  String updated;

  /** This activity's verb, indicating what action was performed. Possible values are:  
- add - User added new content to profile or album, e.g. video, photo. 
- post - User publish content to the stream, e.g. status, scrap. 
- update - User commented on an activity. 
- make-friend - User added a new friend. 
- birthday - User has a birthday. */
  String verb;

  /** Create new Activity from JSON data */
  Activity.fromJson(Map json) {
    if (json.containsKey("access")) {
      access = new Acl.fromJson(json["access"]);
    }
    if (json.containsKey("actor")) {
      actor = new OrkutAuthorResource.fromJson(json["actor"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("object")) {
      object = new ActivityObject.fromJson(json["object"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("verb")) {
      verb = json["verb"];
    }
  }

  /** Create JSON Object for Activity */
  Map toJson() {
    var output = new Map();

    if (access != null) {
      output["access"] = access.toJson();
    }
    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (object != null) {
      output["object"] = object.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (verb != null) {
      output["verb"] = verb;
    }

    return output;
  }

  /** Return String representation of Activity */
  String toString() => JSON.stringify(this.toJson());

}

/** The activity's object. */
class ActivityObject {

  /** The HTML-formatted content, suitable for display. When updating an activity's content, post the changes to this property, using the value of originalContent as a starting point. If the update is successful, the server adds HTML formatting and responds with this formatted content. */
  String content;

  /** The list of additional items. */
  List<OrkutActivityobjectsResource> items;

  /** The type of the object affected by the activity. Clients can use this information to style the rendered activity object differently depending on the content. */
  String objectType;

  /** Comments in reply to this activity. */
  ActivityObjectReplies replies;

  /** Create new ActivityObject from JSON data */
  ActivityObject.fromJson(Map json) {
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new OrkutActivityobjectsResource.fromJson(item));
      });
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("replies")) {
      replies = new ActivityObjectReplies.fromJson(json["replies"]);
    }
  }

  /** Create JSON Object for ActivityObject */
  Map toJson() {
    var output = new Map();

    if (content != null) {
      output["content"] = content;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (replies != null) {
      output["replies"] = replies.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityObject */
  String toString() => JSON.stringify(this.toJson());

}

/** Comments in reply to this activity. */
class ActivityObjectReplies {

  /** The list of comments. */
  List<Comment> items;

  /** Total number of comments. */
  String totalItems;

  /** URL for the collection of comments in reply to this activity. */
  String url;

  /** Create new ActivityObjectReplies from JSON data */
  ActivityObjectReplies.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Comment.fromJson(item));
      });
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectReplies */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectReplies */
  String toString() => JSON.stringify(this.toJson());

}

class ActivityList {

  /** List of activities retrieved. */
  List<Activity> items;

  /** Identifies this resource as a collection of activities. Value: "orkut#activityList" */
  String kind;

  /** The value of pageToken query parameter in activities.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** Create new ActivityList from JSON data */
  ActivityList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Activity.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ActivityList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ActivityList */
  String toString() => JSON.stringify(this.toJson());

}

class Badge {

  /** The URL for the 64x64 badge logo. */
  String badgeLargeLogo;

  /** The URL for the 24x24 badge logo. */
  String badgeSmallLogo;

  /** The name of the badge, suitable for display. */
  String caption;

  /** The description for the badge, suitable for display. */
  String description;

  /** The unique ID for the badge. */
  String id;

  /** Identifies this resource as a badge. Value: "orkut#badge" */
  String kind;

  /** The URL for the 32x32 badge sponsor logo. */
  String sponsorLogo;

  /** The name of the badge sponsor, suitable for display. */
  String sponsorName;

  /** The URL for the badge sponsor. */
  String sponsorUrl;

  /** Create new Badge from JSON data */
  Badge.fromJson(Map json) {
    if (json.containsKey("badgeLargeLogo")) {
      badgeLargeLogo = json["badgeLargeLogo"];
    }
    if (json.containsKey("badgeSmallLogo")) {
      badgeSmallLogo = json["badgeSmallLogo"];
    }
    if (json.containsKey("caption")) {
      caption = json["caption"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("sponsorLogo")) {
      sponsorLogo = json["sponsorLogo"];
    }
    if (json.containsKey("sponsorName")) {
      sponsorName = json["sponsorName"];
    }
    if (json.containsKey("sponsorUrl")) {
      sponsorUrl = json["sponsorUrl"];
    }
  }

  /** Create JSON Object for Badge */
  Map toJson() {
    var output = new Map();

    if (badgeLargeLogo != null) {
      output["badgeLargeLogo"] = badgeLargeLogo;
    }
    if (badgeSmallLogo != null) {
      output["badgeSmallLogo"] = badgeSmallLogo;
    }
    if (caption != null) {
      output["caption"] = caption;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (sponsorLogo != null) {
      output["sponsorLogo"] = sponsorLogo;
    }
    if (sponsorName != null) {
      output["sponsorName"] = sponsorName;
    }
    if (sponsorUrl != null) {
      output["sponsorUrl"] = sponsorUrl;
    }

    return output;
  }

  /** Return String representation of Badge */
  String toString() => JSON.stringify(this.toJson());

}

class BadgeList {

  /** List of badges retrieved. */
  List<Badge> items;

  /** Identifies this resource as a collection of badges. Value: "orkut#badgeList" */
  String kind;

  /** Create new BadgeList from JSON data */
  BadgeList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Badge.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BadgeList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BadgeList */
  String toString() => JSON.stringify(this.toJson());

}

class Comment {

  /** The person who posted the comment. */
  OrkutAuthorResource actor;

  /** The content of the comment in text/html */
  String content;

  /** The unique ID for the comment. */
  String id;

  /** Link to the original activity where this comment was posted. */
  CommentInReplyTo inReplyTo;

  /** Identifies this resource as a comment. Value: "orkut#comment" */
  String kind;

  /** List of resources for the comment. */
  List<OrkutLinkResource> links;

  /** The time the comment was initially published, in RFC 3339 format. */
  String published;

  /** Create new Comment from JSON data */
  Comment.fromJson(Map json) {
    if (json.containsKey("actor")) {
      actor = new OrkutAuthorResource.fromJson(json["actor"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("inReplyTo")) {
      inReplyTo = new CommentInReplyTo.fromJson(json["inReplyTo"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
  }

  /** Create JSON Object for Comment */
  Map toJson() {
    var output = new Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (inReplyTo != null) {
      output["inReplyTo"] = inReplyTo.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (published != null) {
      output["published"] = published;
    }

    return output;
  }

  /** Return String representation of Comment */
  String toString() => JSON.stringify(this.toJson());

}

/** Link to the original activity where this comment was posted. */
class CommentInReplyTo {

  /** Link to the post on activity stream being commented. */
  String href;

  /** Unique identifier of the post on activity stream being commented. */
  String ref;

  /** Relationship between the comment and the post on activity stream being commented. Always inReplyTo. */
  String rel;

  /** Type of the post on activity stream being commented. Always text/html. */
  String type;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("ref")) {
      ref = json["ref"];
    }
    if (json.containsKey("rel")) {
      rel = json["rel"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for CommentInReplyTo */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (ref != null) {
      output["ref"] = ref;
    }
    if (rel != null) {
      output["rel"] = rel;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of CommentInReplyTo */
  String toString() => JSON.stringify(this.toJson());

}

class CommentList {

  /** List of comments retrieved. */
  List<Comment> items;

  /** Identifies this resource as a collection of comments. Value: "orkut#commentList" */
  String kind;

  /** The value of pageToken query parameter in comments.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in comments.list request to get the previous page, if there are more to retrieve. */
  String previousPageToken;

  /** Create new CommentList from JSON data */
  CommentList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Comment.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("previousPageToken")) {
      previousPageToken = json["previousPageToken"];
    }
  }

  /** Create JSON Object for CommentList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      output["previousPageToken"] = previousPageToken;
    }

    return output;
  }

  /** Return String representation of CommentList */
  String toString() => JSON.stringify(this.toJson());

}

class Community {

  /** The category of the community. */
  String category;

  /** The co-owners of the community. */
  List<OrkutAuthorResource> co_owners;

  /** The time the community was created, in RFC 3339 format. */
  String creation_date;

  /** The description of the community. */
  String description;

  /** The id of the community. */
  int id;

  /** Identifies this resource as a community. Value: "orkut#community" */
  String kind;

  /** The official language of the community. */
  String language;

  /** List of resources for the community. */
  List<OrkutLinkResource> links;

  /** The location of the community. */
  String location;

  /** The number of users who are part of the community. This number may be approximate, so do not rely on it for iteration. */
  int member_count;

  /** The list of moderators of the community. */
  List<OrkutAuthorResource> moderators;

  /** The name of the community. */
  String name;

  /** The person who owns the community. */
  OrkutAuthorResource owner;

  /** The photo of the community. */
  String photo_url;

  /** Create new Community from JSON data */
  Community.fromJson(Map json) {
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("co_owners")) {
      co_owners = [];
      json["co_owners"].forEach((item) {
        co_owners.add(new OrkutAuthorResource.fromJson(item));
      });
    }
    if (json.containsKey("creation_date")) {
      creation_date = json["creation_date"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("member_count")) {
      member_count = json["member_count"];
    }
    if (json.containsKey("moderators")) {
      moderators = [];
      json["moderators"].forEach((item) {
        moderators.add(new OrkutAuthorResource.fromJson(item));
      });
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("owner")) {
      owner = new OrkutAuthorResource.fromJson(json["owner"]);
    }
    if (json.containsKey("photo_url")) {
      photo_url = json["photo_url"];
    }
  }

  /** Create JSON Object for Community */
  Map toJson() {
    var output = new Map();

    if (category != null) {
      output["category"] = category;
    }
    if (co_owners != null) {
      output["co_owners"] = new List();
      co_owners.forEach((item) {
        output["co_owners"].add(item.toJson());
      });
    }
    if (creation_date != null) {
      output["creation_date"] = creation_date;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (location != null) {
      output["location"] = location;
    }
    if (member_count != null) {
      output["member_count"] = member_count;
    }
    if (moderators != null) {
      output["moderators"] = new List();
      moderators.forEach((item) {
        output["moderators"].add(item.toJson());
      });
    }
    if (name != null) {
      output["name"] = name;
    }
    if (owner != null) {
      output["owner"] = owner.toJson();
    }
    if (photo_url != null) {
      output["photo_url"] = photo_url;
    }

    return output;
  }

  /** Return String representation of Community */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityList {

  /** List of communities retrieved. */
  List<Community> items;

  /** Identifies this resource as a collection of communities. Value: "orkut#communityList" */
  String kind;

  /** Create new CommunityList from JSON data */
  CommunityList.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Community.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CommunityList */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CommunityList */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityMembers {

  /** Status and permissions of the user related to the community. */
  CommunityMembershipStatus communityMembershipStatus;

  /** Kind of this item. Always orkut#communityMembers. */
  String kind;

  /** Description of the community member. */
  OrkutActivitypersonResource person;

  /** Create new CommunityMembers from JSON data */
  CommunityMembers.fromJson(Map json) {
    if (json.containsKey("communityMembershipStatus")) {
      communityMembershipStatus = new CommunityMembershipStatus.fromJson(json["communityMembershipStatus"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("person")) {
      person = new OrkutActivitypersonResource.fromJson(json["person"]);
    }
  }

  /** Create JSON Object for CommunityMembers */
  Map toJson() {
    var output = new Map();

    if (communityMembershipStatus != null) {
      output["communityMembershipStatus"] = communityMembershipStatus.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (person != null) {
      output["person"] = person.toJson();
    }

    return output;
  }

  /** Return String representation of CommunityMembers */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityMembersList {

  /** The value of pageToken query parameter in community_members.list request to get the first page. */
  String firstPageToken;

  /** List of community members retrieved. */
  List<CommunityMembers> items;

  /** Kind of this item. Always orkut#communityMembersList. */
  String kind;

  /** The value of pageToken query parameter in community_members.list request to get the last page. */
  String lastPageToken;

  /** The value of pageToken query parameter in community_members.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in community_members.list request to get the previous page, if there are more to retrieve. */
  String prevPageToken;

  /** Create new CommunityMembersList from JSON data */
  CommunityMembersList.fromJson(Map json) {
    if (json.containsKey("firstPageToken")) {
      firstPageToken = json["firstPageToken"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CommunityMembers.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPageToken")) {
      lastPageToken = json["lastPageToken"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommunityMembersList */
  Map toJson() {
    var output = new Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPageToken != null) {
      output["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommunityMembersList */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityMembershipStatus {

  /** Whether the user can create a poll in this community. */
  bool canCreatePoll;

  /** Whether the user can create a topic in this community. */
  bool canCreateTopic;

  /** Whether the user can perform a shout operation in this community. */
  bool canShout;

  /** Whether the session user is a community co-owner. */
  bool isCoOwner;

  /** Whether the user is following this community. */
  bool isFollowing;

  /** Whether the session user is a community moderator. */
  bool isModerator;

  /** Whether the session user is the community owner. */
  bool isOwner;

  /** Whether the restore operation is available for the community. */
  bool isRestoreAvailable;

  /** Whether the take-back operation is available for the community. */
  bool isTakebackAvailable;

  /** Kind of this item. Always orkut#communityMembershipStatus. */
  String kind;

  /** The status of the current link between the community and the user. */
  String status;

  /** Create new CommunityMembershipStatus from JSON data */
  CommunityMembershipStatus.fromJson(Map json) {
    if (json.containsKey("canCreatePoll")) {
      canCreatePoll = json["canCreatePoll"];
    }
    if (json.containsKey("canCreateTopic")) {
      canCreateTopic = json["canCreateTopic"];
    }
    if (json.containsKey("canShout")) {
      canShout = json["canShout"];
    }
    if (json.containsKey("isCoOwner")) {
      isCoOwner = json["isCoOwner"];
    }
    if (json.containsKey("isFollowing")) {
      isFollowing = json["isFollowing"];
    }
    if (json.containsKey("isModerator")) {
      isModerator = json["isModerator"];
    }
    if (json.containsKey("isOwner")) {
      isOwner = json["isOwner"];
    }
    if (json.containsKey("isRestoreAvailable")) {
      isRestoreAvailable = json["isRestoreAvailable"];
    }
    if (json.containsKey("isTakebackAvailable")) {
      isTakebackAvailable = json["isTakebackAvailable"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for CommunityMembershipStatus */
  Map toJson() {
    var output = new Map();

    if (canCreatePoll != null) {
      output["canCreatePoll"] = canCreatePoll;
    }
    if (canCreateTopic != null) {
      output["canCreateTopic"] = canCreateTopic;
    }
    if (canShout != null) {
      output["canShout"] = canShout;
    }
    if (isCoOwner != null) {
      output["isCoOwner"] = isCoOwner;
    }
    if (isFollowing != null) {
      output["isFollowing"] = isFollowing;
    }
    if (isModerator != null) {
      output["isModerator"] = isModerator;
    }
    if (isOwner != null) {
      output["isOwner"] = isOwner;
    }
    if (isRestoreAvailable != null) {
      output["isRestoreAvailable"] = isRestoreAvailable;
    }
    if (isTakebackAvailable != null) {
      output["isTakebackAvailable"] = isTakebackAvailable;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of CommunityMembershipStatus */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityMessage {

  /** The timestamp of the date when the message was added, in RFC 3339 format. */
  String addedDate;

  /** The creator of the message. If ommited, the message is annonimous. */
  OrkutAuthorResource author;

  /** The body of the message. */
  String body;

  /** The ID of the message. */
  String id;

  /** Whether this post was marked as spam by the viewer, when he/she is not the community owner or one of its moderators. */
  bool isSpam;

  /** Identifies this resource as a community message. Value: "orkut#communityMessage" */
  String kind;

  /** List of resources for the community message. */
  List<OrkutLinkResource> links;

  /** The subject of the message. */
  String subject;

  /** Create new CommunityMessage from JSON data */
  CommunityMessage.fromJson(Map json) {
    if (json.containsKey("addedDate")) {
      addedDate = json["addedDate"];
    }
    if (json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(json["author"]);
    }
    if (json.containsKey("body")) {
      body = json["body"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isSpam")) {
      isSpam = json["isSpam"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("subject")) {
      subject = json["subject"];
    }
  }

  /** Create JSON Object for CommunityMessage */
  Map toJson() {
    var output = new Map();

    if (addedDate != null) {
      output["addedDate"] = addedDate;
    }
    if (author != null) {
      output["author"] = author.toJson();
    }
    if (body != null) {
      output["body"] = body;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (isSpam != null) {
      output["isSpam"] = isSpam;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (subject != null) {
      output["subject"] = subject;
    }

    return output;
  }

  /** Return String representation of CommunityMessage */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityMessageList {

  /** The value of pageToken query parameter in community_messages.list request to get the first page. */
  String firstPageToken;

  /** List of messages retrieved. */
  List<CommunityMessage> items;

  /** Identifies this resource as a collection of community messages. Value: "orkut#communityMessageList" */
  String kind;

  /** The value of pageToken query parameter in community_messages.list request to get the last page. */
  String lastPageToken;

  /** The value of pageToken query parameter in community_messages.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in community_messages.list request to get the previous page, if there are more to retrieve. */
  String prevPageToken;

  /** Create new CommunityMessageList from JSON data */
  CommunityMessageList.fromJson(Map json) {
    if (json.containsKey("firstPageToken")) {
      firstPageToken = json["firstPageToken"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CommunityMessage.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPageToken")) {
      lastPageToken = json["lastPageToken"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommunityMessageList */
  Map toJson() {
    var output = new Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPageToken != null) {
      output["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommunityMessageList */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityPoll {

  /** The person who created the poll. */
  OrkutAuthorResource author;

  /** The ID of the community. */
  int communityId;

  /** The date of creation of this poll */
  String creationTime;

  /** The poll description. */
  String description;

  /** The ending date of this poll or empty if the poll doesn't have one. */
  String endingTime;

  /** Whether the user has voted on this poll. */
  bool hasVoted;

  /** The poll ID. */
  String id;

  /** The image representing the poll. Field is omitted if no image exists. */
  CommunityPollImage image;

  /** Whether the poll is not expired if there is an expiration date. A poll is open (that is, not closed for voting) if it either is not expired or doesn't have an expiration date at all. Note that just because a poll is open, it doesn't mean that the requester can vote on it. */
  bool isClosed;

  /** Whether this poll allows voting for more than one option. */
  bool isMultipleAnswers;

  /** Whether this poll is still opened for voting. A poll is open for voting if it is not closed, the user has not yet voted on it and the user has the permission to do so, which happens if he/she is either a community member or the poll is open for everybody. */
  bool isOpenForVoting;

  /** Whether this poll is restricted for members only. If a poll is open but the user can't vote on it, it's been restricted to members only. This information is important to tell this case apart from the one where the user can't vote simply because the poll is already closed. */
  bool isRestricted;

  /** Whether the user has marked this poll as spam. This only affects the poll for this user, not globally. */
  bool isSpam;

  /** If user has already voted, whether his vote is publicly visible. */
  bool isUsersVotePublic;

  /** Whether non-members of the community can vote on the poll. */
  bool isVotingAllowedForNonMembers;

  /** Identifies this resource as a community poll. Value: "orkut#communityPoll" */
  String kind;

  /** The date of the last update of this poll. */
  String lastUpdate;

  /** List of resources for the community poll. */
  List<OrkutLinkResource> links;

  /** List of options of this poll. */
  List<OrkutCommunitypolloptionResource> options;

  /** The poll question. */
  String question;

  /** The total number of votes this poll has received. */
  int totalNumberOfVotes;

  /** List of options the user has voted on, if there are any. */
  List<int> votedOptions;

  /** Create new CommunityPoll from JSON data */
  CommunityPoll.fromJson(Map json) {
    if (json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(json["author"]);
    }
    if (json.containsKey("communityId")) {
      communityId = json["communityId"];
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("endingTime")) {
      endingTime = json["endingTime"];
    }
    if (json.containsKey("hasVoted")) {
      hasVoted = json["hasVoted"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new CommunityPollImage.fromJson(json["image"]);
    }
    if (json.containsKey("isClosed")) {
      isClosed = json["isClosed"];
    }
    if (json.containsKey("isMultipleAnswers")) {
      isMultipleAnswers = json["isMultipleAnswers"];
    }
    if (json.containsKey("isOpenForVoting")) {
      isOpenForVoting = json["isOpenForVoting"];
    }
    if (json.containsKey("isRestricted")) {
      isRestricted = json["isRestricted"];
    }
    if (json.containsKey("isSpam")) {
      isSpam = json["isSpam"];
    }
    if (json.containsKey("isUsersVotePublic")) {
      isUsersVotePublic = json["isUsersVotePublic"];
    }
    if (json.containsKey("isVotingAllowedForNonMembers")) {
      isVotingAllowedForNonMembers = json["isVotingAllowedForNonMembers"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdate")) {
      lastUpdate = json["lastUpdate"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("options")) {
      options = [];
      json["options"].forEach((item) {
        options.add(new OrkutCommunitypolloptionResource.fromJson(item));
      });
    }
    if (json.containsKey("question")) {
      question = json["question"];
    }
    if (json.containsKey("totalNumberOfVotes")) {
      totalNumberOfVotes = json["totalNumberOfVotes"];
    }
    if (json.containsKey("votedOptions")) {
      votedOptions = [];
      json["votedOptions"].forEach((item) {
        votedOptions.add(item);
      });
    }
  }

  /** Create JSON Object for CommunityPoll */
  Map toJson() {
    var output = new Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (communityId != null) {
      output["communityId"] = communityId;
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (endingTime != null) {
      output["endingTime"] = endingTime;
    }
    if (hasVoted != null) {
      output["hasVoted"] = hasVoted;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (isClosed != null) {
      output["isClosed"] = isClosed;
    }
    if (isMultipleAnswers != null) {
      output["isMultipleAnswers"] = isMultipleAnswers;
    }
    if (isOpenForVoting != null) {
      output["isOpenForVoting"] = isOpenForVoting;
    }
    if (isRestricted != null) {
      output["isRestricted"] = isRestricted;
    }
    if (isSpam != null) {
      output["isSpam"] = isSpam;
    }
    if (isUsersVotePublic != null) {
      output["isUsersVotePublic"] = isUsersVotePublic;
    }
    if (isVotingAllowedForNonMembers != null) {
      output["isVotingAllowedForNonMembers"] = isVotingAllowedForNonMembers;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdate != null) {
      output["lastUpdate"] = lastUpdate;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (options != null) {
      output["options"] = new List();
      options.forEach((item) {
        output["options"].add(item.toJson());
      });
    }
    if (question != null) {
      output["question"] = question;
    }
    if (totalNumberOfVotes != null) {
      output["totalNumberOfVotes"] = totalNumberOfVotes;
    }
    if (votedOptions != null) {
      output["votedOptions"] = new List();
      votedOptions.forEach((item) {
        output["votedOptions"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of CommunityPoll */
  String toString() => JSON.stringify(this.toJson());

}

/** The image representing the poll. Field is omitted if no image exists. */
class CommunityPollImage {

  /** A URL that points to an image of the poll. */
  String url;

  /** Create new CommunityPollImage from JSON data */
  CommunityPollImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommunityPollImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommunityPollImage */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityPollComment {

  /** The date when the message was added, in RFC 3339 format. */
  String addedDate;

  /** The creator of the comment. */
  OrkutAuthorResource author;

  /** The body of the message. */
  String body;

  /** The ID of the comment. */
  int id;

  /** Identifies this resource as a community poll comment. Value: "orkut#communityPollComment" */
  String kind;

  /** Create new CommunityPollComment from JSON data */
  CommunityPollComment.fromJson(Map json) {
    if (json.containsKey("addedDate")) {
      addedDate = json["addedDate"];
    }
    if (json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(json["author"]);
    }
    if (json.containsKey("body")) {
      body = json["body"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CommunityPollComment */
  Map toJson() {
    var output = new Map();

    if (addedDate != null) {
      output["addedDate"] = addedDate;
    }
    if (author != null) {
      output["author"] = author.toJson();
    }
    if (body != null) {
      output["body"] = body;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CommunityPollComment */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityPollCommentList {

  /** The value of pageToken query parameter in community_poll_comments.list request to get the first page. */
  String firstPageToken;

  /** List of community poll comments retrieved. */
  List<CommunityPollComment> items;

  /** Identifies this resource as a collection of community poll comments. Value: "orkut#CommunityPollCommentList" */
  String kind;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the last page. */
  String lastPageToken;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the previous page, if there are more to retrieve. */
  String prevPageToken;

  /** Create new CommunityPollCommentList from JSON data */
  CommunityPollCommentList.fromJson(Map json) {
    if (json.containsKey("firstPageToken")) {
      firstPageToken = json["firstPageToken"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CommunityPollComment.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPageToken")) {
      lastPageToken = json["lastPageToken"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommunityPollCommentList */
  Map toJson() {
    var output = new Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPageToken != null) {
      output["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommunityPollCommentList */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityPollList {

  /** The value of pageToken query parameter in community_polls.list request to get the first page. */
  String firstPageToken;

  /** List of community polls retrieved. */
  List<CommunityPoll> items;

  /** Identifies this resource as a collection of community polls. Value: "orkut#communityPollList" */
  String kind;

  /** The value of pageToken query parameter in community_polls.list request to get the last page. */
  String lastPageToken;

  /** The value of pageToken query parameter in community_polls.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in community_polls.list request to get the previous page, if there are more to retrieve. */
  String prevPageToken;

  /** Create new CommunityPollList from JSON data */
  CommunityPollList.fromJson(Map json) {
    if (json.containsKey("firstPageToken")) {
      firstPageToken = json["firstPageToken"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CommunityPoll.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPageToken")) {
      lastPageToken = json["lastPageToken"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommunityPollList */
  Map toJson() {
    var output = new Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPageToken != null) {
      output["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommunityPollList */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityPollVote {

  /** Whether this vote is visible to other users or not. */
  bool isVotevisible;

  /** Identifies this resource as a community poll vote. Value: "orkut#communityPollVote" */
  String kind;

  /** The ids of the voted options. */
  List<int> optionIds;

  /** Create new CommunityPollVote from JSON data */
  CommunityPollVote.fromJson(Map json) {
    if (json.containsKey("isVotevisible")) {
      isVotevisible = json["isVotevisible"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("optionIds")) {
      optionIds = [];
      json["optionIds"].forEach((item) {
        optionIds.add(item);
      });
    }
  }

  /** Create JSON Object for CommunityPollVote */
  Map toJson() {
    var output = new Map();

    if (isVotevisible != null) {
      output["isVotevisible"] = isVotevisible;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (optionIds != null) {
      output["optionIds"] = new List();
      optionIds.forEach((item) {
        output["optionIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of CommunityPollVote */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityTopic {

  /** The creator of the topic. */
  OrkutAuthorResource author;

  /** The body of the topic. */
  String body;

  /** The ID of the topic. */
  String id;

  /** Whether the topic is closed for new messages. */
  bool isClosed;

  /** Identifies this resource as a community topic. Value: "orkut#communityTopic" */
  String kind;

  /** The timestamp of the last update, in RFC 3339 format. */
  String lastUpdate;

  /** Snippet of the last message posted on this topic. */
  String latestMessageSnippet;

  /** List of resources for the community. */
  List<OrkutLinkResource> links;

  /** Most recent messages. */
  List<CommunityMessage> messages;

  /** The total number of replies this topic has received. */
  int numberOfReplies;

  /** The title of the topic. */
  String title;

  /** Create new CommunityTopic from JSON data */
  CommunityTopic.fromJson(Map json) {
    if (json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(json["author"]);
    }
    if (json.containsKey("body")) {
      body = json["body"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isClosed")) {
      isClosed = json["isClosed"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdate")) {
      lastUpdate = json["lastUpdate"];
    }
    if (json.containsKey("latestMessageSnippet")) {
      latestMessageSnippet = json["latestMessageSnippet"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("messages")) {
      messages = [];
      json["messages"].forEach((item) {
        messages.add(new CommunityMessage.fromJson(item));
      });
    }
    if (json.containsKey("numberOfReplies")) {
      numberOfReplies = json["numberOfReplies"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for CommunityTopic */
  Map toJson() {
    var output = new Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (body != null) {
      output["body"] = body;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (isClosed != null) {
      output["isClosed"] = isClosed;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdate != null) {
      output["lastUpdate"] = lastUpdate;
    }
    if (latestMessageSnippet != null) {
      output["latestMessageSnippet"] = latestMessageSnippet;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (messages != null) {
      output["messages"] = new List();
      messages.forEach((item) {
        output["messages"].add(item.toJson());
      });
    }
    if (numberOfReplies != null) {
      output["numberOfReplies"] = numberOfReplies;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of CommunityTopic */
  String toString() => JSON.stringify(this.toJson());

}

class CommunityTopicList {

  /** The value of pageToken query parameter in community_topic.list request to get the first page. */
  String firstPageToken;

  /** List of topics retrieved. */
  List<CommunityTopic> items;

  /** Identifies this resource as a collection of community topics. Value: "orkut#communityTopicList" */
  String kind;

  /** The value of pageToken query parameter in community_topic.list request to get the last page. */
  String lastPageToken;

  /** The value of pageToken query parameter in community_topic.list request to get the next page, if there are more to retrieve. */
  String nextPageToken;

  /** The value of pageToken query parameter in community_topic.list request to get the previous page, if there are more to retrieve. */
  String prevPageToken;

  /** Create new CommunityTopicList from JSON data */
  CommunityTopicList.fromJson(Map json) {
    if (json.containsKey("firstPageToken")) {
      firstPageToken = json["firstPageToken"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CommunityTopic.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPageToken")) {
      lastPageToken = json["lastPageToken"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for CommunityTopicList */
  Map toJson() {
    var output = new Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPageToken != null) {
      output["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of CommunityTopicList */
  String toString() => JSON.stringify(this.toJson());

}

class Counters {

  /** List of counters retrieved. */
  List<OrkutCounterResource> items;

  /** Identifies this resource as a collection of counters. Value: "orkut#counters" */
  String kind;

  /** Create new Counters from JSON data */
  Counters.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new OrkutCounterResource.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Counters */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Counters */
  String toString() => JSON.stringify(this.toJson());

}

class OrkutActivityobjectsResource {

  /** The community which is related with this activity, e.g. a joined community. */
  Community community;

  /** The HTML-formatted content, suitable for display. When updating an activity's content, post the changes to this property, using the value of originalContent as a starting point. If the update is successful, the server adds HTML formatting and responds with this formatted content. */
  String content;

  /** The title of the object. */
  String displayName;

  /** The ID for the object. */
  String id;

  /** Links to other resources related to this object. */
  List<OrkutLinkResource> links;

  /** The object type. */
  String objectType;

  /** The person who is related with this activity, e.g. an Added User. */
  OrkutActivitypersonResource person;

  /** Create new OrkutActivityobjectsResource from JSON data */
  OrkutActivityobjectsResource.fromJson(Map json) {
    if (json.containsKey("community")) {
      community = new Community.fromJson(json["community"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("person")) {
      person = new OrkutActivitypersonResource.fromJson(json["person"]);
    }
  }

  /** Create JSON Object for OrkutActivityobjectsResource */
  Map toJson() {
    var output = new Map();

    if (community != null) {
      output["community"] = community.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (person != null) {
      output["person"] = person.toJson();
    }

    return output;
  }

  /** Return String representation of OrkutActivityobjectsResource */
  String toString() => JSON.stringify(this.toJson());

}

class OrkutActivitypersonResource {

  /** The person's date of birth, represented as YYYY-MM-DD. */
  String birthday;

  /** The person's gender. Values include "male", "female", and "other". */
  String gender;

  /** The person's opensocial ID. */
  String id;

  /** The person's profile photo. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
  OrkutActivitypersonResourceImage image;

  /** An object that encapsulates the individual components of a person's name. */
  OrkutActivitypersonResourceName name;

  /** The person's profile url. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
  String url;

  /** Create new OrkutActivitypersonResource from JSON data */
  OrkutActivitypersonResource.fromJson(Map json) {
    if (json.containsKey("birthday")) {
      birthday = json["birthday"];
    }
    if (json.containsKey("gender")) {
      gender = json["gender"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new OrkutActivitypersonResourceImage.fromJson(json["image"]);
    }
    if (json.containsKey("name")) {
      name = new OrkutActivitypersonResourceName.fromJson(json["name"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutActivitypersonResource */
  Map toJson() {
    var output = new Map();

    if (birthday != null) {
      output["birthday"] = birthday;
    }
    if (gender != null) {
      output["gender"] = gender;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutActivitypersonResource */
  String toString() => JSON.stringify(this.toJson());

}

/** An object that encapsulates the individual components of a person's name. */
class OrkutActivitypersonResourceName {

  /** The family name (last name) of this person. */
  String familyName;

  /** The given name (first name) of this person. */
  String givenName;

  /** Create new OrkutActivitypersonResourceName from JSON data */
  OrkutActivitypersonResourceName.fromJson(Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for OrkutActivitypersonResourceName */
  Map toJson() {
    var output = new Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of OrkutActivitypersonResourceName */
  String toString() => JSON.stringify(this.toJson());

}

/** The person's profile photo. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
class OrkutActivitypersonResourceImage {

  /** The URL of the person's profile photo. */
  String url;

  /** Create new OrkutActivitypersonResourceImage from JSON data */
  OrkutActivitypersonResourceImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutActivitypersonResourceImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutActivitypersonResourceImage */
  String toString() => JSON.stringify(this.toJson());

}

class OrkutAuthorResource {

  /** The name of the author, suitable for display. */
  String displayName;

  /** Unique identifier of the person who posted the comment. This is the person's OpenSocial ID. */
  String id;

  /** Image data about the author. */
  OrkutAuthorResourceImage image;

  /** The URL of the author who posted the comment [not yet implemented] */
  String url;

  /** Create new OrkutAuthorResource from JSON data */
  OrkutAuthorResource.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new OrkutAuthorResourceImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutAuthorResource */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutAuthorResource */
  String toString() => JSON.stringify(this.toJson());

}

/** Image data about the author. */
class OrkutAuthorResourceImage {

  /** A URL that points to a thumbnail photo of the author. */
  String url;

  /** Create new OrkutAuthorResourceImage from JSON data */
  OrkutAuthorResourceImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutAuthorResourceImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutAuthorResourceImage */
  String toString() => JSON.stringify(this.toJson());

}

class OrkutCommunitypolloptionResource {

  /** The option description. */
  String description;

  /** Image data about the poll option. Field is omitted if no image exists. */
  OrkutCommunitypolloptionResourceImage image;

  /** The total number of votes that this option received. */
  int numberOfVotes;

  /** The poll option ID */
  int optionId;

  /** Create new OrkutCommunitypolloptionResource from JSON data */
  OrkutCommunitypolloptionResource.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("image")) {
      image = new OrkutCommunitypolloptionResourceImage.fromJson(json["image"]);
    }
    if (json.containsKey("numberOfVotes")) {
      numberOfVotes = json["numberOfVotes"];
    }
    if (json.containsKey("optionId")) {
      optionId = json["optionId"];
    }
  }

  /** Create JSON Object for OrkutCommunitypolloptionResource */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (numberOfVotes != null) {
      output["numberOfVotes"] = numberOfVotes;
    }
    if (optionId != null) {
      output["optionId"] = optionId;
    }

    return output;
  }

  /** Return String representation of OrkutCommunitypolloptionResource */
  String toString() => JSON.stringify(this.toJson());

}

/** Image data about the poll option. Field is omitted if no image exists. */
class OrkutCommunitypolloptionResourceImage {

  /** A URL that points to an image of the poll question. */
  String url;

  /** Create new OrkutCommunitypolloptionResourceImage from JSON data */
  OrkutCommunitypolloptionResourceImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutCommunitypolloptionResourceImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutCommunitypolloptionResourceImage */
  String toString() => JSON.stringify(this.toJson());

}

class OrkutCounterResource {

  /** Link to the collection being counted. */
  OrkutLinkResource link;

  /** The name of the counted collection. Currently supported collections are:  
- scraps - The scraps of the user. 
- photos - The photos of the user. 
- videos - The videos of the user. 
- pendingTestimonials - The pending testimonials of the user. */
  String name;

  /** The number of resources on the counted collection. */
  int total;

  /** Create new OrkutCounterResource from JSON data */
  OrkutCounterResource.fromJson(Map json) {
    if (json.containsKey("link")) {
      link = new OrkutLinkResource.fromJson(json["link"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("total")) {
      total = json["total"];
    }
  }

  /** Create JSON Object for OrkutCounterResource */
  Map toJson() {
    var output = new Map();

    if (link != null) {
      output["link"] = link.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (total != null) {
      output["total"] = total;
    }

    return output;
  }

  /** Return String representation of OrkutCounterResource */
  String toString() => JSON.stringify(this.toJson());

}

/** Links to resources related to the parent object. */
class OrkutLinkResource {

  /** URL of the link. */
  String href;

  /** Relation between the resource and the parent object. */
  String rel;

  /** Title of the link. */
  String title;

  /** Media type of the link. */
  String type;

  /** Create new OrkutLinkResource from JSON data */
  OrkutLinkResource.fromJson(Map json) {
    if (json.containsKey("href")) {
      href = json["href"];
    }
    if (json.containsKey("rel")) {
      rel = json["rel"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for OrkutLinkResource */
  Map toJson() {
    var output = new Map();

    if (href != null) {
      output["href"] = href;
    }
    if (rel != null) {
      output["rel"] = rel;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of OrkutLinkResource */
  String toString() => JSON.stringify(this.toJson());

}

class Visibility {

  /** Identifies this resource as a visibility item. Value: "orkut#visibility" */
  String kind;

  /** List of resources for the visibility item. */
  List<OrkutLinkResource> links;

  /** The visibility of the resource. Possible values are:  
- default: not hidden by the user 
- hidden: hidden */
  String visibility;

  /** Create new Visibility from JSON data */
  Visibility.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("links")) {
      links = [];
      json["links"].forEach((item) {
        links.add(new OrkutLinkResource.fromJson(item));
      });
    }
    if (json.containsKey("visibility")) {
      visibility = json["visibility"];
    }
  }

  /** Create JSON Object for Visibility */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (visibility != null) {
      output["visibility"] = visibility;
    }

    return output;
  }

  /** Return String representation of Visibility */
  String toString() => JSON.stringify(this.toJson());

}

