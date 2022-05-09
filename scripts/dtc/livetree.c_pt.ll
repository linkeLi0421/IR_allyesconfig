; ModuleID = '/llk/IR_all_yes/scripts/dtc/livetree.c_pt.bc'
source_filename = "../scripts/dtc/livetree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i8, ptr, ptr }
%struct.data = type { i32, ptr, ptr }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.reserve_info = type { i64, i64, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"first->next == NULL\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"../scripts/dtc/livetree.c\00", align 1
@__PRETTY_FUNCTION__.chain_property = private unnamed_addr constant [70 x i8] c"struct property *chain_property(struct property *, struct property *)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"node->name == NULL\00", align 1
@__PRETTY_FUNCTION__.name_node = private unnamed_addr constant [46 x i8] c"struct node *name_node(struct node *, char *)\00", align 1
@add_orphan_node.next_orphan_fragment = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fragment@%u\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"first->next_sibling == NULL\00", align 1
@__PRETTY_FUNCTION__.chain_node = private unnamed_addr constant [54 x i8] c"struct node *chain_node(struct node *, struct node *)\00", align 1
@__PRETTY_FUNCTION__.chain_reserve_entry = private unnamed_addr constant [87 x i8] c"struct reserve_info *chain_reserve_entry(struct reserve_info *, struct reserve_info *)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"prop->val.len == sizeof(cell_t)\00", align 1
@__PRETTY_FUNCTION__.propval_cell = private unnamed_addr constant [39 x i8] c"cell_t propval_cell(struct property *)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"prop->val.len / sizeof(cell_t) >= n\00", align 1
@__PRETTY_FUNCTION__.propval_cell_n = private unnamed_addr constant [55 x i8] c"cell_t propval_cell_n(struct property *, unsigned int)\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"label && (strlen(label) > 0)\00", align 1
@__PRETTY_FUNCTION__.get_node_by_label = private unnamed_addr constant [60 x i8] c"struct node *get_node_by_label(struct node *, const char *)\00", align 1
@generate_fixups = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"generate_fixups\00", align 1
@__PRETTY_FUNCTION__.get_node_by_phandle = private unnamed_addr constant [56 x i8] c"struct node *get_node_by_phandle(struct node *, cell_t)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@get_node_phandle.phandle = internal unnamed_addr global i32 1, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@phandle_format = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"WARNING: label %s already exists in /%s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"m->type == REF_PHANDLE\00", align 1
@__PRETTY_FUNCTION__.add_fixup_entry = private unnamed_addr constant [105 x i8] c"void add_fixup_entry(struct dt_info *, struct node *, struct node *, struct property *, struct marker *)\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"arguments should not contain ':'\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%s:%s:%u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @add_label(ptr nocapture noundef %labels, ptr noundef %label) local_unnamed_addr #0 {
entry:
  %new.016 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not17 = icmp eq ptr %new.016, null
  br i1 %tobool.not17, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %new.018 = phi ptr [ %new.0, %for.inc ], [ %new.016, %entry ]
  %label1 = getelementptr inbounds %struct.label, ptr %new.018, i64 0, i32 1
  %0 = load ptr, ptr %label1, align 8, !tbaa !9
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %label) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i8 0, ptr %new.018, align 8, !tbaa !12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.label, ptr %new.018, i64 0, i32 2
  %new.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %new.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %calloc = call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %for.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %for.end
  %label3 = getelementptr inbounds %struct.label, ptr %calloc, i64 0, i32 1
  store ptr %label, ptr %label3, align 8, !tbaa !9
  %next4 = getelementptr inbounds %struct.label, ptr %calloc, i64 0, i32 2
  store ptr %new.016, ptr %next4, align 8, !tbaa !13
  store ptr %calloc, ptr %labels, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %xmalloc.exit, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @delete_labels(ptr nocapture noundef readonly %labels) local_unnamed_addr #4 {
entry:
  %label.06 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not7 = icmp eq ptr %label.06, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %label.08 = phi ptr [ %label.0, %for.inc ], [ %label.06, %entry ]
  %0 = load i8, ptr %label.08, align 8, !tbaa !12, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i8 1, ptr %label.08, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next = getelementptr inbounds %struct.label, ptr %label.08, i64 0, i32 2
  %label.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %label.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_property(ptr noundef %name, ptr nocapture noundef readonly byval(%struct.data) align 8 %val, ptr noundef %srcpos) local_unnamed_addr #0 {
entry:
  %calloc = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %name1 = getelementptr inbounds %struct.property, ptr %calloc, i64 0, i32 1
  store ptr %name, ptr %name1, align 8, !tbaa !15
  %val2 = getelementptr inbounds %struct.property, ptr %calloc, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2, ptr noundef nonnull align 8 dereferenceable(24) %val, i64 24, i1 false), !tbaa.struct !19
  %call3 = tail call ptr @srcpos_copy(ptr noundef %srcpos) #27
  %srcpos4 = getelementptr inbounds %struct.property, ptr %calloc, i64 0, i32 5
  store ptr %call3, ptr %srcpos4, align 8, !tbaa !21
  ret ptr %calloc
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @srcpos_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_property_delete(ptr noundef %name) local_unnamed_addr #0 {
entry:
  %calloc = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %name1 = getelementptr inbounds %struct.property, ptr %calloc, i64 0, i32 1
  store ptr %name, ptr %name1, align 8, !tbaa !15
  store i8 1, ptr %calloc, align 8, !tbaa !22
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_property(ptr noundef returned %first, ptr noundef %list) local_unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.property, ptr %first, i64 0, i32 3
  %0 = load ptr, ptr %next, align 8, !tbaa !23
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_property) #26
  unreachable

if.end:                                           ; preds = %entry
  store ptr %list, ptr %next, align 8, !tbaa !23
  ret ptr %first
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @reverse_properties(ptr noundef %first) local_unnamed_addr #4 {
entry:
  %tobool.not7 = icmp eq ptr %first, null
  br i1 %tobool.not7, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %p.09 = phi ptr [ %0, %while.body ], [ %first, %entry ]
  %head.08 = phi ptr [ %p.09, %while.body ], [ null, %entry ]
  %next1 = getelementptr inbounds %struct.property, ptr %p.09, i64 0, i32 3
  %0 = load ptr, ptr %next1, align 8, !tbaa !23
  store ptr %head.08, ptr %next1, align 8, !tbaa !23
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %head.0.lcssa = phi ptr [ null, %entry ], [ %p.09, %while.body ]
  ret ptr %head.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @build_node(ptr noundef %proplist, ptr noundef %children, ptr noundef %srcpos) local_unnamed_addr #0 {
entry:
  %calloc = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %tobool.not7.i = icmp eq ptr %proplist, null
  br i1 %tobool.not7.i, label %reverse_properties.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %xmalloc.exit
  %p.09.i = phi ptr [ %0, %while.body.i ], [ %proplist, %xmalloc.exit ]
  %head.08.i = phi ptr [ %p.09.i, %while.body.i ], [ null, %xmalloc.exit ]
  %next1.i = getelementptr inbounds %struct.property, ptr %p.09.i, i64 0, i32 3
  %0 = load ptr, ptr %next1.i, align 8, !tbaa !23
  store ptr %head.08.i, ptr %next1.i, align 8, !tbaa !23
  %tobool.not.i17 = icmp eq ptr %0, null
  br i1 %tobool.not.i17, label %reverse_properties.exit, label %while.body.i

reverse_properties.exit:                          ; preds = %while.body.i, %xmalloc.exit
  %head.0.lcssa.i = phi ptr [ null, %xmalloc.exit ], [ %p.09.i, %while.body.i ]
  %proplist2 = getelementptr inbounds %struct.node, ptr %calloc, i64 0, i32 2
  store ptr %head.0.lcssa.i, ptr %proplist2, align 8, !tbaa !24
  %children3 = getelementptr inbounds %struct.node, ptr %calloc, i64 0, i32 3
  store ptr %children, ptr %children3, align 8, !tbaa !26
  %call4 = tail call ptr @srcpos_copy(ptr noundef %srcpos) #27
  %srcpos5 = getelementptr inbounds %struct.node, ptr %calloc, i64 0, i32 13
  store ptr %call4, ptr %srcpos5, align 8, !tbaa !27
  %tobool.not19 = icmp eq ptr %children, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %reverse_properties.exit
  %child.020 = phi ptr [ %child.0, %for.inc ], [ %children, %reverse_properties.exit ]
  %1 = load i8, ptr %child.020, align 8, !tbaa !28, !range !14
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.node, ptr %child.020, i64 0, i32 4
  store ptr %calloc, ptr %parent, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.020, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %reverse_properties.exit
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_node_delete(ptr noundef %srcpos) local_unnamed_addr #0 {
entry:
  %calloc = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  store i8 1, ptr %calloc, align 8, !tbaa !28
  %call1 = tail call ptr @srcpos_copy(ptr noundef %srcpos) #27
  %srcpos2 = getelementptr inbounds %struct.node, ptr %calloc, i64 0, i32 13
  store ptr %call1, ptr %srcpos2, align 8, !tbaa !27
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define dso_local ptr @name_node(ptr noundef returned %node, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %name1 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name1, align 8, !tbaa !30
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @__PRETTY_FUNCTION__.name_node) #26
  unreachable

if.end:                                           ; preds = %entry
  store ptr %name, ptr %name1, align 8, !tbaa !30
  ret ptr %node
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local ptr @omit_node_if_unused(ptr noundef returned writeonly %node) local_unnamed_addr #8 {
entry:
  %omit_if_unused = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 14
  store i8 1, ptr %omit_if_unused, align 8, !tbaa !31
  ret ptr %node
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local ptr @reference_node(ptr noundef returned writeonly %node) local_unnamed_addr #8 {
entry:
  %is_referenced = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 15
  store i8 1, ptr %is_referenced, align 1, !tbaa !32
  ret ptr %node
}

; Function Attrs: nounwind uwtable
define dso_local ptr @merge_nodes(ptr noundef returned %old_node, ptr nocapture noundef %new_node) local_unnamed_addr #0 {
entry:
  store i8 0, ptr %old_node, align 8, !tbaa !28
  %labels = getelementptr inbounds %struct.node, ptr %new_node, i64 0, i32 11
  %l.0174 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not175 = icmp eq ptr %l.0174, null
  br i1 %tobool.not175, label %while.cond.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %labels1 = getelementptr inbounds %struct.node, ptr %old_node, i64 0, i32 11
  %new.016.i.pre = load ptr, ptr %labels1, align 8, !tbaa !5
  br label %for.body

while.cond.preheader:                             ; preds = %add_label.exit, %entry
  %proplist = getelementptr inbounds %struct.node, ptr %new_node, i64 0, i32 2
  %0 = load ptr, ptr %proplist, align 8, !tbaa !24
  %tobool2.not183 = icmp eq ptr %0, null
  br i1 %tobool2.not183, label %while.cond36.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %proplist.i = getelementptr inbounds %struct.node, ptr %old_node, i64 0, i32 2
  br label %while.body

for.body:                                         ; preds = %add_label.exit, %for.body.lr.ph
  %new.016.i = phi ptr [ %new.016.i.pre, %for.body.lr.ph ], [ %new.016.i195, %add_label.exit ]
  %l.0176 = phi ptr [ %l.0174, %for.body.lr.ph ], [ %l.0, %add_label.exit ]
  %label = getelementptr inbounds %struct.label, ptr %l.0176, i64 0, i32 1
  %1 = load ptr, ptr %label, align 8, !tbaa !9
  %tobool.not17.i = icmp eq ptr %new.016.i, null
  br i1 %tobool.not17.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body
  %new.018.i = phi ptr [ %new.0.i, %for.inc.i ], [ %new.016.i, %for.body ]
  %label1.i = getelementptr inbounds %struct.label, ptr %new.018.i, i64 0, i32 1
  %2 = load ptr, ptr %label1.i, align 8, !tbaa !9
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %1) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  store i8 0, ptr %new.018.i, align 8, !tbaa !12
  br label %add_label.exit

for.inc.i:                                        ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.label, ptr %new.018.i, i64 0, i32 2
  %new.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %new.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %for.body
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) #27
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xmalloc.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit.i:                                   ; preds = %for.end.i
  %label3.i = getelementptr inbounds %struct.label, ptr %calloc.i, i64 0, i32 1
  store ptr %1, ptr %label3.i, align 8, !tbaa !9
  %next4.i = getelementptr inbounds %struct.label, ptr %calloc.i, i64 0, i32 2
  store ptr %new.016.i, ptr %next4.i, align 8, !tbaa !13
  store ptr %calloc.i, ptr %labels1, align 8, !tbaa !5
  br label %add_label.exit

add_label.exit:                                   ; preds = %xmalloc.exit.i, %if.then.i
  %new.016.i195 = phi ptr [ %new.016.i, %if.then.i ], [ %calloc.i, %xmalloc.exit.i ]
  %next = getelementptr inbounds %struct.label, ptr %l.0176, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %l.0, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.body

while.cond36.preheader:                           ; preds = %while.cond.backedge, %while.cond.preheader
  %children = getelementptr inbounds %struct.node, ptr %new_node, i64 0, i32 3
  %3 = load ptr, ptr %children, align 8, !tbaa !26
  %tobool37.not187 = icmp eq ptr %3, null
  br i1 %tobool37.not187, label %while.end64, label %while.body38.lr.ph

while.body38.lr.ph:                               ; preds = %while.cond36.preheader
  %children.i = getelementptr inbounds %struct.node, ptr %old_node, i64 0, i32 3
  br label %while.body38

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %4 = phi ptr [ %0, %while.body.lr.ph ], [ %10, %while.cond.backedge ]
  %next4 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %next4, align 8, !tbaa !23
  store ptr %5, ptr %proplist, align 8, !tbaa !24
  store ptr null, ptr %next4, align 8, !tbaa !23
  %6 = load i8, ptr %4, align 8, !tbaa !22, !range !14
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %name = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %name, align 8, !tbaa !15
  %prop.07.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not8.i = icmp eq ptr %prop.07.i, null
  br i1 %tobool.not8.i, label %delete_property_by_name.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %if.then
  %prop.09.i = phi ptr [ %prop.0.i, %if.end.i ], [ %prop.07.i, %if.then ]
  %name1.i = getelementptr inbounds %struct.property, ptr %prop.09.i, i64 0, i32 1
  %8 = load ptr, ptr %name1.i, align 8, !tbaa !15
  %call.i123 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %7) #25
  %cmp.i124 = icmp eq i32 %call.i123, 0
  br i1 %cmp.i124, label %if.then.i125, label %if.end.i

if.then.i125:                                     ; preds = %while.body.i
  store i8 1, ptr %prop.09.i, align 8, !tbaa !22
  %labels.i.i = getelementptr inbounds %struct.property, ptr %prop.09.i, i64 0, i32 4
  %label.06.i.i.i = load ptr, ptr %labels.i.i, align 8, !tbaa !5
  %tobool.not7.i.i.i = icmp eq ptr %label.06.i.i.i, null
  br i1 %tobool.not7.i.i.i, label %delete_property_by_name.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then.i125
  %label.08.i.i.i = phi ptr [ %label.0.i.i.i, %for.inc.i.i.i ], [ %label.06.i.i.i, %if.then.i125 ]
  %9 = load i8, ptr %label.08.i.i.i, align 8, !tbaa !12, !range !14
  %tobool1.not.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  store i8 1, ptr %label.08.i.i.i, align 8, !tbaa !12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i
  %next.i.i.i = getelementptr inbounds %struct.label, ptr %label.08.i.i.i, i64 0, i32 2
  %label.0.i.i.i = load ptr, ptr %next.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i.i = icmp eq ptr %label.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %delete_property_by_name.exit, label %for.body.i.i.i

if.end.i:                                         ; preds = %while.body.i
  %next.i126 = getelementptr inbounds %struct.property, ptr %prop.09.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i126, align 8, !tbaa !5
  %tobool.not.i127 = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i127, label %delete_property_by_name.exit, label %while.body.i

delete_property_by_name.exit:                     ; preds = %if.end.i, %for.inc.i.i.i, %if.then.i125, %if.then
  tail call void @free(ptr noundef %4) #27
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %add_property.exit, %for.end32.thread, %delete_property_by_name.exit
  %10 = load ptr, ptr %proplist, align 8, !tbaa !24
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %while.cond36.preheader, label %while.body

if.end:                                           ; preds = %while.body
  %old_prop.0177 = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool11.not178 = icmp eq ptr %old_prop.0177, null
  br i1 %tobool11.not178, label %while.cond.i.preheader, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %if.end
  %name14 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %name14, align 8, !tbaa !15
  br label %for.body12

for.body12:                                       ; preds = %for.inc30, %for.body12.lr.ph
  %old_prop.0179 = phi ptr [ %old_prop.0177, %for.body12.lr.ph ], [ %old_prop.0, %for.inc30 ]
  %name13 = getelementptr inbounds %struct.property, ptr %old_prop.0179, i64 0, i32 1
  %12 = load ptr, ptr %name13, align 8, !tbaa !15
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %11) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then15, label %for.inc30

if.then15:                                        ; preds = %for.body12
  %labels16 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 4
  %l.1180 = load ptr, ptr %labels16, align 8, !tbaa !5
  %tobool18.not181 = icmp eq ptr %l.1180, null
  br i1 %tobool18.not181, label %for.end32.thread, label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %if.then15
  %labels20 = getelementptr inbounds %struct.property, ptr %old_prop.0179, i64 0, i32 4
  %new.016.i128.pre = load ptr, ptr %labels20, align 8, !tbaa !5
  br label %for.body19

for.body19:                                       ; preds = %add_label.exit147, %for.body19.lr.ph
  %new.016.i128 = phi ptr [ %new.016.i128.pre, %for.body19.lr.ph ], [ %new.016.i128197, %add_label.exit147 ]
  %l.1182 = phi ptr [ %l.1180, %for.body19.lr.ph ], [ %l.1, %add_label.exit147 ]
  %label21 = getelementptr inbounds %struct.label, ptr %l.1182, i64 0, i32 1
  %13 = load ptr, ptr %label21, align 8, !tbaa !9
  %tobool.not17.i129 = icmp eq ptr %new.016.i128, null
  br i1 %tobool.not17.i129, label %for.end.i142, label %for.body.i134

for.body.i134:                                    ; preds = %for.inc.i139, %for.body19
  %new.018.i130 = phi ptr [ %new.0.i137, %for.inc.i139 ], [ %new.016.i128, %for.body19 ]
  %label1.i131 = getelementptr inbounds %struct.label, ptr %new.018.i130, i64 0, i32 1
  %14 = load ptr, ptr %label1.i131, align 8, !tbaa !9
  %call.i132 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %13) #25
  %cmp.i133 = icmp eq i32 %call.i132, 0
  br i1 %cmp.i133, label %if.then.i135, label %for.inc.i139

if.then.i135:                                     ; preds = %for.body.i134
  store i8 0, ptr %new.018.i130, align 8, !tbaa !12
  br label %add_label.exit147

for.inc.i139:                                     ; preds = %for.body.i134
  %next.i136 = getelementptr inbounds %struct.label, ptr %new.018.i130, i64 0, i32 2
  %new.0.i137 = load ptr, ptr %next.i136, align 8, !tbaa !5
  %tobool.not.i138 = icmp eq ptr %new.0.i137, null
  br i1 %tobool.not.i138, label %for.end.i142, label %for.body.i134

for.end.i142:                                     ; preds = %for.inc.i139, %for.body19
  %calloc.i140 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) #27
  %tobool.not.i.i141 = icmp eq ptr %calloc.i140, null
  br i1 %tobool.not.i.i141, label %if.then.i.i143, label %xmalloc.exit.i146

if.then.i.i143:                                   ; preds = %for.end.i142
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit.i146:                                ; preds = %for.end.i142
  %label3.i144 = getelementptr inbounds %struct.label, ptr %calloc.i140, i64 0, i32 1
  store ptr %13, ptr %label3.i144, align 8, !tbaa !9
  %next4.i145 = getelementptr inbounds %struct.label, ptr %calloc.i140, i64 0, i32 2
  store ptr %new.016.i128, ptr %next4.i145, align 8, !tbaa !13
  store ptr %calloc.i140, ptr %labels20, align 8, !tbaa !5
  br label %add_label.exit147

add_label.exit147:                                ; preds = %xmalloc.exit.i146, %if.then.i135
  %new.016.i128197 = phi ptr [ %new.016.i128, %if.then.i135 ], [ %calloc.i140, %xmalloc.exit.i146 ]
  %next23 = getelementptr inbounds %struct.label, ptr %l.1182, i64 0, i32 2
  %l.1 = load ptr, ptr %next23, align 8, !tbaa !5
  %tobool18.not = icmp eq ptr %l.1, null
  br i1 %tobool18.not, label %for.end32.thread, label %for.body19

for.end32.thread:                                 ; preds = %add_label.exit147, %if.then15
  %val = getelementptr inbounds %struct.property, ptr %old_prop.0179, i64 0, i32 2
  %val25 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %val25, i64 24, i1 false), !tbaa.struct !19
  store i8 0, ptr %old_prop.0179, align 8, !tbaa !22
  %srcpos = getelementptr inbounds %struct.property, ptr %old_prop.0179, i64 0, i32 5
  %15 = load ptr, ptr %srcpos, align 8, !tbaa !21
  tail call void @free(ptr noundef %15) #27
  %srcpos27 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %srcpos27, align 8, !tbaa !21
  store ptr %16, ptr %srcpos, align 8, !tbaa !21
  tail call void @free(ptr noundef %4) #27
  br label %while.cond.backedge

for.inc30:                                        ; preds = %for.body12
  %next31 = getelementptr inbounds %struct.property, ptr %old_prop.0179, i64 0, i32 3
  %old_prop.0 = load ptr, ptr %next31, align 8, !tbaa !5
  %tobool11.not = icmp eq ptr %old_prop.0, null
  br i1 %tobool11.not, label %while.cond.i.preheader, label %for.body12

while.cond.i.preheader:                           ; preds = %for.inc30, %if.end
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.i.preheader
  %p.0.i = phi ptr [ %next1.i, %while.cond.i ], [ %proplist.i, %while.cond.i.preheader ]
  %17 = load ptr, ptr %p.0.i, align 8, !tbaa !5
  %tobool.not.i150 = icmp eq ptr %17, null
  %next1.i = getelementptr inbounds %struct.property, ptr %17, i64 0, i32 3
  br i1 %tobool.not.i150, label %add_property.exit, label %while.cond.i

add_property.exit:                                ; preds = %while.cond.i
  store ptr %4, ptr %p.0.i, align 8, !tbaa !5
  br label %while.cond.backedge

while.body38:                                     ; preds = %while.cond36.backedge, %while.body38.lr.ph
  %18 = phi ptr [ %3, %while.body38.lr.ph ], [ %23, %while.cond36.backedge ]
  %next_sibling = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 5
  %19 = load ptr, ptr %next_sibling, align 8, !tbaa !33
  store ptr %19, ptr %children, align 8, !tbaa !26
  %parent = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %parent, i8 0, i64 16, i1 false)
  %20 = load i8, ptr %18, align 8, !tbaa !28, !range !14
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %while.body38
  %name45 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %name45, align 8, !tbaa !30
  %node.06.i = load ptr, ptr %children.i, align 8, !tbaa !5
  %tobool.not7.i = icmp eq ptr %node.06.i, null
  br i1 %tobool.not7.i, label %delete_node_by_name.exit, label %while.body.i154

while.body.i154:                                  ; preds = %if.end.i157, %if.then44
  %node.08.i = phi ptr [ %node.0.i, %if.end.i157 ], [ %node.06.i, %if.then44 ]
  %name1.i151 = getelementptr inbounds %struct.node, ptr %node.08.i, i64 0, i32 1
  %22 = load ptr, ptr %name1.i151, align 8, !tbaa !30
  %call.i152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %21) #25
  %cmp.i153 = icmp eq i32 %call.i152, 0
  br i1 %cmp.i153, label %if.then.i155, label %if.end.i157

if.then.i155:                                     ; preds = %while.body.i154
  tail call void @delete_node(ptr noundef nonnull %node.08.i) #27
  br label %delete_node_by_name.exit

if.end.i157:                                      ; preds = %while.body.i154
  %next_sibling.i = getelementptr inbounds %struct.node, ptr %node.08.i, i64 0, i32 5
  %node.0.i = load ptr, ptr %next_sibling.i, align 8, !tbaa !5
  %tobool.not.i156 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i156, label %delete_node_by_name.exit, label %while.body.i154

delete_node_by_name.exit:                         ; preds = %if.end.i157, %if.then.i155, %if.then44
  tail call void @free(ptr noundef %18) #27
  br label %while.cond36.backedge

while.cond36.backedge:                            ; preds = %add_child.exit, %for.end60.thread, %delete_node_by_name.exit
  %23 = load ptr, ptr %children, align 8, !tbaa !26
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %while.end64, label %while.body38

if.end46:                                         ; preds = %while.body38
  %old_child.0184 = load ptr, ptr %children.i, align 8, !tbaa !5
  %tobool49.not185 = icmp eq ptr %old_child.0184, null
  br i1 %tobool49.not185, label %if.then62, label %for.body50.lr.ph

for.body50.lr.ph:                                 ; preds = %if.end46
  %name52 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %name52, align 8, !tbaa !30
  br label %for.body50

for.body50:                                       ; preds = %for.inc58, %for.body50.lr.ph
  %old_child.0186 = phi ptr [ %old_child.0184, %for.body50.lr.ph ], [ %old_child.0, %for.inc58 ]
  %name51 = getelementptr inbounds %struct.node, ptr %old_child.0186, i64 0, i32 1
  %25 = load ptr, ptr %name51, align 8, !tbaa !30
  %call53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %24) #25
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %for.end60.thread, label %for.inc58

for.end60.thread:                                 ; preds = %for.body50
  %call56 = tail call ptr @merge_nodes(ptr noundef nonnull %old_child.0186, ptr noundef nonnull %18)
  br label %while.cond36.backedge

for.inc58:                                        ; preds = %for.body50
  %next_sibling59 = getelementptr inbounds %struct.node, ptr %old_child.0186, i64 0, i32 5
  %old_child.0 = load ptr, ptr %next_sibling59, align 8, !tbaa !5
  %tobool49.not = icmp eq ptr %old_child.0, null
  br i1 %tobool49.not, label %if.then62, label %for.body50

if.then62:                                        ; preds = %for.inc58, %if.end46
  store ptr %old_node, ptr %parent, align 8, !tbaa !29
  br label %while.cond.i162

while.cond.i162:                                  ; preds = %while.cond.i162, %if.then62
  %p.0.i160 = phi ptr [ %children.i, %if.then62 ], [ %next_sibling2.i, %while.cond.i162 ]
  %26 = load ptr, ptr %p.0.i160, align 8, !tbaa !5
  %tobool.not.i161 = icmp eq ptr %26, null
  %next_sibling2.i = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 5
  br i1 %tobool.not.i161, label %add_child.exit, label %while.cond.i162

add_child.exit:                                   ; preds = %while.cond.i162
  store ptr %18, ptr %p.0.i160, align 8, !tbaa !5
  br label %while.cond36.backedge

while.end64:                                      ; preds = %while.cond36.backedge, %while.cond36.preheader
  %srcpos65 = getelementptr inbounds %struct.node, ptr %old_node, i64 0, i32 13
  %27 = load ptr, ptr %srcpos65, align 8, !tbaa !27
  %srcpos66 = getelementptr inbounds %struct.node, ptr %new_node, i64 0, i32 13
  %28 = load ptr, ptr %srcpos66, align 8, !tbaa !27
  %call67 = tail call ptr @srcpos_extend(ptr noundef %27, ptr noundef %28) #27
  store ptr %call67, ptr %srcpos65, align 8, !tbaa !27
  tail call void @free(ptr noundef nonnull %new_node) #27
  ret ptr %old_node
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @delete_property_by_name(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %name) local_unnamed_addr #9 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.07 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not8 = icmp eq ptr %prop.07, null
  br i1 %tobool.not8, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %entry
  %prop.09 = phi ptr [ %prop.0, %if.end ], [ %prop.07, %entry ]
  %name1 = getelementptr inbounds %struct.property, ptr %prop.09, i64 0, i32 1
  %0 = load ptr, ptr %name1, align 8, !tbaa !15
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %name) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8 1, ptr %prop.09, align 8, !tbaa !22
  %labels.i = getelementptr inbounds %struct.property, ptr %prop.09, i64 0, i32 4
  %label.06.i.i = load ptr, ptr %labels.i, align 8, !tbaa !5
  %tobool.not7.i.i = icmp eq ptr %label.06.i.i, null
  br i1 %tobool.not7.i.i, label %cleanup, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.then
  %label.08.i.i = phi ptr [ %label.0.i.i, %for.inc.i.i ], [ %label.06.i.i, %if.then ]
  %1 = load i8, ptr %label.08.i.i, align 8, !tbaa !12, !range !14
  %tobool1.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  store i8 1, ptr %label.08.i.i, align 8, !tbaa !12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.label, ptr %label.08.i.i, i64 0, i32 2
  %label.0.i.i = load ptr, ptr %next.i.i, align 8, !tbaa !5
  %tobool.not.i.i = icmp eq ptr %label.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup, label %for.body.i.i

if.end:                                           ; preds = %while.body
  %next = getelementptr inbounds %struct.property, ptr %prop.09, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end, %for.inc.i.i, %if.then, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @add_property(ptr nocapture noundef %node, ptr noundef %prop) local_unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 3
  store ptr null, ptr %next, align 8, !tbaa !23
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %p.0 = phi ptr [ %proplist, %entry ], [ %next1, %while.cond ]
  %0 = load ptr, ptr %p.0, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  %next1 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 3
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store ptr %prop, ptr %p.0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @delete_node_by_name(ptr nocapture noundef readonly %parent, ptr nocapture noundef readonly %name) local_unnamed_addr #9 {
entry:
  %children = getelementptr inbounds %struct.node, ptr %parent, i64 0, i32 3
  %node.06 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not7 = icmp eq ptr %node.06, null
  br i1 %tobool.not7, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %entry
  %node.08 = phi ptr [ %node.0, %if.end ], [ %node.06, %entry ]
  %name1 = getelementptr inbounds %struct.node, ptr %node.08, i64 0, i32 1
  %0 = load ptr, ptr %name1, align 8, !tbaa !30
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %name) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  tail call void @delete_node(ptr noundef nonnull %node.08)
  br label %cleanup

if.end:                                           ; preds = %while.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %node.08, i64 0, i32 5
  %node.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.end, %if.then, %entry
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @add_child(ptr noundef %parent, ptr noundef %child) local_unnamed_addr #4 {
entry:
  %next_sibling = getelementptr inbounds %struct.node, ptr %child, i64 0, i32 5
  store ptr null, ptr %next_sibling, align 8, !tbaa !33
  %parent1 = getelementptr inbounds %struct.node, ptr %child, i64 0, i32 4
  store ptr %parent, ptr %parent1, align 8, !tbaa !29
  %children = getelementptr inbounds %struct.node, ptr %parent, i64 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %p.0 = phi ptr [ %children, %entry ], [ %next_sibling2, %while.cond ]
  %0 = load ptr, ptr %p.0, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  %next_sibling2 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 5
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store ptr %child, ptr %p.0, align 8, !tbaa !5
  ret void
}

declare ptr @srcpos_extend(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @add_orphan_node(ptr noundef returned %dt, ptr noundef %new_node, ptr noundef %ref) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.data, align 8
  %name = alloca ptr, align 8
  %tmp = alloca %struct.data, align 8
  %tmp2 = alloca %struct.data, align 8
  %tmp5 = alloca %struct.data, align 8
  %tmp6 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #27
  %0 = load i8, ptr %ref, align 1, !tbaa !34
  %cmp = icmp eq i8 %0, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %tmp, ptr noundef nonnull byval(%struct.data) align 8 %d, i32 noundef 8, ptr noundef nonnull %ref) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp2) #27
  %call = call i64 @strlen(ptr noundef nonnull %ref) #25
  %1 = trunc i64 %call to i32
  %conv3 = add i32 %1, 1
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %tmp2, ptr noundef nonnull byval(%struct.data) align 8 %d, ptr noundef nonnull %ref, i32 noundef %conv3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp2, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp2) #27
  %calloc.i = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp5) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %tmp5, ptr noundef nonnull byval(%struct.data) align 8 %d, i32 noundef 1, ptr noundef nonnull %ref) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp5, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp5) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp6) #27
  call void @data_append_integer(ptr nonnull sret(%struct.data) align 8 %tmp6, ptr noundef nonnull byval(%struct.data) align 8 %d, i64 noundef 4294967295, i32 noundef 32) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp6, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp6) #27
  %calloc.i21 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i22 = icmp eq ptr %calloc.i21, null
  br i1 %tobool.not.i.i22, label %if.then.i.i23, label %if.end

if.then.i.i23:                                    ; preds = %if.else
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

if.end:                                           ; preds = %if.else, %if.then
  %calloc.i21.sink40 = phi ptr [ %calloc.i, %if.then ], [ %calloc.i21, %if.else ]
  %.str.4.sink = phi ptr [ @.str.3, %if.then ], [ @.str.4, %if.else ]
  %name1.i24 = getelementptr inbounds %struct.property, ptr %calloc.i21.sink40, i64 0, i32 1
  store ptr %.str.4.sink, ptr %name1.i24, align 8, !tbaa !15
  %val2.i25 = getelementptr inbounds %struct.property, ptr %calloc.i21.sink40, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2.i25, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false)
  %call3.i26 = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos4.i27 = getelementptr inbounds %struct.property, ptr %calloc.i21.sink40, i64 0, i32 5
  store ptr %call3.i26, ptr %srcpos4.i27, align 8, !tbaa !21
  %2 = load i32, ptr @add_orphan_node.next_orphan_fragment, align 4, !tbaa !20
  %inc = add i32 %2, 1
  store i32 %inc, ptr @add_orphan_node.next_orphan_fragment, align 4, !tbaa !20
  %call8 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, i32 noundef %2) #27
  %name1.i29 = getelementptr inbounds %struct.node, ptr %new_node, i64 0, i32 1
  %3 = load ptr, ptr %name1.i29, align 8, !tbaa !30
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %name_node.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @__PRETTY_FUNCTION__.name_node) #26
  unreachable

name_node.exit:                                   ; preds = %if.end
  store ptr @.str.6, ptr %name1.i29, align 8, !tbaa !30
  %calloc.i30 = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %tobool.not.i.i31 = icmp eq ptr %calloc.i30, null
  br i1 %tobool.not.i.i31, label %if.then.i.i32, label %while.body.i.i

if.then.i.i32:                                    ; preds = %name_node.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

while.body.i.i:                                   ; preds = %while.body.i.i, %name_node.exit
  %p.09.i.i = phi ptr [ %4, %while.body.i.i ], [ %calloc.i21.sink40, %name_node.exit ]
  %head.08.i.i = phi ptr [ %p.09.i.i, %while.body.i.i ], [ null, %name_node.exit ]
  %next1.i.i = getelementptr inbounds %struct.property, ptr %p.09.i.i, i64 0, i32 3
  %4 = load ptr, ptr %next1.i.i, align 8, !tbaa !23
  store ptr %head.08.i.i, ptr %next1.i.i, align 8, !tbaa !23
  %tobool.not.i17.i = icmp eq ptr %4, null
  br i1 %tobool.not.i17.i, label %reverse_properties.exit.i, label %while.body.i.i

reverse_properties.exit.i:                        ; preds = %while.body.i.i
  %proplist2.i = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 2
  store ptr %p.09.i.i, ptr %proplist2.i, align 8, !tbaa !24
  %children3.i = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 3
  store ptr %new_node, ptr %children3.i, align 8, !tbaa !26
  %call4.i = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos5.i = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 13
  store ptr %call4.i, ptr %srcpos5.i, align 8, !tbaa !27
  %tobool.not19.i = icmp eq ptr %new_node, null
  br i1 %tobool.not19.i, label %name_node.exit36, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %reverse_properties.exit.i
  %child.020.i = phi ptr [ %child.0.i, %for.inc.i ], [ %new_node, %reverse_properties.exit.i ]
  %5 = load i8, ptr %child.020.i, align 8, !tbaa !28, !range !14
  %tobool7.not.i = icmp eq i8 %5, 0
  br i1 %tobool7.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %parent.i = getelementptr inbounds %struct.node, ptr %child.020.i, i64 0, i32 4
  store ptr %calloc.i30, ptr %parent.i, align 8, !tbaa !29
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next_sibling.i = getelementptr inbounds %struct.node, ptr %child.020.i, i64 0, i32 5
  %child.0.i = load ptr, ptr %next_sibling.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %child.0.i, null
  br i1 %tobool.not.i, label %name_node.exit36, label %for.body.i

name_node.exit36:                                 ; preds = %for.inc.i, %reverse_properties.exit.i
  %name1.i33 = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 1
  %6 = load ptr, ptr %name, align 8, !tbaa !5
  store ptr %6, ptr %name1.i33, align 8, !tbaa !30
  %next_sibling.i37 = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 5
  store ptr null, ptr %next_sibling.i37, align 8, !tbaa !33
  %parent1.i = getelementptr inbounds %struct.node, ptr %calloc.i30, i64 0, i32 4
  store ptr %dt, ptr %parent1.i, align 8, !tbaa !29
  %children.i = getelementptr inbounds %struct.node, ptr %dt, i64 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %name_node.exit36
  %p.0.i = phi ptr [ %children.i, %name_node.exit36 ], [ %next_sibling2.i, %while.cond.i ]
  %7 = load ptr, ptr %p.0.i, align 8, !tbaa !5
  %tobool.not.i38 = icmp eq ptr %7, null
  %next_sibling2.i = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 5
  br i1 %tobool.not.i38, label %add_child.exit, label %while.cond.i

add_child.exit:                                   ; preds = %while.cond.i
  store ptr %calloc.i30, ptr %p.0.i, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #27
  ret ptr %dt
}

declare void @data_add_marker(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @data_append_data(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare void @data_append_integer(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_node(ptr noundef returned %first, ptr noundef %list) local_unnamed_addr #0 {
entry:
  %next_sibling = getelementptr inbounds %struct.node, ptr %first, i64 0, i32 5
  %0 = load ptr, ptr %next_sibling, align 8, !tbaa !33
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 260, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_node) #26
  unreachable

if.end:                                           ; preds = %entry
  store ptr %list, ptr %next_sibling, align 8, !tbaa !33
  ret ptr %first
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @delete_property(ptr nocapture noundef %prop) local_unnamed_addr #4 {
entry:
  store i8 1, ptr %prop, align 8, !tbaa !22
  %labels = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 4
  %label.06.i = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not7.i = icmp eq ptr %label.06.i, null
  br i1 %tobool.not7.i, label %delete_labels.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %label.08.i = phi ptr [ %label.0.i, %for.inc.i ], [ %label.06.i, %entry ]
  %0 = load i8, ptr %label.08.i, align 8, !tbaa !12, !range !14
  %tobool1.not.i = icmp eq i8 %0, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  store i8 1, ptr %label.08.i, align 8, !tbaa !12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.label, ptr %label.08.i, i64 0, i32 2
  %label.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %label.0.i, null
  br i1 %tobool.not.i, label %delete_labels.exit, label %for.body.i

delete_labels.exit:                               ; preds = %for.inc.i, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @delete_node(ptr nocapture noundef %node) local_unnamed_addr #11 {
entry:
  store i8 1, ptr %node, align 8, !tbaa !28
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.021 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not22 = icmp eq ptr %child.021, null
  br i1 %tobool.not22, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %child.023 = phi ptr [ %child.0, %for.inc ], [ %child.021, %entry ]
  %0 = load i8, ptr %child.023, align 8, !tbaa !28, !range !14
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @delete_node(ptr noundef nonnull %child.023)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.023, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.025 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool4.not26 = icmp eq ptr %prop.025, null
  br i1 %tobool4.not26, label %for.end11, label %for.body5

for.body5:                                        ; preds = %for.inc10, %for.end
  %prop.027 = phi ptr [ %prop.0, %for.inc10 ], [ %prop.025, %for.end ]
  %1 = load i8, ptr %prop.027, align 8, !tbaa !22, !range !14
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.then8, label %for.inc10

if.then8:                                         ; preds = %for.body5
  store i8 1, ptr %prop.027, align 8, !tbaa !22
  %labels.i = getelementptr inbounds %struct.property, ptr %prop.027, i64 0, i32 4
  %label.06.i.i = load ptr, ptr %labels.i, align 8, !tbaa !5
  %tobool.not7.i.i = icmp eq ptr %label.06.i.i, null
  br i1 %tobool.not7.i.i, label %for.inc10, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.then8
  %label.08.i.i = phi ptr [ %label.0.i.i, %for.inc.i.i ], [ %label.06.i.i, %if.then8 ]
  %2 = load i8, ptr %label.08.i.i, align 8, !tbaa !12, !range !14
  %tobool1.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  store i8 1, ptr %label.08.i.i, align 8, !tbaa !12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i
  %next.i.i = getelementptr inbounds %struct.label, ptr %label.08.i.i, i64 0, i32 2
  %label.0.i.i = load ptr, ptr %next.i.i, align 8, !tbaa !5
  %tobool.not.i.i = icmp eq ptr %label.0.i.i, null
  br i1 %tobool.not.i.i, label %for.inc10, label %for.body.i.i

for.inc10:                                        ; preds = %for.inc.i.i, %if.then8, %for.body5
  %next = getelementptr inbounds %struct.property, ptr %prop.027, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool4.not = icmp eq ptr %prop.0, null
  br i1 %tobool4.not, label %for.end11, label %for.body5

for.end11:                                        ; preds = %for.inc10, %for.end
  %labels = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 11
  %label.06.i = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not7.i = icmp eq ptr %label.06.i, null
  br i1 %tobool.not7.i, label %delete_labels.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.end11
  %label.08.i = phi ptr [ %label.0.i, %for.inc.i ], [ %label.06.i, %for.end11 ]
  %3 = load i8, ptr %label.08.i, align 8, !tbaa !12, !range !14
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  store i8 1, ptr %label.08.i, align 8, !tbaa !12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.label, ptr %label.08.i, i64 0, i32 2
  %label.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %label.0.i, null
  br i1 %tobool.not.i, label %delete_labels.exit, label %for.body.i

delete_labels.exit:                               ; preds = %for.inc.i, %for.end11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @append_to_property(ptr nocapture noundef %node, ptr noundef %name, ptr noundef %data, i32 noundef %len, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.data, align 8
  %tmp = alloca %struct.data, align 8
  %tmp1 = alloca %struct.data, align 8
  %.compoundliteral = alloca %struct.data, align 8
  %tmp6 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #27
  %proplist.i = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.08.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not9.i = icmp eq ptr %prop.08.i, null
  br i1 %tobool.not9.i, label %if.else, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %prop.010.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.08.i, %entry ]
  %0 = load i8, ptr %prop.010.i, align 8, !tbaa !22, !range !14
  %tobool1.not.i = icmp eq i8 %0, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 1
  %1 = load ptr, ptr %name.i, align 8, !tbaa !15
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %name) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.else, label %for.body.i

if.then:                                          ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #27
  %val = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 2
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %tmp, ptr noundef nonnull byval(%struct.data) align 8 %val, i32 noundef %type, ptr noundef %name) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp1) #27
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %tmp1, ptr noundef nonnull byval(%struct.data) align 8 %d, ptr noundef %data, i32 noundef %len) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp1, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp1) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false), !tbaa.struct !19
  br label %if.end

if.else:                                          ; preds = %for.inc.i, %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.compoundliteral, i8 0, i64 24, i1 false)
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %d, ptr noundef nonnull byval(%struct.data) align 8 %.compoundliteral, i32 noundef %type, ptr noundef %name) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp6) #27
  call void @data_append_data(ptr nonnull sret(%struct.data) align 8 %tmp6, ptr noundef nonnull byval(%struct.data) align 8 %d, ptr noundef %data, i32 noundef %len) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp6, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp6) #27
  %calloc.i = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %build_property.exit

if.then.i.i:                                      ; preds = %if.else
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

build_property.exit:                              ; preds = %if.else
  %name1.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 1
  store ptr %name, ptr %name1.i, align 8, !tbaa !15
  %val2.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2.i, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false)
  %call3.i = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos4.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 5
  store ptr %call3.i, ptr %srcpos4.i, align 8, !tbaa !21
  %next.i19 = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 3
  store ptr null, ptr %next.i19, align 8, !tbaa !23
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %build_property.exit
  %p.0.i = phi ptr [ %proplist.i, %build_property.exit ], [ %next1.i, %while.cond.i ]
  %2 = load ptr, ptr %p.0.i, align 8, !tbaa !5
  %tobool.not.i21 = icmp eq ptr %2, null
  %next1.i = getelementptr inbounds %struct.property, ptr %2, i64 0, i32 3
  br i1 %tobool.not.i21, label %add_property.exit, label %while.cond.i

add_property.exit:                                ; preds = %while.cond.i
  store ptr %calloc.i, ptr %p.0.i, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %add_property.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #27
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_property(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %propname) local_unnamed_addr #12 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.08 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not9 = icmp eq ptr %prop.08, null
  br i1 %tobool.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %prop.010 = phi ptr [ %prop.0, %for.inc ], [ %prop.08, %entry ]
  %0 = load i8, ptr %prop.010, align 8, !tbaa !22, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.property, ptr %prop.010, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !15
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %propname) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.010, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then, %entry
  %prop.0.lcssa = phi ptr [ null, %entry ], [ null, %for.inc ], [ %prop.010, %if.then ]
  ret ptr %prop.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_reserve_entry(i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %tobool.not.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  store i64 %address, ptr %calloc, align 8, !tbaa !35
  %size2 = getelementptr inbounds %struct.reserve_info, ptr %calloc, i64 0, i32 1
  store i64 %size, ptr %size2, align 8, !tbaa !38
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chain_reserve_entry(ptr noundef returned %first, ptr noundef %list) local_unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.reserve_info, ptr %first, i64 0, i32 2
  %0 = load ptr, ptr %next, align 8, !tbaa !39
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef nonnull @__PRETTY_FUNCTION__.chain_reserve_entry) #26
  unreachable

if.end:                                           ; preds = %entry
  store ptr %list, ptr %next, align 8, !tbaa !39
  ret ptr %first
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @add_reserve_entry(ptr noundef %list, ptr noundef %new) local_unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.reserve_info, ptr %new, i64 0, i32 2
  store ptr null, ptr %next, align 8, !tbaa !39
  %tobool.not = icmp eq ptr %list, null
  br i1 %tobool.not, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %last.0 = phi ptr [ %0, %for.cond ], [ %list, %entry ]
  %next1 = getelementptr inbounds %struct.reserve_info, ptr %last.0, i64 0, i32 2
  %0 = load ptr, ptr %next1, align 8, !tbaa !39
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %next1.le = getelementptr inbounds %struct.reserve_info, ptr %last.0, i64 0, i32 2
  store ptr %new, ptr %next1.le, align 8, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi ptr [ %list, %for.end ], [ %new, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @build_dt_info(i32 noundef %dtsflags, ptr noundef %reservelist, ptr noundef %tree, i32 noundef %boot_cpuid_phys) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #28
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

xmalloc.exit:                                     ; preds = %entry
  store i32 %dtsflags, ptr %call.i, align 8, !tbaa !40
  %reservelist2 = getelementptr inbounds %struct.dt_info, ptr %call.i, i64 0, i32 1
  store ptr %reservelist, ptr %reservelist2, align 8, !tbaa !42
  %dt = getelementptr inbounds %struct.dt_info, ptr %call.i, i64 0, i32 3
  store ptr %tree, ptr %dt, align 8, !tbaa !43
  %boot_cpuid_phys3 = getelementptr inbounds %struct.dt_info, ptr %call.i, i64 0, i32 2
  store i32 %boot_cpuid_phys, ptr %boot_cpuid_phys3, align 8, !tbaa !44
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local nonnull ptr @get_unitname(ptr nocapture noundef readonly %node) local_unnamed_addr #13 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !30
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %1 = load i32, ptr %basenamelen, align 8, !tbaa !45
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !34
  %cmp = icmp eq i8 %2, 0
  %add.ptr4 = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %retval.0 = select i1 %cmp, ptr @.str.8, ptr %add.ptr4
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @propval_cell(ptr nocapture noundef readonly %prop) local_unnamed_addr #0 {
entry:
  %val = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2
  %0 = load i32, ptr %val, align 8, !tbaa !46
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 437, ptr noundef nonnull @__PRETTY_FUNCTION__.propval_cell) #26
  unreachable

if.end:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2, i32 1
  %1 = load ptr, ptr %val3, align 8, !tbaa !47
  %2 = load i32, ptr %1, align 4, !tbaa !20
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %2) #27
  ret i32 %rev.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @propval_cell_n(ptr nocapture noundef readonly %prop, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %val = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2
  %0 = load i32, ptr %val, align 8, !tbaa !46
  %1 = lshr i32 %0, 2
  %cmp.not = icmp ult i32 %1, %n
  br i1 %cmp.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 443, ptr noundef nonnull @__PRETTY_FUNCTION__.propval_cell_n) #26
  unreachable

if.end:                                           ; preds = %entry
  %conv1 = zext i32 %n to i64
  %val4 = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val4, align 8, !tbaa !47
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %conv1
  %3 = load i32, ptr %add.ptr, align 4, !tbaa !20
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %3) #27
  ret i32 %rev.i
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_property_by_label(ptr noundef %tree, ptr nocapture noundef readonly %label, ptr nocapture noundef writeonly %node) local_unnamed_addr #9 {
entry:
  store ptr %tree, ptr %node, align 8, !tbaa !5
  %proplist = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 2
  %prop.054 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not55 = icmp eq ptr %prop.054, null
  br i1 %tobool.not55, label %for.end14, label %for.body

for.body:                                         ; preds = %for.inc12, %entry
  %prop.056 = phi ptr [ %prop.0, %for.inc12 ], [ %prop.054, %entry ]
  %0 = load i8, ptr %prop.056, align 8, !tbaa !22, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc12

if.then:                                          ; preds = %for.body
  %labels = getelementptr inbounds %struct.property, ptr %prop.056, i64 0, i32 4
  %l.050 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool3.not51 = icmp eq ptr %l.050, null
  br i1 %tobool3.not51, label %for.inc12, label %for.body4

for.body4:                                        ; preds = %for.inc, %if.then
  %l.052 = phi ptr [ %l.0, %for.inc ], [ %l.050, %if.then ]
  %1 = load i8, ptr %l.052, align 8, !tbaa !12, !range !14
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body4
  %label8 = getelementptr inbounds %struct.label, ptr %l.052, i64 0, i32 1
  %2 = load ptr, ptr %label8, align 8, !tbaa !9
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %label) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup28, label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body4
  %next = getelementptr inbounds %struct.label, ptr %l.052, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %l.0, null
  br i1 %tobool3.not, label %for.inc12, label %for.body4

for.inc12:                                        ; preds = %for.inc, %if.then, %for.body
  %next13 = getelementptr inbounds %struct.property, ptr %prop.056, i64 0, i32 3
  %prop.0 = load ptr, ptr %next13, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end14, label %for.body

for.end14:                                        ; preds = %for.inc12, %entry
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %c.059 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool16.not60 = icmp eq ptr %c.059, null
  br i1 %tobool16.not60, label %for.end27, label %for.body17

for.body17:                                       ; preds = %for.inc26, %for.end14
  %c.061 = phi ptr [ %c.0, %for.inc26 ], [ %c.059, %for.end14 ]
  %3 = load i8, ptr %c.061, align 8, !tbaa !28, !range !14
  %tobool19.not = icmp eq i8 %3, 0
  br i1 %tobool19.not, label %if.then20, label %for.inc26

if.then20:                                        ; preds = %for.body17
  %call21 = tail call ptr @get_property_by_label(ptr noundef nonnull %c.061, ptr noundef %label, ptr noundef nonnull %node)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.inc26, label %cleanup28

for.inc26:                                        ; preds = %if.then20, %for.body17
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.061, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool16.not = icmp eq ptr %c.0, null
  br i1 %tobool16.not, label %for.end27, label %for.body17

for.end27:                                        ; preds = %for.inc26, %for.end14
  store ptr null, ptr %node, align 8, !tbaa !5
  br label %cleanup28

cleanup28:                                        ; preds = %for.end27, %if.then20, %if.then7
  %retval.3 = phi ptr [ null, %for.end27 ], [ %call21, %if.then20 ], [ %prop.056, %if.then7 ]
  ret ptr %retval.3
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_marker_label(ptr noundef %tree, ptr nocapture noundef readonly %label, ptr nocapture noundef writeonly %node, ptr nocapture noundef writeonly %prop) local_unnamed_addr #9 {
entry:
  store ptr %tree, ptr %node, align 8, !tbaa !5
  %proplist = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 2
  %p.054 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not55 = icmp eq ptr %p.054, null
  br i1 %tobool.not55, label %for.end12, label %for.body

for.body:                                         ; preds = %for.inc10, %entry
  %p.056 = phi ptr [ %p.0, %for.inc10 ], [ %p.054, %entry ]
  %0 = load i8, ptr %p.056, align 8, !tbaa !22, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc10

if.then:                                          ; preds = %for.body
  store ptr %p.056, ptr %prop, align 8, !tbaa !5
  %markers = getelementptr inbounds %struct.property, ptr %p.056, i64 0, i32 2, i32 2
  %m.050 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool3.not51 = icmp eq ptr %m.050, null
  br i1 %tobool3.not51, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.inc, %if.then
  %m.052 = phi ptr [ %m.0, %for.inc ], [ %m.050, %if.then ]
  %1 = load i32, ptr %m.052, align 8, !tbaa !48
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body4
  %ref = getelementptr inbounds %struct.marker, ptr %m.052, i64 0, i32 2
  %2 = load ptr, ptr %ref, align 8, !tbaa !50
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %label) #25
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body4
  %next = getelementptr inbounds %struct.marker, ptr %m.052, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %m.0, null
  br i1 %tobool3.not, label %for.inc10, label %for.body4

for.inc10:                                        ; preds = %for.inc, %if.then, %for.body
  %next11 = getelementptr inbounds %struct.property, ptr %p.056, i64 0, i32 3
  %p.0 = load ptr, ptr %next11, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %for.end12, label %for.body

for.end12:                                        ; preds = %for.inc10, %entry
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %c.058 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool14.not59 = icmp eq ptr %c.058, null
  br i1 %tobool14.not59, label %for.end25, label %for.body15

for.body15:                                       ; preds = %for.inc24, %for.end12
  %c.060 = phi ptr [ %c.0, %for.inc24 ], [ %c.058, %for.end12 ]
  %3 = load i8, ptr %c.060, align 8, !tbaa !28, !range !14
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.then18, label %for.inc24

if.then18:                                        ; preds = %for.body15
  %call19 = tail call ptr @get_marker_label(ptr noundef nonnull %c.060, ptr noundef %label, ptr noundef nonnull %node, ptr noundef %prop)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %for.inc24, label %cleanup

for.inc24:                                        ; preds = %if.then18, %for.body15
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.060, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool14.not = icmp eq ptr %c.0, null
  br i1 %tobool14.not, label %for.end25, label %for.body15

for.end25:                                        ; preds = %for.inc24, %for.end12
  store ptr null, ptr %prop, align 8, !tbaa !5
  store ptr null, ptr %node, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %if.then18, %if.then5
  %retval.0 = phi ptr [ null, %for.end25 ], [ %call19, %if.then18 ], [ %m.052, %if.then5 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_subnode(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %nodename) local_unnamed_addr #12 {
entry:
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.08 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not9 = icmp eq ptr %child.08, null
  br i1 %tobool.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %child.010 = phi ptr [ %child.0, %for.inc ], [ %child.08, %entry ]
  %0 = load i8, ptr %child.010, align 8, !tbaa !28, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.node, ptr %child.010, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !30
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %nodename) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.010, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then, %entry
  %child.0.lcssa = phi ptr [ null, %entry ], [ null, %for.inc ], [ %child.010, %if.then ]
  ret ptr %child.0.lcssa
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @get_node_by_path(ptr noundef readonly %tree, ptr noundef %path) local_unnamed_addr #12 {
entry:
  %tobool.not68 = icmp eq ptr %path, null
  br i1 %tobool.not68, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22, %entry
  %path.tr70 = phi ptr [ %add.ptr, %if.then22 ], [ %path, %entry ]
  %tree.tr69 = phi ptr [ %child.063, %if.then22 ], [ %tree, %entry ]
  %0 = load i8, ptr %path.tr70, align 1, !tbaa !34
  switch i8 %0, label %while.end [
    i8 0, label %if.then
    i8 47, label %while.body
  ]

if.then:                                          ; preds = %lor.lhs.false, %entry
  %tree.tr.lcssa = phi ptr [ %tree, %entry ], [ %tree.tr69, %lor.lhs.false ]
  %1 = load i8, ptr %tree.tr.lcssa, align 8, !tbaa !28, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  %tree. = select i1 %tobool2.not, ptr %tree.tr.lcssa, ptr null
  br label %cleanup

while.body:                                       ; preds = %while.body, %lor.lhs.false
  %path.addr.060 = phi ptr [ %incdec.ptr, %while.body ], [ %path.tr70, %lor.lhs.false ]
  %incdec.ptr = getelementptr inbounds i8, ptr %path.addr.060, i64 1
  %.pr = load i8, ptr %incdec.ptr, align 1, !tbaa !34
  %cmp = icmp eq i8 %.pr, 47
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %lor.lhs.false
  %path.addr.0.lcssa = phi ptr [ %path.tr70, %lor.lhs.false ], [ %incdec.ptr, %while.body ]
  %call = tail call ptr @strchr(ptr noundef nonnull %path.addr.0.lcssa, i32 noundef 47) #25
  %children = getelementptr inbounds %struct.node, ptr %tree.tr69, i64 0, i32 3
  %child.061 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool6.not62 = icmp eq ptr %child.061, null
  br i1 %tobool6.not62, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %while.end
  %tobool10.not = icmp eq ptr %call, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %path.addr.0.lcssa to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %child.063 = phi ptr [ %child.061, %for.body.lr.ph ], [ %child.0, %for.inc ]
  %2 = load i8, ptr %child.063, align 8, !tbaa !28, !range !14
  %tobool8.not = icmp eq i8 %2, 0
  br i1 %tobool8.not, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %name26 = getelementptr inbounds %struct.node, ptr %child.063, i64 0, i32 1
  %3 = load ptr, ptr %name26, align 8, !tbaa !30
  br i1 %tobool10.not, label %land.lhs.true25.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then9
  %call11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %cmp12 = icmp eq i64 %call11, %sub.ptr.sub
  br i1 %cmp12, label %land.lhs.true14, label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %bcmp = tail call i32 @bcmp(ptr nonnull %path.addr.0.lcssa, ptr %3, i64 %sub.ptr.sub)
  %cmp20 = icmp eq i32 %bcmp, 0
  br i1 %cmp20, label %if.then22, label %for.inc

if.then22:                                        ; preds = %land.lhs.true14
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 1
  br label %lor.lhs.false

land.lhs.true25.critedge:                         ; preds = %if.then9
  %call27 = tail call i32 @strcmp(ptr noundef nonnull %path.addr.0.lcssa, ptr noundef nonnull dereferenceable(1) %3) #25
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %cleanup, label %for.inc

for.inc:                                          ; preds = %land.lhs.true25.critedge, %land.lhs.true14, %land.lhs.true, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.063, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool6.not = icmp eq ptr %child.0, null
  br i1 %tobool6.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %land.lhs.true25.critedge, %while.end, %if.then
  %retval.0 = phi ptr [ %tree., %if.then ], [ %child.063, %land.lhs.true25.critedge ], [ null, %for.inc ], [ null, %while.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_label(ptr noundef readonly %tree, ptr noundef %label) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %char0 = load i8, ptr %label, align 1
  %cmp.not = icmp eq i8 %char0, 0
  br i1 %cmp.not, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 543, ptr noundef nonnull @__PRETTY_FUNCTION__.get_node_by_label) #26
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %labels = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 11
  %l.038 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool1.not39 = icmp eq ptr %l.038, null
  br i1 %tobool1.not39, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %l.040 = phi ptr [ %l.0, %for.inc ], [ %l.038, %if.end ]
  %0 = load i8, ptr %l.040, align 8, !tbaa !12, !range !14
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %label4 = getelementptr inbounds %struct.label, ptr %l.040, i64 0, i32 1
  %1 = load ptr, ptr %label4, align 8, !tbaa !9
  %call5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull %label) #25
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body
  %next = getelementptr inbounds %struct.label, ptr %l.040, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool1.not = icmp eq ptr %l.0, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %child.042 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool11.not43 = icmp eq ptr %child.042, null
  br i1 %tobool11.not43, label %cleanup, label %for.body12

for.body12:                                       ; preds = %for.inc21, %for.end
  %child.044 = phi ptr [ %child.0, %for.inc21 ], [ %child.042, %for.end ]
  %2 = load i8, ptr %child.044, align 8, !tbaa !28, !range !14
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %tobool14.not, label %if.then15, label %for.inc21

if.then15:                                        ; preds = %for.body12
  %call16 = tail call ptr @get_node_by_label(ptr noundef nonnull %child.044, ptr noundef nonnull %label)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.inc21, label %cleanup

for.inc21:                                        ; preds = %if.then15, %for.body12
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.044, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool11.not = icmp eq ptr %child.0, null
  br i1 %tobool11.not, label %cleanup, label %for.body12

cleanup:                                          ; preds = %for.inc21, %if.then15, %for.end, %if.then3
  %retval.0 = phi ptr [ null, %for.end ], [ %call16, %if.then15 ], [ null, %for.inc21 ], [ %tree, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_phandle(ptr noundef readonly %tree, i32 noundef %phandle) local_unnamed_addr #0 {
entry:
  %0 = add i32 %phandle, -1
  %1 = icmp ult i32 %0, -2
  br i1 %1, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @generate_fixups, align 4, !tbaa !20
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 563, ptr noundef nonnull @__PRETTY_FUNCTION__.get_node_by_phandle) #26
  unreachable

if.end2:                                          ; preds = %entry
  %phandle3 = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 8
  %3 = load i32, ptr %phandle3, align 4, !tbaa !51
  %cmp = icmp eq i32 %3, %phandle
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end2
  %4 = load i8, ptr %tree, align 8, !tbaa !28, !range !14
  %tobool5.not = icmp eq i8 %4, 0
  %tree. = select i1 %tobool5.not, ptr %tree, ptr null
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %child.028 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool9.not29 = icmp eq ptr %child.028, null
  br i1 %tobool9.not29, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %if.end8
  %child.030 = phi ptr [ %child.0, %for.inc ], [ %child.028, %if.end8 ]
  %5 = load i8, ptr %child.030, align 8, !tbaa !28, !range !14
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  %call13 = tail call ptr @get_node_by_phandle(ptr noundef nonnull %child.030, i32 noundef %phandle)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.then12, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.030, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool9.not = icmp eq ptr %child.0, null
  br i1 %tobool9.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then12, %if.end8, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %tree., %if.then4 ], [ null, %if.end8 ], [ %call13, %if.then12 ], [ null, %for.inc ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_node_by_ref(ptr noundef %tree, ptr noundef %ref) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ref, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %0 = load i8, ptr %ref, align 1, !tbaa !34
  %cmp1 = icmp eq i8 %0, 47
  br i1 %cmp1, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %call4 = tail call ptr @get_node_by_path(ptr noundef %tree, ptr noundef nonnull %ref)
  br label %return

if.else5:                                         ; preds = %if.else
  %call6 = tail call ptr @get_node_by_label(ptr noundef %tree, ptr noundef nonnull %ref)
  br label %return

return:                                           ; preds = %if.else5, %if.then3, %entry
  %retval.0 = phi ptr [ %call4, %if.then3 ], [ %call6, %if.else5 ], [ %tree, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_node_phandle(ptr noundef %root, ptr nocapture noundef %node) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.data, align 8
  %tmp = alloca %struct.data, align 8
  %tmp4 = alloca %struct.data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, i8 0, i64 24, i1 false)
  %phandle = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 8
  %0 = load i32, ptr %phandle, align 4, !tbaa !51
  %1 = add i32 %0, -1
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %3 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %call267 = tail call ptr @get_node_by_phandle(ptr noundef %root, i32 noundef %3)
  %tobool.not68 = icmp eq ptr %call267, null
  br i1 %tobool.not68, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %4 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %inc = add i32 %4, 1
  store i32 %inc, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  %call2 = tail call ptr @get_node_by_phandle(ptr noundef %root, i32 noundef %inc)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %5 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  store i32 %5, ptr %phandle, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #27
  call void @data_add_marker(ptr nonnull sret(%struct.data) align 8 %tmp, ptr noundef nonnull byval(%struct.data) align 8 %d, i32 noundef 6, ptr noundef null) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp4) #27
  %6 = load i32, ptr @get_node_phandle.phandle, align 4, !tbaa !20
  call void @data_append_cell(ptr nonnull sret(%struct.data) align 8 %tmp4, ptr noundef nonnull byval(%struct.data) align 8 %d, i32 noundef %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %d, ptr noundef nonnull align 8 dereferenceable(24) %tmp4, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp4) #27
  %proplist.i = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.08.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not9.i = icmp eq ptr %prop.08.i, null
  br i1 %tobool.not9.i, label %land.lhs.true, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %while.end
  %prop.010.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.08.i, %while.end ]
  %7 = load i8, ptr %prop.010.i, align 8, !tbaa !22, !range !14
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 1
  %8 = load ptr, ptr %name.i, align 8, !tbaa !15
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(14) @.str.14) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end10, label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %land.lhs.true, label %for.body.i

land.lhs.true:                                    ; preds = %for.inc.i, %while.end
  %9 = load i32, ptr @phandle_format, align 4, !tbaa !20
  %and = and i32 %9, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %calloc.i = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %build_property.exit

if.then.i.i:                                      ; preds = %if.then8
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

build_property.exit:                              ; preds = %if.then8
  %name1.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 1
  store ptr @.str.14, ptr %name1.i, align 8, !tbaa !15
  %val2.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2.i, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false)
  %call3.i = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos4.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 5
  store ptr %call3.i, ptr %srcpos4.i, align 8, !tbaa !21
  %next.i28 = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 3
  store ptr null, ptr %next.i28, align 8, !tbaa !23
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %build_property.exit
  %p.0.i = phi ptr [ %proplist.i, %build_property.exit ], [ %next1.i, %while.cond.i ]
  %10 = load ptr, ptr %p.0.i, align 8, !tbaa !5
  %tobool.not.i30 = icmp eq ptr %10, null
  %next1.i = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  br i1 %tobool.not.i30, label %add_property.exit, label %while.cond.i

add_property.exit:                                ; preds = %while.cond.i
  store ptr %calloc.i, ptr %p.0.i, align 8, !tbaa !5
  %prop.08.i32.pre = load ptr, ptr %proplist.i, align 8, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %add_property.exit, %land.lhs.true, %if.then.i
  %prop.08.i32 = phi ptr [ %prop.08.i32.pre, %add_property.exit ], [ %prop.08.i, %land.lhs.true ], [ %prop.08.i, %if.then.i ]
  %tobool.not9.i33 = icmp eq ptr %prop.08.i32, null
  br i1 %tobool.not9.i33, label %land.lhs.true13, label %for.body.i36

for.body.i36:                                     ; preds = %for.inc.i44, %if.end10
  %prop.010.i34 = phi ptr [ %prop.0.i42, %for.inc.i44 ], [ %prop.08.i32, %if.end10 ]
  %11 = load i8, ptr %prop.010.i34, align 8, !tbaa !22, !range !14
  %tobool1.not.i35 = icmp eq i8 %11, 0
  br i1 %tobool1.not.i35, label %if.then.i40, label %for.inc.i44

if.then.i40:                                      ; preds = %for.body.i36
  %name.i37 = getelementptr inbounds %struct.property, ptr %prop.010.i34, i64 0, i32 1
  %12 = load ptr, ptr %name.i37, align 8, !tbaa !15
  %call.i38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(8) @.str.15) #25
  %cmp.i39 = icmp eq i32 %call.i38, 0
  br i1 %cmp.i39, label %cleanup, label %for.inc.i44

for.inc.i44:                                      ; preds = %if.then.i40, %for.body.i36
  %next.i41 = getelementptr inbounds %struct.property, ptr %prop.010.i34, i64 0, i32 3
  %prop.0.i42 = load ptr, ptr %next.i41, align 8, !tbaa !5
  %tobool.not.i43 = icmp eq ptr %prop.0.i42, null
  br i1 %tobool.not.i43, label %land.lhs.true13, label %for.body.i36

land.lhs.true13:                                  ; preds = %for.inc.i44, %if.end10
  %13 = load i32, ptr @phandle_format, align 4, !tbaa !20
  %and14 = and i32 %13, 2
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %calloc.i48 = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i49 = icmp eq ptr %calloc.i48, null
  br i1 %tobool.not.i.i49, label %if.then.i.i50, label %build_property.exit55

if.then.i.i50:                                    ; preds = %if.then16
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

build_property.exit55:                            ; preds = %if.then16
  %name1.i51 = getelementptr inbounds %struct.property, ptr %calloc.i48, i64 0, i32 1
  store ptr @.str.15, ptr %name1.i51, align 8, !tbaa !15
  %val2.i52 = getelementptr inbounds %struct.property, ptr %calloc.i48, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2.i52, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false)
  %call3.i53 = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos4.i54 = getelementptr inbounds %struct.property, ptr %calloc.i48, i64 0, i32 5
  store ptr %call3.i53, ptr %srcpos4.i54, align 8, !tbaa !21
  %next.i56 = getelementptr inbounds %struct.property, ptr %calloc.i48, i64 0, i32 3
  store ptr null, ptr %next.i56, align 8, !tbaa !23
  br label %while.cond.i61

while.cond.i61:                                   ; preds = %while.cond.i61, %build_property.exit55
  %p.0.i58 = phi ptr [ %proplist.i, %build_property.exit55 ], [ %next1.i60, %while.cond.i61 ]
  %14 = load ptr, ptr %p.0.i58, align 8, !tbaa !5
  %tobool.not.i59 = icmp eq ptr %14, null
  %next1.i60 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 3
  br i1 %tobool.not.i59, label %add_property.exit62, label %while.cond.i61

add_property.exit62:                              ; preds = %while.cond.i61
  store ptr %calloc.i48, ptr %p.0.i58, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %add_property.exit62, %land.lhs.true13, %if.then.i40, %entry
  %retval.0 = load i32, ptr %phandle, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #27
  ret i32 %retval.0
}

declare void @data_append_cell(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @guess_boot_cpuid(ptr noundef readonly %tree) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @get_node_by_path(ptr noundef %tree, ptr noundef nonnull @.str.16)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.node, ptr %call, i64 0, i32 3
  %0 = load ptr, ptr %children, align 8, !tbaa !26
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %proplist.i = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %prop.08.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not9.i = icmp eq ptr %prop.08.i, null
  br i1 %tobool.not9.i, label %cleanup, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end3
  %prop.010.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.08.i, %if.end3 ]
  %1 = load i8, ptr %prop.010.i, align 8, !tbaa !22, !range !14
  %tobool1.not.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 1
  %2 = load ptr, ptr %name.i, align 8, !tbaa !15
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.17) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %lor.lhs.false, label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %cleanup, label %for.body.i

lor.lhs.false:                                    ; preds = %if.then.i
  %val = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 2
  %3 = load i32, ptr %val, align 8, !tbaa !46
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %propval_cell.exit, label %cleanup

propval_cell.exit:                                ; preds = %lor.lhs.false
  %val3.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %val3.i, align 8, !tbaa !47
  %5 = load i32, ptr %4, align 4, !tbaa !20
  %rev.i.i = tail call i32 @llvm.bswap.i32(i32 %5) #27
  br label %cleanup

cleanup:                                          ; preds = %propval_cell.exit, %lor.lhs.false, %for.inc.i, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ %rev.i.i, %propval_cell.exit ], [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end3 ], [ 0, %for.inc.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @sort_tree(ptr nocapture noundef %dti) local_unnamed_addr #0 {
entry:
  %reservelist.i = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 1
  %ri.052.i = load ptr, ptr %reservelist.i, align 8, !tbaa !5
  %tobool.not53.i = icmp eq ptr %ri.052.i, null
  br i1 %tobool.not53.i, label %sort_reserve_entries.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %ri.055.i = phi ptr [ %ri.0.i, %for.body.i ], [ %ri.052.i, %entry ]
  %n.054.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %inc.i = add nuw nsw i32 %n.054.i, 1
  %next.i = getelementptr inbounds %struct.reserve_info, ptr %ri.055.i, i64 0, i32 2
  %ri.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %ri.0.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %conv.i = zext i32 %inc.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %mul.i) #28
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body4.i

if.then.i.i:                                      ; preds = %if.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

for.body4.i:                                      ; preds = %for.body4.i, %if.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.i ], [ 0, %if.end.i ]
  %ri.159.i = phi ptr [ %ri.1.i, %for.body4.i ], [ %ri.052.i, %if.end.i ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.i
  store ptr %ri.159.i, ptr %arrayidx.i, align 8, !tbaa !5
  %next7.i = getelementptr inbounds %struct.reserve_info, ptr %ri.159.i, i64 0, i32 2
  %ri.1.i = load ptr, ptr %next7.i, align 8, !tbaa !5
  %tobool3.not.i = icmp eq ptr %ri.1.i, null
  br i1 %tobool3.not.i, label %for.end8.i, label %for.body4.i

for.end8.i:                                       ; preds = %for.body4.i
  tail call void @qsort(ptr noundef nonnull %call.i.i, i64 noundef %conv.i, i64 noundef 8, ptr noundef nonnull @cmp_reserve_info) #27
  %0 = load ptr, ptr %call.i.i, align 8, !tbaa !5
  store ptr %0, ptr %reservelist.i, align 8, !tbaa !42
  %cmp1360.not.i = icmp eq i32 %n.054.i, 0
  br i1 %cmp1360.not.i, label %for.end23.i, label %for.body15.preheader.i

for.body15.preheader.i:                           ; preds = %for.end8.i
  %wide.trip.count.i = zext i32 %n.054.i to i64
  %arrayidx17.i2 = getelementptr inbounds ptr, ptr %call.i.i, i64 1
  %1 = load ptr, ptr %arrayidx17.i2, align 8, !tbaa !5
  %next20.i3 = getelementptr inbounds %struct.reserve_info, ptr %0, i64 0, i32 2
  store ptr %1, ptr %next20.i3, align 8, !tbaa !39
  %exitcond.not.i4 = icmp eq i32 %n.054.i, 1
  br i1 %exitcond.not.i4, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.preheader

for.body15.for.body15_crit_edge.i.preheader:      ; preds = %for.body15.preheader.i
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %for.end23.i.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i.preheader.new

for.body15.for.body15_crit_edge.i.preheader.new:  ; preds = %for.body15.for.body15_crit_edge.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %for.body15.for.body15_crit_edge.i

for.body15.for.body15_crit_edge.i:                ; preds = %for.body15.for.body15_crit_edge.i, %for.body15.for.body15_crit_edge.i.preheader.new
  %arrayidx17.i6 = phi ptr [ %arrayidx17.i2, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %arrayidx17.i.3, %for.body15.for.body15_crit_edge.i ]
  %indvars.iv.next65.i5 = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %indvars.iv.next65.i.3, %for.body15.for.body15_crit_edge.i ]
  %niter = phi i64 [ 0, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %niter.next.3, %for.body15.for.body15_crit_edge.i ]
  %.pre.i = load ptr, ptr %arrayidx17.i6, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv.next65.i5, 1
  %arrayidx17.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i
  %5 = load ptr, ptr %arrayidx17.i, align 8, !tbaa !5
  %next20.i = getelementptr inbounds %struct.reserve_info, ptr %.pre.i, i64 0, i32 2
  store ptr %5, ptr %next20.i, align 8, !tbaa !39
  %.pre.i.1 = load ptr, ptr %arrayidx17.i, align 8, !tbaa !5
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv.next65.i5, 2
  %arrayidx17.i.1 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.1
  %6 = load ptr, ptr %arrayidx17.i.1, align 8, !tbaa !5
  %next20.i.1 = getelementptr inbounds %struct.reserve_info, ptr %.pre.i.1, i64 0, i32 2
  store ptr %6, ptr %next20.i.1, align 8, !tbaa !39
  %.pre.i.2 = load ptr, ptr %arrayidx17.i.1, align 8, !tbaa !5
  %indvars.iv.next65.i.2 = add nuw nsw i64 %indvars.iv.next65.i5, 3
  %arrayidx17.i.2 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.2
  %7 = load ptr, ptr %arrayidx17.i.2, align 8, !tbaa !5
  %next20.i.2 = getelementptr inbounds %struct.reserve_info, ptr %.pre.i.2, i64 0, i32 2
  store ptr %7, ptr %next20.i.2, align 8, !tbaa !39
  %.pre.i.3 = load ptr, ptr %arrayidx17.i.2, align 8, !tbaa !5
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv.next65.i5, 4
  %arrayidx17.i.3 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.3
  %8 = load ptr, ptr %arrayidx17.i.3, align 8, !tbaa !5
  %next20.i.3 = getelementptr inbounds %struct.reserve_info, ptr %.pre.i.3, i64 0, i32 2
  store ptr %8, ptr %next20.i.3, align 8, !tbaa !39
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end23.i.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i

for.end23.i.loopexit.unr-lcssa:                   ; preds = %for.body15.for.body15_crit_edge.i, %for.body15.for.body15_crit_edge.i.preheader
  %arrayidx17.i6.unr = phi ptr [ %arrayidx17.i2, %for.body15.for.body15_crit_edge.i.preheader ], [ %arrayidx17.i.3, %for.body15.for.body15_crit_edge.i ]
  %indvars.iv.next65.i5.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader ], [ %indvars.iv.next65.i.3, %for.body15.for.body15_crit_edge.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.epil

for.body15.for.body15_crit_edge.i.epil:           ; preds = %for.body15.for.body15_crit_edge.i.epil, %for.end23.i.loopexit.unr-lcssa
  %arrayidx17.i6.epil = phi ptr [ %arrayidx17.i.epil, %for.body15.for.body15_crit_edge.i.epil ], [ %arrayidx17.i6.unr, %for.end23.i.loopexit.unr-lcssa ]
  %indvars.iv.next65.i5.epil = phi i64 [ %indvars.iv.next65.i.epil, %for.body15.for.body15_crit_edge.i.epil ], [ %indvars.iv.next65.i5.unr, %for.end23.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body15.for.body15_crit_edge.i.epil ], [ 0, %for.end23.i.loopexit.unr-lcssa ]
  %.pre.i.epil = load ptr, ptr %arrayidx17.i6.epil, align 8, !tbaa !5
  %indvars.iv.next65.i.epil = add nuw nsw i64 %indvars.iv.next65.i5.epil, 1
  %arrayidx17.i.epil = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.epil
  %9 = load ptr, ptr %arrayidx17.i.epil, align 8, !tbaa !5
  %next20.i.epil = getelementptr inbounds %struct.reserve_info, ptr %.pre.i.epil, i64 0, i32 2
  store ptr %9, ptr %next20.i.epil, align 8, !tbaa !39
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.epil, !llvm.loop !52

for.end23.i:                                      ; preds = %for.body15.for.body15_crit_edge.i.epil, %for.end23.i.loopexit.unr-lcssa, %for.body15.preheader.i, %for.end8.i
  %idxprom25.i.pre-phi = phi i64 [ 1, %for.body15.preheader.i ], [ 0, %for.end8.i ], [ %wide.trip.count.i, %for.body15.for.body15_crit_edge.i.epil ], [ %wide.trip.count.i, %for.end23.i.loopexit.unr-lcssa ]
  %arrayidx26.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %idxprom25.i.pre-phi
  %10 = load ptr, ptr %arrayidx26.i, align 8, !tbaa !5
  %next27.i = getelementptr inbounds %struct.reserve_info, ptr %10, i64 0, i32 2
  store ptr null, ptr %next27.i, align 8, !tbaa !39
  tail call void @free(ptr noundef nonnull %call.i.i) #27
  br label %sort_reserve_entries.exit

sort_reserve_entries.exit:                        ; preds = %for.end23.i, %entry
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %11 = load ptr, ptr %dt, align 8, !tbaa !43
  tail call fastcc void @sort_node(ptr noundef %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sort_node(ptr nocapture noundef %node) unnamed_addr #0 {
entry:
  %proplist.i = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.052.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not53.i = icmp eq ptr %prop.052.i, null
  br i1 %tobool.not53.i, label %sort_properties.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %prop.055.i = phi ptr [ %prop.0.i, %for.body.i ], [ %prop.052.i, %entry ]
  %n.054.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %inc.i = add nuw nsw i32 %n.054.i, 1
  %next.i = getelementptr inbounds %struct.property, ptr %prop.055.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %conv.i = zext i32 %inc.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %mul.i) #28
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body4.i

if.then.i.i:                                      ; preds = %if.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

for.body4.i:                                      ; preds = %for.body4.i, %if.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.i ], [ 0, %if.end.i ]
  %prop.159.i = phi ptr [ %prop.1.i, %for.body4.i ], [ %prop.052.i, %if.end.i ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.i
  store ptr %prop.159.i, ptr %arrayidx.i, align 8, !tbaa !5
  %next7.i = getelementptr inbounds %struct.property, ptr %prop.159.i, i64 0, i32 3
  %prop.1.i = load ptr, ptr %next7.i, align 8, !tbaa !5
  %tobool3.not.i = icmp eq ptr %prop.1.i, null
  br i1 %tobool3.not.i, label %for.end8.i, label %for.body4.i

for.end8.i:                                       ; preds = %for.body4.i
  tail call void @qsort(ptr noundef nonnull %call.i.i, i64 noundef %conv.i, i64 noundef 8, ptr noundef nonnull @cmp_prop) #27
  %0 = load ptr, ptr %call.i.i, align 8, !tbaa !5
  store ptr %0, ptr %proplist.i, align 8, !tbaa !24
  %cmp1360.not.i = icmp eq i32 %n.054.i, 0
  br i1 %cmp1360.not.i, label %for.end23.i, label %for.body15.preheader.i

for.body15.preheader.i:                           ; preds = %for.end8.i
  %wide.trip.count.i = zext i32 %n.054.i to i64
  %arrayidx17.i36 = getelementptr inbounds ptr, ptr %call.i.i, i64 1
  %1 = load ptr, ptr %arrayidx17.i36, align 8, !tbaa !5
  %next20.i37 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 3
  store ptr %1, ptr %next20.i37, align 8, !tbaa !23
  %exitcond.not.i38 = icmp eq i32 %n.054.i, 1
  br i1 %exitcond.not.i38, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.preheader

for.body15.for.body15_crit_edge.i.preheader:      ; preds = %for.body15.preheader.i
  %2 = add nsw i64 %wide.trip.count.i, -1
  %3 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %2, 3
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %for.end23.i.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i.preheader.new

for.body15.for.body15_crit_edge.i.preheader.new:  ; preds = %for.body15.for.body15_crit_edge.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %for.body15.for.body15_crit_edge.i

for.body15.for.body15_crit_edge.i:                ; preds = %for.body15.for.body15_crit_edge.i, %for.body15.for.body15_crit_edge.i.preheader.new
  %arrayidx17.i40 = phi ptr [ %arrayidx17.i36, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %arrayidx17.i.3, %for.body15.for.body15_crit_edge.i ]
  %indvars.iv.next65.i39 = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %indvars.iv.next65.i.3, %for.body15.for.body15_crit_edge.i ]
  %niter = phi i64 [ 0, %for.body15.for.body15_crit_edge.i.preheader.new ], [ %niter.next.3, %for.body15.for.body15_crit_edge.i ]
  %.pre.i = load ptr, ptr %arrayidx17.i40, align 8, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv.next65.i39, 1
  %arrayidx17.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i
  %5 = load ptr, ptr %arrayidx17.i, align 8, !tbaa !5
  %next20.i = getelementptr inbounds %struct.property, ptr %.pre.i, i64 0, i32 3
  store ptr %5, ptr %next20.i, align 8, !tbaa !23
  %.pre.i.1 = load ptr, ptr %arrayidx17.i, align 8, !tbaa !5
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv.next65.i39, 2
  %arrayidx17.i.1 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.1
  %6 = load ptr, ptr %arrayidx17.i.1, align 8, !tbaa !5
  %next20.i.1 = getelementptr inbounds %struct.property, ptr %.pre.i.1, i64 0, i32 3
  store ptr %6, ptr %next20.i.1, align 8, !tbaa !23
  %.pre.i.2 = load ptr, ptr %arrayidx17.i.1, align 8, !tbaa !5
  %indvars.iv.next65.i.2 = add nuw nsw i64 %indvars.iv.next65.i39, 3
  %arrayidx17.i.2 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.2
  %7 = load ptr, ptr %arrayidx17.i.2, align 8, !tbaa !5
  %next20.i.2 = getelementptr inbounds %struct.property, ptr %.pre.i.2, i64 0, i32 3
  store ptr %7, ptr %next20.i.2, align 8, !tbaa !23
  %.pre.i.3 = load ptr, ptr %arrayidx17.i.2, align 8, !tbaa !5
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv.next65.i39, 4
  %arrayidx17.i.3 = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.3
  %8 = load ptr, ptr %arrayidx17.i.3, align 8, !tbaa !5
  %next20.i.3 = getelementptr inbounds %struct.property, ptr %.pre.i.3, i64 0, i32 3
  store ptr %8, ptr %next20.i.3, align 8, !tbaa !23
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end23.i.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i

for.end23.i.loopexit.unr-lcssa:                   ; preds = %for.body15.for.body15_crit_edge.i, %for.body15.for.body15_crit_edge.i.preheader
  %arrayidx17.i40.unr = phi ptr [ %arrayidx17.i36, %for.body15.for.body15_crit_edge.i.preheader ], [ %arrayidx17.i.3, %for.body15.for.body15_crit_edge.i ]
  %indvars.iv.next65.i39.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader ], [ %indvars.iv.next65.i.3, %for.body15.for.body15_crit_edge.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.epil

for.body15.for.body15_crit_edge.i.epil:           ; preds = %for.body15.for.body15_crit_edge.i.epil, %for.end23.i.loopexit.unr-lcssa
  %arrayidx17.i40.epil = phi ptr [ %arrayidx17.i.epil, %for.body15.for.body15_crit_edge.i.epil ], [ %arrayidx17.i40.unr, %for.end23.i.loopexit.unr-lcssa ]
  %indvars.iv.next65.i39.epil = phi i64 [ %indvars.iv.next65.i.epil, %for.body15.for.body15_crit_edge.i.epil ], [ %indvars.iv.next65.i39.unr, %for.end23.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body15.for.body15_crit_edge.i.epil ], [ 0, %for.end23.i.loopexit.unr-lcssa ]
  %.pre.i.epil = load ptr, ptr %arrayidx17.i40.epil, align 8, !tbaa !5
  %indvars.iv.next65.i.epil = add nuw nsw i64 %indvars.iv.next65.i39.epil, 1
  %arrayidx17.i.epil = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next65.i.epil
  %9 = load ptr, ptr %arrayidx17.i.epil, align 8, !tbaa !5
  %next20.i.epil = getelementptr inbounds %struct.property, ptr %.pre.i.epil, i64 0, i32 3
  store ptr %9, ptr %next20.i.epil, align 8, !tbaa !23
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end23.i, label %for.body15.for.body15_crit_edge.i.epil, !llvm.loop !54

for.end23.i:                                      ; preds = %for.body15.for.body15_crit_edge.i.epil, %for.end23.i.loopexit.unr-lcssa, %for.body15.preheader.i, %for.end8.i
  %idxprom25.i.pre-phi = phi i64 [ 1, %for.body15.preheader.i ], [ 0, %for.end8.i ], [ %wide.trip.count.i, %for.body15.for.body15_crit_edge.i.epil ], [ %wide.trip.count.i, %for.end23.i.loopexit.unr-lcssa ]
  %arrayidx26.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %idxprom25.i.pre-phi
  %10 = load ptr, ptr %arrayidx26.i, align 8, !tbaa !5
  %next27.i = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  store ptr null, ptr %next27.i, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %call.i.i) #27
  br label %sort_properties.exit

sort_properties.exit:                             ; preds = %for.end23.i, %entry
  %children.i = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %subnode.052.i = load ptr, ptr %children.i, align 8, !tbaa !5
  %tobool.not53.i5 = icmp eq ptr %subnode.052.i, null
  br i1 %tobool.not53.i5, label %for.end, label %for.body.i9

for.body.i9:                                      ; preds = %for.body.i9, %sort_properties.exit
  %subnode.055.i = phi ptr [ %subnode.0.i, %for.body.i9 ], [ %subnode.052.i, %sort_properties.exit ]
  %n.054.i6 = phi i32 [ %inc.i7, %for.body.i9 ], [ 0, %sort_properties.exit ]
  %inc.i7 = add nuw nsw i32 %n.054.i6, 1
  %next_sibling.i = getelementptr inbounds %struct.node, ptr %subnode.055.i, i64 0, i32 5
  %subnode.0.i = load ptr, ptr %next_sibling.i, align 8, !tbaa !5
  %tobool.not.i8 = icmp eq ptr %subnode.0.i, null
  br i1 %tobool.not.i8, label %if.end.i14, label %for.body.i9

if.end.i14:                                       ; preds = %for.body.i9
  %conv.i10 = zext i32 %inc.i7 to i64
  %mul.i11 = shl nuw nsw i64 %conv.i10, 3
  %call.i.i12 = tail call noalias ptr @malloc(i64 noundef %mul.i11) #28
  %tobool.not.i.i13 = icmp eq ptr %call.i.i12, null
  br i1 %tobool.not.i.i13, label %if.then.i.i16, label %for.body4.i21

if.then.i.i16:                                    ; preds = %if.end.i14
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

for.body4.i21:                                    ; preds = %for.body4.i21, %if.end.i14
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %for.body4.i21 ], [ 0, %if.end.i14 ]
  %subnode.159.i = phi ptr [ %subnode.1.i, %for.body4.i21 ], [ %subnode.052.i, %if.end.i14 ]
  %indvars.iv.next.i18 = add nuw i64 %indvars.iv.i17, 1
  %arrayidx.i19 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.i17
  store ptr %subnode.159.i, ptr %arrayidx.i19, align 8, !tbaa !5
  %next_sibling7.i = getelementptr inbounds %struct.node, ptr %subnode.159.i, i64 0, i32 5
  %subnode.1.i = load ptr, ptr %next_sibling7.i, align 8, !tbaa !5
  %tobool3.not.i20 = icmp eq ptr %subnode.1.i, null
  br i1 %tobool3.not.i20, label %for.end8.i23, label %for.body4.i21

for.end8.i23:                                     ; preds = %for.body4.i21
  tail call void @qsort(ptr noundef nonnull %call.i.i12, i64 noundef %conv.i10, i64 noundef 8, ptr noundef nonnull @cmp_subnode) #27
  %11 = load ptr, ptr %call.i.i12, align 8, !tbaa !5
  store ptr %11, ptr %children.i, align 8, !tbaa !26
  %cmp1360.not.i22 = icmp eq i32 %n.054.i6, 0
  br i1 %cmp1360.not.i22, label %sort_subnodes.exit, label %for.body15.preheader.i25

for.body15.preheader.i25:                         ; preds = %for.end8.i23
  %wide.trip.count.i24 = zext i32 %n.054.i6 to i64
  %arrayidx17.i2841 = getelementptr inbounds ptr, ptr %call.i.i12, i64 1
  %12 = load ptr, ptr %arrayidx17.i2841, align 8, !tbaa !5
  %next_sibling20.i42 = getelementptr inbounds %struct.node, ptr %11, i64 0, i32 5
  store ptr %12, ptr %next_sibling20.i42, align 8, !tbaa !33
  %exitcond.not.i2943 = icmp eq i32 %n.054.i6, 1
  br i1 %exitcond.not.i2943, label %sort_subnodes.exit, label %for.body15.for.body15_crit_edge.i32.preheader

for.body15.for.body15_crit_edge.i32.preheader:    ; preds = %for.body15.preheader.i25
  %13 = add nsw i64 %wide.trip.count.i24, -1
  %14 = add nsw i64 %wide.trip.count.i24, -2
  %xtraiter53 = and i64 %13, 3
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %sort_subnodes.exit.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i32.preheader.new

for.body15.for.body15_crit_edge.i32.preheader.new: ; preds = %for.body15.for.body15_crit_edge.i32.preheader
  %unroll_iter56 = and i64 %13, -4
  br label %for.body15.for.body15_crit_edge.i32

for.body15.for.body15_crit_edge.i32:              ; preds = %for.body15.for.body15_crit_edge.i32, %for.body15.for.body15_crit_edge.i32.preheader.new
  %arrayidx17.i2845 = phi ptr [ %arrayidx17.i2841, %for.body15.for.body15_crit_edge.i32.preheader.new ], [ %arrayidx17.i28.3, %for.body15.for.body15_crit_edge.i32 ]
  %indvars.iv.next65.i2744 = phi i64 [ 1, %for.body15.for.body15_crit_edge.i32.preheader.new ], [ %indvars.iv.next65.i27.3, %for.body15.for.body15_crit_edge.i32 ]
  %niter57 = phi i64 [ 0, %for.body15.for.body15_crit_edge.i32.preheader.new ], [ %niter57.next.3, %for.body15.for.body15_crit_edge.i32 ]
  %.pre.i31 = load ptr, ptr %arrayidx17.i2845, align 8, !tbaa !5
  %indvars.iv.next65.i27 = add nuw nsw i64 %indvars.iv.next65.i2744, 1
  %arrayidx17.i28 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.next65.i27
  %16 = load ptr, ptr %arrayidx17.i28, align 8, !tbaa !5
  %next_sibling20.i = getelementptr inbounds %struct.node, ptr %.pre.i31, i64 0, i32 5
  store ptr %16, ptr %next_sibling20.i, align 8, !tbaa !33
  %.pre.i31.1 = load ptr, ptr %arrayidx17.i28, align 8, !tbaa !5
  %indvars.iv.next65.i27.1 = add nuw nsw i64 %indvars.iv.next65.i2744, 2
  %arrayidx17.i28.1 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.next65.i27.1
  %17 = load ptr, ptr %arrayidx17.i28.1, align 8, !tbaa !5
  %next_sibling20.i.1 = getelementptr inbounds %struct.node, ptr %.pre.i31.1, i64 0, i32 5
  store ptr %17, ptr %next_sibling20.i.1, align 8, !tbaa !33
  %.pre.i31.2 = load ptr, ptr %arrayidx17.i28.1, align 8, !tbaa !5
  %indvars.iv.next65.i27.2 = add nuw nsw i64 %indvars.iv.next65.i2744, 3
  %arrayidx17.i28.2 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.next65.i27.2
  %18 = load ptr, ptr %arrayidx17.i28.2, align 8, !tbaa !5
  %next_sibling20.i.2 = getelementptr inbounds %struct.node, ptr %.pre.i31.2, i64 0, i32 5
  store ptr %18, ptr %next_sibling20.i.2, align 8, !tbaa !33
  %.pre.i31.3 = load ptr, ptr %arrayidx17.i28.2, align 8, !tbaa !5
  %indvars.iv.next65.i27.3 = add nuw nsw i64 %indvars.iv.next65.i2744, 4
  %arrayidx17.i28.3 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.next65.i27.3
  %19 = load ptr, ptr %arrayidx17.i28.3, align 8, !tbaa !5
  %next_sibling20.i.3 = getelementptr inbounds %struct.node, ptr %.pre.i31.3, i64 0, i32 5
  store ptr %19, ptr %next_sibling20.i.3, align 8, !tbaa !33
  %niter57.next.3 = add i64 %niter57, 4
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %sort_subnodes.exit.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge.i32

sort_subnodes.exit.loopexit.unr-lcssa:            ; preds = %for.body15.for.body15_crit_edge.i32, %for.body15.for.body15_crit_edge.i32.preheader
  %arrayidx17.i2845.unr = phi ptr [ %arrayidx17.i2841, %for.body15.for.body15_crit_edge.i32.preheader ], [ %arrayidx17.i28.3, %for.body15.for.body15_crit_edge.i32 ]
  %indvars.iv.next65.i2744.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i32.preheader ], [ %indvars.iv.next65.i27.3, %for.body15.for.body15_crit_edge.i32 ]
  %lcmp.mod55.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %sort_subnodes.exit, label %for.body15.for.body15_crit_edge.i32.epil

for.body15.for.body15_crit_edge.i32.epil:         ; preds = %for.body15.for.body15_crit_edge.i32.epil, %sort_subnodes.exit.loopexit.unr-lcssa
  %arrayidx17.i2845.epil = phi ptr [ %arrayidx17.i28.epil, %for.body15.for.body15_crit_edge.i32.epil ], [ %arrayidx17.i2845.unr, %sort_subnodes.exit.loopexit.unr-lcssa ]
  %indvars.iv.next65.i2744.epil = phi i64 [ %indvars.iv.next65.i27.epil, %for.body15.for.body15_crit_edge.i32.epil ], [ %indvars.iv.next65.i2744.unr, %sort_subnodes.exit.loopexit.unr-lcssa ]
  %epil.iter54 = phi i64 [ %epil.iter54.next, %for.body15.for.body15_crit_edge.i32.epil ], [ 0, %sort_subnodes.exit.loopexit.unr-lcssa ]
  %.pre.i31.epil = load ptr, ptr %arrayidx17.i2845.epil, align 8, !tbaa !5
  %indvars.iv.next65.i27.epil = add nuw nsw i64 %indvars.iv.next65.i2744.epil, 1
  %arrayidx17.i28.epil = getelementptr inbounds ptr, ptr %call.i.i12, i64 %indvars.iv.next65.i27.epil
  %20 = load ptr, ptr %arrayidx17.i28.epil, align 8, !tbaa !5
  %next_sibling20.i.epil = getelementptr inbounds %struct.node, ptr %.pre.i31.epil, i64 0, i32 5
  store ptr %20, ptr %next_sibling20.i.epil, align 8, !tbaa !33
  %epil.iter54.next = add i64 %epil.iter54, 1
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %sort_subnodes.exit, label %for.body15.for.body15_crit_edge.i32.epil, !llvm.loop !55

sort_subnodes.exit:                               ; preds = %for.body15.for.body15_crit_edge.i32.epil, %sort_subnodes.exit.loopexit.unr-lcssa, %for.body15.preheader.i25, %for.end8.i23
  %idxprom25.i33.pre-phi = phi i64 [ 1, %for.body15.preheader.i25 ], [ 0, %for.end8.i23 ], [ %wide.trip.count.i24, %for.body15.for.body15_crit_edge.i32.epil ], [ %wide.trip.count.i24, %sort_subnodes.exit.loopexit.unr-lcssa ]
  %arrayidx26.i34 = getelementptr inbounds ptr, ptr %call.i.i12, i64 %idxprom25.i33.pre-phi
  %21 = load ptr, ptr %arrayidx26.i34, align 8, !tbaa !5
  %next_sibling27.i = getelementptr inbounds %struct.node, ptr %21, i64 0, i32 5
  store ptr null, ptr %next_sibling27.i, align 8, !tbaa !33
  tail call void @free(ptr noundef nonnull %call.i.i12) #27
  %c.046.pre = load ptr, ptr %children.i, align 8, !tbaa !5
  %tobool.not47 = icmp eq ptr %c.046.pre, null
  br i1 %tobool.not47, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %sort_subnodes.exit
  %c.048 = phi ptr [ %c.0, %for.body ], [ %c.046.pre, %sort_subnodes.exit ]
  tail call fastcc void @sort_node(ptr noundef nonnull %c.048)
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.048, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %c.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %sort_subnodes.exit, %sort_properties.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_label_tree(ptr nocapture noundef readonly %dti, ptr noundef %name, i1 noundef zeroext %allocph) local_unnamed_addr #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !43
  %call = tail call fastcc zeroext i1 @any_label_tree(ptr noundef %0)
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @build_root_node(ptr noundef %0, ptr noundef %name)
  %1 = load ptr, ptr %dt, align 8, !tbaa !43
  tail call fastcc void @generate_label_tree_internal(ptr noundef nonnull %dti, ptr noundef %call2, ptr noundef %1, i1 noundef zeroext %allocph)
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define internal fastcc zeroext i1 @any_label_tree(ptr nocapture noundef readonly %node) unnamed_addr #14 {
entry:
  %labels = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 11
  %0 = load ptr, ptr %labels, align 8, !tbaa !56
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.01 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool1.not2 = icmp eq ptr %c.01, null
  br i1 %tobool1.not2, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %c.03 = phi ptr [ %c.0, %for.inc ], [ %c.01, %if.end ]
  %1 = load i8, ptr %c.03, align 8, !tbaa !28, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %call = tail call fastcc zeroext i1 @any_label_tree(ptr noundef nonnull %c.03)
  br i1 %call, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.03, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool1.not = icmp eq ptr %c.0, null
  br i1 %tobool1.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then3, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ true, %if.then3 ], [ false, %for.inc ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_label_tree_internal(ptr nocapture noundef readonly %dti, ptr nocapture noundef %an, ptr nocapture noundef %node, i1 noundef zeroext %allocph) unnamed_addr #0 {
entry:
  %agg.tmp = alloca %struct.data, align 8
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !43
  %labels = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 11
  %1 = load ptr, ptr %labels, align 8, !tbaa !56
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end19, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %proplist.i = getelementptr inbounds %struct.node, ptr %an, i64 0, i32 2
  %name = getelementptr inbounds %struct.node, ptr %an, i64 0, i32 1
  %fullpath = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %l.056 = phi ptr [ %1, %for.body.lr.ph ], [ %10, %for.inc ]
  %2 = load i8, ptr %l.056, align 8, !tbaa !12, !range !14
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %label = getelementptr inbounds %struct.label, ptr %l.056, i64 0, i32 1
  %3 = load ptr, ptr %label, align 8, !tbaa !9
  %prop.08.i = load ptr, ptr %proplist.i, align 8, !tbaa !5
  %tobool.not9.i = icmp eq ptr %prop.08.i, null
  br i1 %tobool.not9.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then5
  %prop.010.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.08.i, %if.then5 ]
  %4 = load i8, ptr %prop.010.i, align 8, !tbaa !22, !range !14
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 1
  %5 = load ptr, ptr %name.i, align 8, !tbaa !15
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %3) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then7, label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.010.i, i64 0, i32 3
  %prop.0.i = load ptr, ptr %next.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.end, label %for.body.i

if.then7:                                         ; preds = %if.then.i
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = load ptr, ptr %name, align 8, !tbaa !30
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %7) #29
  br label %for.inc

if.end:                                           ; preds = %for.inc.i, %if.then5
  %8 = load ptr, ptr %fullpath, align 8, !tbaa !57
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #25
  %conv = trunc i64 %call12 to i32
  call void @data_copy_escape_string(ptr nonnull sret(%struct.data) align 8 %agg.tmp, ptr noundef %8, i32 noundef %conv) #27
  %calloc.i = call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) #27
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %build_property.exit

if.then.i.i:                                      ; preds = %if.end
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

build_property.exit:                              ; preds = %if.end
  %name1.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 1
  store ptr %3, ptr %name1.i, align 8, !tbaa !15
  %val2.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val2.i, ptr noundef nonnull align 8 dereferenceable(24) %agg.tmp, i64 24, i1 false)
  %call3.i = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos4.i = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 5
  store ptr %call3.i, ptr %srcpos4.i, align 8, !tbaa !21
  %next.i50 = getelementptr inbounds %struct.property, ptr %calloc.i, i64 0, i32 3
  store ptr null, ptr %next.i50, align 8, !tbaa !23
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %build_property.exit
  %p.0.i = phi ptr [ %proplist.i, %build_property.exit ], [ %next1.i, %while.cond.i ]
  %9 = load ptr, ptr %p.0.i, align 8, !tbaa !5
  %tobool.not.i52 = icmp eq ptr %9, null
  %next1.i = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 3
  br i1 %tobool.not.i52, label %add_property.exit, label %while.cond.i

add_property.exit:                                ; preds = %while.cond.i
  store ptr %calloc.i, ptr %p.0.i, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %add_property.exit, %if.then7, %for.body
  %next = getelementptr inbounds %struct.label, ptr %l.056, i64 0, i32 2
  %10 = load ptr, ptr %next, align 8, !tbaa !13
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %allocph, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.end
  %call17 = call i32 @get_node_phandle(ptr noundef %0, ptr noundef %node)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.057 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool21.not58 = icmp eq ptr %c.057, null
  br i1 %tobool21.not58, label %for.end29, label %for.body22

for.body22:                                       ; preds = %for.inc28, %if.end19
  %c.059 = phi ptr [ %c.0, %for.inc28 ], [ %c.057, %if.end19 ]
  %11 = load i8, ptr %c.059, align 8, !tbaa !28, !range !14
  %tobool24.not = icmp eq i8 %11, 0
  br i1 %tobool24.not, label %if.then25, label %for.inc28

if.then25:                                        ; preds = %for.body22
  call fastcc void @generate_label_tree_internal(ptr noundef %dti, ptr noundef %an, ptr noundef nonnull %c.059, i1 noundef zeroext %allocph)
  br label %for.inc28

for.inc28:                                        ; preds = %if.then25, %for.body22
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.059, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool21.not = icmp eq ptr %c.0, null
  br i1 %tobool21.not, label %for.end29, label %for.body22

for.end29:                                        ; preds = %for.inc28, %if.end19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_root_node(ptr noundef %dt, ptr noundef %name) unnamed_addr #0 {
entry:
  %children.i = getelementptr inbounds %struct.node, ptr %dt, i64 0, i32 3
  %child.08.i = load ptr, ptr %children.i, align 8, !tbaa !5
  %tobool.not9.i = icmp eq ptr %child.08.i, null
  br i1 %tobool.not9.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %child.010.i = phi ptr [ %child.0.i, %for.inc.i ], [ %child.08.i, %entry ]
  %0 = load i8, ptr %child.010.i, align 8, !tbaa !28, !range !14
  %tobool1.not.i = icmp eq i8 %0, 0
  br i1 %tobool1.not.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.node, ptr %child.010.i, i64 0, i32 1
  %1 = load ptr, ptr %name.i, align 8, !tbaa !30
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %name) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end4, label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %next_sibling.i = getelementptr inbounds %struct.node, ptr %child.010.i, i64 0, i32 5
  %child.0.i = load ptr, ptr %next_sibling.i, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %child.0.i, null
  br i1 %tobool.not.i, label %if.then, label %for.body.i

if.then:                                          ; preds = %for.inc.i, %entry
  %calloc.i.i = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %tobool.not.i.i.i = icmp eq ptr %calloc.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %name_node.exit.i

if.then.i.i.i:                                    ; preds = %if.then
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

name_node.exit.i:                                 ; preds = %if.then
  %call4.i.i = tail call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos5.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i, i64 0, i32 13
  store ptr %call4.i.i, ptr %srcpos5.i.i, align 8, !tbaa !27
  %call1.i = tail call ptr @xstrdup(ptr noundef %name) #27
  %name1.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i, i64 0, i32 1
  store ptr %call1.i, ptr %name1.i.i, align 8, !tbaa !30
  %next_sibling.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i, i64 0, i32 5
  store ptr null, ptr %next_sibling.i.i, align 8, !tbaa !33
  %parent1.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i, i64 0, i32 4
  store ptr %dt, ptr %parent1.i.i, align 8, !tbaa !29
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %name_node.exit.i
  %p.0.i.i = phi ptr [ %children.i, %name_node.exit.i ], [ %next_sibling2.i.i, %while.cond.i.i ]
  %2 = load ptr, ptr %p.0.i.i, align 8, !tbaa !5
  %tobool.not.i.i = icmp eq ptr %2, null
  %next_sibling2.i.i = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 5
  br i1 %tobool.not.i.i, label %if.end, label %while.cond.i.i

if.end:                                           ; preds = %while.cond.i.i
  store ptr %calloc.i.i, ptr %p.0.i.i, align 8, !tbaa !5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then.i
  %an.014 = phi ptr [ %calloc.i.i, %if.end ], [ %child.010.i, %if.then.i ]
  ret ptr %an.014
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_fixups_tree(ptr nocapture noundef readonly %dti, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !43
  %call = tail call fastcc zeroext i1 @any_fixup_tree(ptr noundef %dti, ptr noundef %0)
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dt, align 8, !tbaa !43
  %call2 = tail call fastcc ptr @build_root_node(ptr noundef %1, ptr noundef %name)
  %2 = load ptr, ptr %dt, align 8, !tbaa !43
  tail call fastcc void @generate_fixups_tree_internal(ptr noundef nonnull %dti, ptr noundef %call2, ptr noundef %2)
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @any_fixup_tree(ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node) unnamed_addr #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.042 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not43 = icmp eq ptr %prop.042, null
  br i1 %tobool.not43, label %for.end12, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc10, %for.body.lr.ph
  %prop.044 = phi ptr [ %prop.042, %for.body.lr.ph ], [ %prop.0, %for.inc10 ]
  %0 = load i8, ptr %prop.044, align 8, !tbaa !22, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc10

if.then:                                          ; preds = %for.body
  %markers = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 2, i32 2
  %m.039 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool3.not40 = icmp eq ptr %m.039, null
  br i1 %tobool3.not40, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.inc, %if.then
  %m.041 = phi ptr [ %m.0, %for.inc ], [ %m.039, %if.then ]
  %1 = load i32, ptr %m.041, align 8, !tbaa !48
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body4
  %2 = load ptr, ptr %dt, align 8, !tbaa !43
  %ref = getelementptr inbounds %struct.marker, ptr %m.041, i64 0, i32 2
  %3 = load ptr, ptr %ref, align 8, !tbaa !50
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %get_node_by_ref.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then5
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %cmp1.i = icmp eq i8 %4, 47
  br i1 %cmp1.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %call4.i = tail call ptr @get_node_by_path(ptr noundef %2, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

if.else5.i:                                       ; preds = %if.else.i
  %call6.i = tail call ptr @get_node_by_label(ptr noundef %2, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

get_node_by_ref.exit:                             ; preds = %if.else5.i, %if.then3.i, %if.then5
  %retval.0.i = phi ptr [ %call4.i, %if.then3.i ], [ %call6.i, %if.else5.i ], [ %2, %if.then5 ]
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %get_node_by_ref.exit, %for.body4
  %next = getelementptr inbounds %struct.marker, ptr %m.041, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %m.0, null
  br i1 %tobool3.not, label %for.inc10, label %for.body4

for.inc10:                                        ; preds = %for.inc, %if.then, %for.body
  %next11 = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 3
  %prop.0 = load ptr, ptr %next11, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end12, label %for.body

for.end12:                                        ; preds = %for.inc10, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.046 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool14.not47 = icmp eq ptr %c.046, null
  br i1 %tobool14.not47, label %cleanup, label %for.body15

for.body15:                                       ; preds = %for.inc23, %for.end12
  %c.048 = phi ptr [ %c.0, %for.inc23 ], [ %c.046, %for.end12 ]
  %5 = load i8, ptr %c.048, align 8, !tbaa !28, !range !14
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %if.then18, label %for.inc23

if.then18:                                        ; preds = %for.body15
  %call19 = tail call fastcc zeroext i1 @any_fixup_tree(ptr noundef %dti, ptr noundef nonnull %c.048)
  br i1 %call19, label %cleanup, label %for.inc23

for.inc23:                                        ; preds = %if.then18, %for.body15
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.048, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool14.not = icmp eq ptr %c.0, null
  br i1 %tobool14.not, label %cleanup, label %for.body15

cleanup:                                          ; preds = %for.inc23, %if.then18, %for.end12, %get_node_by_ref.exit
  %retval.0 = phi i1 [ false, %for.end12 ], [ true, %if.then18 ], [ false, %for.inc23 ], [ true, %get_node_by_ref.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_fixups_tree_internal(ptr nocapture noundef readonly %dti, ptr nocapture noundef %fn, ptr nocapture noundef readonly %node) unnamed_addr #0 {
entry:
  %entry1.i = alloca ptr, align 8
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !43
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.046 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not47 = icmp eq ptr %prop.046, null
  br i1 %tobool.not47, label %for.end13, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fullpath.i = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc11, %for.body.lr.ph
  %prop.048 = phi ptr [ %prop.046, %for.body.lr.ph ], [ %prop.0, %for.inc11 ]
  %1 = load i8, ptr %prop.048, align 8, !tbaa !22, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then, label %for.inc11

if.then:                                          ; preds = %for.body
  %markers = getelementptr inbounds %struct.property, ptr %prop.048, i64 0, i32 2, i32 2
  %m.042 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool4.not43 = icmp eq ptr %m.042, null
  br i1 %tobool4.not43, label %for.inc11, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %if.then
  %name.i = getelementptr inbounds %struct.property, ptr %prop.048, i64 0, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %for.body5.lr.ph
  %m.044 = phi ptr [ %m.042, %for.body5.lr.ph ], [ %m.0, %for.inc ]
  %2 = load i32, ptr %m.044, align 8, !tbaa !48
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body5
  %ref = getelementptr inbounds %struct.marker, ptr %m.044, i64 0, i32 2
  %3 = load ptr, ptr %ref, align 8, !tbaa !50
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %get_node_by_ref.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then6
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %cmp1.i = icmp eq i8 %4, 47
  br i1 %cmp1.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %call4.i = call ptr @get_node_by_path(ptr noundef %0, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

if.else5.i:                                       ; preds = %if.else.i
  %call6.i = call ptr @get_node_by_label(ptr noundef %0, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

get_node_by_ref.exit:                             ; preds = %if.else5.i, %if.then3.i, %if.then6
  %retval.0.i = phi ptr [ %call4.i, %if.then3.i ], [ %call6.i, %if.else5.i ], [ %0, %if.then6 ]
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %if.then8, label %for.inc

if.then8:                                         ; preds = %get_node_by_ref.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry1.i) #27
  %5 = load i32, ptr %m.044, align 8, !tbaa !48
  %cmp.i39 = icmp eq i32 %5, 1
  br i1 %cmp.i39, label %if.end.i, label %if.else.i40

if.else.i40:                                      ; preds = %if.then8
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 893, ptr noundef nonnull @__PRETTY_FUNCTION__.add_fixup_entry) #26
  unreachable

if.end.i:                                         ; preds = %if.then8
  %6 = load ptr, ptr %fullpath.i, align 8, !tbaa !57
  %call.i41 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 58) #25
  %tobool.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = load ptr, ptr %name.i, align 8, !tbaa !15
  %call2.i = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 58) #25
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %add_fixup_entry.exit, label %if.then4.i

if.then4.i:                                       ; preds = %lor.lhs.false.i, %if.end.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.23) #26
  unreachable

add_fixup_entry.exit:                             ; preds = %lor.lhs.false.i
  %offset.i = getelementptr inbounds %struct.marker, ptr %m.044, i64 0, i32 1
  %8 = load i32, ptr %offset.i, align 4, !tbaa !58
  %call8.i = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %entry1.i, ptr noundef nonnull @.str.24, ptr noundef %6, ptr noundef %7, i32 noundef %8) #27
  %9 = load ptr, ptr %ref, align 8, !tbaa !50
  %10 = load ptr, ptr %entry1.i, align 8, !tbaa !5
  %call9.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #25
  %11 = trunc i64 %call9.i to i32
  %conv.i = add i32 %11, 1
  call void @append_to_property(ptr noundef %fn, ptr noundef %9, ptr noundef %10, i32 noundef %conv.i, i32 noundef 8) #27
  %12 = load ptr, ptr %entry1.i, align 8, !tbaa !5
  call void @free(ptr noundef %12) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry1.i) #27
  br label %for.inc

for.inc:                                          ; preds = %add_fixup_entry.exit, %get_node_by_ref.exit, %for.body5
  %next = getelementptr inbounds %struct.marker, ptr %m.044, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool4.not = icmp eq ptr %m.0, null
  br i1 %tobool4.not, label %for.inc11, label %for.body5

for.inc11:                                        ; preds = %for.inc, %if.then, %for.body
  %next12 = getelementptr inbounds %struct.property, ptr %prop.048, i64 0, i32 3
  %prop.0 = load ptr, ptr %next12, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end13, label %for.body

for.end13:                                        ; preds = %for.inc11, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.051 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool15.not52 = icmp eq ptr %c.051, null
  br i1 %tobool15.not52, label %for.end22, label %for.body16

for.body16:                                       ; preds = %for.inc21, %for.end13
  %c.053 = phi ptr [ %c.0, %for.inc21 ], [ %c.051, %for.end13 ]
  %13 = load i8, ptr %c.053, align 8, !tbaa !28, !range !14
  %tobool18.not = icmp eq i8 %13, 0
  br i1 %tobool18.not, label %if.then19, label %for.inc21

if.then19:                                        ; preds = %for.body16
  call fastcc void @generate_fixups_tree_internal(ptr noundef %dti, ptr noundef %fn, ptr noundef nonnull %c.053)
  br label %for.inc21

for.inc21:                                        ; preds = %if.then19, %for.body16
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.053, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool15.not = icmp eq ptr %c.0, null
  br i1 %tobool15.not, label %for.end22, label %for.body16

for.end22:                                        ; preds = %for.inc21, %for.end13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @generate_local_fixups_tree(ptr nocapture noundef readonly %dti, ptr noundef %name) local_unnamed_addr #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !43
  %call = tail call fastcc zeroext i1 @any_local_fixup_tree(ptr noundef %dti, ptr noundef %0)
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dt, align 8, !tbaa !43
  %call2 = tail call fastcc ptr @build_root_node(ptr noundef %1, ptr noundef %name)
  %2 = load ptr, ptr %dt, align 8, !tbaa !43
  tail call fastcc void @generate_local_fixups_tree_internal(ptr noundef nonnull %dti, ptr noundef %call2, ptr noundef %2)
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @any_local_fixup_tree(ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node) unnamed_addr #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.042 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not43 = icmp eq ptr %prop.042, null
  br i1 %tobool.not43, label %for.end12, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc10, %for.body.lr.ph
  %prop.044 = phi ptr [ %prop.042, %for.body.lr.ph ], [ %prop.0, %for.inc10 ]
  %0 = load i8, ptr %prop.044, align 8, !tbaa !22, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc10

if.then:                                          ; preds = %for.body
  %markers = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 2, i32 2
  %m.039 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool3.not40 = icmp eq ptr %m.039, null
  br i1 %tobool3.not40, label %for.inc10, label %for.body4

for.body4:                                        ; preds = %for.inc, %if.then
  %m.041 = phi ptr [ %m.0, %for.inc ], [ %m.039, %if.then ]
  %1 = load i32, ptr %m.041, align 8, !tbaa !48
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body4
  %2 = load ptr, ptr %dt, align 8, !tbaa !43
  %ref = getelementptr inbounds %struct.marker, ptr %m.041, i64 0, i32 2
  %3 = load ptr, ptr %ref, align 8, !tbaa !50
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %get_node_by_ref.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then5
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %cmp1.i = icmp eq i8 %4, 47
  br i1 %cmp1.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %call4.i = tail call ptr @get_node_by_path(ptr noundef %2, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

if.else5.i:                                       ; preds = %if.else.i
  %call6.i = tail call ptr @get_node_by_label(ptr noundef %2, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

get_node_by_ref.exit:                             ; preds = %if.else5.i, %if.then3.i, %if.then5
  %retval.0.i = phi ptr [ %call4.i, %if.then3.i ], [ %call6.i, %if.else5.i ], [ %2, %if.then5 ]
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %get_node_by_ref.exit, %for.body4
  %next = getelementptr inbounds %struct.marker, ptr %m.041, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %m.0, null
  br i1 %tobool3.not, label %for.inc10, label %for.body4

for.inc10:                                        ; preds = %for.inc, %if.then, %for.body
  %next11 = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 3
  %prop.0 = load ptr, ptr %next11, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end12, label %for.body

for.end12:                                        ; preds = %for.inc10, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.046 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool14.not47 = icmp eq ptr %c.046, null
  br i1 %tobool14.not47, label %cleanup, label %for.body15

for.body15:                                       ; preds = %for.inc23, %for.end12
  %c.048 = phi ptr [ %c.0, %for.inc23 ], [ %c.046, %for.end12 ]
  %5 = load i8, ptr %c.048, align 8, !tbaa !28, !range !14
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %if.then18, label %for.inc23

if.then18:                                        ; preds = %for.body15
  %call19 = tail call fastcc zeroext i1 @any_local_fixup_tree(ptr noundef %dti, ptr noundef nonnull %c.048)
  br i1 %call19, label %cleanup, label %for.inc23

for.inc23:                                        ; preds = %if.then18, %for.body15
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.048, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool14.not = icmp eq ptr %c.0, null
  br i1 %tobool14.not, label %cleanup, label %for.body15

cleanup:                                          ; preds = %for.inc23, %if.then18, %for.end12, %get_node_by_ref.exit
  %retval.0 = phi i1 [ false, %for.end12 ], [ true, %if.then18 ], [ false, %for.inc23 ], [ true, %get_node_by_ref.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_local_fixups_tree_internal(ptr nocapture noundef readonly %dti, ptr noundef %lfn, ptr noundef readonly %node) unnamed_addr #0 {
entry:
  %value_32.i = alloca i32, align 4
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !43
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.045 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not46 = icmp eq ptr %prop.045, null
  br i1 %tobool.not46, label %for.end13, label %for.body

for.body:                                         ; preds = %for.inc11, %entry
  %prop.047 = phi ptr [ %prop.0, %for.inc11 ], [ %prop.045, %entry ]
  %1 = load i8, ptr %prop.047, align 8, !tbaa !22, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then, label %for.inc11

if.then:                                          ; preds = %for.body
  %markers = getelementptr inbounds %struct.property, ptr %prop.047, i64 0, i32 2, i32 2
  %m.041 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool4.not42 = icmp eq ptr %m.041, null
  br i1 %tobool4.not42, label %for.inc11, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %if.then
  %name21.i = getelementptr inbounds %struct.property, ptr %prop.047, i64 0, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %for.body5.lr.ph
  %m.043 = phi ptr [ %m.041, %for.body5.lr.ph ], [ %m.0, %for.inc ]
  %2 = load i32, ptr %m.043, align 8, !tbaa !48
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body5
  %ref = getelementptr inbounds %struct.marker, ptr %m.043, i64 0, i32 2
  %3 = load ptr, ptr %ref, align 8, !tbaa !50
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(2) @.str.13) #25
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %get_node_by_ref.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then6
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %cmp1.i = icmp eq i8 %4, 47
  br i1 %cmp1.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  %call4.i = call ptr @get_node_by_path(ptr noundef %0, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

if.else5.i:                                       ; preds = %if.else.i
  %call6.i = call ptr @get_node_by_label(ptr noundef %0, ptr noundef nonnull %3) #27
  br label %get_node_by_ref.exit

get_node_by_ref.exit:                             ; preds = %if.else5.i, %if.then3.i, %if.then6
  %retval.0.i = phi ptr [ %call4.i, %if.then3.i ], [ %call6.i, %if.else5.i ], [ %0, %if.then6 ]
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %get_node_by_ref.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value_32.i) #27
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then8
  %depth.010.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.then8 ]
  %wn.09.i = phi ptr [ %5, %for.body.i ], [ %node, %if.then8 ]
  %inc.i = add nuw nsw i32 %depth.010.i, 1
  %parent.i = getelementptr inbounds %struct.node, ptr %wn.09.i, i64 0, i32 4
  %5 = load ptr, ptr %parent.i, align 8, !tbaa !29
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %conv.i = zext i32 %inc.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %call.i.i = call noalias ptr @malloc(i64 noundef %mul.i) #28
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body3.i

if.then.i.i:                                      ; preds = %for.end.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

for.cond7.preheader.i:                            ; preds = %for.body3.i
  %cmp14.not.i = icmp eq i32 %depth.010.i, 0
  br i1 %cmp14.not.i, label %add_local_fixup_entry.exit, label %for.body9.i

for.body3.i:                                      ; preds = %for.body3.i, %for.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ %conv.i, %for.end.i ]
  %wn.112.i = phi ptr [ %7, %for.body3.i ], [ %node, %for.end.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %name.i = getelementptr inbounds %struct.node, ptr %wn.112.i, i64 0, i32 1
  %6 = load ptr, ptr %name.i, align 8, !tbaa !30
  %arrayidx.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv.next.i
  store ptr %6, ptr %arrayidx.i, align 8, !tbaa !5
  %parent5.i = getelementptr inbounds %struct.node, ptr %wn.112.i, i64 0, i32 4
  %7 = load ptr, ptr %parent5.i, align 8, !tbaa !29
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %for.cond7.preheader.i, label %for.body3.i

for.body9.i:                                      ; preds = %for.inc17.i, %for.cond7.preheader.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.inc17.i ], [ 1, %for.cond7.preheader.i ]
  %wn.215.i = phi ptr [ %nwn.0.i, %for.inc17.i ], [ %lfn, %for.cond7.preheader.i ]
  %arrayidx11.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %indvars.iv20.i
  %8 = load ptr, ptr %arrayidx11.i, align 8, !tbaa !5
  %children.i.i = getelementptr inbounds %struct.node, ptr %wn.215.i, i64 0, i32 3
  %child.08.i.i = load ptr, ptr %children.i.i, align 8, !tbaa !5
  %tobool.not9.i.i = icmp eq ptr %child.08.i.i, null
  br i1 %tobool.not9.i.i, label %if.then.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body9.i
  %child.010.i.i = phi ptr [ %child.0.i.i, %for.inc.i.i ], [ %child.08.i.i, %for.body9.i ]
  %9 = load i8, ptr %child.010.i.i, align 8, !tbaa !28, !range !14
  %tobool1.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i.i, label %if.then.i2.i, label %for.inc.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  %name.i.i = getelementptr inbounds %struct.node, ptr %child.010.i.i, i64 0, i32 1
  %10 = load ptr, ptr %name.i.i, align 8, !tbaa !30
  %call.i1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %8) #25
  %cmp.i.i = icmp eq i32 %call.i1.i, 0
  br i1 %cmp.i.i, label %for.inc17.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i2.i, %for.body.i.i
  %next_sibling.i.i = getelementptr inbounds %struct.node, ptr %child.010.i.i, i64 0, i32 5
  %child.0.i.i = load ptr, ptr %next_sibling.i.i, align 8, !tbaa !5
  %tobool.not.i3.i = icmp eq ptr %child.0.i.i, null
  br i1 %tobool.not.i3.i, label %if.then.i, label %for.body.i.i

if.then.i:                                        ; preds = %for.inc.i.i, %for.body9.i
  %calloc.i.i.i = call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) #27
  %tobool.not.i.i.i.i = icmp eq ptr %calloc.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %name_node.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.18) #26
  unreachable

name_node.exit.i.i:                               ; preds = %if.then.i
  %call4.i.i.i = call ptr @srcpos_copy(ptr noundef null) #27
  %srcpos5.i.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i.i, i64 0, i32 13
  store ptr %call4.i.i.i, ptr %srcpos5.i.i.i, align 8, !tbaa !27
  %call1.i.i = call ptr @xstrdup(ptr noundef %8) #27
  %name1.i.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i.i, i64 0, i32 1
  store ptr %call1.i.i, ptr %name1.i.i.i, align 8, !tbaa !30
  %next_sibling.i.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i.i, i64 0, i32 5
  store ptr null, ptr %next_sibling.i.i.i, align 8, !tbaa !33
  %parent1.i.i.i = getelementptr inbounds %struct.node, ptr %calloc.i.i.i, i64 0, i32 4
  store ptr %wn.215.i, ptr %parent1.i.i.i, align 8, !tbaa !29
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i, %name_node.exit.i.i
  %p.0.i.i.i = phi ptr [ %children.i.i, %name_node.exit.i.i ], [ %next_sibling2.i.i.i, %while.cond.i.i.i ]
  %11 = load ptr, ptr %p.0.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %next_sibling2.i.i.i = getelementptr inbounds %struct.node, ptr %11, i64 0, i32 5
  br i1 %tobool.not.i.i.i, label %build_and_name_child_node.exit.i, label %while.cond.i.i.i

build_and_name_child_node.exit.i:                 ; preds = %while.cond.i.i.i
  store ptr %calloc.i.i.i, ptr %p.0.i.i.i, align 8, !tbaa !5
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %build_and_name_child_node.exit.i, %if.then.i2.i
  %nwn.0.i = phi ptr [ %calloc.i.i.i, %build_and_name_child_node.exit.i ], [ %child.010.i.i, %if.then.i2.i ]
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next21.i, %conv.i
  br i1 %exitcond.not.i, label %add_local_fixup_entry.exit, label %for.body9.i

add_local_fixup_entry.exit:                       ; preds = %for.inc17.i, %for.cond7.preheader.i
  %wn.2.lcssa.i = phi ptr [ %lfn, %for.cond7.preheader.i ], [ %nwn.0.i, %for.inc17.i ]
  call void @free(ptr noundef %call.i.i) #27
  %offset.i = getelementptr inbounds %struct.marker, ptr %m.043, i64 0, i32 1
  %12 = load i32, ptr %offset.i, align 4, !tbaa !58
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %12) #27
  store i32 %rev.i.i, ptr %value_32.i, align 4, !tbaa !20
  %13 = load ptr, ptr %name21.i, align 8, !tbaa !15
  call void @append_to_property(ptr noundef %wn.2.lcssa.i, ptr noundef %13, ptr noundef nonnull %value_32.i, i32 noundef 4, i32 noundef 6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value_32.i) #27
  br label %for.inc

for.inc:                                          ; preds = %add_local_fixup_entry.exit, %get_node_by_ref.exit, %for.body5
  %next = getelementptr inbounds %struct.marker, ptr %m.043, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool4.not = icmp eq ptr %m.0, null
  br i1 %tobool4.not, label %for.inc11, label %for.body5

for.inc11:                                        ; preds = %for.inc, %if.then, %for.body
  %next12 = getelementptr inbounds %struct.property, ptr %prop.047, i64 0, i32 3
  %prop.0 = load ptr, ptr %next12, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end13, label %for.body

for.end13:                                        ; preds = %for.inc11, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %c.050 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool15.not51 = icmp eq ptr %c.050, null
  br i1 %tobool15.not51, label %for.end22, label %for.body16

for.body16:                                       ; preds = %for.inc21, %for.end13
  %c.052 = phi ptr [ %c.0, %for.inc21 ], [ %c.050, %for.end13 ]
  %14 = load i8, ptr %c.052, align 8, !tbaa !28, !range !14
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.then19, label %for.inc21

if.then19:                                        ; preds = %for.body16
  call fastcc void @generate_local_fixups_tree_internal(ptr noundef %dti, ptr noundef %lfn, ptr noundef nonnull %c.052)
  br label %for.inc21

for.inc21:                                        ; preds = %if.then19, %for.body16
  %next_sibling = getelementptr inbounds %struct.node, ptr %c.052, i64 0, i32 5
  %c.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool15.not = icmp eq ptr %c.0, null
  br i1 %tobool15.not, label %for.end22, label %for.body16

for.end22:                                        ; preds = %for.inc21, %for.end13
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #16 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #27
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %0) #29
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #29
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @cmp_reserve_info(ptr nocapture noundef readonly %ax, ptr nocapture noundef readonly %bx) #13 {
entry:
  %0 = load ptr, ptr %ax, align 8, !tbaa !5
  %1 = load ptr, ptr %bx, align 8, !tbaa !5
  %2 = load i64, ptr %0, align 8, !tbaa !35
  %3 = load i64, ptr %1, align 8, !tbaa !35
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp4 = icmp ugt i64 %2, %3
  br i1 %cmp4, label %cleanup, label %if.else6

if.else6:                                         ; preds = %if.else
  %size = getelementptr inbounds %struct.reserve_info, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %size, align 8, !tbaa !38
  %size7 = getelementptr inbounds %struct.reserve_info, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %size7, align 8, !tbaa !38
  %cmp8 = icmp ult i64 %4, %5
  br i1 %cmp8, label %cleanup, label %if.else10

if.else10:                                        ; preds = %if.else6
  %cmp13 = icmp ugt i64 %4, %5
  %. = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.else6, %if.else, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %if.else ], [ -1, %if.else6 ], [ %., %if.else10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @cmp_prop(ptr nocapture noundef readonly %ax, ptr nocapture noundef readonly %bx) #20 {
entry:
  %0 = load ptr, ptr %ax, align 8, !tbaa !5
  %1 = load ptr, ptr %bx, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !15
  %name1 = getelementptr inbounds %struct.property, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %name1, align 8, !tbaa !15
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #25
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @cmp_subnode(ptr nocapture noundef readonly %ax, ptr nocapture noundef readonly %bx) #20 {
entry:
  %0 = load ptr, ptr %ax, align 8, !tbaa !5
  %1 = load ptr, ptr %bx, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !30
  %name1 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %name1, align 8, !tbaa !30
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #25
  ret i32 %call
}

declare void @data_copy_escape_string(ptr sret(%struct.data) align 8, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"label", !11, i64 0, !6, i64 8, !6, i64 16}
!11 = !{!"_Bool", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{i8 0, i8 2}
!15 = !{!16, !6, i64 8}
!16 = !{!"property", !11, i64 0, !6, i64 8, !17, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!17 = !{!"data", !18, i64 0, !6, i64 8, !6, i64 16}
!18 = !{!"int", !7, i64 0}
!19 = !{i64 0, i64 4, !20, i64 8, i64 8, !5, i64 16, i64 8, !5}
!20 = !{!18, !18, i64 0}
!21 = !{!16, !6, i64 56}
!22 = !{!16, !11, i64 0}
!23 = !{!16, !6, i64 40}
!24 = !{!25, !6, i64 16}
!25 = !{!"node", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !18, i64 56, !18, i64 60, !18, i64 64, !18, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !11, i64 97}
!26 = !{!25, !6, i64 24}
!27 = !{!25, !6, i64 88}
!28 = !{!25, !11, i64 0}
!29 = !{!25, !6, i64 32}
!30 = !{!25, !6, i64 8}
!31 = !{!25, !11, i64 96}
!32 = !{!25, !11, i64 97}
!33 = !{!25, !6, i64 40}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"reserve_info", !37, i64 0, !37, i64 8, !6, i64 16, !6, i64 24}
!37 = !{!"long", !7, i64 0}
!38 = !{!36, !37, i64 8}
!39 = !{!36, !6, i64 16}
!40 = !{!41, !18, i64 0}
!41 = !{!"dt_info", !18, i64 0, !6, i64 8, !18, i64 16, !6, i64 24, !6, i64 32}
!42 = !{!41, !6, i64 8}
!43 = !{!41, !6, i64 24}
!44 = !{!41, !18, i64 16}
!45 = !{!25, !18, i64 56}
!46 = !{!16, !18, i64 16}
!47 = !{!16, !6, i64 24}
!48 = !{!49, !7, i64 0}
!49 = !{!"marker", !7, i64 0, !18, i64 4, !6, i64 8, !6, i64 16}
!50 = !{!49, !6, i64 8}
!51 = !{!25, !18, i64 60}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = !{!25, !6, i64 72}
!57 = !{!25, !6, i64 48}
!58 = !{!49, !18, i64 4}
