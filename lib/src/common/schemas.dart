part of orkut_v2_api_client;

class Acl {

  /** Human readable description of the access granted. */
  core.String description;

  /** The list of ACL entries. */
  core.List<AclItems> items;

  /** Identifies this resource as an access control list. Value: "orkut#acl" */
  core.String kind;

  /** The total count of participants of the parent resource. */
  core.int totalParticipants;

  /** Create new Acl from JSON data */
  Acl.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class AclItems {

  /** The ID of the entity. For entities of type "person" or "circle", this is the ID of the resource. For other types, this will be unset. */
  core.String id;

  /** The type of entity to whom access is granted. */
  core.String type;

  /** Create new AclItems from JSON data */
  AclItems.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AclItems */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AclItems */
  core.String toString() => JSON.stringify(this.toJson());

}

class Activity {

  /** Identifies who has access to see this activity. */
  Acl access;

  /** The person who performed the activity. */
  OrkutAuthorResource actor;

  /** The ID for the activity. */
  core.String id;

  /** The kind of activity. Always orkut#activity. */
  core.String kind;

  /** Links to resources related to this activity. */
  core.List<OrkutLinkResource> links;

  /** The activity's object. */
  ActivityObject object;

  /** The time at which the activity was initially published. */
  core.String published;

  /** Title of the activity. */
  core.String title;

  /** The time at which the activity was last updated. */
  core.String updated;

  /** This activity's verb, indicating what action was performed. Possible values are:  
- add - User added new content to profile or album, e.g. video, photo. 
- post - User publish content to the stream, e.g. status, scrap. 
- update - User commented on an activity. 
- make-friend - User added a new friend. 
- birthday - User has a birthday. */
  core.String verb;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** The activity's object. */
class ActivityObject {

  /** The HTML-formatted content, suitable for display. When updating an activity's content, post the changes to this property, using the value of originalContent as a starting point. If the update is successful, the server adds HTML formatting and responds with this formatted content. */
  core.String content;

  /** The list of additional items. */
  core.List<OrkutActivityobjectsResource> items;

  /** The type of the object affected by the activity. Clients can use this information to style the rendered activity object differently depending on the content. */
  core.String objectType;

  /** Comments in reply to this activity. */
  ActivityObjectReplies replies;

  /** Create new ActivityObject from JSON data */
  ActivityObject.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (content != null) {
      output["content"] = content;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Comments in reply to this activity. */
class ActivityObjectReplies {

  /** The list of comments. */
  core.List<Comment> items;

  /** Total number of comments. */
  core.String totalItems;

  /** URL for the collection of comments in reply to this activity. */
  core.String url;

  /** Create new ActivityObjectReplies from JSON data */
  ActivityObjectReplies.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class ActivityList {

  /** List of activities retrieved. */
  core.List<Activity> items;

  /** Identifies this resource as a collection of activities. Value: "orkut#activityList" */
  core.String kind;

  /** The value of pageToken query parameter in activities.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** Create new ActivityList from JSON data */
  ActivityList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class Badge {

  /** The URL for the 64x64 badge logo. */
  core.String badgeLargeLogo;

  /** The URL for the 24x24 badge logo. */
  core.String badgeSmallLogo;

  /** The name of the badge, suitable for display. */
  core.String caption;

  /** The description for the badge, suitable for display. */
  core.String description;

  /** The unique ID for the badge. */
  core.String id;

  /** Identifies this resource as a badge. Value: "orkut#badge" */
  core.String kind;

  /** The URL for the 32x32 badge sponsor logo. */
  core.String sponsorLogo;

  /** The name of the badge sponsor, suitable for display. */
  core.String sponsorName;

  /** The URL for the badge sponsor. */
  core.String sponsorUrl;

  /** Create new Badge from JSON data */
  Badge.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class BadgeList {

  /** List of badges retrieved. */
  core.List<Badge> items;

  /** Identifies this resource as a collection of badges. Value: "orkut#badgeList" */
  core.String kind;

  /** Create new BadgeList from JSON data */
  BadgeList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class Comment {

  /** The person who posted the comment. */
  OrkutAuthorResource actor;

  /** The content of the comment in text/html */
  core.String content;

  /** The unique ID for the comment. */
  core.String id;

  /** Link to the original activity where this comment was posted. */
  CommentInReplyTo inReplyTo;

  /** Identifies this resource as a comment. Value: "orkut#comment" */
  core.String kind;

  /** List of resources for the comment. */
  core.List<OrkutLinkResource> links;

  /** The time the comment was initially published, in RFC 3339 format. */
  core.String published;

  /** Create new Comment from JSON data */
  Comment.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Link to the original activity where this comment was posted. */
class CommentInReplyTo {

  /** Link to the post on activity stream being commented. */
  core.String href;

  /** Unique identifier of the post on activity stream being commented. */
  core.String ref;

  /** Relationship between the comment and the post on activity stream being commented. Always inReplyTo. */
  core.String rel;

  /** Type of the post on activity stream being commented. Always text/html. */
  core.String type;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommentList {

  /** List of comments retrieved. */
  core.List<Comment> items;

  /** Identifies this resource as a collection of comments. Value: "orkut#commentList" */
  core.String kind;

  /** The value of pageToken query parameter in comments.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in comments.list request to get the previous page, if there are more to retrieve. */
  core.String previousPageToken;

  /** Create new CommentList from JSON data */
  CommentList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class Community {

  /** The category of the community. */
  core.String category;

  /** The co-owners of the community. */
  core.List<OrkutAuthorResource> co_owners;

  /** The time the community was created, in RFC 3339 format. */
  core.String creation_date;

  /** The description of the community. */
  core.String description;

  /** The id of the community. */
  core.int id;

  /** Identifies this resource as a community. Value: "orkut#community" */
  core.String kind;

  /** The official language of the community. */
  core.String language;

  /** List of resources for the community. */
  core.List<OrkutLinkResource> links;

  /** The location of the community. */
  core.String location;

  /** The number of users who are part of the community. This number may be approximate, so do not rely on it for iteration. */
  core.int member_count;

  /** The list of moderators of the community. */
  core.List<OrkutAuthorResource> moderators;

  /** The name of the community. */
  core.String name;

  /** The person who owns the community. */
  OrkutAuthorResource owner;

  /** The photo of the community. */
  core.String photo_url;

  /** Create new Community from JSON data */
  Community.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (category != null) {
      output["category"] = category;
    }
    if (co_owners != null) {
      output["co_owners"] = new core.List();
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
      output["links"] = new core.List();
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
      output["moderators"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityList {

  /** List of communities retrieved. */
  core.List<Community> items;

  /** Identifies this resource as a collection of communities. Value: "orkut#communityList" */
  core.String kind;

  /** Create new CommunityList from JSON data */
  CommunityList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityMembers {

  /** Status and permissions of the user related to the community. */
  CommunityMembershipStatus communityMembershipStatus;

  /** Kind of this item. Always orkut#communityMembers. */
  core.String kind;

  /** Description of the community member. */
  OrkutActivitypersonResource person;

  /** Create new CommunityMembers from JSON data */
  CommunityMembers.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityMembersList {

  /** The value of pageToken query parameter in community_members.list request to get the first page. */
  core.String firstPageToken;

  /** List of community members retrieved. */
  core.List<CommunityMembers> items;

  /** Kind of this item. Always orkut#communityMembersList. */
  core.String kind;

  /** The value of pageToken query parameter in community_members.list request to get the last page. */
  core.String lastPageToken;

  /** The value of pageToken query parameter in community_members.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in community_members.list request to get the previous page, if there are more to retrieve. */
  core.String prevPageToken;

  /** Create new CommunityMembersList from JSON data */
  CommunityMembersList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityMembershipStatus {

  /** Whether the user can create a poll in this community. */
  core.bool canCreatePoll;

  /** Whether the user can create a topic in this community. */
  core.bool canCreateTopic;

  /** Whether the user can perform a shout operation in this community. */
  core.bool canShout;

  /** Whether the session user is a community co-owner. */
  core.bool isCoOwner;

  /** Whether the user is following this community. */
  core.bool isFollowing;

  /** Whether the session user is a community moderator. */
  core.bool isModerator;

  /** Whether the session user is the community owner. */
  core.bool isOwner;

  /** Whether the restore operation is available for the community. */
  core.bool isRestoreAvailable;

  /** Whether the take-back operation is available for the community. */
  core.bool isTakebackAvailable;

  /** Kind of this item. Always orkut#communityMembershipStatus. */
  core.String kind;

  /** The status of the current link between the community and the user. */
  core.String status;

  /** Create new CommunityMembershipStatus from JSON data */
  CommunityMembershipStatus.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityMessage {

  /** The timestamp of the date when the message was added, in RFC 3339 format. */
  core.String addedDate;

  /** The creator of the message. If ommited, the message is annonimous. */
  OrkutAuthorResource author;

  /** The body of the message. */
  core.String body;

  /** The ID of the message. */
  core.String id;

  /** Whether this post was marked as spam by the viewer, when he/she is not the community owner or one of its moderators. */
  core.bool isSpam;

  /** Identifies this resource as a community message. Value: "orkut#communityMessage" */
  core.String kind;

  /** List of resources for the community message. */
  core.List<OrkutLinkResource> links;

  /** The subject of the message. */
  core.String subject;

  /** Create new CommunityMessage from JSON data */
  CommunityMessage.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityMessageList {

  /** The value of pageToken query parameter in community_messages.list request to get the first page. */
  core.String firstPageToken;

  /** List of messages retrieved. */
  core.List<CommunityMessage> items;

  /** Identifies this resource as a collection of community messages. Value: "orkut#communityMessageList" */
  core.String kind;

  /** The value of pageToken query parameter in community_messages.list request to get the last page. */
  core.String lastPageToken;

  /** The value of pageToken query parameter in community_messages.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in community_messages.list request to get the previous page, if there are more to retrieve. */
  core.String prevPageToken;

  /** Create new CommunityMessageList from JSON data */
  CommunityMessageList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityPoll {

  /** The person who created the poll. */
  OrkutAuthorResource author;

  /** The ID of the community. */
  core.int communityId;

  /** The date of creation of this poll */
  core.String creationTime;

  /** The poll description. */
  core.String description;

  /** The ending date of this poll or empty if the poll doesn't have one. */
  core.String endingTime;

  /** Whether the user has voted on this poll. */
  core.bool hasVoted;

  /** The poll ID. */
  core.String id;

  /** The image representing the poll. Field is omitted if no image exists. */
  CommunityPollImage image;

  /** Whether the poll is not expired if there is an expiration date. A poll is open (that is, not closed for voting) if it either is not expired or doesn't have an expiration date at all. Note that just because a poll is open, it doesn't mean that the requester can vote on it. */
  core.bool isClosed;

  /** Whether this poll allows voting for more than one option. */
  core.bool isMultipleAnswers;

  /** Whether this poll is still opened for voting. A poll is open for voting if it is not closed, the user has not yet voted on it and the user has the permission to do so, which happens if he/she is either a community member or the poll is open for everybody. */
  core.bool isOpenForVoting;

  /** Whether this poll is restricted for members only. If a poll is open but the user can't vote on it, it's been restricted to members only. This information is important to tell this case apart from the one where the user can't vote simply because the poll is already closed. */
  core.bool isRestricted;

  /** Whether the user has marked this poll as spam. This only affects the poll for this user, not globally. */
  core.bool isSpam;

  /** If user has already voted, whether his vote is publicly visible. */
  core.bool isUsersVotePublic;

  /** Whether non-members of the community can vote on the poll. */
  core.bool isVotingAllowedForNonMembers;

  /** Identifies this resource as a community poll. Value: "orkut#communityPoll" */
  core.String kind;

  /** The date of the last update of this poll. */
  core.String lastUpdate;

  /** List of resources for the community poll. */
  core.List<OrkutLinkResource> links;

  /** List of options of this poll. */
  core.List<OrkutCommunitypolloptionResource> options;

  /** The poll question. */
  core.String question;

  /** The total number of votes this poll has received. */
  core.int totalNumberOfVotes;

  /** List of options the user has voted on, if there are any. */
  core.List<core.int> votedOptions;

  /** Create new CommunityPoll from JSON data */
  CommunityPoll.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (options != null) {
      output["options"] = new core.List();
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
      output["votedOptions"] = new core.List();
      votedOptions.forEach((item) {
        output["votedOptions"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of CommunityPoll */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The image representing the poll. Field is omitted if no image exists. */
class CommunityPollImage {

  /** A URL that points to an image of the poll. */
  core.String url;

  /** Create new CommunityPollImage from JSON data */
  CommunityPollImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommunityPollImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommunityPollImage */
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityPollComment {

  /** The date when the message was added, in RFC 3339 format. */
  core.String addedDate;

  /** The creator of the comment. */
  OrkutAuthorResource author;

  /** The body of the message. */
  core.String body;

  /** The ID of the comment. */
  core.int id;

  /** Identifies this resource as a community poll comment. Value: "orkut#communityPollComment" */
  core.String kind;

  /** Create new CommunityPollComment from JSON data */
  CommunityPollComment.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityPollCommentList {

  /** The value of pageToken query parameter in community_poll_comments.list request to get the first page. */
  core.String firstPageToken;

  /** List of community poll comments retrieved. */
  core.List<CommunityPollComment> items;

  /** Identifies this resource as a collection of community poll comments. Value: "orkut#CommunityPollCommentList" */
  core.String kind;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the last page. */
  core.String lastPageToken;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in community_poll_comments.list request to get the previous page, if there are more to retrieve. */
  core.String prevPageToken;

  /** Create new CommunityPollCommentList from JSON data */
  CommunityPollCommentList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityPollList {

  /** The value of pageToken query parameter in community_polls.list request to get the first page. */
  core.String firstPageToken;

  /** List of community polls retrieved. */
  core.List<CommunityPoll> items;

  /** Identifies this resource as a collection of community polls. Value: "orkut#communityPollList" */
  core.String kind;

  /** The value of pageToken query parameter in community_polls.list request to get the last page. */
  core.String lastPageToken;

  /** The value of pageToken query parameter in community_polls.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in community_polls.list request to get the previous page, if there are more to retrieve. */
  core.String prevPageToken;

  /** Create new CommunityPollList from JSON data */
  CommunityPollList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityPollVote {

  /** Whether this vote is visible to other users or not. */
  core.bool isVotevisible;

  /** Identifies this resource as a community poll vote. Value: "orkut#communityPollVote" */
  core.String kind;

  /** The ids of the voted options. */
  core.List<core.int> optionIds;

  /** Create new CommunityPollVote from JSON data */
  CommunityPollVote.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (isVotevisible != null) {
      output["isVotevisible"] = isVotevisible;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (optionIds != null) {
      output["optionIds"] = new core.List();
      optionIds.forEach((item) {
        output["optionIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of CommunityPollVote */
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityTopic {

  /** The creator of the topic. */
  OrkutAuthorResource author;

  /** The body of the topic. */
  core.String body;

  /** The ID of the topic. */
  core.String id;

  /** Whether the topic is closed for new messages. */
  core.bool isClosed;

  /** Identifies this resource as a community topic. Value: "orkut#communityTopic" */
  core.String kind;

  /** The timestamp of the last update, in RFC 3339 format. */
  core.String lastUpdate;

  /** Snippet of the last message posted on this topic. */
  core.String latestMessageSnippet;

  /** List of resources for the community. */
  core.List<OrkutLinkResource> links;

  /** Most recent messages. */
  core.List<CommunityMessage> messages;

  /** The total number of replies this topic has received. */
  core.int numberOfReplies;

  /** The title of the topic. */
  core.String title;

  /** Create new CommunityTopic from JSON data */
  CommunityTopic.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
      links.forEach((item) {
        output["links"].add(item.toJson());
      });
    }
    if (messages != null) {
      output["messages"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class CommunityTopicList {

  /** The value of pageToken query parameter in community_topic.list request to get the first page. */
  core.String firstPageToken;

  /** List of topics retrieved. */
  core.List<CommunityTopic> items;

  /** Identifies this resource as a collection of community topics. Value: "orkut#communityTopicList" */
  core.String kind;

  /** The value of pageToken query parameter in community_topic.list request to get the last page. */
  core.String lastPageToken;

  /** The value of pageToken query parameter in community_topic.list request to get the next page, if there are more to retrieve. */
  core.String nextPageToken;

  /** The value of pageToken query parameter in community_topic.list request to get the previous page, if there are more to retrieve. */
  core.String prevPageToken;

  /** Create new CommunityTopicList from JSON data */
  CommunityTopicList.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (firstPageToken != null) {
      output["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class Counters {

  /** List of counters retrieved. */
  core.List<OrkutCounterResource> items;

  /** Identifies this resource as a collection of counters. Value: "orkut#counters" */
  core.String kind;

  /** Create new Counters from JSON data */
  Counters.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class OrkutActivityobjectsResource {

  /** The community which is related with this activity, e.g. a joined community. */
  Community community;

  /** The HTML-formatted content, suitable for display. When updating an activity's content, post the changes to this property, using the value of originalContent as a starting point. If the update is successful, the server adds HTML formatting and responds with this formatted content. */
  core.String content;

  /** The title of the object. */
  core.String displayName;

  /** The ID for the object. */
  core.String id;

  /** Links to other resources related to this object. */
  core.List<OrkutLinkResource> links;

  /** The object type. */
  core.String objectType;

  /** The person who is related with this activity, e.g. an Added User. */
  OrkutActivitypersonResource person;

  /** Create new OrkutActivityobjectsResource from JSON data */
  OrkutActivityobjectsResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["links"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class OrkutActivitypersonResource {

  /** The person's date of birth, represented as YYYY-MM-DD. */
  core.String birthday;

  /** The person's gender. Values include "male", "female", and "other". */
  core.String gender;

  /** The person's opensocial ID. */
  core.String id;

  /** The person's profile photo. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
  OrkutActivitypersonResourceImage image;

  /** An object that encapsulates the individual components of a person's name. */
  OrkutActivitypersonResourceName name;

  /** The person's profile url. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
  core.String url;

  /** Create new OrkutActivitypersonResource from JSON data */
  OrkutActivitypersonResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** An object that encapsulates the individual components of a person's name. */
class OrkutActivitypersonResourceName {

  /** The family name (last name) of this person. */
  core.String familyName;

  /** The given name (first name) of this person. */
  core.String givenName;

  /** Create new OrkutActivitypersonResourceName from JSON data */
  OrkutActivitypersonResourceName.fromJson(core.Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for OrkutActivitypersonResourceName */
  core.Map toJson() {
    var output = new core.Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of OrkutActivitypersonResourceName */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The person's profile photo. This is adapted from Google+ and was originaly introduced as extra OpenSocial convenience fields. */
class OrkutActivitypersonResourceImage {

  /** The URL of the person's profile photo. */
  core.String url;

  /** Create new OrkutActivitypersonResourceImage from JSON data */
  OrkutActivitypersonResourceImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutActivitypersonResourceImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutActivitypersonResourceImage */
  core.String toString() => JSON.stringify(this.toJson());

}

class OrkutAuthorResource {

  /** The name of the author, suitable for display. */
  core.String displayName;

  /** Unique identifier of the person who posted the comment. This is the person's OpenSocial ID. */
  core.String id;

  /** Image data about the author. */
  OrkutAuthorResourceImage image;

  /** The URL of the author who posted the comment [not yet implemented] */
  core.String url;

  /** Create new OrkutAuthorResource from JSON data */
  OrkutAuthorResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Image data about the author. */
class OrkutAuthorResourceImage {

  /** A URL that points to a thumbnail photo of the author. */
  core.String url;

  /** Create new OrkutAuthorResourceImage from JSON data */
  OrkutAuthorResourceImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutAuthorResourceImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutAuthorResourceImage */
  core.String toString() => JSON.stringify(this.toJson());

}

class OrkutCommunitypolloptionResource {

  /** The option description. */
  core.String description;

  /** Image data about the poll option. Field is omitted if no image exists. */
  OrkutCommunitypolloptionResourceImage image;

  /** The total number of votes that this option received. */
  core.int numberOfVotes;

  /** The poll option ID */
  core.int optionId;

  /** Create new OrkutCommunitypolloptionResource from JSON data */
  OrkutCommunitypolloptionResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Image data about the poll option. Field is omitted if no image exists. */
class OrkutCommunitypolloptionResourceImage {

  /** A URL that points to an image of the poll question. */
  core.String url;

  /** Create new OrkutCommunitypolloptionResourceImage from JSON data */
  OrkutCommunitypolloptionResourceImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for OrkutCommunitypolloptionResourceImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of OrkutCommunitypolloptionResourceImage */
  core.String toString() => JSON.stringify(this.toJson());

}

class OrkutCounterResource {

  /** Link to the collection being counted. */
  OrkutLinkResource link;

  /** The name of the counted collection. Currently supported collections are:  
- scraps - The scraps of the user. 
- photos - The photos of the user. 
- videos - The videos of the user. 
- pendingTestimonials - The pending testimonials of the user. */
  core.String name;

  /** The number of resources on the counted collection. */
  core.int total;

  /** Create new OrkutCounterResource from JSON data */
  OrkutCounterResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

/** Links to resources related to the parent object. */
class OrkutLinkResource {

  /** URL of the link. */
  core.String href;

  /** Relation between the resource and the parent object. */
  core.String rel;

  /** Title of the link. */
  core.String title;

  /** Media type of the link. */
  core.String type;

  /** Create new OrkutLinkResource from JSON data */
  OrkutLinkResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

}

class Visibility {

  /** Identifies this resource as a visibility item. Value: "orkut#visibility" */
  core.String kind;

  /** List of resources for the visibility item. */
  core.List<OrkutLinkResource> links;

  /** The visibility of the resource. Possible values are:  
- default: not hidden by the user 
- hidden: hidden */
  core.String visibility;

  /** Create new Visibility from JSON data */
  Visibility.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (links != null) {
      output["links"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

