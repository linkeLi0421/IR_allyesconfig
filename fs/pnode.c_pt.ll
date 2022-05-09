; ModuleID = '/llk/IR_all_yes/fs/pnode.c_pt.bc'
source_filename = "../fs/pnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.65, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.66, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.66 = type { %struct.hlist_node }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mountpoint = type { %struct.hlist_node, ptr, %struct.hlist_head, i32 }

@last_dest = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@first_source = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@last_source = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dest_master = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"last_dest\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 216, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"first_source\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 216, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"last_source\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 216, i32 49 }
@___asan_gen_.10 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 217, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 218, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"dest_master\00", align 1
@___asan_gen_.17 = private constant [14 x i8] c"../fs/pnode.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 216, i32 63 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @last_dest, ptr @first_source, ptr @last_source, ptr @mp, ptr @list, ptr @dest_master], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_dest to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @first_source to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_source to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dest_master to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_dominating_id(ptr nocapture noundef readonly %mnt, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %m.0.in13 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 15
  %0 = ptrtoint ptr %m.0.in13 to i32
  call void @__asan_load4_noabort(i32 %0)
  %m.014 = load ptr, ptr %m.0.in13, align 4
  %cmp.not15 = icmp eq ptr %m.014, null
  br i1 %cmp.not15, label %entry.cleanup2_crit_edge, label %for.body.lr.ph

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %m.016 = phi ptr [ %m.014, %for.body.lr.ph ], [ %m.0, %cleanup.for.body_crit_edge ]
  %1 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt_ns, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body
  %m.0.i = phi ptr [ %m.016, %for.body ], [ %add.ptr.i.i, %if.end.i.do.body.i_crit_edge ]
  %mnt_ns.i = getelementptr inbounds %struct.mount, ptr %m.0.i, i32 0, i32 16
  %3 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mnt_ns.i, align 4
  %cmp.i = icmp eq ptr %4, %2
  br i1 %cmp.i, label %land.lhs.true.i, label %do.body.i.if.end.i_crit_edge

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %mnt1.i = getelementptr inbounds %struct.mount, ptr %m.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %mnt1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mnt1.i, align 4
  %call.i = tail call zeroext i1 @is_path_reachable(ptr noundef %m.0.i, ptr noundef %6, ptr noundef %root) #3
  br i1 %call.i, label %get_peer_under_root.exit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.i.if.end.i_crit_edge
  %mnt_share.i.i = getelementptr inbounds %struct.mount, ptr %m.0.i, i32 0, i32 12
  %7 = ptrtoint ptr %mnt_share.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt_share.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -88
  %cmp3.not.i = icmp eq ptr %add.ptr.i.i, %m.016
  br i1 %cmp3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

get_peer_under_root.exit:                         ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %m.0.i, null
  br i1 %tobool.not, label %get_peer_under_root.exit.cleanup_crit_edge, label %cleanup.thread

get_peer_under_root.exit.cleanup_crit_edge:       ; preds = %get_peer_under_root.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.thread:                                   ; preds = %get_peer_under_root.exit
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_group_id = getelementptr inbounds %struct.mount, ptr %m.0.i, i32 0, i32 23
  %9 = ptrtoint ptr %mnt_group_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnt_group_id, align 4
  br label %cleanup2

cleanup:                                          ; preds = %get_peer_under_root.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %m.0.in = getelementptr inbounds %struct.mount, ptr %m.016, i32 0, i32 15
  %11 = ptrtoint ptr %m.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %m.0 = load ptr, ptr %m.0.in, align 4
  %cmp.not = icmp eq ptr %m.0, null
  br i1 %cmp.not, label %cleanup.cleanup2_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup.cleanup2_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup.cleanup2_crit_edge, %cleanup.thread, %entry.cleanup2_crit_edge
  %retval.2 = phi i32 [ %10, %cleanup.thread ], [ 0, %entry.cleanup2_crit_edge ], [ 0, %cleanup.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @change_mnt_propagation(ptr noundef %mnt, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %type)
  %cmp = icmp eq i32 %type, 1048576
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_flags.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_flags.i, align 4
  %and.i = and i32 %1, -12289
  %or.i = or i32 %and.i, 4096
  store i32 %or.i, ptr %mnt_flags.i, align 4
  br label %if.end9

if.end:                                           ; preds = %entry
  %mnt_share.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 12
  %2 = ptrtoint ptr %mnt_share.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mnt_share.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %mnt_share.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %mnt_flags.i17 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %mnt_flags.i17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_flags.i17, align 4
  %and.i18 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool2.not.i = icmp eq i32 %and.i18, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mnt_release_group_id(ptr noundef %mnt) #3
  %6 = ptrtoint ptr %mnt_flags.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mnt_flags.i17, align 4
  %and6.i = and i32 %7, -4097
  store i32 %and6.i, ptr %mnt_flags.i17, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %mnt_master.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 15
  %8 = ptrtoint ptr %mnt_master.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_master.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25.i

if.then8.i:                                       ; preds = %if.end.i
  %mnt_slave_list.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 13
  %10 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i1.not21.i = icmp eq ptr %11, %mnt_slave_list.i
  br i1 %cmp.i1.not21.i, label %if.then8.i.do_make_slave.exit_crit_edge, label %if.then8.i.while.body.i_crit_edge

if.then8.i.while.body.i_crit_edge:                ; preds = %if.then8.i
  br label %while.body.i

if.then8.i.do_make_slave.exit_crit_edge:          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do_make_slave.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %if.then8.i.while.body.i_crit_edge
  %12 = phi ptr [ %23, %list_del_init.exit.i.while.body.i_crit_edge ], [ %11, %if.then8.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %12, ptr %12, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %prev.i3.i.i, align 4
  %mnt_master11.i = getelementptr i8, ptr %12, i32 8
  %21 = ptrtoint ptr %mnt_master11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mnt_master11.i, align 4
  %22 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i1.not.i = icmp eq ptr %23, %mnt_slave_list.i
  br i1 %cmp.i1.not.i, label %list_del_init.exit.i.do_make_slave.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

list_del_init.exit.i.do_make_slave.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do_make_slave.exit

if.else.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -88
  %cmp.not15.i = icmp eq ptr %add.ptr.i.i, %mnt
  br i1 %cmp.not15.i, label %if.else.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else.i
  %mnt15.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3
  %24 = ptrtoint ptr %mnt15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mnt15.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %m.016.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i ], [ %add.ptr.i4.i, %for.inc.i.for.body.i_crit_edge ]
  %mnt14.i = getelementptr inbounds %struct.mount, ptr %m.016.i, i32 0, i32 3
  %26 = ptrtoint ptr %mnt14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mnt14.i, align 4
  %cmp17.i = icmp eq ptr %27, %25
  br i1 %cmp17.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %mnt_share.i3.i = getelementptr inbounds %struct.mount, ptr %m.016.i, i32 0, i32 12
  %28 = ptrtoint ptr %mnt_share.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mnt_share.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %29, i32 -88
  %cmp.not.i = icmp eq ptr %add.ptr.i4.i, %mnt
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %master.0.i = phi ptr [ %mnt, %if.else.i.for.end.i_crit_edge ], [ %add.ptr.i.i, %for.inc.i.for.end.i_crit_edge ], [ %m.016.i, %for.body.i.for.end.i_crit_edge ]
  %call.i.i5.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_share.i) #3
  br i1 %call.i.i5.i, label %if.end.i.i8.i, label %for.end.i.list_del_init.exit10.i_crit_edge

for.end.i.list_del_init.exit10.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit10.i

if.end.i.i8.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i6.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %prev.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i6.i, align 4
  %32 = ptrtoint ptr %mnt_share.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mnt_share.i, align 4
  %prev1.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i7.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit10.i

list_del_init.exit10.i:                           ; preds = %if.end.i.i8.i, %for.end.i.list_del_init.exit10.i_crit_edge
  %36 = ptrtoint ptr %mnt_share.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %mnt_share.i, ptr %mnt_share.i, align 4
  %prev.i3.i9.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %prev.i3.i9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %mnt_share.i, ptr %prev.i3.i9.i, align 4
  %mnt_group_id.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 23
  %38 = ptrtoint ptr %mnt_group_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mnt_group_id.i, align 4
  %mnt_flags23.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %mnt_flags23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mnt_flags23.i, align 4
  %and24.i = and i32 %40, -4097
  store i32 %and24.i, ptr %mnt_flags23.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %list_del_init.exit10.i, %if.end.i.if.end25.i_crit_edge
  %master.1.i = phi ptr [ %9, %if.end.i.if.end25.i_crit_edge ], [ %master.0.i, %list_del_init.exit10.i ]
  %mnt_slave_list27.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 13
  %41 = ptrtoint ptr %mnt_slave_list27.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn18.i = load ptr, ptr %mnt_slave_list27.i, align 4
  %cmp34.not19.i = icmp eq ptr %.pn18.i, %mnt_slave_list27.i
  br i1 %cmp34.not19.i, label %if.end25.i.for.end44.i_crit_edge, label %if.end25.i.for.body36.i_crit_edge

if.end25.i.for.body36.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body36.i

if.end25.i.for.end44.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end44.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %if.end25.i.for.body36.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.body36.i.for.body36.i_crit_edge ], [ %.pn18.i, %if.end25.i.for.body36.i_crit_edge ]
  %mnt_master37.i = getelementptr i8, ptr %.pn20.i, i32 8
  %42 = ptrtoint ptr %mnt_master37.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %master.1.i, ptr %mnt_master37.i, align 4
  %43 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp34.not.i = icmp eq ptr %.pn.i, %mnt_slave_list27.i
  br i1 %cmp34.not.i, label %for.body36.i.for.end44.i_crit_edge, label %for.body36.i.for.body36.i_crit_edge

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body36.i

for.body36.i.for.end44.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end44.i

for.end44.i:                                      ; preds = %for.body36.i.for.end44.i_crit_edge, %if.end25.i.for.end44.i_crit_edge
  %mnt_slave45.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14
  %mnt_slave_list46.i = getelementptr inbounds %struct.mount, ptr %master.1.i, i32 0, i32 13
  %call.i.i11.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_slave45.i) #3
  br i1 %call.i.i11.i, label %if.end.i.i14.i, label %for.end44.i.__list_del_entry.exit.i.i_crit_edge

for.end44.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i

if.end.i.i14.i:                                   ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i12.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i12.i, align 4
  %46 = ptrtoint ptr %mnt_slave45.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mnt_slave45.i, align 4
  %prev1.i.i.i13.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i13.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i14.i, %for.end44.i.__list_del_entry.exit.i.i_crit_edge
  %50 = ptrtoint ptr %mnt_slave_list46.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mnt_slave_list46.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mnt_slave45.i, ptr noundef %mnt_slave_list46.i, ptr noundef %51) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %mnt_slave45.i, ptr %prev1.i.i2.i.i, align 4
  %53 = ptrtoint ptr %mnt_slave45.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %mnt_slave45.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mnt_slave_list46.i, ptr %prev3.i.i.i.i, align 4
  %55 = ptrtoint ptr %mnt_slave_list46.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %mnt_slave45.i, ptr %mnt_slave_list46.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %prev.i = getelementptr inbounds %struct.mount, ptr %master.1.i, i32 0, i32 13, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 4
  %58 = ptrtoint ptr %mnt_slave_list27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %mnt_slave_list27.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %59, %mnt_slave_list27.i
  br i1 %cmp.i.not.i.i, label %list_move.exit.i.list_splice.exit.i_crit_edge, label %if.then.i.i

list_move.exit.i.list_splice.exit.i_crit_edge:    ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice.exit.i

if.then.i.i:                                      ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 13, i32 1
  %62 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %57, ptr %prev3.i.i.i, align 4
  store ptr %59, ptr %57, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %61, ptr %63, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev6.i.i.i, align 4
  br label %list_splice.exit.i

list_splice.exit.i:                               ; preds = %if.then.i.i, %list_move.exit.i.list_splice.exit.i_crit_edge
  %67 = ptrtoint ptr %mnt_slave_list27.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %mnt_slave_list27.i, ptr %mnt_slave_list27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 13, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %mnt_slave_list27.i, ptr %prev.i.i, align 4
  %mnt_master50.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 15
  %69 = ptrtoint ptr %mnt_master50.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %master.1.i, ptr %mnt_master50.i, align 4
  br label %do_make_slave.exit

do_make_slave.exit:                               ; preds = %list_splice.exit.i, %list_del_init.exit.i.do_make_slave.exit_crit_edge, %if.then8.i.do_make_slave.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %type)
  %cmp1.not = icmp eq i32 %type, 524288
  br i1 %cmp1.not, label %do_make_slave.exit.if.end9_crit_edge, label %if.then2

do_make_slave.exit.if.end9_crit_edge:             ; preds = %do_make_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then2:                                         ; preds = %do_make_slave.exit
  %mnt_slave = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_slave) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del_init.exit_crit_edge

if.then2.list_del_init.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i19 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %prev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i19, align 4
  %72 = ptrtoint ptr %mnt_slave to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mnt_slave, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then2.list_del_init.exit_crit_edge
  %76 = ptrtoint ptr %mnt_slave to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %mnt_slave, ptr %mnt_slave, align 4
  %prev.i3.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 14, i32 1
  %77 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mnt_slave, ptr %prev.i3.i, align 4
  %mnt_master = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 15
  %78 = ptrtoint ptr %mnt_master to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %mnt_master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %type)
  %cmp3 = icmp eq i32 %type, 131072
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mnt_flags, align 4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %80, 8192
  %81 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or, ptr %mnt_flags, align 4
  br label %if.end9

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %80, -8193
  %82 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and, ptr %mnt_flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4, %do_make_slave.exit.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @propagate_mnt(ptr noundef %dest_mnt, ptr noundef %dest_mp, ptr noundef %source_mnt, ptr noundef %tree_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %dest_mnt, ptr @last_dest, align 4
  store ptr %source_mnt, ptr @first_source, align 4
  store ptr %source_mnt, ptr @last_source, align 4
  store ptr %dest_mp, ptr @mp, align 4
  store ptr %tree_list, ptr @list, align 4
  %mnt_master = getelementptr inbounds %struct.mount, ptr %dest_mnt, i32 0, i32 15
  %0 = ptrtoint ptr %mnt_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_master, align 4
  store ptr %1, ptr @dest_master, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %dest_mnt.pn = phi ptr [ %dest_mnt, %entry ], [ %n.0, %for.body.for.cond_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.mount, ptr %dest_mnt.pn, i32 0, i32 12
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %n.0 = getelementptr i8, ptr %.pn, i32 -88
  %cmp.not = icmp eq ptr %n.0, %dest_mnt
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = tail call fastcc i32 @propagate_one(ptr noundef %n.0)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %mnt_group_id8.i = getelementptr inbounds %struct.mount, ptr %dest_mnt, i32 0, i32 23
  br label %while.body2.i

while.body2.i:                                    ; preds = %while.body2.i.backedge, %for.end
  %m.addr.1.i = phi ptr [ %dest_mnt, %for.end ], [ %m.addr.1.i.be, %while.body2.i.backedge ]
  %mnt_ns.i = getelementptr inbounds %struct.mount, ptr %m.addr.1.i, i32 0, i32 16
  %3 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mnt_ns.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %while.body2.i.if.end.i_crit_edge, label %lor.lhs.false.i

while.body2.i.if.end.i_crit_edge:                 ; preds = %while.body2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %while.body2.i
  %seq.i.i = getelementptr inbounds %struct.mnt_namespace, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i.i = icmp eq i64 %6, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %mnt_slave_list.i = getelementptr inbounds %struct.mount, ptr %m.addr.1.i, i32 0, i32 13
  %7 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i68.not.i = icmp eq ptr %8, %mnt_slave_list.i
  br i1 %cmp.i68.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.next_group.exit_crit_edge

land.lhs.true.i.next_group.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_group.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %while.body2.i.if.end.i_crit_edge
  %mnt_share.i.i = getelementptr inbounds %struct.mount, ptr %m.addr.1.i, i32 0, i32 12
  %9 = ptrtoint ptr %mnt_share.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mnt_share.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %10, i32 -88
  %mnt_group_id.i = getelementptr inbounds %struct.mount, ptr %m.addr.1.i, i32 0, i32 23
  %11 = ptrtoint ptr %mnt_group_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mnt_group_id.i, align 4
  %13 = ptrtoint ptr %mnt_group_id8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mnt_group_id8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  %cmp10.i = icmp eq ptr %add.ptr.i69.i, %dest_mnt
  br i1 %cmp10.i, label %if.then9.i.out_crit_edge, label %if.then9.i.while.body2.i.backedge_crit_edge

if.then9.i.while.body2.i.backedge_crit_edge:      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i.backedge

if.then9.i.out_crit_edge:                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i:                                        ; preds = %if.end.i
  %mnt_slave.i = getelementptr inbounds %struct.mount, ptr %m.addr.1.i, i32 0, i32 14
  %15 = ptrtoint ptr %mnt_slave.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mnt_slave.i, align 4
  %mnt_slave14.i = getelementptr i8, ptr %10, i32 16
  %cmp15.not.i = icmp eq ptr %16, %mnt_slave14.i
  br i1 %cmp15.not.i, label %if.else.i.while.body2.i.backedge_crit_edge, label %if.else.i.while.body20.i_crit_edge

if.else.i.while.body20.i_crit_edge:               ; preds = %if.else.i
  br label %while.body20.i

if.else.i.while.body2.i.backedge_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i.backedge

while.body20.i:                                   ; preds = %if.end33.i.while.body20.i_crit_edge, %if.else.i.while.body20.i_crit_edge
  %m.addr.3.i = phi ptr [ %18, %if.end33.i.while.body20.i_crit_edge ], [ %m.addr.1.i, %if.else.i.while.body20.i_crit_edge ]
  %mnt_master.i = getelementptr inbounds %struct.mount, ptr %m.addr.3.i, i32 0, i32 15
  %17 = ptrtoint ptr %mnt_master.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mnt_master.i, align 4
  %mnt_slave21.i = getelementptr inbounds %struct.mount, ptr %m.addr.3.i, i32 0, i32 14
  %19 = ptrtoint ptr %mnt_slave21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mnt_slave21.i, align 4
  %mnt_slave_list23.i = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 13
  %cmp24.not.i = icmp eq ptr %20, %mnt_slave_list23.i
  br i1 %cmp24.not.i, label %if.end27.i, label %while.body20.i.next_group.exit_crit_edge

while.body20.i.next_group.exit_crit_edge:         ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_group.exit

if.end27.i:                                       ; preds = %while.body20.i
  %mnt_share.i71.i = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 12
  %21 = ptrtoint ptr %mnt_share.i71.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mnt_share.i71.i, align 4
  %mnt_group_id29.i = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 23
  %23 = ptrtoint ptr %mnt_group_id29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mnt_group_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %14)
  %cmp31.i = icmp eq i32 %24, %14
  br i1 %cmp31.i, label %if.end27.i.while.end43.i_crit_edge, label %if.end33.i

if.end27.i.while.end43.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43.i

if.end33.i:                                       ; preds = %if.end27.i
  %mnt_slave34.i = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 14
  %25 = ptrtoint ptr %mnt_slave34.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mnt_slave34.i, align 4
  %mnt_slave36.i = getelementptr i8, ptr %22, i32 16
  %cmp37.i = icmp eq ptr %26, %mnt_slave36.i
  br i1 %cmp37.i, label %if.end33.i.while.end43.i_crit_edge, label %if.end33.i.while.body20.i_crit_edge

if.end33.i.while.body20.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body20.i

if.end33.i.while.end43.i_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43.i

while.end43.i:                                    ; preds = %if.end33.i.while.end43.i_crit_edge, %if.end27.i.while.end43.i_crit_edge
  %add.ptr.i72.le.i = getelementptr i8, ptr %22, i32 -88
  %cmp44.i = icmp eq ptr %add.ptr.i72.le.i, %dest_mnt
  br i1 %cmp44.i, label %while.end43.i.out_crit_edge, label %while.end43.i.while.body2.i.backedge_crit_edge

while.end43.i.while.body2.i.backedge_crit_edge:   ; preds = %while.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i.backedge

while.end43.i.out_crit_edge:                      ; preds = %while.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.body2.i.backedge:                           ; preds = %while.end43.i.while.body2.i.backedge_crit_edge, %if.else.i.while.body2.i.backedge_crit_edge, %if.then9.i.while.body2.i.backedge_crit_edge
  %m.addr.1.i.be = phi ptr [ %add.ptr.i72.le.i, %while.end43.i.while.body2.i.backedge_crit_edge ], [ %add.ptr.i69.i, %if.else.i.while.body2.i.backedge_crit_edge ], [ %add.ptr.i69.i, %if.then9.i.while.body2.i.backedge_crit_edge ]
  br label %while.body2.i

next_group.exit:                                  ; preds = %while.body20.i.next_group.exit_crit_edge, %land.lhs.true.i.next_group.exit_crit_edge
  %.lcssa183.sink = phi ptr [ %20, %while.body20.i.next_group.exit_crit_edge ], [ %8, %land.lhs.true.i.next_group.exit_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %.lcssa183.sink, i32 -104
  %tobool5.not140 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not140, label %next_group.exit.out_crit_edge, label %next_group.exit.do.body.preheader_crit_edge

next_group.exit.do.body.preheader_crit_edge:      ; preds = %next_group.exit
  br label %do.body.preheader

next_group.exit.out_crit_edge:                    ; preds = %next_group.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

do.body.preheader:                                ; preds = %next_group.exit119.do.body.preheader_crit_edge, %next_group.exit.do.body.preheader_crit_edge
  %m.0141 = phi ptr [ %add.ptr.i.i85, %next_group.exit119.do.body.preheader_crit_edge ], [ %add.ptr.i.i, %next_group.exit.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %do.body.preheader
  %n.1 = phi ptr [ %add.ptr.i71, %if.end10.do.body_crit_edge ], [ %m.0141, %do.body.preheader ]
  %call7 = tail call fastcc i32 @propagate_one(ptr noundef %n.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end10:                                         ; preds = %do.body
  %mnt_share.i70 = getelementptr inbounds %struct.mount, ptr %n.1, i32 0, i32 12
  %27 = ptrtoint ptr %mnt_share.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mnt_share.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %28, i32 -88
  %cmp12.not = icmp eq ptr %add.ptr.i71, %m.0141
  br i1 %cmp12.not, label %if.end10.while.body2.i78_crit_edge, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end10.while.body2.i78_crit_edge:               ; preds = %if.end10
  br label %while.body2.i78

while.body2.i78:                                  ; preds = %while.body2.i78.backedge, %if.end10.while.body2.i78_crit_edge
  %m.addr.1.i75 = phi ptr [ %m.addr.1.i75.be, %while.body2.i78.backedge ], [ %m.0141, %if.end10.while.body2.i78_crit_edge ]
  %mnt_ns.i76 = getelementptr inbounds %struct.mount, ptr %m.addr.1.i75, i32 0, i32 16
  %29 = ptrtoint ptr %mnt_ns.i76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mnt_ns.i76, align 4
  %tobool.not.i77 = icmp eq ptr %30, null
  br i1 %tobool.not.i77, label %while.body2.i78.if.end.i91_crit_edge, label %lor.lhs.false.i81

while.body2.i78.if.end.i91_crit_edge:             ; preds = %while.body2.i78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i91

lor.lhs.false.i81:                                ; preds = %while.body2.i78
  %seq.i.i79 = getelementptr inbounds %struct.mnt_namespace, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %seq.i.i79 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %seq.i.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp.i.i80 = icmp eq i64 %32, 0
  br i1 %cmp.i.i80, label %lor.lhs.false.i81.if.end.i91_crit_edge, label %land.lhs.true.i84

lor.lhs.false.i81.if.end.i91_crit_edge:           ; preds = %lor.lhs.false.i81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i91

land.lhs.true.i84:                                ; preds = %lor.lhs.false.i81
  %mnt_slave_list.i82 = getelementptr inbounds %struct.mount, ptr %m.addr.1.i75, i32 0, i32 13
  %33 = ptrtoint ptr %mnt_slave_list.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %mnt_slave_list.i82, align 4
  %cmp.i68.not.i83 = icmp eq ptr %34, %mnt_slave_list.i82
  br i1 %cmp.i68.not.i83, label %land.lhs.true.i84.if.end.i91_crit_edge, label %land.lhs.true.i84.next_group.exit119_crit_edge

land.lhs.true.i84.next_group.exit119_crit_edge:   ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_group.exit119

land.lhs.true.i84.if.end.i91_crit_edge:           ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i91

if.end.i91:                                       ; preds = %land.lhs.true.i84.if.end.i91_crit_edge, %lor.lhs.false.i81.if.end.i91_crit_edge, %while.body2.i78.if.end.i91_crit_edge
  %mnt_share.i.i87 = getelementptr inbounds %struct.mount, ptr %m.addr.1.i75, i32 0, i32 12
  %35 = ptrtoint ptr %mnt_share.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mnt_share.i.i87, align 4
  %add.ptr.i69.i88 = getelementptr i8, ptr %36, i32 -88
  %mnt_group_id.i89 = getelementptr inbounds %struct.mount, ptr %m.addr.1.i75, i32 0, i32 23
  %37 = ptrtoint ptr %mnt_group_id.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mnt_group_id.i89, align 4
  %39 = ptrtoint ptr %mnt_group_id8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mnt_group_id8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i90 = icmp eq i32 %38, %40
  br i1 %cmp.i90, label %if.then9.i93, label %if.else.i97

if.then9.i93:                                     ; preds = %if.end.i91
  %cmp10.i92 = icmp eq ptr %add.ptr.i69.i88, %dest_mnt
  br i1 %cmp10.i92, label %if.then9.i93.out_crit_edge, label %if.then9.i93.while.body2.i78.backedge_crit_edge

if.then9.i93.while.body2.i78.backedge_crit_edge:  ; preds = %if.then9.i93
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i78.backedge

if.then9.i93.out_crit_edge:                       ; preds = %if.then9.i93
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.else.i97:                                      ; preds = %if.end.i91
  %mnt_slave.i94 = getelementptr inbounds %struct.mount, ptr %m.addr.1.i75, i32 0, i32 14
  %41 = ptrtoint ptr %mnt_slave.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mnt_slave.i94, align 4
  %mnt_slave14.i95 = getelementptr i8, ptr %36, i32 16
  %cmp15.not.i96 = icmp eq ptr %42, %mnt_slave14.i95
  br i1 %cmp15.not.i96, label %if.else.i97.while.body2.i78.backedge_crit_edge, label %if.else.i97.while.body20.i104_crit_edge

if.else.i97.while.body20.i104_crit_edge:          ; preds = %if.else.i97
  br label %while.body20.i104

if.else.i97.while.body2.i78.backedge_crit_edge:   ; preds = %if.else.i97
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i78.backedge

while.body20.i104:                                ; preds = %if.end33.i114.while.body20.i104_crit_edge, %if.else.i97.while.body20.i104_crit_edge
  %m.addr.3.i99 = phi ptr [ %44, %if.end33.i114.while.body20.i104_crit_edge ], [ %m.addr.1.i75, %if.else.i97.while.body20.i104_crit_edge ]
  %mnt_master.i100 = getelementptr inbounds %struct.mount, ptr %m.addr.3.i99, i32 0, i32 15
  %43 = ptrtoint ptr %mnt_master.i100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mnt_master.i100, align 4
  %mnt_slave21.i101 = getelementptr inbounds %struct.mount, ptr %m.addr.3.i99, i32 0, i32 14
  %45 = ptrtoint ptr %mnt_slave21.i101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mnt_slave21.i101, align 4
  %mnt_slave_list23.i102 = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 13
  %cmp24.not.i103 = icmp eq ptr %46, %mnt_slave_list23.i102
  br i1 %cmp24.not.i103, label %if.end27.i110, label %while.body20.i104.next_group.exit119_crit_edge

while.body20.i104.next_group.exit119_crit_edge:   ; preds = %while.body20.i104
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_group.exit119

if.end27.i110:                                    ; preds = %while.body20.i104
  %mnt_share.i71.i107 = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 12
  %47 = ptrtoint ptr %mnt_share.i71.i107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mnt_share.i71.i107, align 4
  %mnt_group_id29.i108 = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 23
  %49 = ptrtoint ptr %mnt_group_id29.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mnt_group_id29.i108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %40)
  %cmp31.i109 = icmp eq i32 %50, %40
  br i1 %cmp31.i109, label %if.end27.i110.while.end43.i117_crit_edge, label %if.end33.i114

if.end27.i110.while.end43.i117_crit_edge:         ; preds = %if.end27.i110
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43.i117

if.end33.i114:                                    ; preds = %if.end27.i110
  %mnt_slave34.i111 = getelementptr inbounds %struct.mount, ptr %44, i32 0, i32 14
  %51 = ptrtoint ptr %mnt_slave34.i111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mnt_slave34.i111, align 4
  %mnt_slave36.i112 = getelementptr i8, ptr %48, i32 16
  %cmp37.i113 = icmp eq ptr %52, %mnt_slave36.i112
  br i1 %cmp37.i113, label %if.end33.i114.while.end43.i117_crit_edge, label %if.end33.i114.while.body20.i104_crit_edge

if.end33.i114.while.body20.i104_crit_edge:        ; preds = %if.end33.i114
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body20.i104

if.end33.i114.while.end43.i117_crit_edge:         ; preds = %if.end33.i114
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end43.i117

while.end43.i117:                                 ; preds = %if.end33.i114.while.end43.i117_crit_edge, %if.end27.i110.while.end43.i117_crit_edge
  %add.ptr.i72.le.i115 = getelementptr i8, ptr %48, i32 -88
  %cmp44.i116 = icmp eq ptr %add.ptr.i72.le.i115, %dest_mnt
  br i1 %cmp44.i116, label %while.end43.i117.out_crit_edge, label %while.end43.i117.while.body2.i78.backedge_crit_edge

while.end43.i117.while.body2.i78.backedge_crit_edge: ; preds = %while.end43.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body2.i78.backedge

while.end43.i117.out_crit_edge:                   ; preds = %while.end43.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.body2.i78.backedge:                         ; preds = %while.end43.i117.while.body2.i78.backedge_crit_edge, %if.else.i97.while.body2.i78.backedge_crit_edge, %if.then9.i93.while.body2.i78.backedge_crit_edge
  %m.addr.1.i75.be = phi ptr [ %add.ptr.i72.le.i115, %while.end43.i117.while.body2.i78.backedge_crit_edge ], [ %add.ptr.i69.i88, %if.else.i97.while.body2.i78.backedge_crit_edge ], [ %add.ptr.i69.i88, %if.then9.i93.while.body2.i78.backedge_crit_edge ]
  br label %while.body2.i78

next_group.exit119:                               ; preds = %while.body20.i104.next_group.exit119_crit_edge, %land.lhs.true.i84.next_group.exit119_crit_edge
  %.lcssa.sink = phi ptr [ %46, %while.body20.i104.next_group.exit119_crit_edge ], [ %34, %land.lhs.true.i84.next_group.exit119_crit_edge ]
  %add.ptr.i.i85 = getelementptr i8, ptr %.lcssa.sink, i32 -104
  %tobool5.not = icmp eq ptr %add.ptr.i.i85, null
  br i1 %tobool5.not, label %next_group.exit119.out_crit_edge, label %next_group.exit119.do.body.preheader_crit_edge

next_group.exit119.do.body.preheader_crit_edge:   ; preds = %next_group.exit119
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.preheader

next_group.exit119.out_crit_edge:                 ; preds = %next_group.exit119
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %next_group.exit119.out_crit_edge, %while.end43.i117.out_crit_edge, %if.then9.i93.out_crit_edge, %do.body.out_crit_edge, %next_group.exit.out_crit_edge, %while.end43.i.out_crit_edge, %if.then9.i.out_crit_edge, %for.body.out_crit_edge
  %ret.2 = phi i32 [ 0, %next_group.exit.out_crit_edge ], [ 0, %if.then9.i93.out_crit_edge ], [ 0, %while.end43.i117.out_crit_edge ], [ %call7, %do.body.out_crit_edge ], [ 0, %next_group.exit119.out_crit_edge ], [ 0, %if.then9.i.out_crit_edge ], [ 0, %while.end43.i.out_crit_edge ], [ %call1, %for.body.out_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  %53 = ptrtoint ptr %tree_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %n.2142 = load ptr, ptr %tree_list, align 4
  %tobool19.not143 = icmp eq ptr %n.2142, null
  br i1 %tobool19.not143, label %out.for.end38_crit_edge, label %out.for.body20_crit_edge

out.for.body20_crit_edge:                         ; preds = %out
  br label %for.body20

out.for.end38_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end38

for.body20:                                       ; preds = %for.inc27.for.body20_crit_edge, %out.for.body20_crit_edge
  %n.2144 = phi ptr [ %n.2, %for.inc27.for.body20_crit_edge ], [ %n.2142, %out.for.body20_crit_edge ]
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %n.2144, i32 0, i32 1
  %54 = ptrtoint ptr %mnt_parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mnt_parent, align 4
  %mnt_master21 = getelementptr inbounds %struct.mount, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %mnt_master21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mnt_master21, align 4
  %58 = ptrtoint ptr %mnt_master to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mnt_master, align 4
  %cmp23.not = icmp eq ptr %57, %59
  br i1 %cmp23.not, label %for.body20.for.inc27_crit_edge, label %if.then24

for.body20.for.inc27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc27

if.then24:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %57, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %61, -67108865
  store i32 %and, ptr %mnt_flags, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %if.then24, %for.body20.for.inc27_crit_edge
  %62 = ptrtoint ptr %n.2144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %n.2 = load ptr, ptr %n.2144, align 4
  %tobool19.not = icmp eq ptr %n.2, null
  br i1 %tobool19.not, label %for.inc27.for.end38_crit_edge, label %for.inc27.for.body20_crit_edge

for.inc27.for.body20_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body20

for.inc27.for.end38_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end38

for.end38:                                        ; preds = %for.inc27.for.end38_crit_edge, %out.for.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @propagate_one(ptr noundef %m) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_ns = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 16
  %0 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_ns, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %lor.lhs.false

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup47

lor.lhs.false:                                    ; preds = %entry
  %seq.i = getelementptr inbounds %struct.mnt_namespace, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i = icmp eq i64 %3, 0
  br i1 %cmp.i, label %lor.lhs.false.cleanup47_crit_edge, label %if.end

lor.lhs.false.cleanup47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup47

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr @mp, align 4
  %m_dentry = getelementptr inbounds %struct.mountpoint, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %m_dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_dentry, align 4
  %mnt = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 3
  %7 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt, align 4
  %call2 = tail call zeroext i1 @is_subdir(ptr noundef %6, ptr noundef %8) #3
  br i1 %call2, label %if.end4, label %if.end.cleanup47_crit_edge

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup47

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr @last_dest, align 4
  %mnt_group_id.i = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 23
  %10 = ptrtoint ptr %mnt_group_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mnt_group_id.i, align 4
  %mnt_group_id1.i = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 23
  %12 = ptrtoint ptr %mnt_group_id1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mnt_group_id1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i76 = icmp eq i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i = icmp ne i32 %11, 0
  %spec.select.i = and i1 %tobool.i, %cmp.i76
  br i1 %spec.select.i, label %if.end4.if.end29_crit_edge, label %for.cond.preheader

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

for.cond.preheader:                               ; preds = %if.end4
  %14 = load ptr, ptr @dest_master, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false7.for.cond_crit_edge, %for.cond.preheader
  %n.0 = phi ptr [ %16, %lor.lhs.false7.for.cond_crit_edge ], [ %m, %for.cond.preheader ]
  %mnt_master = getelementptr inbounds %struct.mount, ptr %n.0, i32 0, i32 15
  %15 = ptrtoint ptr %mnt_master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mnt_master, align 4
  %cmp = icmp eq ptr %16, %14
  br i1 %cmp, label %for.cond.for.end_crit_edge, label %lor.lhs.false7

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

lor.lhs.false7:                                   ; preds = %for.cond
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %16, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %18, 67108864
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false7.for.cond_crit_edge, label %lor.lhs.false7.for.end_crit_edge

lor.lhs.false7.for.end_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

lor.lhs.false7.for.cond_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false7.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.lcssa101 = phi ptr [ %14, %for.cond.for.end_crit_edge ], [ %16, %lor.lhs.false7.for.end_crit_edge ]
  %19 = load ptr, ptr @first_source, align 4
  %last_source.promoted = load ptr, ptr @last_source, align 4
  %cmp1297 = icmp eq ptr %last_source.promoted, %19
  br i1 %cmp1297, label %for.end.do.end_crit_edge, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  br label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %for.end.if.end14_crit_edge
  %20 = phi ptr [ %32, %cleanup.if.end14_crit_edge ], [ %last_source.promoted, %for.end.if.end14_crit_edge ]
  %.in = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.in, align 4
  %mnt_master15 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %mnt_master15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mnt_master15, align 4
  %cmp16 = icmp eq ptr %24, %.lcssa101
  br i1 %cmp16, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %mnt_group_id.i77 = getelementptr inbounds %struct.mount, ptr %n.0, i32 0, i32 23
  %25 = ptrtoint ptr %mnt_group_id.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mnt_group_id.i77, align 4
  %mnt_group_id1.i78 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 23
  %27 = ptrtoint ptr %mnt_group_id1.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mnt_group_id1.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i79 = icmp eq i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i80 = icmp ne i32 %26, 0
  %spec.select.i81 = and i1 %tobool.i80, %cmp.i79
  br i1 %spec.select.i81, label %land.lhs.true.do.end_crit_edge, label %cleanup.thread88

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

cleanup.thread88:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_master2189 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 15
  %29 = ptrtoint ptr %mnt_master2189 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mnt_master2189, align 4
  store ptr %30, ptr @last_source, align 4
  br label %do.end

cleanup:                                          ; preds = %if.end14
  %mnt_master21 = getelementptr inbounds %struct.mount, ptr %20, i32 0, i32 15
  %31 = ptrtoint ptr %mnt_master21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mnt_master21, align 4
  store ptr %32, ptr @last_source, align 4
  %cmp12 = icmp eq ptr %32, %19
  br i1 %cmp12, label %cleanup.do.end_crit_edge, label %cleanup.if.end14_crit_edge

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %cleanup.do.end_crit_edge, %cleanup.thread88, %land.lhs.true.do.end_crit_edge, %for.end.do.end_crit_edge
  %mnt_flags24 = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %mnt_flags24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mnt_flags24, align 4
  %and25 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select = select i1 %tobool26.not, i32 2, i32 10
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end4.if.end29_crit_edge
  %type.1 = phi i32 [ %spec.select, %do.end ], [ 8, %if.end4.if.end29_crit_edge ]
  %35 = load ptr, ptr @last_source, align 4
  %mnt30 = getelementptr inbounds %struct.mount, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %mnt30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mnt30, align 4
  %call32 = tail call ptr @copy_tree(ptr noundef %35, ptr noundef %37, i32 noundef %type.1) #3
  %cmp.i82 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %call32 to i32
  br label %cleanup47

if.end36:                                         ; preds = %if.end29
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  %39 = load ptr, ptr @mp, align 4
  tail call void @mnt_set_mountpoint(ptr noundef %m, ptr noundef %39, ptr noundef %call32) #3
  %mnt_master37 = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 15
  %40 = ptrtoint ptr %mnt_master37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mnt_master37, align 4
  %42 = load ptr, ptr @dest_master, align 4
  %cmp38.not = icmp eq ptr %41, %42
  br i1 %cmp38.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_flags42 = getelementptr inbounds %struct.mount, ptr %41, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %mnt_flags42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mnt_flags42, align 4
  %or43 = or i32 %44, 67108864
  store i32 %or43, ptr %mnt_flags42, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #3
  store ptr %m, ptr @last_dest, align 4
  store ptr %call32, ptr @last_source, align 4
  %45 = load ptr, ptr @list, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %call32, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end44.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end44.hlist_add_head.exit_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call32, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end44.hlist_add_head.exit_crit_edge
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call32, ptr %45, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call32, i32 0, i32 1
  %51 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %45, ptr %pprev34.i, align 4
  %52 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mnt_ns, align 4
  %call46 = tail call i32 @count_mounts(ptr noundef %53, ptr noundef %call32) #3
  br label %cleanup47

cleanup47:                                        ; preds = %hlist_add_head.exit, %if.then34, %if.end.cleanup47_crit_edge, %lor.lhs.false.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.0 = phi i32 [ %38, %if.then34 ], [ %call46, %hlist_add_head.exit ], [ 0, %lor.lhs.false.cleanup47_crit_edge ], [ 0, %entry.cleanup47_crit_edge ], [ 0, %if.end.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @propagate_mount_busy(ptr noundef %mnt, i32 noundef %refcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_parent, align 4
  %cmp = icmp eq ptr %1, %mnt
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @mnt_get_count(ptr noundef %mnt) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %refcnt)
  %cmp.i = icmp sgt i32 %call.i, %refcnt
  %conv.i = zext i1 %cmp.i to i32
  br label %cleanup27

if.end:                                           ; preds = %entry
  %mnt_mounts = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 6
  %2 = ptrtoint ptr %mnt_mounts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mnt_mounts, align 4
  %cmp.i46.not = icmp eq ptr %3, %mnt_mounts
  br i1 %cmp.i46.not, label %lor.lhs.false, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

lor.lhs.false:                                    ; preds = %if.end
  %call.i48 = tail call i32 @mnt_get_count(ptr noundef %mnt) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i48, i32 %refcnt)
  %cmp.i49.not = icmp sgt i32 %call.i48, %refcnt
  br i1 %cmp.i49.not, label %lor.lhs.false.cleanup27_crit_edge, label %if.end5

lor.lhs.false.cleanup27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end5:                                          ; preds = %lor.lhs.false
  %mnt_ns.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt_ns.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %lor.lhs.false.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.end5
  %seq.i.i = getelementptr inbounds %struct.mnt_namespace, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.i = icmp eq i64 %7, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %mnt_slave_list.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i28.not.i = icmp eq ptr %9, %mnt_slave_list.i
  br i1 %cmp.i28.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -104
  br label %propagation_next.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %mnt_master5.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %mnt_master5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mnt_master5.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %if.end.i
  %m.addr.0.i = phi ptr [ %1, %if.end.i ], [ %13, %if.else.i.while.body.i_crit_edge ]
  %mnt_master.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 15
  %12 = ptrtoint ptr %mnt_master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mnt_master.i, align 4
  %cmp.i51 = icmp eq ptr %13, %11
  br i1 %cmp.i51, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %while.body.i
  %mnt_share.i.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 12
  %14 = ptrtoint ptr %mnt_share.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_share.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %15, i32 -88
  %cmp8.i = icmp eq ptr %add.ptr.i29.i, %1
  br i1 %cmp8.i, label %if.then6.i.cleanup27_crit_edge, label %if.then6.i.propagation_next.exit_crit_edge

if.then6.i.propagation_next.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit

if.then6.i.cleanup27_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.i:                                        ; preds = %while.body.i
  %mnt_slave.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 14
  %16 = ptrtoint ptr %mnt_slave.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mnt_slave.i, align 4
  %mnt_slave_list10.i = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 13
  %cmp11.not.i = icmp eq ptr %17, %mnt_slave_list10.i
  br i1 %cmp11.not.i, label %if.else.i.while.body.i_crit_edge, label %if.then12.i

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i = getelementptr i8, ptr %17, i32 -104
  br label %propagation_next.exit

propagation_next.exit:                            ; preds = %if.then12.i, %if.then6.i.propagation_next.exit_crit_edge, %if.then.i
  %retval.2.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %add.ptr.i30.i, %if.then12.i ], [ %add.ptr.i29.i, %if.then6.i.propagation_next.exit_crit_edge ]
  %tobool7.not95 = icmp eq ptr %retval.2.i, null
  br i1 %tobool7.not95, label %propagation_next.exit.cleanup27_crit_edge, label %for.body.lr.ph

propagation_next.exit.cleanup27_crit_edge:        ; preds = %propagation_next.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

for.body.lr.ph:                                   ; preds = %propagation_next.exit
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 2
  %mnt_master5.i69 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %propagation_next.exit87.for.body_crit_edge, %for.body.lr.ph
  %m.096 = phi ptr [ %retval.2.i, %for.body.lr.ph ], [ %retval.2.i86, %propagation_next.exit87.for.body_crit_edge ]
  %mnt8 = getelementptr inbounds %struct.mount, ptr %m.096, i32 0, i32 3
  %18 = ptrtoint ptr %mnt_mountpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mnt_mountpoint, align 4
  %call9 = tail call ptr @__lookup_mnt(ptr noundef %mnt8, ptr noundef %19) #3
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %mnt_mounts.i = getelementptr inbounds %struct.mount, ptr %call9, i32 0, i32 6
  %20 = ptrtoint ptr %mnt_mounts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mnt_mounts.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %21, %mnt_mounts.i
  br i1 %cmp.i.not.i.i, label %if.end12.if.else_crit_edge, label %list_is_singular.exit.i

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

list_is_singular.exit.i:                          ; preds = %if.end12
  %prev.i.i = getelementptr inbounds %struct.mount, ptr %call9, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %23
  br i1 %cmp.i.not.i, label %if.end.i53, label %list_is_singular.exit.i.if.else_crit_edge

list_is_singular.exit.i.if.else_crit_edge:        ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.end.i53:                                       ; preds = %list_is_singular.exit.i
  %mnt_mountpoint.i = getelementptr i8, ptr %21, i32 -40
  %24 = ptrtoint ptr %mnt_mountpoint.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mnt_mountpoint.i, align 4
  %mnt2.i = getelementptr inbounds %struct.mount, ptr %call9, i32 0, i32 3
  %26 = ptrtoint ptr %mnt2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mnt2.i, align 4
  %cmp.not.i = icmp ne ptr %25, %27
  %add.ptr.i = getelementptr i8, ptr %21, i32 -52
  %tobool14.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end.i53.if.else_crit_edge, label %if.end.i53.if.end21_crit_edge

if.end.i53.if.end21_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.end.i53.if.else_crit_edge:                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.else:                                          ; preds = %if.end.i53.if.else_crit_edge, %list_is_singular.exit.i.if.else_crit_edge, %if.end12.if.else_crit_edge
  %28 = ptrtoint ptr %mnt_mounts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %mnt_mounts.i, align 4
  %cmp.i54.not = icmp eq ptr %29, %mnt_mounts.i
  br i1 %cmp.i54.not, label %if.else.if.end21_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.end.i53.if.end21_crit_edge
  %count.0 = phi i32 [ 1, %if.else.if.end21_crit_edge ], [ 2, %if.end.i53.if.end21_crit_edge ]
  %call.i56 = tail call i32 @mnt_get_count(ptr noundef nonnull %call9) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i56, i32 %count.0)
  %cmp.i57.not = icmp sgt i32 %call.i56, %count.0
  br i1 %cmp.i57.not, label %if.end21.cleanup27_crit_edge, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end21.cleanup27_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %mnt_ns.i59 = getelementptr inbounds %struct.mount, ptr %m.096, i32 0, i32 16
  %30 = ptrtoint ptr %mnt_ns.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mnt_ns.i59, align 4
  %tobool.not.i60 = icmp eq ptr %31, null
  br i1 %tobool.not.i60, label %for.inc.if.end.i70_crit_edge, label %lor.lhs.false.i63

for.inc.if.end.i70_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i70

lor.lhs.false.i63:                                ; preds = %for.inc
  %seq.i.i61 = getelementptr inbounds %struct.mnt_namespace, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %seq.i.i61 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %seq.i.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp.i.i62 = icmp eq i64 %33, 0
  br i1 %cmp.i.i62, label %lor.lhs.false.i63.if.end.i70_crit_edge, label %land.lhs.true.i66

lor.lhs.false.i63.if.end.i70_crit_edge:           ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i70

land.lhs.true.i66:                                ; preds = %lor.lhs.false.i63
  %mnt_slave_list.i64 = getelementptr inbounds %struct.mount, ptr %m.096, i32 0, i32 13
  %34 = ptrtoint ptr %mnt_slave_list.i64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %mnt_slave_list.i64, align 4
  %cmp.i28.not.i65 = icmp eq ptr %35, %mnt_slave_list.i64
  br i1 %cmp.i28.not.i65, label %land.lhs.true.i66.if.end.i70_crit_edge, label %if.then.i68

land.lhs.true.i66.if.end.i70_crit_edge:           ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i70

if.then.i68:                                      ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i67 = getelementptr i8, ptr %35, i32 -104
  br label %propagation_next.exit87

if.end.i70:                                       ; preds = %land.lhs.true.i66.if.end.i70_crit_edge, %lor.lhs.false.i63.if.end.i70_crit_edge, %for.inc.if.end.i70_crit_edge
  %36 = ptrtoint ptr %mnt_master5.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mnt_master5.i69, align 4
  br label %while.body.i74

while.body.i74:                                   ; preds = %if.else.i83.while.body.i74_crit_edge, %if.end.i70
  %m.addr.0.i71 = phi ptr [ %m.096, %if.end.i70 ], [ %39, %if.else.i83.while.body.i74_crit_edge ]
  %mnt_master.i72 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i71, i32 0, i32 15
  %38 = ptrtoint ptr %mnt_master.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mnt_master.i72, align 4
  %cmp.i73 = icmp eq ptr %39, %37
  br i1 %cmp.i73, label %if.then6.i79, label %if.else.i83

if.then6.i79:                                     ; preds = %while.body.i74
  %mnt_share.i.i75 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i71, i32 0, i32 12
  %40 = ptrtoint ptr %mnt_share.i.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mnt_share.i.i75, align 4
  %add.ptr.i29.i76 = getelementptr i8, ptr %41, i32 -88
  %cmp8.i77 = icmp eq ptr %add.ptr.i29.i76, %1
  br i1 %cmp8.i77, label %if.then6.i79.cleanup27_crit_edge, label %if.then6.i79.propagation_next.exit87_crit_edge

if.then6.i79.propagation_next.exit87_crit_edge:   ; preds = %if.then6.i79
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit87

if.then6.i79.cleanup27_crit_edge:                 ; preds = %if.then6.i79
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.else.i83:                                      ; preds = %while.body.i74
  %mnt_slave.i80 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i71, i32 0, i32 14
  %42 = ptrtoint ptr %mnt_slave.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mnt_slave.i80, align 4
  %mnt_slave_list10.i81 = getelementptr inbounds %struct.mount, ptr %39, i32 0, i32 13
  %cmp11.not.i82 = icmp eq ptr %43, %mnt_slave_list10.i81
  br i1 %cmp11.not.i82, label %if.else.i83.while.body.i74_crit_edge, label %if.then12.i85

if.else.i83.while.body.i74_crit_edge:             ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i74

if.then12.i85:                                    ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i84 = getelementptr i8, ptr %43, i32 -104
  br label %propagation_next.exit87

propagation_next.exit87:                          ; preds = %if.then12.i85, %if.then6.i79.propagation_next.exit87_crit_edge, %if.then.i68
  %retval.2.i86 = phi ptr [ %add.ptr.i.i67, %if.then.i68 ], [ %add.ptr.i30.i84, %if.then12.i85 ], [ %add.ptr.i29.i76, %if.then6.i79.propagation_next.exit87_crit_edge ]
  %tobool7.not = icmp eq ptr %retval.2.i86, null
  br i1 %tobool7.not, label %propagation_next.exit87.cleanup27_crit_edge, label %propagation_next.exit87.for.body_crit_edge

propagation_next.exit87.for.body_crit_edge:       ; preds = %propagation_next.exit87
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

propagation_next.exit87.cleanup27_crit_edge:      ; preds = %propagation_next.exit87
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

cleanup27:                                        ; preds = %propagation_next.exit87.cleanup27_crit_edge, %if.then6.i79.cleanup27_crit_edge, %if.end21.cleanup27_crit_edge, %propagation_next.exit.cleanup27_crit_edge, %if.then6.i.cleanup27_crit_edge, %lor.lhs.false.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %if.then
  %retval.2 = phi i32 [ %conv.i, %if.then ], [ 1, %lor.lhs.false.cleanup27_crit_edge ], [ 1, %if.end.cleanup27_crit_edge ], [ 0, %propagation_next.exit.cleanup27_crit_edge ], [ 0, %if.then6.i.cleanup27_crit_edge ], [ 0, %if.then6.i79.cleanup27_crit_edge ], [ 0, %propagation_next.exit87.cleanup27_crit_edge ], [ 1, %if.end21.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lookup_mnt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @propagate_mount_unlock(ptr noundef readonly %mnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_parent, align 4
  %cmp = icmp eq ptr %1, %mnt
  br i1 %cmp, label %do.body2, label %do.end7, !prof !21

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/pnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #3, !srcloc !22
  unreachable

do.end7:                                          ; preds = %entry
  %mnt_ns.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_ns.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end7.if.end.i_crit_edge, label %lor.lhs.false.i

do.end7.if.end.i_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %do.end7
  %seq.i.i = getelementptr inbounds %struct.mnt_namespace, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i.i = icmp eq i64 %5, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %mnt_slave_list.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i28.not.i = icmp eq ptr %7, %mnt_slave_list.i
  br i1 %cmp.i28.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -104
  br label %propagation_next.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %do.end7.if.end.i_crit_edge
  %mnt_master5.i = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %mnt_master5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_master5.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %if.end.i
  %m.addr.0.i = phi ptr [ %1, %if.end.i ], [ %11, %if.else.i.while.body.i_crit_edge ]
  %mnt_master.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 15
  %10 = ptrtoint ptr %mnt_master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mnt_master.i, align 4
  %cmp.i = icmp eq ptr %11, %9
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %while.body.i
  %mnt_share.i.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 12
  %12 = ptrtoint ptr %mnt_share.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mnt_share.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %13, i32 -88
  %cmp8.i = icmp eq ptr %add.ptr.i29.i, %1
  br i1 %cmp8.i, label %if.then6.i.for.end_crit_edge, label %if.then6.i.propagation_next.exit_crit_edge

if.then6.i.propagation_next.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit

if.then6.i.for.end_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else.i:                                        ; preds = %while.body.i
  %mnt_slave.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 14
  %14 = ptrtoint ptr %mnt_slave.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_slave.i, align 4
  %mnt_slave_list10.i = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 13
  %cmp11.not.i = icmp eq ptr %15, %mnt_slave_list10.i
  br i1 %cmp11.not.i, label %if.else.i.while.body.i_crit_edge, label %if.then12.i

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i = getelementptr i8, ptr %15, i32 -104
  br label %propagation_next.exit

propagation_next.exit:                            ; preds = %if.then12.i, %if.then6.i.propagation_next.exit_crit_edge, %if.then.i
  %retval.2.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %add.ptr.i30.i, %if.then12.i ], [ %add.ptr.i29.i, %if.then6.i.propagation_next.exit_crit_edge ]
  %tobool8.not56 = icmp eq ptr %retval.2.i, null
  br i1 %tobool8.not56, label %propagation_next.exit.for.end_crit_edge, label %for.body.lr.ph

propagation_next.exit.for.end_crit_edge:          ; preds = %propagation_next.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %propagation_next.exit
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 2
  %mnt_master5.i34 = getelementptr inbounds %struct.mount, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %propagation_next.exit52.for.body_crit_edge, %for.body.lr.ph
  %m.057 = phi ptr [ %retval.2.i, %for.body.lr.ph ], [ %retval.2.i51, %propagation_next.exit52.for.body_crit_edge ]
  %mnt9 = getelementptr inbounds %struct.mount, ptr %m.057, i32 0, i32 3
  %16 = ptrtoint ptr %mnt_mountpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mnt_mountpoint, align 4
  %call10 = tail call ptr @__lookup_mnt(ptr noundef %mnt9, ptr noundef %17) #3
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %call10, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %19, -8388609
  store i32 %and, ptr %mnt_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %mnt_ns.i24 = getelementptr inbounds %struct.mount, ptr %m.057, i32 0, i32 16
  %20 = ptrtoint ptr %mnt_ns.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mnt_ns.i24, align 4
  %tobool.not.i25 = icmp eq ptr %21, null
  br i1 %tobool.not.i25, label %for.inc.if.end.i35_crit_edge, label %lor.lhs.false.i28

for.inc.if.end.i35_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i35

lor.lhs.false.i28:                                ; preds = %for.inc
  %seq.i.i26 = getelementptr inbounds %struct.mnt_namespace, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %seq.i.i26 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seq.i.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.i.i27 = icmp eq i64 %23, 0
  br i1 %cmp.i.i27, label %lor.lhs.false.i28.if.end.i35_crit_edge, label %land.lhs.true.i31

lor.lhs.false.i28.if.end.i35_crit_edge:           ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i35

land.lhs.true.i31:                                ; preds = %lor.lhs.false.i28
  %mnt_slave_list.i29 = getelementptr inbounds %struct.mount, ptr %m.057, i32 0, i32 13
  %24 = ptrtoint ptr %mnt_slave_list.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %mnt_slave_list.i29, align 4
  %cmp.i28.not.i30 = icmp eq ptr %25, %mnt_slave_list.i29
  br i1 %cmp.i28.not.i30, label %land.lhs.true.i31.if.end.i35_crit_edge, label %if.then.i33

land.lhs.true.i31.if.end.i35_crit_edge:           ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i35

if.then.i33:                                      ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i32 = getelementptr i8, ptr %25, i32 -104
  br label %propagation_next.exit52

if.end.i35:                                       ; preds = %land.lhs.true.i31.if.end.i35_crit_edge, %lor.lhs.false.i28.if.end.i35_crit_edge, %for.inc.if.end.i35_crit_edge
  %26 = ptrtoint ptr %mnt_master5.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mnt_master5.i34, align 4
  br label %while.body.i39

while.body.i39:                                   ; preds = %if.else.i48.while.body.i39_crit_edge, %if.end.i35
  %m.addr.0.i36 = phi ptr [ %m.057, %if.end.i35 ], [ %29, %if.else.i48.while.body.i39_crit_edge ]
  %mnt_master.i37 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i36, i32 0, i32 15
  %28 = ptrtoint ptr %mnt_master.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mnt_master.i37, align 4
  %cmp.i38 = icmp eq ptr %29, %27
  br i1 %cmp.i38, label %if.then6.i44, label %if.else.i48

if.then6.i44:                                     ; preds = %while.body.i39
  %mnt_share.i.i40 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i36, i32 0, i32 12
  %30 = ptrtoint ptr %mnt_share.i.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mnt_share.i.i40, align 4
  %add.ptr.i29.i41 = getelementptr i8, ptr %31, i32 -88
  %cmp8.i42 = icmp eq ptr %add.ptr.i29.i41, %1
  br i1 %cmp8.i42, label %if.then6.i44.for.end_crit_edge, label %if.then6.i44.propagation_next.exit52_crit_edge

if.then6.i44.propagation_next.exit52_crit_edge:   ; preds = %if.then6.i44
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit52

if.then6.i44.for.end_crit_edge:                   ; preds = %if.then6.i44
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else.i48:                                      ; preds = %while.body.i39
  %mnt_slave.i45 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i36, i32 0, i32 14
  %32 = ptrtoint ptr %mnt_slave.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mnt_slave.i45, align 4
  %mnt_slave_list10.i46 = getelementptr inbounds %struct.mount, ptr %29, i32 0, i32 13
  %cmp11.not.i47 = icmp eq ptr %33, %mnt_slave_list10.i46
  br i1 %cmp11.not.i47, label %if.else.i48.while.body.i39_crit_edge, label %if.then12.i50

if.else.i48.while.body.i39_crit_edge:             ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i39

if.then12.i50:                                    ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i49 = getelementptr i8, ptr %33, i32 -104
  br label %propagation_next.exit52

propagation_next.exit52:                          ; preds = %if.then12.i50, %if.then6.i44.propagation_next.exit52_crit_edge, %if.then.i33
  %retval.2.i51 = phi ptr [ %add.ptr.i.i32, %if.then.i33 ], [ %add.ptr.i30.i49, %if.then12.i50 ], [ %add.ptr.i29.i41, %if.then6.i44.propagation_next.exit52_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.2.i51, null
  br i1 %tobool8.not, label %propagation_next.exit52.for.end_crit_edge, label %propagation_next.exit52.for.body_crit_edge

propagation_next.exit52.for.body_crit_edge:       ; preds = %propagation_next.exit52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

propagation_next.exit52.for.end_crit_edge:        ; preds = %propagation_next.exit52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %propagation_next.exit52.for.end_crit_edge, %if.then6.i44.for.end_crit_edge, %propagation_next.exit.for.end_crit_edge, %if.then6.i.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @propagate_umount(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %to_restore = alloca %struct.list_head, align 4
  %to_umount = alloca %struct.list_head, align 4
  %visited = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_restore) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %to_restore, i32 0, i32 1
  %1 = ptrtoint ptr %to_restore to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_restore, ptr %to_restore, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_restore, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_umount) #3
  %3 = getelementptr inbounds %struct.list_head, ptr %to_umount, i32 0, i32 1
  %4 = ptrtoint ptr %to_umount to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %to_umount, ptr %to_umount, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %to_umount, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %visited) #3
  %6 = getelementptr inbounds %struct.list_head, ptr %visited, i32 0, i32 1
  %7 = ptrtoint ptr %visited to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %visited, ptr %visited, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %visited, ptr %6, align 4
  %.pn.in177 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn178 = load ptr, ptr %.pn.in177, align 4
  %cmp.not179 = icmp eq ptr %.pn178, %list
  br i1 %cmp.not179, label %entry.for.end45_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end45

for.body:                                         ; preds = %cleanup35.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn180 = phi ptr [ %.pn, %cleanup35.for.body_crit_edge ], [ %.pn178, %entry.for.body_crit_edge ]
  %mnt_parent = getelementptr i8, ptr %.pn180, i32 -64
  %10 = ptrtoint ptr %mnt_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mnt_parent, align 4
  %mnt_umounting = getelementptr i8, ptr %.pn180, i32 60
  %12 = ptrtoint ptr %mnt_umounting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mnt_umounting, align 4
  %cmp.i.not = icmp eq ptr %13, %mnt_umounting
  br i1 %cmp.i.not, label %if.end, label %for.body.cleanup35_crit_edge

for.body.cleanup35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mnt_umounting, ptr noundef %15, ptr noundef nonnull %visited) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mnt_umounting, ptr %6, align 4
  %17 = ptrtoint ptr %mnt_umounting to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %visited, ptr %mnt_umounting, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn180, i32 64
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %mnt_umounting, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %mnt_ns.i = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 16
  %20 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mnt_ns.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %list_add_tail.exit.if.end.i_crit_edge, label %lor.lhs.false.i

list_add_tail.exit.if.end.i_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %list_add_tail.exit
  %seq.i.i = getelementptr inbounds %struct.mnt_namespace, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.i.i = icmp eq i64 %23, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %mnt_slave_list.i = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 13
  %24 = ptrtoint ptr %mnt_slave_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %mnt_slave_list.i, align 4
  %cmp.i28.not.i = icmp eq ptr %25, %mnt_slave_list.i
  br i1 %cmp.i28.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -104
  br label %propagation_next.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %list_add_tail.exit.if.end.i_crit_edge
  %mnt_master5.i = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 15
  %26 = ptrtoint ptr %mnt_master5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mnt_master5.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %if.end.i
  %m.addr.0.i = phi ptr [ %11, %if.end.i ], [ %29, %if.else.i.while.body.i_crit_edge ]
  %mnt_master.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 15
  %28 = ptrtoint ptr %mnt_master.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mnt_master.i, align 4
  %cmp.i69 = icmp eq ptr %29, %27
  br i1 %cmp.i69, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %while.body.i
  %mnt_share.i.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 12
  %30 = ptrtoint ptr %mnt_share.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mnt_share.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %31, i32 -88
  %cmp8.i = icmp eq ptr %add.ptr.i29.i, %11
  br i1 %cmp8.i, label %if.then6.i.cleanup35_crit_edge, label %if.then6.i.propagation_next.exit_crit_edge

if.then6.i.propagation_next.exit_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit

if.then6.i.cleanup35_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

if.else.i:                                        ; preds = %while.body.i
  %mnt_slave.i = getelementptr inbounds %struct.mount, ptr %m.addr.0.i, i32 0, i32 14
  %32 = ptrtoint ptr %mnt_slave.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mnt_slave.i, align 4
  %mnt_slave_list10.i = getelementptr inbounds %struct.mount, ptr %29, i32 0, i32 13
  %cmp11.not.i = icmp eq ptr %33, %mnt_slave_list10.i
  br i1 %cmp11.not.i, label %if.else.i.while.body.i_crit_edge, label %if.then12.i

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i = getelementptr i8, ptr %33, i32 -104
  br label %propagation_next.exit

propagation_next.exit:                            ; preds = %if.then12.i, %if.then6.i.propagation_next.exit_crit_edge, %if.then.i
  %retval.2.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %add.ptr.i30.i, %if.then12.i ], [ %add.ptr.i29.i, %if.then6.i.propagation_next.exit_crit_edge ]
  %tobool9.not175 = icmp eq ptr %retval.2.i, null
  br i1 %tobool9.not175, label %propagation_next.exit.cleanup35_crit_edge, label %for.body10.lr.ph

propagation_next.exit.cleanup35_crit_edge:        ; preds = %propagation_next.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

for.body10.lr.ph:                                 ; preds = %propagation_next.exit
  %mnt_mountpoint = getelementptr i8, ptr %.pn180, i32 -60
  %mnt_master5.i103 = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 15
  br label %for.body10

for.body10:                                       ; preds = %propagation_next.exit121.for.body10_crit_edge, %for.body10.lr.ph
  %m.0176 = phi ptr [ %retval.2.i, %for.body10.lr.ph ], [ %retval.2.i120, %propagation_next.exit121.for.body10_crit_edge ]
  %mnt11 = getelementptr inbounds %struct.mount, ptr %m.0176, i32 0, i32 3
  %34 = ptrtoint ptr %mnt_mountpoint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mnt_mountpoint, align 4
  %call12 = call ptr @__lookup_mnt(ptr noundef %mnt11, ptr noundef %35) #3
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body10.cleanup_crit_edge, label %if.end15

for.body10.cleanup_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %for.body10
  %mnt_umounting16 = getelementptr inbounds %struct.mount, ptr %call12, i32 0, i32 19
  %36 = ptrtoint ptr %mnt_umounting16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %mnt_umounting16, align 4
  %cmp.i70.not = icmp eq ptr %37, %mnt_umounting16
  br i1 %cmp.i70.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  %mnt_ns.i72 = getelementptr inbounds %struct.mount, ptr %m.0176, i32 0, i32 16
  %38 = ptrtoint ptr %mnt_ns.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mnt_ns.i72, align 4
  %tobool.not.i73 = icmp eq ptr %39, null
  br i1 %tobool.not.i73, label %if.then19.cleanup_crit_edge, label %lor.lhs.false.i76

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i76:                                ; preds = %if.then19
  %seq.i.i74 = getelementptr inbounds %struct.mnt_namespace, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %seq.i.i74 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %seq.i.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp.i.i75 = icmp eq i64 %41, 0
  br i1 %cmp.i.i75, label %lor.lhs.false.i76.cleanup_crit_edge, label %land.lhs.true.i78

lor.lhs.false.i76.cleanup_crit_edge:              ; preds = %lor.lhs.false.i76
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i78:                                ; preds = %lor.lhs.false.i76
  %mnt_slave_list.i77 = getelementptr inbounds %struct.mount, ptr %m.0176, i32 0, i32 13
  %42 = ptrtoint ptr %mnt_slave_list.i77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %mnt_slave_list.i77, align 4
  %cmp.i1.not.i = icmp eq ptr %43, %mnt_slave_list.i77
  br i1 %cmp.i1.not.i, label %land.lhs.true.i78.cleanup_crit_edge, label %if.then.i80

land.lhs.true.i78.cleanup_crit_edge:              ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i80:                                      ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.mount, ptr %m.0176, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %45, i32 -104
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %call12, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %47, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else.while.cond_crit_edge, label %if.then23

if.else.while.cond_crit_edge:                     ; preds = %if.else
  br label %while.cond

if.then23:                                        ; preds = %if.else
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %6, align 4
  %call.i.i84 = call zeroext i1 @__list_add_valid(ptr noundef %mnt_umounting16, ptr noundef %49, ptr noundef nonnull %visited) #3
  br i1 %call.i.i84, label %if.end.i.i86, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i86:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mnt_umounting16, ptr %6, align 4
  %51 = ptrtoint ptr %mnt_umounting16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %visited, ptr %mnt_umounting16, align 4
  %prev3.i.i85 = getelementptr inbounds %struct.mount, ptr %call12, i32 0, i32 19, i32 1
  %52 = ptrtoint ptr %prev3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i85, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %mnt_umounting16, ptr %49, align 4
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.else.while.cond_crit_edge
  %child.0 = phi ptr [ %80, %while.body.while.cond_crit_edge ], [ %call12, %if.else.while.cond_crit_edge ]
  %mnt1.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 3
  %mnt_flags.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mnt_flags.i, align 4
  %and.i = and i32 %55, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %if.end.i89, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i89:                                       ; preds = %while.cond
  %mnt_mounts.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 6
  %56 = ptrtoint ptr %mnt_mounts.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn42.i = load ptr, ptr %mnt_mounts.i, align 4
  %cmp.not43.i = icmp eq ptr %.pn42.i, %mnt_mounts.i
  br i1 %cmp.not43.i, label %if.end.i89.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i89.for.end.i_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i89
  %57 = ptrtoint ptr %mnt1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mnt1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn44.i = phi ptr [ %.pn42.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %mnt_mountpoint.i = getelementptr i8, ptr %.pn44.i, i32 -40
  %59 = ptrtoint ptr %mnt_mountpoint.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mnt_mountpoint.i, align 4
  %cmp4.i = icmp eq ptr %60, %58
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %mnt_umounting.i = getelementptr i8, ptr %.pn44.i, i32 80
  %61 = ptrtoint ptr %mnt_umounting.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %mnt_umounting.i, align 4
  %cmp.i.not.i = icmp eq ptr %62, %mnt_umounting.i
  br i1 %cmp.i.not.i, label %if.end6.i.children.i_crit_edge, label %land.lhs.true.i90

if.end6.i.children.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %children.i

land.lhs.true.i90:                                ; preds = %if.end6.i
  %mnt_flags9.i = getelementptr i8, ptr %.pn44.i, i32 -28
  %63 = ptrtoint ptr %mnt_flags9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mnt_flags9.i, align 4
  %and10.i = and i32 %64, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i90.children.i_crit_edge, label %land.lhs.true.i90.for.inc.i_crit_edge

land.lhs.true.i90.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i90.children.i_crit_edge:           ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %children.i

for.inc.i:                                        ; preds = %land.lhs.true.i90.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %65 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i = load ptr, ptr %.pn44.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %mnt_mounts.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i89.for.end.i_crit_edge
  %or.i = or i32 %55, 67108864
  %66 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i, ptr %mnt_flags.i, align 4
  %and23.i = and i32 %55, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %__propagate_umount.exit.thread, label %for.end.i.children.i_crit_edge

for.end.i.children.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %children.i

__propagate_umount.exit.thread:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @umount_one(ptr noundef %child.0, ptr noundef nonnull %to_umount) #3
  br label %while.body

children.i:                                       ; preds = %for.end.i.children.i_crit_edge, %land.lhs.true.i90.children.i_crit_edge, %if.end6.i.children.i_crit_edge
  %cmp.not41.i = phi i1 [ true, %for.end.i.children.i_crit_edge ], [ false, %if.end6.i.children.i_crit_edge ], [ false, %land.lhs.true.i90.children.i_crit_edge ]
  %mnt_umounting26.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 19
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_umounting26.i) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %children.i.__list_del_entry.exit.i.i_crit_edge

children.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %children.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %children.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 19, i32 1
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i, align 4
  %69 = ptrtoint ptr %mnt_umounting26.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mnt_umounting26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %children.i.__list_del_entry.exit.i.i_crit_edge
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mnt_umounting26.i, ptr noundef %74, ptr noundef nonnull %to_restore) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__propagate_umount.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %mnt_umounting26.i, ptr %0, align 4
  %76 = ptrtoint ptr %mnt_umounting26.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %to_restore, ptr %mnt_umounting26.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 19, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %mnt_umounting26.i, ptr %74, align 4
  br i1 %cmp.not41.i, label %if.end.i.i.i.i.while.body_crit_edge, label %if.end.i.i.i.i.cleanup_crit_edge

if.end.i.i.i.i.cleanup_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i.i.i.while.body_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

__propagate_umount.exit:                          ; preds = %__list_del_entry.exit.i.i
  br i1 %cmp.not41.i, label %__propagate_umount.exit.while.body_crit_edge, label %__propagate_umount.exit.cleanup_crit_edge

__propagate_umount.exit.cleanup_crit_edge:        ; preds = %__propagate_umount.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

__propagate_umount.exit.while.body_crit_edge:     ; preds = %__propagate_umount.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body:                                       ; preds = %__propagate_umount.exit.while.body_crit_edge, %if.end.i.i.i.i.while.body_crit_edge, %__propagate_umount.exit.thread
  %mnt_parent28 = getelementptr inbounds %struct.mount, ptr %child.0, i32 0, i32 1
  %79 = ptrtoint ptr %mnt_parent28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mnt_parent28, align 4
  %mnt_umounting29 = getelementptr inbounds %struct.mount, ptr %80, i32 0, i32 19
  %81 = ptrtoint ptr %mnt_umounting29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %mnt_umounting29, align 4
  %cmp.i91.not = icmp eq ptr %82, %mnt_umounting29
  br i1 %cmp.i91.not, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %__propagate_umount.exit.cleanup_crit_edge, %if.end.i.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end.i.i86, %if.then23.cleanup_crit_edge, %if.then.i80, %land.lhs.true.i78.cleanup_crit_edge, %lor.lhs.false.i76.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %for.body10.cleanup_crit_edge
  %m.1 = phi ptr [ %m.0176, %for.body10.cleanup_crit_edge ], [ %m.0176, %lor.lhs.false.i76.cleanup_crit_edge ], [ %m.0176, %land.lhs.true.i78.cleanup_crit_edge ], [ %add.ptr.i.i79, %if.then.i80 ], [ %m.0176, %if.then19.cleanup_crit_edge ], [ %m.0176, %if.then23.cleanup_crit_edge ], [ %m.0176, %if.end.i.i86 ], [ %m.0176, %while.body.cleanup_crit_edge ], [ %m.0176, %__propagate_umount.exit.cleanup_crit_edge ], [ %m.0176, %if.end.i.i.i.i.cleanup_crit_edge ], [ %m.0176, %while.cond.cleanup_crit_edge ]
  %mnt_ns.i93 = getelementptr inbounds %struct.mount, ptr %m.1, i32 0, i32 16
  %83 = ptrtoint ptr %mnt_ns.i93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mnt_ns.i93, align 4
  %tobool.not.i94 = icmp eq ptr %84, null
  br i1 %tobool.not.i94, label %cleanup.if.end.i104_crit_edge, label %lor.lhs.false.i97

cleanup.if.end.i104_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i104

lor.lhs.false.i97:                                ; preds = %cleanup
  %seq.i.i95 = getelementptr inbounds %struct.mnt_namespace, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %seq.i.i95 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %seq.i.i95, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp.i.i96 = icmp eq i64 %86, 0
  br i1 %cmp.i.i96, label %lor.lhs.false.i97.if.end.i104_crit_edge, label %land.lhs.true.i100

lor.lhs.false.i97.if.end.i104_crit_edge:          ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i104

land.lhs.true.i100:                               ; preds = %lor.lhs.false.i97
  %mnt_slave_list.i98 = getelementptr inbounds %struct.mount, ptr %m.1, i32 0, i32 13
  %87 = ptrtoint ptr %mnt_slave_list.i98 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %mnt_slave_list.i98, align 4
  %cmp.i28.not.i99 = icmp eq ptr %88, %mnt_slave_list.i98
  br i1 %cmp.i28.not.i99, label %land.lhs.true.i100.if.end.i104_crit_edge, label %if.then.i102

land.lhs.true.i100.if.end.i104_crit_edge:         ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i104

if.then.i102:                                     ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i101 = getelementptr i8, ptr %88, i32 -104
  br label %propagation_next.exit121

if.end.i104:                                      ; preds = %land.lhs.true.i100.if.end.i104_crit_edge, %lor.lhs.false.i97.if.end.i104_crit_edge, %cleanup.if.end.i104_crit_edge
  %89 = ptrtoint ptr %mnt_master5.i103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mnt_master5.i103, align 4
  br label %while.body.i108

while.body.i108:                                  ; preds = %if.else.i117.while.body.i108_crit_edge, %if.end.i104
  %m.addr.0.i105 = phi ptr [ %m.1, %if.end.i104 ], [ %92, %if.else.i117.while.body.i108_crit_edge ]
  %mnt_master.i106 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i105, i32 0, i32 15
  %91 = ptrtoint ptr %mnt_master.i106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mnt_master.i106, align 4
  %cmp.i107 = icmp eq ptr %92, %90
  br i1 %cmp.i107, label %if.then6.i113, label %if.else.i117

if.then6.i113:                                    ; preds = %while.body.i108
  %mnt_share.i.i109 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i105, i32 0, i32 12
  %93 = ptrtoint ptr %mnt_share.i.i109 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mnt_share.i.i109, align 4
  %add.ptr.i29.i110 = getelementptr i8, ptr %94, i32 -88
  %cmp8.i111 = icmp eq ptr %add.ptr.i29.i110, %11
  br i1 %cmp8.i111, label %if.then6.i113.cleanup35_crit_edge, label %if.then6.i113.propagation_next.exit121_crit_edge

if.then6.i113.propagation_next.exit121_crit_edge: ; preds = %if.then6.i113
  call void @__sanitizer_cov_trace_pc() #5
  br label %propagation_next.exit121

if.then6.i113.cleanup35_crit_edge:                ; preds = %if.then6.i113
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

if.else.i117:                                     ; preds = %while.body.i108
  %mnt_slave.i114 = getelementptr inbounds %struct.mount, ptr %m.addr.0.i105, i32 0, i32 14
  %95 = ptrtoint ptr %mnt_slave.i114 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mnt_slave.i114, align 4
  %mnt_slave_list10.i115 = getelementptr inbounds %struct.mount, ptr %92, i32 0, i32 13
  %cmp11.not.i116 = icmp eq ptr %96, %mnt_slave_list10.i115
  br i1 %cmp11.not.i116, label %if.else.i117.while.body.i108_crit_edge, label %if.then12.i119

if.else.i117.while.body.i108_crit_edge:           ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i108

if.then12.i119:                                   ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i30.i118 = getelementptr i8, ptr %96, i32 -104
  br label %propagation_next.exit121

propagation_next.exit121:                         ; preds = %if.then12.i119, %if.then6.i113.propagation_next.exit121_crit_edge, %if.then.i102
  %retval.2.i120 = phi ptr [ %add.ptr.i.i101, %if.then.i102 ], [ %add.ptr.i30.i118, %if.then12.i119 ], [ %add.ptr.i29.i110, %if.then6.i113.propagation_next.exit121_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.2.i120, null
  br i1 %tobool9.not, label %propagation_next.exit121.cleanup35_crit_edge, label %propagation_next.exit121.for.body10_crit_edge

propagation_next.exit121.for.body10_crit_edge:    ; preds = %propagation_next.exit121
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body10

propagation_next.exit121.cleanup35_crit_edge:     ; preds = %propagation_next.exit121
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

cleanup35:                                        ; preds = %propagation_next.exit121.cleanup35_crit_edge, %if.then6.i113.cleanup35_crit_edge, %propagation_next.exit.cleanup35_crit_edge, %if.then6.i.cleanup35_crit_edge, %for.body.cleanup35_crit_edge
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn180, i32 0, i32 1
  %97 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %cleanup35.for.end45_crit_edge, label %cleanup35.for.body_crit_edge

cleanup35.for.body_crit_edge:                     ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup35.for.end45_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end45

for.end45:                                        ; preds = %cleanup35.for.end45_crit_edge, %entry.for.end45_crit_edge
  %98 = ptrtoint ptr %to_umount to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn50.i = load ptr, ptr %to_umount, align 4
  %cmp.not51.i = icmp eq ptr %.pn50.i, %to_umount
  br i1 %cmp.not51.i, label %for.end45.umount_list.exit_crit_edge, label %for.end45.for.body.i127_crit_edge

for.end45.for.body.i127_crit_edge:                ; preds = %for.end45
  br label %for.body.i127

for.end45.umount_list.exit_crit_edge:             ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %umount_list.exit

for.cond.loopexit.i:                              ; preds = %for.inc.i140.for.cond.loopexit.i_crit_edge, %for.body.i127.for.cond.loopexit.i_crit_edge
  %99 = ptrtoint ptr %.pn52.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i124 = load ptr, ptr %.pn52.i, align 4
  %cmp.not.i125 = icmp eq ptr %.pn.i124, %to_umount
  br i1 %cmp.not.i125, label %for.cond.loopexit.i.umount_list.exit_crit_edge, label %for.cond.loopexit.i.for.body.i127_crit_edge

for.cond.loopexit.i.for.body.i127_crit_edge:      ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i127

for.cond.loopexit.i.umount_list.exit_crit_edge:   ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %umount_list.exit

for.body.i127:                                    ; preds = %for.cond.loopexit.i.for.body.i127_crit_edge, %for.end45.for.body.i127_crit_edge
  %.pn52.i = phi ptr [ %.pn.i124, %for.cond.loopexit.i.for.body.i127_crit_edge ], [ %.pn50.i, %for.end45.for.body.i127_crit_edge ]
  %mnt_mounts.i126 = getelementptr i8, ptr %.pn52.i, i32 -28
  %100 = ptrtoint ptr %mnt_mounts.i126 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mnt_mounts.i126, align 4
  %cmp13.not45.i = icmp eq ptr %101, %mnt_mounts.i126
  br i1 %cmp13.not45.i, label %for.body.i127.for.cond.loopexit.i_crit_edge, label %for.body15.lr.ph.i

for.body.i127.for.cond.loopexit.i_crit_edge:      ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit.i

for.body15.lr.ph.i:                               ; preds = %for.body.i127
  %mnt16.i = getelementptr i8, ptr %.pn52.i, i32 -56
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc.i140.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %.pn41.in46.i = phi ptr [ %101, %for.body15.lr.ph.i ], [ %.pn4149.i, %for.inc.i140.for.body15.i_crit_edge ]
  %102 = ptrtoint ptr %.pn41.in46.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn4149.i = load ptr, ptr %.pn41.in46.i, align 4
  %mnt_mountpoint.i128 = getelementptr i8, ptr %.pn41.in46.i, i32 -40
  %103 = ptrtoint ptr %mnt_mountpoint.i128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mnt_mountpoint.i128, align 4
  %105 = ptrtoint ptr %mnt16.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mnt16.i, align 4
  %cmp17.i = icmp eq ptr %104, %106
  br i1 %cmp17.i, label %if.then.i131, label %if.else.i139

if.then.i131:                                     ; preds = %for.body15.i
  %mnt_umounting.i129 = getelementptr i8, ptr %.pn41.in46.i, i32 80
  %call.i.i.i130 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_umounting.i129) #3
  br i1 %call.i.i.i130, label %if.end.i.i.i134, label %if.then.i131.__list_del_entry.exit.i.i136_crit_edge

if.then.i131.__list_del_entry.exit.i.i136_crit_edge: ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i.i136

if.end.i.i.i134:                                  ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i132 = getelementptr i8, ptr %.pn41.in46.i, i32 84
  %107 = ptrtoint ptr %prev.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i132, align 4
  %109 = ptrtoint ptr %mnt_umounting.i129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mnt_umounting.i129, align 4
  %prev1.i.i.i.i133 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i.i133, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %__list_del_entry.exit.i.i136

__list_del_entry.exit.i.i136:                     ; preds = %if.end.i.i.i134, %if.then.i131.__list_del_entry.exit.i.i136_crit_edge
  %113 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %0, align 4
  %call.i.i.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %mnt_umounting.i129, ptr noundef %114, ptr noundef nonnull %to_restore) #3
  br i1 %call.i.i.i.i135, label %if.end.i.i.i.i138, label %__list_del_entry.exit.i.i136.for.inc.i140_crit_edge

__list_del_entry.exit.i.i136.for.inc.i140_crit_edge: ; preds = %__list_del_entry.exit.i.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i140

if.end.i.i.i.i138:                                ; preds = %__list_del_entry.exit.i.i136
  call void @__sanitizer_cov_trace_pc() #5
  %115 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %mnt_umounting.i129, ptr %0, align 4
  %116 = ptrtoint ptr %mnt_umounting.i129 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %to_restore, ptr %mnt_umounting.i129, align 4
  %prev3.i.i.i.i137 = getelementptr i8, ptr %.pn41.in46.i, i32 84
  %117 = ptrtoint ptr %prev3.i.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev3.i.i.i.i137, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %mnt_umounting.i129, ptr %114, align 4
  br label %for.inc.i140

if.else.i139:                                     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #5
  %child.048.i = getelementptr i8, ptr %.pn41.in46.i, i32 -52
  call fastcc void @umount_one(ptr noundef %child.048.i, ptr noundef nonnull %to_umount) #3
  br label %for.inc.i140

for.inc.i140:                                     ; preds = %if.else.i139, %if.end.i.i.i.i138, %__list_del_entry.exit.i.i136.for.inc.i140_crit_edge
  %cmp13.not.i = icmp eq ptr %.pn4149.i, %mnt_mounts.i126
  br i1 %cmp13.not.i, label %for.inc.i140.for.cond.loopexit.i_crit_edge, label %for.inc.i140.for.body15.i_crit_edge

for.inc.i140.for.body15.i_crit_edge:              ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body15.i

for.inc.i140.for.cond.loopexit.i_crit_edge:       ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.loopexit.i

umount_list.exit:                                 ; preds = %for.cond.loopexit.i.umount_list.exit_crit_edge, %for.end45.umount_list.exit_crit_edge
  %119 = ptrtoint ptr %to_restore to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %to_restore, align 4
  %cmp.i.not28.i = icmp eq ptr %120, %to_restore
  br i1 %cmp.i.not28.i, label %umount_list.exit.restore_mounts.exit_crit_edge, label %umount_list.exit.while.body.i144_crit_edge

umount_list.exit.while.body.i144_crit_edge:       ; preds = %umount_list.exit
  br label %while.body.i144

umount_list.exit.restore_mounts.exit_crit_edge:   ; preds = %umount_list.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %restore_mounts.exit

while.body.i144:                                  ; preds = %if.end.i151.while.body.i144_crit_edge, %umount_list.exit.while.body.i144_crit_edge
  %121 = phi ptr [ %140, %if.end.i151.while.body.i144_crit_edge ], [ %120, %umount_list.exit.while.body.i144_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %121, i32 -132
  %mnt_flags.i141 = getelementptr i8, ptr %121, i32 -108
  %122 = ptrtoint ptr %mnt_flags.i141 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mnt_flags.i141, align 4
  %and.i142 = and i32 %123, -67108865
  store i32 %and.i142, ptr %mnt_flags.i141, align 4
  %call.i.i.i143 = call zeroext i1 @__list_del_entry_valid(ptr noundef %121) #3
  br i1 %call.i.i.i143, label %if.end.i.i.i147, label %while.body.i144.list_del_init.exit.i_crit_edge

while.body.i144.list_del_init.exit.i_crit_edge:   ; preds = %while.body.i144
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit.i

if.end.i.i.i147:                                  ; preds = %while.body.i144
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i145, align 4
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %121, align 4
  %prev1.i.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i146, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i147, %while.body.i144.list_del_init.exit.i_crit_edge
  %130 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %121, ptr %121, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %121, ptr %prev.i3.i.i, align 4
  %mnt_parent.i = getelementptr i8, ptr %121, i32 -124
  %132 = ptrtoint ptr %mnt_parent.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %parent.022.i = load ptr, ptr %mnt_parent.i, align 4
  %mnt_flags423.i = getelementptr inbounds %struct.mount, ptr %parent.022.i, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %mnt_flags423.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mnt_flags423.i, align 4
  %and524.i = and i32 %134, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and524.i)
  %tobool6.not25.i = icmp eq i32 %and524.i, 0
  br i1 %tobool6.not25.i, label %list_del_init.exit.i.if.end.i151_crit_edge, label %list_del_init.exit.i.while.body7.i_crit_edge

list_del_init.exit.i.while.body7.i_crit_edge:     ; preds = %list_del_init.exit.i
  br label %while.body7.i

list_del_init.exit.i.if.end.i151_crit_edge:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i151

while.body7.i:                                    ; preds = %while.body7.i.while.body7.i_crit_edge, %list_del_init.exit.i.while.body7.i_crit_edge
  %parent.026.i = phi ptr [ %parent.0.i, %while.body7.i.while.body7.i_crit_edge ], [ %parent.022.i, %list_del_init.exit.i.while.body7.i_crit_edge ]
  %mnt_parent9.i = getelementptr inbounds %struct.mount, ptr %parent.026.i, i32 0, i32 1
  %135 = ptrtoint ptr %mnt_parent9.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %parent.0.i = load ptr, ptr %mnt_parent9.i, align 4
  %mnt_flags4.i = getelementptr inbounds %struct.mount, ptr %parent.0.i, i32 0, i32 3, i32 2
  %136 = ptrtoint ptr %mnt_flags4.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mnt_flags4.i, align 4
  %and5.i = and i32 %137, 134217728
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %while.end.i, label %while.body7.i.while.body7.i_crit_edge

while.body7.i.while.body7.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body7.i

while.end.i:                                      ; preds = %while.body7.i
  %cmp.not.i148 = icmp eq ptr %parent.0.i, %parent.022.i
  br i1 %cmp.not.i148, label %while.end.i.if.end.i151_crit_edge, label %if.then.i149

while.end.i.if.end.i151_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i151

if.then.i149:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %mnt_mp8.le.i = getelementptr inbounds %struct.mount, ptr %parent.026.i, i32 0, i32 17
  %138 = ptrtoint ptr %mnt_mp8.le.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %mp.0.le.i = load ptr, ptr %mnt_mp8.le.i, align 4
  call void @mnt_change_mountpoint(ptr noundef %parent.0.i, ptr noundef %mp.0.le.i, ptr noundef %add.ptr.i) #3
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.then.i149, %while.end.i.if.end.i151_crit_edge, %list_del_init.exit.i.if.end.i151_crit_edge
  %139 = ptrtoint ptr %to_restore to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %to_restore, align 4
  %cmp.i.not.i150 = icmp eq ptr %140, %to_restore
  br i1 %cmp.i.not.i150, label %if.end.i151.restore_mounts.exit_crit_edge, label %if.end.i151.while.body.i144_crit_edge

if.end.i151.while.body.i144_crit_edge:            ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i144

if.end.i151.restore_mounts.exit_crit_edge:        ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %restore_mounts.exit

restore_mounts.exit:                              ; preds = %if.end.i151.restore_mounts.exit_crit_edge, %umount_list.exit.restore_mounts.exit_crit_edge
  %141 = ptrtoint ptr %visited to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %visited, align 4
  %cmp.i.not2.i = icmp eq ptr %142, %visited
  br i1 %cmp.i.not2.i, label %restore_mounts.exit.cleanup_umount_visitations.exit_crit_edge, label %restore_mounts.exit.while.body.i153_crit_edge

restore_mounts.exit.while.body.i153_crit_edge:    ; preds = %restore_mounts.exit
  br label %while.body.i153

restore_mounts.exit.cleanup_umount_visitations.exit_crit_edge: ; preds = %restore_mounts.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup_umount_visitations.exit

while.body.i153:                                  ; preds = %list_del_init.exit.i159.while.body.i153_crit_edge, %restore_mounts.exit.while.body.i153_crit_edge
  %143 = phi ptr [ %153, %list_del_init.exit.i159.while.body.i153_crit_edge ], [ %142, %restore_mounts.exit.while.body.i153_crit_edge ]
  %call.i.i.i152 = call zeroext i1 @__list_del_entry_valid(ptr noundef %143) #3
  br i1 %call.i.i.i152, label %if.end.i.i.i156, label %while.body.i153.list_del_init.exit.i159_crit_edge

while.body.i153.list_del_init.exit.i159_crit_edge: ; preds = %while.body.i153
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit.i159

if.end.i.i.i156:                                  ; preds = %while.body.i153
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i154 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i.i154, align 4
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %143, align 4
  %prev1.i.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i.i155, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del_init.exit.i159

list_del_init.exit.i159:                          ; preds = %if.end.i.i.i156, %while.body.i153.list_del_init.exit.i159_crit_edge
  %150 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %143, ptr %143, align 4
  %prev.i3.i.i157 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i3.i.i157 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %143, ptr %prev.i3.i.i157, align 4
  %152 = ptrtoint ptr %visited to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %visited, align 4
  %cmp.i.not.i158 = icmp eq ptr %153, %visited
  br i1 %cmp.i.not.i158, label %list_del_init.exit.i159.cleanup_umount_visitations.exit_crit_edge, label %list_del_init.exit.i159.while.body.i153_crit_edge

list_del_init.exit.i159.while.body.i153_crit_edge: ; preds = %list_del_init.exit.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i153

list_del_init.exit.i159.cleanup_umount_visitations.exit_crit_edge: ; preds = %list_del_init.exit.i159
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup_umount_visitations.exit

cleanup_umount_visitations.exit:                  ; preds = %list_del_init.exit.i159.cleanup_umount_visitations.exit_crit_edge, %restore_mounts.exit.cleanup_umount_visitations.exit_crit_edge
  %154 = ptrtoint ptr %to_umount to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %to_umount, align 4
  %cmp.i.not.i161 = icmp eq ptr %155, %to_umount
  br i1 %cmp.i.not.i161, label %cleanup_umount_visitations.exit.list_splice_tail.exit_crit_edge, label %if.then.i164

cleanup_umount_visitations.exit.list_splice_tail.exit_crit_edge: ; preds = %cleanup_umount_visitations.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_splice_tail.exit

if.then.i164:                                     ; preds = %cleanup_umount_visitations.exit
  call void @__sanitizer_cov_trace_pc() #5
  %156 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %.pn.in177, align 4
  %158 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %3, align 4
  %prev3.i.i163 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %160 = ptrtoint ptr %prev3.i.i163 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev3.i.i163, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %155, ptr %157, align 4
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %list, ptr %159, align 4
  store ptr %159, ptr %.pn.in177, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i164, %cleanup_umount_visitations.exit.list_splice_tail.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %visited) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_umount) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_restore) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_path_reachable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_release_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_tree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_set_mountpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_mounts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @umount_one(ptr noundef %mnt, ptr noundef %to_umount) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_flags = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %1, -201326593
  %or = or i32 %and, 134217728
  store i32 %or, ptr %mnt_flags, align 4
  %mnt_child = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_child) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %mnt_child to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt_child, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %mnt_child to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %mnt_child, ptr %mnt_child, align 4
  %prev.i3.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mnt_child, ptr %prev.i3.i, align 4
  %mnt_umounting = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 19
  %call.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_umounting) #3
  br i1 %call.i.i8, label %if.end.i.i11, label %list_del_init.exit.list_del_init.exit13_crit_edge

list_del_init.exit.list_del_init.exit13_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit13

if.end.i.i11:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i9 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i9, align 4
  %12 = ptrtoint ptr %mnt_umounting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mnt_umounting, align 4
  %prev1.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit13

list_del_init.exit13:                             ; preds = %if.end.i.i11, %list_del_init.exit.list_del_init.exit13_crit_edge
  %16 = ptrtoint ptr %mnt_umounting to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mnt_umounting, ptr %mnt_umounting, align 4
  %prev.i3.i12 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %prev.i3.i12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mnt_umounting, ptr %prev.i3.i12, align 4
  %mnt_list = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 10
  %call.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mnt_list) #3
  br i1 %call.i.i14, label %if.end.i.i17, label %list_del_init.exit13.__list_del_entry.exit.i_crit_edge

list_del_init.exit13.__list_del_entry.exit.i_crit_edge: ; preds = %list_del_init.exit13
  call void @__sanitizer_cov_trace_pc() #5
  br label %__list_del_entry.exit.i

if.end.i.i17:                                     ; preds = %list_del_init.exit13
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i15 = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i15, align 4
  %20 = ptrtoint ptr %mnt_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mnt_list, align 4
  %prev1.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i16, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i17, %list_del_init.exit13.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %to_umount, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mnt_list, ptr noundef %25, ptr noundef %to_umount) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mnt_list, ptr %prev.i2.i, align 4
  %27 = ptrtoint ptr %mnt_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %to_umount, ptr %mnt_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mount, ptr %mnt, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %mnt_list, ptr %25, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_change_mountpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @last_dest, !1, !"last_dest", i1 false, i1 false}
!1 = !{!"../fs/pnode.c", i32 216, i32 22}
!2 = !{ptr @first_source, !3, !"first_source", i1 false, i1 false}
!3 = !{!"../fs/pnode.c", i32 216, i32 34}
!4 = !{ptr @last_source, !5, !"last_source", i1 false, i1 false}
!5 = !{!"../fs/pnode.c", i32 216, i32 49}
!6 = !{ptr @dest_master, !7, !"dest_master", i1 false, i1 false}
!7 = !{!"../fs/pnode.c", i32 216, i32 63}
!8 = !{ptr @mp, !9, !"mp", i1 false, i1 false}
!9 = !{!"../fs/pnode.c", i32 217, i32 27}
!10 = !{ptr @list, !11, !"list", i1 false, i1 false}
!11 = !{!"../fs/pnode.c", i32 218, i32 27}
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
!22 = !{i64 2152640730, i64 2152641205, i64 2152640767, i64 2152640823, i64 2152640857, i64 2152640881, i64 2152640922, i64 2152640943, i64 2152640971, i64 2152641005}
