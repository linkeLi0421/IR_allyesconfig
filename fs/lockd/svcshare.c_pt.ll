; ModuleID = '/llk/IR_all_yes/fs/lockd/svcshare.c_pt.bc'
source_filename = "../fs/lockd/svcshare.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.114 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.114 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_share = type { ptr, ptr, ptr, %struct.xdr_netobj, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_share_file(ptr noundef %host, ptr noundef %file, ptr nocapture noundef readonly %argp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %oh1 = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 3
  %f_shares = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 3
  %data3.i = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 3, i32 1
  %fsm_access = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 6
  %fsm_mode = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %entry
  %share.0.in = phi ptr [ %f_shares, %entry ], [ %share.0, %lor.lhs.false.for.cond_crit_edge ]
  %0 = ptrtoint ptr %share.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %share.0 = load ptr, ptr %share.0.in, align 4
  %tobool.not = icmp eq ptr %share.0, null
  br i1 %tobool.not, label %if.end8.i, label %for.body

for.body:                                         ; preds = %for.cond
  %s_host = getelementptr inbounds %struct.nlm_share, ptr %share.0, i32 0, i32 1
  %1 = ptrtoint ptr %s_host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_host, align 4
  %cmp = icmp eq ptr %2, %host
  br i1 %cmp, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_owner.i = getelementptr inbounds %struct.nlm_share, ptr %share.0, i32 0, i32 3
  %3 = ptrtoint ptr %s_owner.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_owner.i, align 4
  %5 = ptrtoint ptr %oh1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oh1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i55 = icmp eq i32 %4, %6
  br i1 %cmp.i55, label %nlm_cmp_owner.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

nlm_cmp_owner.exit:                               ; preds = %land.lhs.true
  %data.i = getelementptr inbounds %struct.nlm_share, ptr %share.0, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data3.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %8, ptr %10, i32 %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %nlm_cmp_owner.exit.update_crit_edge, label %nlm_cmp_owner.exit.if.end_crit_edge

nlm_cmp_owner.exit.if.end_crit_edge:              ; preds = %nlm_cmp_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

nlm_cmp_owner.exit.update_crit_edge:              ; preds = %nlm_cmp_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %update

if.end:                                           ; preds = %nlm_cmp_owner.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %11 = ptrtoint ptr %fsm_access to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsm_access, align 8
  %s_mode = getelementptr inbounds %struct.nlm_share, ptr %share.0, i32 0, i32 5
  %13 = ptrtoint ptr %s_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_mode, align 4
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %fsm_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fsm_mode, align 4
  %s_access = getelementptr inbounds %struct.nlm_share, ptr %share.0, i32 0, i32 4
  %17 = ptrtoint ptr %s_access to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_access, align 4
  %and4 = and i32 %18, %16
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end8.i:                                        ; preds = %for.cond
  %19 = ptrtoint ptr %oh1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oh1, align 4
  %add = add i32 %20, 28
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %cmp9 = icmp eq ptr %call9.i, null
  br i1 %cmp9, label %if.end8.i.cleanup_crit_edge, label %if.end11

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr %struct.nlm_share, ptr %call9.i, i32 1
  %21 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data3.i, align 4
  %23 = ptrtoint ptr %oh1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oh1, align 4
  %25 = call ptr @memcpy(ptr %add.ptr, ptr %22, i32 %24)
  %s_file = getelementptr inbounds %struct.nlm_share, ptr %call9.i, i32 0, i32 2
  %26 = ptrtoint ptr %s_file to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %file, ptr %s_file, align 8
  %s_host13 = getelementptr inbounds %struct.nlm_share, ptr %call9.i, i32 0, i32 1
  %27 = ptrtoint ptr %s_host13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %host, ptr %s_host13, align 4
  %s_owner = getelementptr inbounds %struct.nlm_share, ptr %call9.i, i32 0, i32 3
  %data14 = getelementptr inbounds %struct.nlm_share, ptr %call9.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %data14, align 16
  %29 = load i32, ptr %oh1, align 4
  %30 = ptrtoint ptr %s_owner to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %s_owner, align 4
  %31 = ptrtoint ptr %f_shares to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_shares, align 4
  %33 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %call9.i, align 128
  store ptr %call9.i, ptr %f_shares, align 4
  br label %update

update:                                           ; preds = %if.end11, %nlm_cmp_owner.exit.update_crit_edge
  %share.1 = phi ptr [ %call9.i, %if.end11 ], [ %share.0, %nlm_cmp_owner.exit.update_crit_edge ]
  %34 = ptrtoint ptr %fsm_access to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fsm_access, align 8
  %s_access22 = getelementptr inbounds %struct.nlm_share, ptr %share.1, i32 0, i32 4
  %36 = ptrtoint ptr %s_access22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %s_access22, align 4
  %37 = ptrtoint ptr %fsm_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fsm_mode, align 4
  %s_mode24 = getelementptr inbounds %struct.nlm_share, ptr %share.1, i32 0, i32 5
  %39 = ptrtoint ptr %s_mode24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %s_mode24, align 4
  br label %cleanup

cleanup:                                          ; preds = %update, %if.end8.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %update ], [ 2, %if.end8.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unshare_file(ptr noundef readnone %host, ptr nocapture noundef %file, ptr nocapture noundef readonly %argp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %oh1 = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 3
  %f_shares = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_shares to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_shares, align 4
  %cmp.not14 = icmp eq ptr %1, null
  br i1 %cmp.not14, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data3.i = getelementptr inbounds %struct.nlm_args, ptr %argp, i32 0, i32 1, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi ptr [ %1, %for.body.lr.ph ], [ %17, %for.inc.for.body_crit_edge ]
  %shpp.015 = phi ptr [ %f_shares, %for.body.lr.ph ], [ %2, %for.inc.for.body_crit_edge ]
  %s_host = getelementptr inbounds %struct.nlm_share, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %s_host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_host, align 4
  %cmp2 = icmp eq ptr %4, %host
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_owner.i = getelementptr inbounds %struct.nlm_share, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %s_owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_owner.i, align 4
  %7 = ptrtoint ptr %oh1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oh1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  br i1 %cmp.i, label %nlm_cmp_owner.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

nlm_cmp_owner.exit:                               ; preds = %land.lhs.true
  %data.i = getelementptr inbounds %struct.nlm_share, ptr %2, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data3.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %10, ptr %12, i32 %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %nlm_cmp_owner.exit.for.inc_crit_edge

nlm_cmp_owner.exit.for.inc_crit_edge:             ; preds = %nlm_cmp_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %nlm_cmp_owner.exit
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %shpp.015 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %shpp.015, align 4
  tail call void @kfree(ptr noundef nonnull %2) #4
  br label %cleanup

for.inc:                                          ; preds = %nlm_cmp_owner.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_traverse_shares(ptr noundef %host, ptr nocapture noundef %file, ptr nocapture noundef readonly %match) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %f_shares = getelementptr inbounds %struct.nlm_file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_shares to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_shares, align 4
  %cmp.not78 = icmp eq ptr %1, null
  br i1 %cmp.not78, label %entry.while.end_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.outer.loopexit:                        ; preds = %while.body
  %cmp.not7 = icmp eq ptr %7, null
  br i1 %cmp.not7, label %while.cond.outer.loopexit.while.end_crit_edge, label %while.cond.outer.loopexit.while.body.lr.ph_crit_edge

while.cond.outer.loopexit.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph

while.cond.outer.loopexit.while.end_crit_edge:    ; preds = %while.cond.outer.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.outer.loopexit.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %2 = phi ptr [ %7, %while.cond.outer.loopexit.while.body.lr.ph_crit_edge ], [ %1, %entry.while.body.lr.ph_crit_edge ]
  %shpp.0.ph9 = phi ptr [ %3, %while.cond.outer.loopexit.while.body.lr.ph_crit_edge ], [ %f_shares, %entry.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %2, %while.body.lr.ph ], [ %10, %if.then.while.body_crit_edge ]
  %s_host = getelementptr inbounds %struct.nlm_share, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_host, align 4
  %call = tail call i32 %match(ptr noundef %5, ptr noundef %host) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br i1 %tobool.not, label %while.cond.outer.loopexit, label %if.then

if.then:                                          ; preds = %while.body
  %8 = ptrtoint ptr %shpp.0.ph9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %shpp.0.ph9, align 4
  tail call void @kfree(ptr noundef nonnull %3) #4
  %9 = ptrtoint ptr %shpp.0.ph9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shpp.0.ph9, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %while.cond.outer.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
