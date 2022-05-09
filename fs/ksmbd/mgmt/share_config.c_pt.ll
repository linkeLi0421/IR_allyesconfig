; ModuleID = '/llk/IR_all_yes/fs/ksmbd/mgmt/share_config.c_pt.bc'
source_filename = "../fs/ksmbd/mgmt/share_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_share_config = type { ptr, ptr, i32, i32, %struct.list_head, %struct.path, %struct.atomic_t, %struct.hlist_node, i16, i16, i16, i16, i16, i16 }
%struct.path = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ksmbd_share_config_response = type { i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i32, [0 x i8] }
%struct.ksmbd_veto_pattern = type { ptr, %struct.list_head }

@shares_table_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @shares_table_lock, i64 56), ptr getelementptr (i8, ptr @shares_table_lock, i64 56) }, ptr @shares_table_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@shares_table = internal global { [8 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"shares_table_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shares_table_lock\00", [46 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@share_config_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ksmbd: failed to access '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"share_config_request\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fs/ksmbd/mgmt/share_config.c\00", [35 x i8] zeroinitializer }, align 32
@share_config_request._entry_ptr = internal global ptr @share_config_request._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"shares_table_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"shares_table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 21, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 22, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [32 x i8] c"../fs/ksmbd/mgmt/share_config.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 158, i32 5 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @share_config_request._entry, ptr @share_config_request._entry_ptr, ptr @shares_table_lock, ptr @shares_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shares_table_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shares_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_config_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ksmbd_share_config_put(ptr noundef %share) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @shares_table_lock) #8
  %hlist = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 7
  %pprev.i.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i.i, label %entry.hash_del.exit_crit_edge, label %if.then.i.i

entry.hash_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlist, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %6 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hlist, align 4
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %entry.hash_del.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @shares_table_lock) #8
  tail call fastcc void @kill_share(ptr noundef %share)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kill_share(ptr noundef %share) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %veto_list = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 4
  %0 = ptrtoint ptr %veto_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %veto_list, align 4
  %cmp.i.not12 = icmp eq ptr %1, %veto_list
  br i1 %cmp.i.not12, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %12) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  %13 = ptrtoint ptr %veto_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %veto_list, align 4
  %cmp.i.not = icmp eq ptr %14, %veto_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %path = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 1
  %15 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %path, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %vfs_path = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 5
  tail call void @path_put(ptr noundef %vfs_path) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %17 = ptrtoint ptr %share to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %share, align 4
  tail call void @kfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  tail call void @kfree(ptr noundef %20) #8
  tail call void @kfree(ptr noundef %share) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_share_config_get(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not4.i = icmp eq i8 %1, 0
  br i1 %tobool.not4.i, label %entry.strtolower.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.strtolower.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %strtolower.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi i8 [ %8, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %share_name.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %name, %entry.while.body.i_crit_edge ]
  %conv.i.i = zext i8 %2 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i.i = icmp eq i8 %5, 0
  %sub.i.i = add i8 %2, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %2, i8 %sub.i.i
  %6 = ptrtoint ptr %share_name.addr.05.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select.i.i, ptr %share_name.addr.05.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %share_name.addr.05.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %while.body.i.strtolower.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.strtolower.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %strtolower.exit

strtolower.exit:                                  ; preds = %while.body.i.strtolower.exit_crit_edge, %entry.strtolower.exit_crit_edge
  tail call void @down_read(ptr noundef nonnull @shares_table_lock) #8
  %call.i = tail call fastcc i32 @share_name_hash(ptr noundef %name) #8
  %mul.i.i.i = mul i32 %call.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 29
  %arrayidx.i = getelementptr [8 x %struct.hlist_head], ptr @shares_table, i32 0, i32 %shr.i.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i11 = icmp eq ptr %10, null
  %add.ptr.i = getelementptr i8, ptr %10, i32 -36
  %tobool3.not2831.i = icmp eq ptr %add.ptr.i, null
  %tobool3.not28.i = or i1 %tobool.not.i11, %tobool3.not2831.i
  br i1 %tobool3.not28.i, label %strtolower.exit.if.end4_crit_edge, label %strtolower.exit.for.body.i_crit_edge

strtolower.exit.for.body.i_crit_edge:             ; preds = %strtolower.exit
  br label %for.body.i

strtolower.exit.if.end4_crit_edge:                ; preds = %strtolower.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %strtolower.exit.for.body.i_crit_edge
  %share.029.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %strtolower.exit.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %share.029.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %share.029.i, align 4
  %call5.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.029.i, i32 0, i32 7
  %13 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hlist.i, align 4
  %tobool9.not.i = icmp eq ptr %14, null
  %add.ptr13.i = getelementptr i8, ptr %14, i32 -36
  %tobool3.not32.i = icmp eq ptr %add.ptr13.i, null
  %tobool3.not.i = or i1 %tobool9.not.i, %tobool3.not32.i
  br i1 %tobool3.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.029.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !22
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.if.end4_crit_edge, label %if.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @up_read(ptr noundef nonnull @shares_table_lock) #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %strtolower.exit.if.end4_crit_edge
  tail call void @up_read(ptr noundef nonnull @shares_table_lock) #8
  %call.i12 = tail call ptr @ksmbd_ipc_share_config_request(ptr noundef %name) #8
  %tobool.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool.not.i13, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.end2.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 56) #12
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end2.i.out.i_crit_edge, label %if.end6.i

if.end2.i.out.i_crit_edge:                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end6.i:                                        ; preds = %if.end2.i
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %flags8.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags8.i, align 4
  %refcount.i14 = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i14, i32 noundef 4) #8
  %22 = ptrtoint ptr %refcount.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount.i14, align 8
  %veto_list.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %veto_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %veto_list.i, ptr %veto_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %veto_list.i, ptr %prev.i.i, align 4
  %call9.i = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #8
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i, ptr %call7.i.i.i, align 8
  %26 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags8.i, align 4
  %and.i.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end6.i.if.end54.i_crit_edge

if.end6.i.if.end54.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then13.i:                                      ; preds = %if.end6.i
  %____payload.i.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 10
  %veto_list_sz.i.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 9
  %28 = ptrtoint ptr %veto_list_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %veto_list_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  %add.i.i = add i32 %29, 1
  %p.0.idx.i.i = select i1 %tobool.not.i.i, i32 0, i32 %add.i.i
  %p.0.i.i = getelementptr i8, ptr %____payload.i.i, i32 %p.0.idx.i.i
  %call15.i = tail call noalias ptr @kstrdup(ptr noundef %p.0.i.i, i32 noundef 3264) #8
  %path.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call15.i, ptr %path.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %if.then13.i.if.end21.i_crit_edge, label %if.then18.i

if.then13.i.if.end21.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = tail call i32 @strlen(ptr noundef nonnull %call15.i) #11
  %path_sz.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %path_sz.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call20.i, ptr %path_sz.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.then13.i.if.end21.i_crit_edge
  %create_mask.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 2
  %32 = ptrtoint ptr %create_mask.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %create_mask.i, align 4
  %create_mask22.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %create_mask22.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %create_mask22.i, align 4
  %directory_mask.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 3
  %35 = ptrtoint ptr %directory_mask.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %directory_mask.i, align 2
  %directory_mask23.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 9
  %37 = ptrtoint ptr %directory_mask23.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %directory_mask23.i, align 2
  %force_create_mode.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 4
  %38 = ptrtoint ptr %force_create_mode.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %force_create_mode.i, align 4
  %force_create_mode24.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %force_create_mode24.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %force_create_mode24.i, align 8
  %force_directory_mode.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 5
  %41 = ptrtoint ptr %force_directory_mode.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %force_directory_mode.i, align 2
  %force_directory_mode25.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 11
  %43 = ptrtoint ptr %force_directory_mode25.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %force_directory_mode25.i, align 2
  %force_uid.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 6
  %44 = ptrtoint ptr %force_uid.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %force_uid.i, align 4
  %force_uid26.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %force_uid26.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %force_uid26.i, align 4
  %force_gid.i = getelementptr inbounds %struct.ksmbd_share_config_response, ptr %call.i12, i32 0, i32 7
  %47 = ptrtoint ptr %force_gid.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %force_gid.i, align 2
  %force_gid27.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 13
  %49 = ptrtoint ptr %force_gid27.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %force_gid27.i, align 2
  %50 = ptrtoint ptr %veto_list_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %veto_list_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp33.i.i = icmp sgt i32 %51, 0
  br i1 %cmp33.i.i, label %if.end21.i.while.body.i.i_crit_edge, label %if.end21.i.land.lhs.true.i_crit_edge

if.end21.i.land.lhs.true.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end21.i.while.body.i.i_crit_edge:              ; preds = %if.end21.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end21.i.while.body.i.i_crit_edge
  %veto_list_sz.addr.035.i.i = phi i32 [ %sub.i.i16, %cleanup.i.i.while.body.i.i_crit_edge ], [ %51, %if.end21.i.while.body.i.i_crit_edge ]
  %veto_list.addr.034.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %____payload.i.i, %if.end21.i.while.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @strlen(ptr noundef %veto_list.addr.034.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %while.body.i.i.land.lhs.true.i_crit_edge, label %if.end3.i.i

while.body.i.i.land.lhs.true.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end3.i.i:                                      ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 12) #12
  %tobool5.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end3.i.i.if.then52.i_crit_edge, label %if.end7.i.i

if.end3.i.i.if.then52.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %call8.i.i = tail call noalias ptr @kstrdup(ptr noundef %veto_list.addr.034.i.i, i32 noundef 3264) #8
  %53 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i, ptr %call7.i.i.i.i, align 8
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.then52.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %list.i.i = getelementptr inbounds %struct.ksmbd_veto_pattern, ptr %call7.i.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %veto_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %veto_list.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %veto_list.i, ptr noundef %55) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end12.i.i.cleanup.i.i_crit_edge

if.end12.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end.i.i.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ksmbd_veto_pattern, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %veto_list.i, ptr %prev3.i.i.i.i, align 8
  %59 = ptrtoint ptr %veto_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list.i.i, ptr %veto_list.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i.i.i, %if.end12.i.i.cleanup.i.i_crit_edge
  %add.i115.i = add i32 %call.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %veto_list.addr.034.i.i, i32 %add.i115.i
  %sub.i.i16 = sub i32 %veto_list_sz.addr.035.i.i, %add.i115.i
  %cmp.i.i = icmp sgt i32 %sub.i.i16, 0
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.land.lhs.true.i_crit_edge

cleanup.i.i.land.lhs.true.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

land.lhs.true.i:                                  ; preds = %cleanup.i.i.land.lhs.true.i_crit_edge, %while.body.i.i.land.lhs.true.i_crit_edge, %if.end21.i.land.lhs.true.i_crit_edge
  %60 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %path.i, align 4
  %tobool31.not.i = icmp eq ptr %61, null
  br i1 %tobool31.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %if.then32.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  %vfs_path.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 5
  %call34.i = tail call i32 @kern_path(ptr noundef nonnull %61, i32 noundef 0, ptr noundef %vfs_path.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then32.i.lor.lhs.false.i_crit_edge, label %do.body.i

if.then32.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

do.body.i:                                        ; preds = %if.then32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %62 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %do.body.i.do.end44.i_crit_edge, label %do.end.i

do.body.i.do.end44.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %path.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %64) #13
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end.i, %do.body.i.do.end44.i_crit_edge
  %65 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %path.i, align 4
  tail call void @kfree(ptr noundef %66) #8
  %67 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %path.i, align 4
  br label %if.then52.i

lor.lhs.false.i:                                  ; preds = %if.then32.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i.i, align 8
  %tobool51.not.i = icmp eq ptr %69, null
  br i1 %tobool51.not.i, label %lor.lhs.false.i.if.then52.i_crit_edge, label %lor.lhs.false.i.if.end54.i_crit_edge

lor.lhs.false.i.if.end54.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

lor.lhs.false.i.if.then52.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52.i

if.then52.i:                                      ; preds = %lor.lhs.false.i.if.then52.i_crit_edge, %do.end44.i, %if.then11.i.i, %if.end3.i.i.if.then52.i_crit_edge
  tail call fastcc void @kill_share(ptr noundef nonnull %call7.i.i.i) #8
  br label %out.i

if.end54.i:                                       ; preds = %lor.lhs.false.i.if.end54.i_crit_edge, %if.end6.i.if.end54.i_crit_edge
  tail call void @down_write(ptr noundef nonnull @shares_table_lock) #8
  %call.i116.i = tail call fastcc i32 @share_name_hash(ptr noundef %name) #8
  %mul.i.i.i.i = mul i32 %call.i116.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 29
  %arrayidx.i.i17 = getelementptr [8 x %struct.hlist_head], ptr @shares_table, i32 0, i32 %shr.i.i.i
  %70 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i17, align 4
  %tobool.not.i117.i = icmp eq ptr %71, null
  %add.ptr.i118.i = getelementptr i8, ptr %71, i32 -36
  %tobool3.not2831.i.i = icmp eq ptr %add.ptr.i118.i, null
  %tobool3.not28.i.i = or i1 %tobool.not.i117.i, %tobool3.not2831.i.i
  br i1 %tobool3.not28.i.i, label %if.end54.i.if.then61.i_crit_edge, label %if.end54.i.for.body.i.i_crit_edge

if.end54.i.for.body.i.i_crit_edge:                ; preds = %if.end54.i
  br label %for.body.i.i

if.end54.i.if.then61.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end54.i.for.body.i.i_crit_edge
  %share.029.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i118.i, %if.end54.i.for.body.i.i_crit_edge ]
  %72 = ptrtoint ptr %share.029.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %share.029.i.i, align 4
  %call5.i.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then57.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.029.i.i, i32 0, i32 7
  %74 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hlist.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %75, null
  %add.ptr13.i.i = getelementptr i8, ptr %75, i32 -36
  %tobool3.not32.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool3.not.i.i = or i1 %tobool9.not.i.i, %tobool3.not32.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.if.then61.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.then61.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

if.then57.i:                                      ; preds = %for.body.i.i
  %refcount.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.029.i.i, i32 0, i32 6
  %call.i.i.i120.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then57.i.if.then61.i_crit_edge, label %if.else.i

if.then57.i.if.then61.i_crit_edge:                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

if.then61.i:                                      ; preds = %if.then57.i.if.then61.i_crit_edge, %for.inc.i.i.if.then61.i_crit_edge, %if.end54.i.if.then61.i_crit_edge
  %hlist.i18 = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 7
  %call62.i = tail call fastcc i32 @share_name_hash(ptr noundef %name) #8
  %mul.i.i.i19 = mul i32 %call62.i, 1640531527
  %shr.i.i20 = lshr i32 %mul.i.i.i19, 29
  %arrayidx.i21 = getelementptr [8 x %struct.hlist_head], ptr @shares_table, i32 0, i32 %shr.i.i20
  %77 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i21, align 4
  %79 = ptrtoint ptr %hlist.i18 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %78, ptr %hlist.i18, align 4
  %tobool.not.i121.i = icmp eq ptr %78, null
  br i1 %tobool.not.i121.i, label %if.then61.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then61.i.hlist_add_head.exit.i_crit_edge:      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  %80 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %hlist.i18, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then61.i.hlist_add_head.exit.i_crit_edge
  %81 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %hlist.i18, ptr %arrayidx.i21, align 4
  %pprev34.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %82 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx.i21, ptr %pprev34.i.i, align 8
  br label %if.end64.i

if.else.i:                                        ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call fastcc void @kill_share(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i, %hlist_add_head.exit.i
  %share.0.i = phi ptr [ %share.029.i.i, %if.else.i ], [ %call7.i.i.i, %hlist_add_head.exit.i ]
  tail call void @up_write(ptr noundef nonnull @shares_table_lock) #8
  br label %out.i

out.i:                                            ; preds = %if.end64.i, %if.then52.i, %if.end2.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %share.1.i = phi ptr [ null, %if.end.i.out.i_crit_edge ], [ %share.0.i, %if.end64.i ], [ null, %if.then52.i ], [ null, %if.end2.i.out.i_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i12) #8
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.end4.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ %share.029.i, %if.end ], [ %share.1.i, %out.i ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ksmbd_share_veto_filename(ptr noundef readonly %share, ptr noundef %filename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %veto_list = getelementptr inbounds %struct.ksmbd_share_config, ptr %share, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %veto_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %veto_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %p.0 = getelementptr i8, ptr %.pn, i32 -4
  %1 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p.0, align 4
  %call = tail call zeroext i1 @match_wildcard(ptr noundef %2, ptr noundef %filename) #8
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %3 = xor i1 %cmp.not, true
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @match_wildcard(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_share_configs_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @shares_table_lock) #8
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.hlist_head], ptr @shares_table, i32 0, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -36
  %tobool5.not3538 = icmp eq ptr %add.ptr, null
  %tobool5.not35 = or i1 %tobool.not, %tobool5.not3538
  br i1 %tobool5.not35, label %for.body.for.inc22_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22

land.rhs6:                                        ; preds = %hash_del.exit.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %share.136 = phi ptr [ %add.ptr18, %hash_del.exit.land.rhs6_crit_edge ], [ %add.ptr, %for.body.land.rhs6_crit_edge ]
  %hlist = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.136, i32 0, i32 7
  %2 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlist, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.ksmbd_share_config, ptr %share.136, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs6.hash_del.exit_crit_edge, label %if.then.i.i

land.rhs6.hash_del.exit_crit_edge:                ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %land.rhs6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hlist, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %land.rhs6.hash_del.exit_crit_edge
  tail call fastcc void @kill_share(ptr noundef nonnull %share.136)
  %tobool14.not = icmp eq ptr %3, null
  %add.ptr18 = getelementptr i8, ptr %3, i32 -36
  %tobool5.not39 = icmp eq ptr %add.ptr18, null
  %tobool5.not = or i1 %tobool14.not, %tobool5.not39
  br i1 %tobool5.not, label %hash_del.exit.for.inc22_crit_edge, label %hash_del.exit.land.rhs6_crit_edge

hash_del.exit.land.rhs6_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs6

hash_del.exit.for.inc22_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc22

for.inc22:                                        ; preds = %hash_del.exit.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end23:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef nonnull @shares_table_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @share_name_hash(ptr nocapture noundef readonly %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #14
  %add.i = add i32 %call, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp13.i = icmp ugt i32 %call, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %name, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %call, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %1, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #8
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #8
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #8
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #8
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #8
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #8
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %call, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %name, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #8
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #8
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #8
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #8
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #8
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #8
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #8
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksmbd_ipc_share_config_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/mgmt/share_config.c", i32 22, i32 8}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @shares_table_lock, !1, !"shares_table_lock", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/mgmt/share_config.c", i32 158, i32 5}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @share_config_request._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @share_config_request._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @shares_table, !11, !"shares_table", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/mgmt/share_config.c", i32 21, i32 8}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148275484}
!22 = !{i64 760307, i64 760332, i64 760354, i64 760370, i64 760382, i64 760402, i64 760426, i64 760442, i64 760454}
!23 = !{i64 2148275672}
