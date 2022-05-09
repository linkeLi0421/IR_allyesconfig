; ModuleID = '/llk/IR_all_yes/net/unix/garbage.c_pt.bc'
source_filename = "../net/unix/garbage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.118 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.scm_stat = type { %struct.atomic_t }
%struct.sk_buff_list = type { ptr, ptr }
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }

@unix_tot_inflight = external dso_local global i32, align 4
@gc_in_progress = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/unix/garbage.c\00", [45 x i8] zeroinitializer }, align 32
@unix_gc_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @unix_gc_wait, i64 44), ptr getelementptr (i8, ptr @unix_gc_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@unix_gc_lock = external dso_local global %struct.spinlock, align 4
@gc_inflight_list = external dso_local global %struct.list_head, align 4
@gc_candidates = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gc_candidates, ptr @gc_candidates }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unix_gc_wait.lock\00", [46 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"gc_in_progress\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 188, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 201, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"unix_gc_wait\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"gc_candidates\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 88, i32 8 }
@___asan_gen_.16 = private constant [22 x i8] c"../net/unix/garbage.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 89, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1984, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gc_in_progress, ptr @.str, ptr @unix_gc_wait, ptr @gc_candidates, ptr @.str.1, ptr @skb_queue_head_init.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_in_progress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_gc_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_candidates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_unix_gc() local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @unix_tot_inflight to i32))
  %0 = load volatile i32, ptr @unix_tot_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %0)
  %cmp = icmp ugt i32 %0, 16000
  br i1 %cmp, label %do.end2, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

do.end2:                                          ; preds = %entry
  %1 = load volatile i8, ptr @gc_in_progress, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %do.end2.do.body6_crit_edge

do.end2.do.body6_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unix_gc()
  br label %do.body6

do.body6:                                         ; preds = %if.then, %do.end2.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 201) #4
  %2 = load i8, ptr @gc_in_progress, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp11 = icmp eq i8 %2, 0
  br i1 %cmp11, label %do.body6.do.end22_crit_edge, label %if.end14

do.body6.do.end22_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end22

if.end14:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %call25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %4 = load i8, ptr @gc_in_progress, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1726 = icmp eq i8 %4, 0
  br i1 %cmp1726, label %if.end14.for.end_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  br label %cleanup

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  call void @schedule() #4
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %5 = load i8, ptr @gc_in_progress, align 1, !range !21
  %cmp17 = icmp eq i8 %5, 0
  br i1 %cmp17, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end14.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @unix_gc_wait, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %do.end22

do.end22:                                         ; preds = %for.end, %do.body6.do.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unix_gc() local_unnamed_addr #0 align 64 {
entry:
  %hitlist = alloca %struct.sk_buff_head, align 4
  %cursor = alloca %struct.list_head, align 4
  %not_cycle_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hitlist) #4
  %0 = call ptr @memset(ptr %hitlist, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cursor) #4
  %1 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cursor, align 4, !annotation !22
  %2 = getelementptr inbounds %struct.list_head, ptr %cursor, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %not_cycle_list) #4
  %4 = getelementptr inbounds %struct.list_head, ptr %not_cycle_list, i32 0, i32 1
  %5 = ptrtoint ptr %not_cycle_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %not_cycle_list, ptr %not_cycle_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %not_cycle_list, ptr %4, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #4
  %7 = load i8, ptr @gc_in_progress, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body3, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body3:                                         ; preds = %entry
  store volatile i8 1, ptr @gc_in_progress, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gc_inflight_list to i32))
  %8 = load ptr, ptr @gc_inflight_list, align 4
  %cmp.not217 = icmp eq ptr %8, @gc_inflight_list
  br i1 %cmp.not217, label %do.body3.for.cond60.preheader_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.for.cond60.preheader_crit_edge:          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %if.end51.for.cond60.preheader_crit_edge, %do.body3.for.cond60.preheader_crit_edge
  %.pn172222 = load ptr, ptr @gc_candidates, align 4
  %cmp62.not223 = icmp eq ptr %.pn172222, @gc_candidates
  br i1 %cmp62.not223, label %for.cond60.preheader.for.end73_crit_edge, label %for.cond60.preheader.for.body65_crit_edge

for.cond60.preheader.for.body65_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body65

for.cond60.preheader.for.end73_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end73

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn.in218 = phi ptr [ %.pn221, %if.end51.for.body_crit_edge ], [ %8, %do.body3.for.body_crit_edge ]
  %9 = ptrtoint ptr %.pn.in218 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn221 = load ptr, ptr %.pn.in218, align 8
  %sk_socket = getelementptr i8, ptr %.pn.in218, i32 -280
  %10 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_socket, align 16
  %file = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_count = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %f_count, i32 noundef 4) #4
  %14 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %f_count, align 4
  %inflight = getelementptr i8, ptr %.pn.in218, i32 8
  %call.i.i175 = call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #4
  %16 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp15 = icmp slt i32 %17, 1
  br i1 %cmp15, label %do.body20, label %do.body29, !prof !23

do.body20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

do.body29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp30 = icmp slt i32 %15, %17
  br i1 %cmp30, label %do.body38, label %do.end46, !prof !23

do.body38:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

do.end46:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp47 = icmp eq i32 %15, %17
  br i1 %cmp47, label %if.then48, label %do.end46.if.end51_crit_edge

do.end46.if.end51_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then48:                                        ; preds = %do.end46
  %call.i.i179 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in218) #4
  br i1 %call.i.i179, label %if.end.i.i, label %if.then48.__list_del_entry.exit.i_crit_edge

if.then48.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in218, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn.in218 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in218, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then48.__list_del_entry.exit.i_crit_edge
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in218, ptr noundef %24, ptr noundef nonnull @gc_candidates) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %.pn.in218, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %.pn.in218 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gc_candidates, ptr %.pn.in218, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in218, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in218, ptr %24, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %gc_flags = getelementptr i8, ptr %.pn.in218, i32 56
  %28 = ptrtoint ptr %gc_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gc_flags, align 4
  %or.i176 = or i32 %29, 3
  store i32 %or.i176, ptr %gc_flags, align 4
  br label %if.end51

if.end51:                                         ; preds = %list_move_tail.exit, %do.end46.if.end51_crit_edge
  %cmp.not = icmp eq ptr %.pn221, @gc_inflight_list
  br i1 %cmp.not, label %if.end51.for.cond60.preheader_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end51.for.cond60.preheader_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond60.preheader

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.cond60.preheader.for.body65_crit_edge
  %.pn172224 = phi ptr [ %.pn172, %for.body65.for.body65_crit_edge ], [ %.pn172222, %for.cond60.preheader.for.body65_crit_edge ]
  %u.1 = getelementptr i8, ptr %.pn172224, i32 -1160
  call fastcc void @scan_children(ptr noundef %u.1, ptr noundef nonnull @dec_inflight, ptr noundef null)
  %30 = ptrtoint ptr %.pn172224 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn172 = load ptr, ptr %.pn172224, align 4
  %cmp62.not = icmp eq ptr %.pn172, @gc_candidates
  br i1 %cmp62.not, label %for.body65.for.end73_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body65

for.body65.for.end73_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end73

for.end73:                                        ; preds = %for.body65.for.end73_crit_edge, %for.cond60.preheader.for.end73_crit_edge
  %31 = load ptr, ptr @gc_candidates, align 4
  %call.i.i180 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %cursor, ptr noundef nonnull @gc_candidates, ptr noundef %31) #4
  br i1 %call.i.i180, label %if.end.i.i181, label %list_add.exitthread-pre-split

if.end.i.i181:                                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cursor, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %cursor, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @gc_candidates, ptr %2, align 4
  store volatile ptr %cursor, ptr @gc_candidates, align 4
  br label %list_add.exit

list_add.exitthread-pre-split:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %cursor, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %list_add.exitthread-pre-split, %if.end.i.i181
  %36 = phi ptr [ %.pr, %list_add.exitthread-pre-split ], [ %31, %if.end.i.i181 ]
  %cmp75.not225 = icmp eq ptr %36, @gc_candidates
  br i1 %cmp75.not225, label %list_add.exit.while.end_crit_edge, label %list_add.exit.while.body_crit_edge

list_add.exit.while.body_crit_edge:               ; preds = %list_add.exit
  br label %while.body

list_add.exit.while.end_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end88.while.body_crit_edge, %list_add.exit.while.body_crit_edge
  %37 = phi ptr [ %67, %if.end88.while.body_crit_edge ], [ %36, %list_add.exit.while.body_crit_edge ]
  %call.i.i182 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cursor) #4
  br i1 %call.i.i182, label %if.end.i.i185, label %while.body.__list_del_entry.exit.i187_crit_edge

while.body.__list_del_entry.exit.i187_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i187

if.end.i.i185:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %40 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cursor, align 4
  %prev1.i.i.i184 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i184, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i187

__list_del_entry.exit.i187:                       ; preds = %if.end.i.i185, %while.body.__list_del_entry.exit.i187_crit_edge
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %37, align 4
  %call.i.i.i186 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %cursor, ptr noundef %37, ptr noundef %45) #4
  br i1 %call.i.i.i186, label %if.end.i.i.i189, label %__list_del_entry.exit.i187.list_move.exit_crit_edge

__list_del_entry.exit.i187.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i187
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move.exit

if.end.i.i.i189:                                  ; preds = %__list_del_entry.exit.i187
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cursor, ptr %prev1.i.i2.i, align 4
  %47 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %cursor, align 4
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %37, ptr %2, align 4
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %cursor, ptr %37, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i189, %__list_del_entry.exit.i187.list_move.exit_crit_edge
  %inflight81 = getelementptr i8, ptr %37, i32 8
  %call.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef %inflight81, i32 noundef 4) #4
  %50 = ptrtoint ptr %inflight81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %inflight81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp83 = icmp sgt i32 %51, 0
  br i1 %cmp83, label %if.then84, label %list_move.exit.if.end88_crit_edge

list_move.exit.if.end88_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then84:                                        ; preds = %list_move.exit
  %add.ptr79 = getelementptr i8, ptr %37, i32 -1160
  %call.i.i190 = call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #4
  br i1 %call.i.i190, label %if.end.i.i193, label %if.then84.__list_del_entry.exit.i195_crit_edge

if.then84.__list_del_entry.exit.i195_crit_edge:   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i195

if.end.i.i193:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i191 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i191 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i191, align 4
  %54 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %37, align 4
  %prev1.i.i.i192 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i192, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %__list_del_entry.exit.i195

__list_del_entry.exit.i195:                       ; preds = %if.end.i.i193, %if.then84.__list_del_entry.exit.i195_crit_edge
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %4, align 4
  %call.i.i.i194 = call zeroext i1 @__list_add_valid(ptr noundef %37, ptr noundef %59, ptr noundef nonnull %not_cycle_list) #4
  br i1 %call.i.i.i194, label %if.end.i.i.i197, label %__list_del_entry.exit.i195.list_move_tail.exit198_crit_edge

__list_del_entry.exit.i195.list_move_tail.exit198_crit_edge: ; preds = %__list_del_entry.exit.i195
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit198

if.end.i.i.i197:                                  ; preds = %__list_del_entry.exit.i195
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %37, ptr %4, align 4
  %61 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %not_cycle_list, ptr %37, align 4
  %prev3.i.i.i196 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i196 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i196, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %37, ptr %59, align 4
  br label %list_move_tail.exit198

list_move_tail.exit198:                           ; preds = %if.end.i.i.i197, %__list_del_entry.exit.i195.list_move_tail.exit198_crit_edge
  %gc_flags86 = getelementptr i8, ptr %37, i32 56
  %64 = ptrtoint ptr %gc_flags86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gc_flags86, align 4
  %and.i = and i32 %65, -3
  store i32 %and.i, ptr %gc_flags86, align 4
  call fastcc void @scan_children(ptr noundef %add.ptr79, ptr noundef nonnull @inc_inflight_move_tail, ptr noundef null)
  br label %if.end88

if.end88:                                         ; preds = %list_move_tail.exit198, %list_move.exit.if.end88_crit_edge
  %66 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cursor, align 4
  %cmp75.not = icmp eq ptr %67, @gc_candidates
  br i1 %cmp75.not, label %if.end88.while.end_crit_edge, label %if.end88.while.body_crit_edge

if.end88.while.body_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end88.while.end_crit_edge, %list_add.exit.while.end_crit_edge
  %call.i.i199 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cursor) #4
  br i1 %call.i.i199, label %if.end.i.i202, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i202:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  %70 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cursor, align 4
  %prev1.i.i.i201 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i201 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i201, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i202, %while.end.list_del.exit_crit_edge
  %74 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %cursor, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %hitlist, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %76 = ptrtoint ptr %hitlist to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %hitlist, ptr %hitlist, align 4
  %prev.i.i204 = getelementptr inbounds %struct.anon.67, ptr %hitlist, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i204 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %hitlist, ptr %prev.i.i204, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %hitlist, i32 0, i32 1
  %78 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %qlen.i.i, align 4
  %.pn173226 = load ptr, ptr @gc_candidates, align 4
  %cmp94.not227 = icmp eq ptr %.pn173226, @gc_candidates
  br i1 %cmp94.not227, label %list_del.exit.while.cond106.preheader_crit_edge, label %list_del.exit.for.body97_crit_edge

list_del.exit.for.body97_crit_edge:               ; preds = %list_del.exit
  br label %for.body97

list_del.exit.while.cond106.preheader_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond106.preheader

while.cond106.preheader:                          ; preds = %for.body97.while.cond106.preheader_crit_edge, %list_del.exit.while.cond106.preheader_crit_edge
  %79 = ptrtoint ptr %not_cycle_list to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %not_cycle_list, align 4
  %cmp.i.not229 = icmp eq ptr %80, %not_cycle_list
  br i1 %cmp.i.not229, label %while.cond106.preheader.while.end118_crit_edge, label %while.cond106.preheader.while.body111_crit_edge

while.cond106.preheader.while.body111_crit_edge:  ; preds = %while.cond106.preheader
  br label %while.body111

while.cond106.preheader.while.end118_crit_edge:   ; preds = %while.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end118

for.body97:                                       ; preds = %for.body97.for.body97_crit_edge, %list_del.exit.for.body97_crit_edge
  %.pn173228 = phi ptr [ %.pn173, %for.body97.for.body97_crit_edge ], [ %.pn173226, %list_del.exit.for.body97_crit_edge ]
  %u.2 = getelementptr i8, ptr %.pn173228, i32 -1160
  call fastcc void @scan_children(ptr noundef %u.2, ptr noundef nonnull @inc_inflight, ptr noundef nonnull %hitlist)
  %81 = ptrtoint ptr %.pn173228 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn173 = load ptr, ptr %.pn173228, align 4
  %cmp94.not = icmp eq ptr %.pn173, @gc_candidates
  br i1 %cmp94.not, label %for.body97.while.cond106.preheader_crit_edge, label %for.body97.for.body97_crit_edge

for.body97.for.body97_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body97

for.body97.while.cond106.preheader_crit_edge:     ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond106.preheader

while.body111:                                    ; preds = %list_move_tail.exit213.while.body111_crit_edge, %while.cond106.preheader.while.body111_crit_edge
  %82 = phi ptr [ %96, %list_move_tail.exit213.while.body111_crit_edge ], [ %80, %while.cond106.preheader.while.body111_crit_edge ]
  %gc_flags116 = getelementptr i8, ptr %82, i32 56
  %83 = ptrtoint ptr %gc_flags116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %gc_flags116, align 4
  %and.i178 = and i32 %84, -2
  store i32 %and.i178, ptr %gc_flags116, align 4
  %call.i.i205 = call zeroext i1 @__list_del_entry_valid(ptr noundef %82) #4
  br i1 %call.i.i205, label %if.end.i.i208, label %while.body111.__list_del_entry.exit.i210_crit_edge

while.body111.__list_del_entry.exit.i210_crit_edge: ; preds = %while.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i210

if.end.i.i208:                                    ; preds = %while.body111
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i206 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i206 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i206, align 4
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %82, align 4
  %prev1.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i207 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i207, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %__list_del_entry.exit.i210

__list_del_entry.exit.i210:                       ; preds = %if.end.i.i208, %while.body111.__list_del_entry.exit.i210_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  %call.i.i.i209 = call zeroext i1 @__list_add_valid(ptr noundef %82, ptr noundef %91, ptr noundef nonnull @gc_inflight_list) #4
  br i1 %call.i.i.i209, label %if.end.i.i.i212, label %__list_del_entry.exit.i210.list_move_tail.exit213_crit_edge

__list_del_entry.exit.i210.list_move_tail.exit213_crit_edge: ; preds = %__list_del_entry.exit.i210
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit213

if.end.i.i.i212:                                  ; preds = %__list_del_entry.exit.i210
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1) to i32))
  store ptr %82, ptr getelementptr inbounds (%struct.list_head, ptr @gc_inflight_list, i32 0, i32 1), align 4
  %92 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @gc_inflight_list, ptr %82, align 4
  %prev3.i.i.i211 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i211 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %prev3.i.i.i211, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %82, ptr %91, align 4
  br label %list_move_tail.exit213

list_move_tail.exit213:                           ; preds = %if.end.i.i.i212, %__list_del_entry.exit.i210.list_move_tail.exit213_crit_edge
  %95 = ptrtoint ptr %not_cycle_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %not_cycle_list, align 4
  %cmp.i.not = icmp eq ptr %96, %not_cycle_list
  br i1 %cmp.i.not, label %list_move_tail.exit213.while.end118_crit_edge, label %list_move_tail.exit213.while.body111_crit_edge

list_move_tail.exit213.while.body111_crit_edge:   ; preds = %list_move_tail.exit213
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body111

list_move_tail.exit213.while.end118_crit_edge:    ; preds = %list_move_tail.exit213
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end118

while.end118:                                     ; preds = %list_move_tail.exit213.while.end118_crit_edge, %while.cond106.preheader.while.end118_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #4
  %97 = ptrtoint ptr %hitlist to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hitlist, align 4
  %cmp.i.i2.i = icmp eq ptr %98, %hitlist
  %tobool.not.i13.i = icmp eq ptr %98, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %while.end118.__skb_queue_purge.exit_crit_edge, label %while.end118.while.body.i_crit_edge

while.end118.while.body.i_crit_edge:              ; preds = %while.end118
  br label %while.body.i

while.end118.__skb_queue_purge.exit_crit_edge:    ; preds = %while.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end118.while.body.i_crit_edge
  %99 = phi ptr [ %109, %while.body.i.while.body.i_crit_edge ], [ %98, %while.end118.while.body.i_crit_edge ]
  %100 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %99, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %103, i32 0, i32 1
  %106 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %105, ptr %prev17.i.i.i, align 4
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %103, ptr %105, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %99, i32 noundef 0) #4
  %108 = ptrtoint ptr %hitlist to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hitlist, align 4
  %cmp.i.i.i = icmp eq ptr %109, %hitlist
  %tobool.not.i1.i = icmp eq ptr %109, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %while.end118.__skb_queue_purge.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #4
  %110 = load volatile ptr, ptr @gc_candidates, align 4
  %cmp.i214.not = icmp eq ptr %110, @gc_candidates
  br i1 %cmp.i214.not, label %do.body144, label %do.body131, !prof !26

do.body131:                                       ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #4, !srcloc !27
  unreachable

do.body144:                                       ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #6
  store volatile i8 0, ptr @gc_in_progress, align 1
  call void @__wake_up(ptr noundef nonnull @unix_gc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %out

out:                                              ; preds = %do.body144, %entry.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %not_cycle_list) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cursor) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hitlist) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_children(ptr noundef %x, ptr nocapture noundef readonly %func, ptr noundef %hitlist) unnamed_addr #0 align 64 {
entry:
  %embryos = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %x, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp.not = icmp eq i8 %1, 10
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @scan_inflight(ptr noundef %x, ptr noundef %func, ptr noundef %hitlist)
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %embryos) #4
  %2 = getelementptr inbounds %struct.list_head, ptr %embryos, i32 0, i32 1
  %3 = ptrtoint ptr %embryos to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %embryos, ptr %embryos, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %embryos, ptr %2, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %x, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %x, i32 0, i32 8, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #4
  %5 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_receive_queue, align 4
  %cmp7.not49 = icmp eq ptr %6, %sk_receive_queue
  br i1 %cmp7.not49, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.else.for.body_crit_edge
  %skb.050 = phi ptr [ %next.051, %list_add_tail.exit.for.body_crit_edge ], [ %6, %if.else.for.body_crit_edge ]
  %7 = ptrtoint ptr %skb.050 to i32
  call void @__asan_load4_noabort(i32 %7)
  %next.051 = load ptr, ptr %skb.050, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb.050, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %link = getelementptr inbounds %struct.unix_sock, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %12, %link
  br i1 %cmp.i.not, label %do.end19, label %do.body14, !prof !26

do.body14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/unix/garbage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #4, !srcloc !28
  unreachable

do.end19:                                         ; preds = %for.body
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %14, ptr noundef nonnull %embryos) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end19.list_add_tail.exit_crit_edge

do.end19.list_add_tail.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %link, ptr %2, align 4
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %embryos, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.unix_sock, ptr %10, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %link, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end19.list_add_tail.exit_crit_edge
  %cmp7.not = icmp eq ptr %next.051, %sk_receive_queue
  br i1 %cmp7.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.else.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #4
  %19 = ptrtoint ptr %embryos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %embryos, align 4
  %cmp.i44.not52 = icmp eq ptr %20, %embryos
  br i1 %cmp.i44.not52, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %for.end.while.body_crit_edge
  %21 = phi ptr [ %31, %list_del_init.exit.while.body_crit_edge ], [ %20, %for.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %21, i32 -1160
  call fastcc void @scan_inflight(ptr noundef %add.ptr, ptr noundef %func, ptr noundef %hitlist)
  %call.i.i46 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #4
  br i1 %call.i.i46, label %if.end.i.i47, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i47:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i47, %while.body.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i, align 4
  %30 = ptrtoint ptr %embryos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %embryos, align 4
  %cmp.i44.not = icmp eq ptr %31, %embryos
  br i1 %cmp.i44.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %for.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %embryos) #4
  br label %if.end30

if.end30:                                         ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dec_inflight(ptr noundef %usk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %usk, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #4, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inc_inflight_move_tail(ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %u, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #4, !srcloc !30
  %gc_flags = getelementptr inbounds %struct.unix_sock, ptr %u, i32 0, i32 9
  %1 = ptrtoint ptr %gc_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %gc_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.unix_sock, ptr %u, i32 0, i32 6
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #4
  br i1 %call.i.i3, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.unix_sock, ptr %u, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %10, ptr noundef nonnull @gc_candidates) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end_crit_edge

__list_del_entry.exit.i.if.end_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %link, ptr getelementptr inbounds (%struct.list_head, ptr @gc_candidates, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gc_candidates, ptr %link, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %u, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %link, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inc_inflight(ptr noundef %usk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %usk, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #4, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scan_inflight(ptr noundef %x, ptr nocapture noundef readonly %func, ptr noundef %hitlist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %x, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %x, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %0 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.not53 = icmp eq ptr %1, %sk_receive_queue
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp21.not = icmp ne ptr %hitlist, null
  %qlen.i = getelementptr inbounds %struct.sock, ptr %x, i32 0, i32 8, i32 1
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %hitlist, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %hitlist, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.054 = phi ptr [ %1, %for.body.lr.ph ], [ %next.055, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.054 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.055 = load ptr, ptr %skb.054, align 8
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb.054, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool11.not48 = icmp eq i16 %6, 0
  br i1 %tobool11.not48, label %if.then.for.inc_crit_edge, label %while.body.preheader

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

while.body.preheader:                             ; preds = %if.then
  %fp10 = getelementptr inbounds %struct.scm_fp_list, ptr %4, i32 0, i32 3
  %conv = sext i16 %6 to i32
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.preheader
  %dec51.in = phi i32 [ %dec51, %if.end18.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %fp7.050 = phi ptr [ %incdec.ptr, %if.end18.while.body_crit_edge ], [ %fp10, %while.body.preheader ]
  %hit.0.off049 = phi i1 [ %hit.2.off0, %if.end18.while.body_crit_edge ], [ false, %while.body.preheader ]
  %dec51 = add i32 %dec51.in, -1
  %incdec.ptr = getelementptr ptr, ptr %fp7.050, i32 1
  %7 = ptrtoint ptr %fp7.050 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fp7.050, align 4
  %call = tail call ptr @unix_get_socket(ptr noundef %8) #4
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %while.body.if.end18_crit_edge, label %if.then13

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %while.body
  %gc_flags = getelementptr inbounds %struct.unix_sock, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %gc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %gc_flags, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %if.then13.if.end18_crit_edge, label %if.then17

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %func(ptr noundef nonnull %call) #4, !callees !31
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %hit.2.off0 = phi i1 [ %hit.0.off049, %while.body.if.end18_crit_edge ], [ true, %if.then17 ], [ %hit.0.off049, %if.then13.if.end18_crit_edge ]
  %tobool11.not = icmp eq i32 %dec51, 0
  br i1 %tobool11.not, label %while.end, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end18
  %11 = and i1 %cmp21.not, %hit.2.off0
  br i1 %11, label %if.then23, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %14 = ptrtoint ptr %skb.054 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.054, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.054, i32 0, i32 1
  %16 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.054, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %prev17.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %17, align 8
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %hitlist, ptr %skb.054, align 8
  store volatile ptr %21, ptr %prev9.i, align 4
  store volatile ptr %skb.054, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %skb.054, ptr %21, align 4
  %23 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %while.end.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %next.055, %sk_receive_queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unix_get_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/unix/garbage.c", i32 201, i32 2}
!2 = !{ptr @gc_in_progress, !3, !"gc_in_progress", i1 false, i1 false}
!3 = !{!"../net/unix/garbage.c", i32 188, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/unix/garbage.c", i32 89, i32 8}
!6 = !{ptr @unix_gc_wait, !5, !"unix_gc_wait", i1 false, i1 false}
!7 = !{ptr @gc_candidates, !8, !"gc_candidates", i1 false, i1 false}
!8 = !{!"../net/unix/garbage.c", i32 88, i32 8}
!9 = !{ptr @skb_queue_head_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2156848700, i64 2156849183, i64 2156848737, i64 2156848793, i64 2156848827, i64 2156848851, i64 2156848892, i64 2156848913, i64 2156848941, i64 2156848975}
!25 = !{i64 2156850305, i64 2156850788, i64 2156850342, i64 2156850398, i64 2156850432, i64 2156850456, i64 2156850497, i64 2156850518, i64 2156850546, i64 2156850580}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2156860964, i64 2156861447, i64 2156861001, i64 2156861057, i64 2156861091, i64 2156861115, i64 2156861156, i64 2156861177, i64 2156861205, i64 2156861239}
!28 = !{i64 2156831589, i64 2156832072, i64 2156831626, i64 2156831682, i64 2156831716, i64 2156831740, i64 2156831781, i64 2156831802, i64 2156831830, i64 2156831864}
!29 = !{i64 2148219592, i64 2148219618, i64 2148219647, i64 2148219681, i64 2148219712, i64 2148219735}
!30 = !{i64 2148217127, i64 2148217153, i64 2148217182, i64 2148217216, i64 2148217247, i64 2148217270}
!31 = !{ptr @dec_inflight, ptr @inc_inflight, ptr @inc_inflight_move_tail}
