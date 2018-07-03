## Introduction

Along with the role-based mechanism, it is possible to refine accesses to any specific API or to dynamically compute a specific ACL to be applied to a role. 
Resource-based rules are heavily inspired by Amazon IAM [TODO / LINK] rules. The idea is to simply stack a set of rules in a “deny by default” mode and to merge them when necessary to decide : “who is allowed to access what in which context”: 

* Who is the rule “Subject”
* Allowed is the rule “Effect”: a boolean flag saying “Allow” or “Deny”
* What is the “Resource” of the rule
* Context is an optional set of “Conditions” that can be computed at runtime.

In real-life situation, a rule can have many Subjects, many Resources and many Conditions. Policies are defined by a set of rules. Internally, a dedicated Policy service can be queried by other services to check whether a set of rules, evaluated in a given context, grant Allow or Deny access to the subject. 

Again, most policies have a “Deny by default” behavior. For example, when creating a new endpoint in the REST api, it is not accessible (returns 403 Forbidden) until a specific security is added to explicitly provide an access to this endpoint. The engine can also give a precise answer whether the deny response is a DenyByDefault (no rules defined matching this resource) or an explicit deny (e.g. one rule allows access to all, but another rule forbids access to users of a given group). See more examples in following sections.

