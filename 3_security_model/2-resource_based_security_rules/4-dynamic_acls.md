## Dynamic ACLS

Finally, combining the best of both worlds, role-based ACLs as described in the previous chapter can also be computed dynamically based on policies. This is very powerful to e.g. restrict access to a given workspace under certain conditions, like accessing from an internal vs/ external network, accessing at given office hours, etc…
Furthermore, these ACLs can also use the files metadata as a source of context for computing conditions. That way, it is possible to restrict access only a given type of files (with e.g. a “Confidential” metadata tag) and combined with other context conditions.

[:image-popup:3_security_model/policies.png]
