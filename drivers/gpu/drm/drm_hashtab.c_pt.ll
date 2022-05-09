; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_hashtab.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_hashtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_open_hash = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.hlist_node = type { ptr, ptr }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Out of memory for hash table\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Key is 0x%08lx, Hashed key is 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"count %d, key: 0x%08lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Available key bit space exhausted\0A\00", [61 x i8] zeroinitializer }, align 32
@drm_ht_find_key_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/drm_hashtab.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 56, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 70, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 73, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 160, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [33 x i8] c"../drivers/gpu/drm/drm_hashtab.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 103, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_create(ptr nocapture noundef writeonly %ht, i32 noundef %order) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %order
  %conv = trunc i32 %order to i8
  %order1 = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  %0 = ptrtoint ptr %order1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %order1, align 4
  %1 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ht, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %order)
  %cmp = icmp ult i32 %order, 11
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 4) #5
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %3, label %if.then.if.then8_crit_edge, label %if.end7.i.i, !prof !21

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end7.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %retval.0.i = select i1 %3, i32 -1, i32 %4
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end7.i.i
  %storemerge = phi ptr [ %call5, %if.else ], [ %call8.i.i, %if.end7.i.i ]
  %5 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %storemerge, ptr %ht, align 4
  %tobool.not = icmp eq ptr %storemerge, null
  br i1 %tobool.not, label %if.end.if.then8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.then.if.then8_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_ht_verbose_list(ptr nocapture noundef readonly %ht, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %order = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  %0 = ptrtoint ptr %order to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %order, align 4
  %conv = zext i8 %1 to i32
  %mul.i.i = mul i32 %key, 1640531527
  %sub.i = sub nsw i32 32, %conv
  %shr.i = lshr i32 %mul.i.i, %sub.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %key, i32 noundef %shr.i) #5
  %2 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ht, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.024 = load ptr, ptr %arrayidx, align 4
  %tobool3.not25 = icmp eq ptr %entry1.024, null
  br i1 %tobool3.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.027 = phi ptr [ %entry1.0, %for.body.for.body_crit_edge ], [ %entry1.024, %entry.for.body_crit_edge ]
  %count.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %count.026, 1
  %key4 = getelementptr inbounds %struct.drm_hash_item, ptr %entry1.027, i32 0, i32 1
  %5 = ptrtoint ptr %key4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %count.026, i32 noundef %6) #5
  %7 = ptrtoint ptr %entry1.027 to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.0 = load ptr, ptr %entry1.027, align 4
  %tobool3.not = icmp eq ptr %entry1.0, null
  br i1 %tobool3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_insert_item(ptr nocapture noundef readonly %ht, ptr noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %key2 = getelementptr inbounds %struct.drm_hash_item, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key2, align 4
  %order = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  %2 = ptrtoint ptr %order to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %order, align 4
  %conv = zext i8 %3 to i32
  %mul.i.i = mul i32 %1, 1640531527
  %sub.i = sub nsw i32 32, %conv
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ht, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cleanup.critedge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.054 = phi ptr [ %11, %if.end11.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %parent.053 = phi ptr [ %entry1.054, %if.end11.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %key5 = getelementptr inbounds %struct.drm_hash_item, ptr %entry1.054, i32 0, i32 1
  %8 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp = icmp eq i32 %9, %1
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp8 = icmp ugt i32 %9, %1
  br i1 %cmp8, label %for.end, label %if.end11

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %entry1.054 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry1.054, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end11.if.then24_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end11.if.then24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

for.end:                                          ; preds = %if.end
  %tobool23.not = icmp eq ptr %parent.053, null
  br i1 %tobool23.not, label %if.else, label %for.end.if.then24_crit_edge

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %for.end.if.then24_crit_edge, %if.end11.if.then24_crit_edge
  %parent.0.lcssa61 = phi ptr [ %parent.053, %for.end.if.then24_crit_edge ], [ %entry1.054, %if.end11.if.then24_crit_edge ]
  %12 = ptrtoint ptr %parent.0.lcssa61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.0.lcssa61, align 4
  %14 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %item, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %15 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %parent.0.lcssa61, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  %16 = ptrtoint ptr %parent.0.lcssa61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %item, ptr %parent.0.lcssa61, align 4
  %17 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %item, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then24.cleanup_crit_edge, label %do.body47.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body47.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %pprev50.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %for.end
  %19 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %item, align 4
  %pprev.i49 = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx, ptr %pprev.i49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %item, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %do.body49.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body49.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %7, ptr %item, align 4
  %pprev.i49.c = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i49.c to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx, ptr %pprev.i49.c, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.critedge, %do.body49.i, %do.body47.i
  %arrayidx.sink = phi ptr [ %arrayidx, %cleanup.critedge ], [ %pprev51.i, %do.body49.i ], [ %pprev50.i, %do.body47.i ]
  %24 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %item, ptr %arrayidx.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_just_insert_please(ptr nocapture noundef readonly %ht, ptr noundef %item, i32 noundef %seed, i32 noundef %bits, i32 noundef %shift, i32 noundef %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notmask = shl nsw i32 -1, %bits
  %sub = xor i32 %notmask, -1
  %mul.i.i = mul i32 %seed, 1640531527
  %sub.i = sub i32 32, %bits
  %shr.i = lshr i32 %mul.i.i, %sub.i
  %key = getelementptr inbounds %struct.drm_hash_item, ptr %item, i32 0, i32 1
  %order.i = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %drm_ht_insert_item.exit.do.body_crit_edge, %entry
  %unshifted_key.0 = phi i32 [ %shr.i, %entry ], [ %and, %drm_ht_insert_item.exit.do.body_crit_edge ]
  %shl1 = shl i32 %unshifted_key.0, %shift
  %add2 = add i32 %shl1, %add
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add2, ptr %key, align 4
  %1 = ptrtoint ptr %order.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %order.i, align 4
  %conv.i = zext i8 %2 to i32
  %mul.i.i.i = mul i32 %add2, 1640531527
  %sub.i.i = sub nsw i32 32, %conv.i
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %3 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ht, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %4, i32 %shr.i.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cleanup.critedge.i, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %entry1.054.i = phi ptr [ %10, %if.end11.i.for.body.i_crit_edge ], [ %6, %do.body.for.body.i_crit_edge ]
  %parent.053.i = phi ptr [ %entry1.054.i, %if.end11.i.for.body.i_crit_edge ], [ null, %do.body.for.body.i_crit_edge ]
  %key5.i = getelementptr inbounds %struct.drm_hash_item, ptr %entry1.054.i, i32 0, i32 1
  %7 = ptrtoint ptr %key5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add2)
  %cmp.i = icmp eq i32 %8, %add2
  br i1 %cmp.i, label %drm_ht_insert_item.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add2)
  %cmp8.i = icmp ugt i32 %8, %add2
  br i1 %cmp8.i, label %for.end.i, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %entry1.054.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.054.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.end11.i.if.then24.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end11.i.if.then24.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

for.end.i:                                        ; preds = %if.end.i
  %tobool23.not.i = icmp eq ptr %parent.053.i, null
  br i1 %tobool23.not.i, label %do.body49.i.i, label %for.end.i.if.then24.i_crit_edge

for.end.i.if.then24.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.then24.i:                                      ; preds = %for.end.i.if.then24.i_crit_edge, %if.end11.i.if.then24.i_crit_edge
  %parent.0.lcssa61.i = phi ptr [ %parent.053.i, %for.end.i.if.then24.i_crit_edge ], [ %entry1.054.i, %if.end11.i.if.then24.i_crit_edge ]
  %11 = ptrtoint ptr %parent.0.lcssa61.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.0.lcssa61.i, align 4
  %13 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %item, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %parent.0.lcssa61.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !22
  %15 = ptrtoint ptr %parent.0.lcssa61.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %item, ptr %parent.0.lcssa61.i, align 4
  %16 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %item, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then24.i.cleanup_crit_edge, label %do.body47.i.i

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body47.i.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev50.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  br label %cleanup.sink.split.i

do.body49.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %item, align 4
  %pprev.i49.i = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i49.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.i, ptr %pprev.i49.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %item, ptr %arrayidx.i, align 4
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  br label %cleanup.sink.split.i

cleanup.critedge.i:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %item, align 4
  %pprev.i49.c.i = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i49.c.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.i, ptr %pprev.i49.c.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !23
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.critedge.i, %do.body49.i.i, %do.body47.i.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %cleanup.critedge.i ], [ %pprev51.i.i, %do.body49.i.i ], [ %pprev50.i.i, %do.body47.i.i ]
  %23 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %item, ptr %arrayidx.sink.i, align 4
  br label %cleanup

drm_ht_insert_item.exit:                          ; preds = %for.body.i
  %add4 = add i32 %unshifted_key.0, 1
  %and = and i32 %add4, %sub
  %cmp.not = icmp eq i32 %and, %shr.i
  br i1 %cmp.not, label %if.then7, label %drm_ht_insert_item.exit.do.body_crit_edge

drm_ht_insert_item.exit.do.body_crit_edge:        ; preds = %drm_ht_insert_item.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then7:                                         ; preds = %drm_ht_insert_item.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %cleanup.sink.split.i, %if.then24.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ 0, %cleanup.sink.split.i ], [ 0, %if.then24.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_find_item(ptr nocapture noundef readonly %ht, i32 noundef %key, ptr nocapture noundef writeonly %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %order.i = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  %0 = ptrtoint ptr %order.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %order.i, align 4
  %conv.i = zext i8 %1 to i32
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub nsw i32 32, %conv.i
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %2 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ht, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %3, i32 %shr.i.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b53.i = load i1, ptr @drm_ht_find_key_rcu.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @drm_ht_find_key_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 103, ptr noundef nonnull @.str.5) #5
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end18.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %entry1.0.in.i = phi ptr [ %entry1.0.i, %if.end18.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %4 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0.i = load volatile ptr, ptr %entry1.0.in.i, align 4
  %tobool14.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool14.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %key15.i = getelementptr inbounds %struct.drm_hash_item, ptr %entry1.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %key15.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %key)
  %cmp.i = icmp eq i32 %6, %key
  br i1 %cmp.i, label %if.end, label %if.end18.i

if.end18.i:                                       ; preds = %for.body.i
  %cmp20.i = icmp ugt i32 %6, %key
  br i1 %cmp20.i, label %if.end18.i.cleanup_crit_edge, label %if.end18.i.for.cond.i_crit_edge

if.end18.i.for.cond.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry1.0.i, ptr %item, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end18.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.end18.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_remove_key(ptr nocapture noundef readonly %ht, i32 noundef %key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %order.i = getelementptr inbounds %struct.drm_open_hash, ptr %ht, i32 0, i32 1
  %0 = ptrtoint ptr %order.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %order.i, align 4
  %conv.i = zext i8 %1 to i32
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub nsw i32 32, %conv.i
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %2 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ht, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %3, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %entry1.0.i, %if.end.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool3.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %key4.i = getelementptr inbounds %struct.drm_hash_item, ptr %entry1.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %key4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %key)
  %cmp.i = icmp eq i32 %6, %key
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %cmp7.i = icmp ugt i32 %6, %key
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %for.body.i
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %9 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.0.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i7.i = icmp eq ptr %10, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__hlist_del.exit.i, %if.then.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %__hlist_del.exit.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ht_remove_item(ptr nocapture noundef readnone %ht, ptr noundef %item) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_ht_remove(ptr nocapture noundef %ht) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kvfree(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %ht to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ht, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_hashtab.c", i32 56, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_hashtab.c", i32 70, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_hashtab.c", i32 73, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_hashtab.c", i32 160, i32 3}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_hashtab.c", i32 103, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2151615009}
!23 = !{i64 2151572107}
