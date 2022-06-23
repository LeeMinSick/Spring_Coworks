package com.coworks.domain.members;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class GroupVO {
    int groupId;
    String groupName;
    String groupMaster;
    String groupMasterId;
    int usedCapacity;
    String createdDate;
}
