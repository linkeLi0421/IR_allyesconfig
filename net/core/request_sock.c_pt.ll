; ModuleID = '/llk/IR_all_yes/net/core/request_sock.c_pt.bc'
source_filename = "../net/core/request_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
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
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.145, %struct.anon.146, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.37 }
%union.anon.37 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.145 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.146 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.147, %struct.anon.148, %struct.anon.149, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.147 = type { i32, i32, i64 }
%struct.anon.148 = type { i32, i32, i64 }
%struct.anon.149 = type { i32, i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.150 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@reqsk_queue_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&queue->rskq_lock\00", [46 x i8] zeroinitializer }, align 32
@reqsk_queue_alloc.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&queue->fastopenq.lock\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/request_sock.h\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private constant [27 x i8] c"../net/core/request_sock.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 38, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [30 x i8] c"../include/net/request_sock.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 126, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @reqsk_queue_alloc.__key, ptr @.str, ptr @reqsk_queue_alloc.__key.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqsk_queue_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reqsk_queue_alloc.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reqsk_queue_alloc(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %queue, ptr noundef nonnull @.str, ptr noundef nonnull @reqsk_queue_alloc.__key, i16 noundef signext 3) #3
  %fastopenq = getelementptr inbounds %struct.request_sock_queue, ptr %queue, i32 0, i32 7
  %lock = getelementptr inbounds %struct.request_sock_queue, ptr %queue, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @reqsk_queue_alloc.__key.1, i16 noundef signext 3) #3
  %0 = ptrtoint ptr %fastopenq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fastopenq, align 4
  %rskq_rst_tail = getelementptr inbounds %struct.request_sock_queue, ptr %queue, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %rskq_rst_tail to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rskq_rst_tail, align 4
  %qlen = getelementptr inbounds %struct.request_sock_queue, ptr %queue, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen, align 4
  %rskq_accept_head = getelementptr inbounds %struct.request_sock_queue, ptr %queue, i32 0, i32 5
  %3 = ptrtoint ptr %rskq_accept_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rskq_accept_head, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reqsk_fastopen_remove(ptr noundef %sk, ptr noundef %req, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %fastopenq1 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 7
  %fastopen_rsk = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 120
  %3 = ptrtoint ptr %fastopen_rsk to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %fastopen_rsk, align 4
  %lock = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 7, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %qlen = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 7, i32 3
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %qlen, align 4
  %tfo_listener = getelementptr inbounds %struct.tcp_request_sock, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %tfo_listener to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tfo_listener, align 8
  %sk13 = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 8
  %7 = ptrtoint ptr %sk13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk13, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  br i1 %reset, label %lor.lhs.false, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp.not = icmp eq i8 %10, 10
  br i1 %cmp.not, label %if.end18, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #3
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #3, !srcloc !19
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #3
  br label %cleanup

if.then.i:                                        ; preds = %if.then16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #3
  %12 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i, label %if.then.i.if.end27.i.i_crit_edge, label %land.rhs.i.i

if.then.i.if.end27.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b38.i.i = load i1, ptr @reqsk_free.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.if.end27.i.i_crit_edge, label %if.then.i.i, !prof !20

land.rhs.i.i.if.end27.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 126, i32 noundef 9, ptr noundef null) #3
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end27.i.i_crit_edge, %if.then.i.if.end27.i.i_crit_edge
  %rsk_ops.i.i.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %14 = ptrtoint ptr %rsk_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsk_ops.i.i.i, align 4
  %destructor.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  tail call void %17(ptr noundef %req) #3
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end27.i.i.reqsk_free.exit.i_crit_edge, label %if.then.i.i.i

if.end27.i.i.reqsk_free.exit.i_crit_edge:         ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reqsk_free.exit.i

if.then.i.i.i:                                    ; preds = %if.end27.i.i
  %skc_refcnt.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #3
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #3, !srcloc !19
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.reqsk_free.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.i.i.reqsk_free.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %reqsk_free.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 3) #3
  br label %reqsk_free.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @sk_free(ptr noundef nonnull %19) #3
  br label %reqsk_free.exit.i

reqsk_free.exit.i:                                ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.reqsk_free.exit.i_crit_edge, %if.end27.i.i.reqsk_free.exit.i_crit_edge
  %saved_syn.i.i.i = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 9
  %21 = ptrtoint ptr %saved_syn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %saved_syn.i.i.i, align 4
  tail call void @kfree(ptr noundef %22) #3
  %23 = ptrtoint ptr %rsk_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rsk_ops.i.i.i, align 4
  %slab.i.i.i = getelementptr inbounds %struct.request_sock_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %slab.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slab.i.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %req) #3
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 6000
  %expires = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %expires, align 4
  %29 = ptrtoint ptr %fastopenq1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fastopenq1, align 4
  %cmp19 = icmp eq ptr %30, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %fastopenq1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %req, ptr %fastopenq1, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %rskq_rst_tail = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 7, i32 1
  %32 = ptrtoint ptr %rskq_rst_tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rskq_rst_tail, align 4
  %dl_next = getelementptr inbounds %struct.request_sock, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dl_next to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %req, ptr %dl_next, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  %dl_next24 = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 1
  %35 = ptrtoint ptr %dl_next24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dl_next24, align 8
  %rskq_rst_tail25 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 7, i32 1
  %36 = ptrtoint ptr %rskq_rst_tail25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %req, ptr %rskq_rst_tail25, align 4
  %37 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %qlen, align 4
  br label %out

out:                                              ; preds = %if.end23, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %reqsk_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @reqsk_queue_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/core/request_sock.c", i32 36, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @reqsk_queue_alloc.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/core/request_sock.c", i32 38, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/net/request_sock.h", i32 126, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148432799}
!19 = !{i64 2148347239, i64 2148347271, i64 2148347300, i64 2148347334, i64 2148347365, i64 2148347388}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2149308913}
