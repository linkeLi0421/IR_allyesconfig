; ModuleID = '/llk/IR_all_yes/fs/afs/server_list.c_pt.bc'
source_filename = "../fs/afs/server_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_server_entry = type { ptr }
%struct.afs_vldb_entry = type { [3 x i64], i32, [13 x %struct.uuid_t], [13 x i32], [13 x i8], i16, i8, i8, [65 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.afs_cell = type { %union.anon.144, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.144 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.afs_server = type { %struct.callback_head, %union.anon.143, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147 }
%struct.callback_head = type { ptr, ptr }
%union.anon.143 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.147 = type { i32, i32, i16, i8 }

@afs_alloc_server_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&slist->lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967173, i64 4294967294]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [24 x i8] c"../fs/afs/server_list.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 45, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @afs_alloc_server_list.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_alloc_server_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_serverlist(ptr noundef %net, ptr noundef %slist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %slist, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_server_list, ptr %slist, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !12
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #7, !srcloc !13
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !14

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #7
  br label %if.end

refcount_dec_and_test.exit:                       ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !15
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %slist, i32 0, i32 2
  %1 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp9.not = icmp eq i8 %2, 0
  br i1 %cmp9.not, label %refcount_dec_and_test.exit.for.end_crit_edge, label %refcount_dec_and_test.exit.for.body_crit_edge

refcount_dec_and_test.exit.for.body_crit_edge:    ; preds = %refcount_dec_and_test.exit
  br label %for.body

refcount_dec_and_test.exit.for.end_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %refcount_dec_and_test.exit.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %refcount_dec_and_test.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_server_list, ptr %slist, i32 0, i32 7, i32 %i.010
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @afs_unuse_server(ptr noundef %net, ptr noundef %4, i32 noundef 17) #7
  %inc = add nuw nsw i32 %i.010, 1
  %5 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %refcount_dec_and_test.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %slist) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_server(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_alloc_server_list(ptr noundef %cell, ptr noundef %key, ptr noundef %vldb, i8 noundef zeroext %type_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_servers1 = getelementptr inbounds %struct.afs_vldb_entry, ptr %vldb, i32 0, i32 6
  %0 = ptrtoint ptr %nr_servers1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_servers1, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp161.not = icmp eq i8 %1, 0
  br i1 %cmp161.not, label %entry.if.end8.i.i_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0163 = phi i32 [ %inc5, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nr_servers.0162 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_vldb_entry, ptr %vldb, i32 0, i32 4, i32 %i.0163
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and155 = and i8 %3, %type_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and155)
  %tobool.not = icmp ne i8 %and155, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %nr_servers.0162, %inc
  %inc5 = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc5, %conv
  br i1 %exitcond.not, label %for.body.if.end8.i.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end8.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %nr_servers.0.lcssa = phi i32 [ 0, %entry.if.end8.i.i_crit_edge ], [ %spec.select, %for.body.if.end8.i.i_crit_edge ]
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_servers.0.lcssa, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 80) #7
  %retval.0.i = select i1 %5, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #10
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end8.i.i.error_crit_edge, label %if.end9

if.end8.i.i.error_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end9:                                          ; preds = %if.end8.i.i
  %usage = getelementptr inbounds %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #7
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %usage, align 8
  %lock = getelementptr inbounds %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 6
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @afs_alloc_server_list.__key) #7
  %8 = call ptr @memcpy(ptr %call9.i.i, ptr %vldb, i32 24)
  %9 = ptrtoint ptr %nr_servers1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_servers1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp22171.not = icmp eq i8 %10, 0
  br i1 %cmp22171.not, label %if.end9.for.end89_crit_edge, label %for.body24.lr.ph

if.end9.for.end89_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body24.lr.ph:                                 ; preds = %if.end9
  %nr_servers47 = getelementptr inbounds %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 2
  %servers67 = getelementptr inbounds %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 7
  %net = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  br label %for.body24

for.body24:                                       ; preds = %for.inc87.for.body24_crit_edge, %for.body24.lr.ph
  %i.2172 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc88, %for.inc87.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.afs_vldb_entry, ptr %vldb, i32 0, i32 4, i32 %i.2172
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %and29154 = and i8 %12, %type_mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and29154)
  %tobool30.not = icmp eq i8 %and29154, 0
  br i1 %tobool30.not, label %for.body24.for.inc87_crit_edge, label %if.end32

for.body24.for.inc87_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

if.end32:                                         ; preds = %for.body24
  %arrayidx33 = getelementptr %struct.afs_vldb_entry, ptr %vldb, i32 0, i32 2, i32 %i.2172
  %arrayidx34 = getelementptr %struct.afs_vldb_entry, ptr %vldb, i32 0, i32 3, i32 %i.2172
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx34, align 4
  %call35 = tail call ptr @afs_lookup_server(ptr noundef %cell, ptr noundef %key, ptr noundef %arrayidx33, i32 noundef %14) #7
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %if.end32
  %15 = ptrtoint ptr %nr_servers47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_servers47, align 4
  %conv48 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp49167.not = icmp eq i8 %16, 0
  br i1 %cmp49167.not, label %for.cond46.preheader.if.end81_crit_edge, label %for.body51.lr.ph

for.cond46.preheader.if.end81_crit_edge:          ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

for.body51.lr.ph:                                 ; preds = %for.cond46.preheader
  %17 = getelementptr inbounds %struct.afs_server, ptr %call35, i32 0, i32 1
  br label %for.body51

if.then37:                                        ; preds = %if.end32
  %18 = ptrtoint ptr %call35 to i32
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %error_2.loopexit [
    i32 -2, label %if.then37.for.inc87_crit_edge
    i32 -123, label %if.then37.for.inc87_crit_edge184
  ]

if.then37.for.inc87_crit_edge184:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

if.then37.for.inc87_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

for.body51:                                       ; preds = %for.inc59.for.body51_crit_edge, %for.body51.lr.ph
  %j.0168 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc60, %for.inc59.for.body51_crit_edge ]
  %arrayidx52 = getelementptr %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 7, i32 %j.0168
  %20 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx52, align 4
  %22 = getelementptr inbounds %struct.afs_server, ptr %21, i32 0, i32 1
  %call54 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %22, ptr noundef dereferenceable(16) %17, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %if.then66, label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nuw nsw i32 %j.0168, 1
  %exitcond175.not = icmp eq i32 %inc60, %conv48
  br i1 %exitcond175.not, label %for.inc59.if.end81_crit_edge, label %for.inc59.for.body51_crit_edge

for.inc59.for.body51_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.inc59.if.end81_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then66:                                        ; preds = %for.body51
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx52, align 4
  %cmp70 = icmp eq ptr %24, %call35
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  tail call void @afs_put_server(ptr noundef %26, ptr noundef %call35, i32 noundef 18) #7
  br label %for.inc87

if.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.afs_server_entry, ptr %servers67, i32 %j.0168
  %add.ptr75 = getelementptr %struct.afs_server_entry, ptr %add.ptr, i32 1
  %sub = sub nsw i32 %conv48, %j.0168
  %mul = shl i32 %sub, 2
  %27 = call ptr @memmove(ptr %add.ptr75, ptr %add.ptr, i32 %mul)
  br label %if.end81

if.end81:                                         ; preds = %if.end73, %for.inc59.if.end81_crit_edge, %for.cond46.preheader.if.end81_crit_edge
  %j.0160 = phi i32 [ %j.0168, %if.end73 ], [ 0, %for.cond46.preheader.if.end81_crit_edge ], [ %conv48, %for.inc59.if.end81_crit_edge ]
  %arrayidx83 = getelementptr %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 7, i32 %j.0160
  %28 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call35, ptr %arrayidx83, align 4
  %29 = ptrtoint ptr %nr_servers47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr_servers47, align 4
  %inc86 = add i8 %30, 1
  store i8 %inc86, ptr %nr_servers47, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %if.end81, %if.then72, %if.then37.for.inc87_crit_edge, %if.then37.for.inc87_crit_edge184, %for.body24.for.inc87_crit_edge
  %inc88 = add nuw nsw i32 %i.2172, 1
  %31 = ptrtoint ptr %nr_servers1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nr_servers1, align 8
  %conv21 = zext i8 %32 to i32
  %cmp22 = icmp ult i32 %inc88, %conv21
  br i1 %cmp22, label %for.inc87.for.body24_crit_edge, label %for.inc87.for.end89_crit_edge

for.inc87.for.end89_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.inc87.for.body24_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end89:                                        ; preds = %for.inc87.for.end89_crit_edge, %if.end9.for.end89_crit_edge
  %nr_servers90 = getelementptr inbounds %struct.afs_server_list, ptr %call9.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %nr_servers90 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nr_servers90, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp92 = icmp eq i8 %34, 0
  br i1 %cmp92, label %for.end89.error_2_crit_edge, label %for.end89.cleanup_crit_edge

for.end89.cleanup_crit_edge:                      ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end89.error_2_crit_edge:                      ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_2

error_2.loopexit:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call35 to i32
  br label %error_2

error_2:                                          ; preds = %error_2.loopexit, %for.end89.error_2_crit_edge
  %ret.0 = phi i32 [ -89, %for.end89.error_2_crit_edge ], [ %35, %error_2.loopexit ]
  %net96 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %36 = ptrtoint ptr %net96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net96, align 4
  tail call void @afs_put_serverlist(ptr noundef %37, ptr noundef nonnull %call9.i.i)
  br label %error

error:                                            ; preds = %error_2, %if.end8.i.i.error_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_2 ], [ -12, %if.end8.i.i.error_crit_edge ]
  %38 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end89.cleanup_crit_edge
  %retval.0 = phi ptr [ %38, %error ], [ %call9.i.i, %for.end89.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_lookup_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_server(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @afs_annotate_server_list(ptr nocapture noundef %new, ptr nocapture noundef readonly %old) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_servers, align 4
  %nr_servers1 = getelementptr inbounds %struct.afs_server_list, ptr %new, i32 0, i32 2
  %2 = ptrtoint ptr %nr_servers1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_servers1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %for.cond.preheader, label %entry.changed_crit_edge

entry.changed_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

for.cond.preheader:                               ; preds = %entry
  %conv5 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp654.not = icmp eq i8 %1, 0
  br i1 %cmp654.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_server_list, ptr %old, i32 0, i32 7, i32 %i.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.afs_server_list, ptr %new, i32 0, i32 7, i32 %i.055
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %cmp11.not = icmp eq ptr %5, %7
  br i1 %cmp11.not, label %for.cond, label %for.body.changed_crit_edge

for.body.changed_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

changed:                                          ; preds = %for.body.changed_crit_edge, %entry.changed_crit_edge
  %preferred = getelementptr inbounds %struct.afs_server_list, ptr %old, i32 0, i32 3
  %8 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %preferred, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx16 = getelementptr %struct.afs_server_list, ptr %old, i32 0, i32 7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %conv20 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2156.not = icmp eq i8 %3, 0
  br i1 %cmp2156.not, label %changed.cleanup_crit_edge, label %changed.for.body23_crit_edge

changed.for.body23_crit_edge:                     ; preds = %changed
  br label %for.body23

changed.cleanup_crit_edge:                        ; preds = %changed
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body23:                                       ; preds = %for.inc33.for.body23_crit_edge, %changed.for.body23_crit_edge
  %j.057 = phi i32 [ %inc34, %for.inc33.for.body23_crit_edge ], [ 0, %changed.for.body23_crit_edge ]
  %arrayidx25 = getelementptr %struct.afs_server_list, ptr %new, i32 0, i32 7, i32 %j.057
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx25, align 4
  %cmp27 = icmp eq ptr %13, %11
  br i1 %cmp27, label %if.then29, label %for.inc33

if.then29:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  %conv30 = trunc i32 %j.057 to i8
  %preferred31 = getelementptr inbounds %struct.afs_server_list, ptr %new, i32 0, i32 3
  %14 = ptrtoint ptr %preferred31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv30, ptr %preferred31, align 1
  br label %cleanup

for.inc33:                                        ; preds = %for.body23
  %inc34 = add nuw nsw i32 %j.057, 1
  %exitcond60.not = icmp eq i32 %inc34, %conv20
  br i1 %exitcond60.not, label %for.inc33.cleanup_crit_edge, label %for.inc33.for.body23_crit_edge

for.inc33.for.body23_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.inc33.cleanup_crit_edge:                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc33.cleanup_crit_edge, %if.then29, %changed.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then29 ], [ true, %changed.cleanup_crit_edge ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ true, %for.inc33.cleanup_crit_edge ], [ false, %for.cond.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @afs_alloc_server_list.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/afs/server_list.c", i32 45, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2148300273}
!13 = !{i64 2148214737, i64 2148214769, i64 2148214798, i64 2148214832, i64 2148214863, i64 2148214886}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149868862}
