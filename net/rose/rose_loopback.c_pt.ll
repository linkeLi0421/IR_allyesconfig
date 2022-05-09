; ModuleID = '/llk/IR_all_yes/net/rose/rose_loopback.c_pt.bc'
source_filename = "../net/rose/rose_loopback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.0, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }
%struct.ax25_address = type { [7 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.104, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.104 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@loopback_queue = internal global { %struct.sk_buff_head, [40 x i8] } zeroinitializer, align 32
@rose_loopback_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@loopback_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&loopback_timer)\00", [46 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rose_loopback_neigh = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"loopback_queue\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 15, i32 28 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"loopback_timer\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 26 }
@___asan_gen_.12 = private constant [28 x i8] c"../net/rose/rose_loopback.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 26, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 1984, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @rose_loopback_clear, ptr @loopback_queue, ptr @rose_loopback_init.__key, ptr @loopback_timer, ptr @.str, ptr @skb_queue_head_init.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_queue to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_loopback_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_loopback_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.sk_buff_head, ptr @loopback_queue, i32 0, i32 2), ptr noundef nonnull @.str.1, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  store ptr @loopback_queue, ptr @loopback_queue, align 4
  store ptr @loopback_queue, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @loopback_queue, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @loopback_queue, i32 0, i32 1), align 4
  tail call void @init_timer_key(ptr noundef nonnull @loopback_timer, ptr noundef nonnull @rose_loopback_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @rose_loopback_init.__key) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_loopback_timer(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.090 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @skb_dequeue(ptr noundef nonnull @loopback_queue) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp ult i32 %1, 3
  br i1 %cmp1, label %if.end.for.inc.sink.split_crit_edge, label %if.end3

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %and = and i32 %shl, 3840
  %arrayidx5 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %add = or i32 %and, %conv6
  %arrayidx10 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %9)
  %cmp13 = icmp eq i8 %9, 11
  br i1 %cmp13, label %land.lhs.true, label %if.end3.if.end24_crit_edge

if.end3.if.end24_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp16 = icmp ult i32 %1, 15
  br i1 %cmp16, label %land.lhs.true.for.inc.sink.split_crit_edge, label %lor.lhs.false

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx19 = getelementptr i8, ptr %3, i32 3
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %11)
  %cmp21.not = icmp eq i8 %11, -86
  br i1 %cmp21.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.for.inc.sink.split_crit_edge

lor.lhs.false.for.inc.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %if.end3.if.end24_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %sub = sub nsw i32 51, %add
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %transport_header.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rose_loopback_neigh to i32))
  %15 = load ptr, ptr @rose_loopback_neigh, align 4
  %call26 = tail call ptr @rose_find_socket(i32 noundef %sub, ptr noundef %15) #4
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end34, label %if.then28

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @rose_process_rx_frame(ptr noundef nonnull %call26, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then28.for.inc.sink.split_crit_edge, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then28.for.inc.sink.split_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end34:                                         ; preds = %if.end24
  br i1 %cmp13, label %if.then38, label %if.end34.for.inc.sink.split_crit_edge

if.end34.for.inc.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.then38:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rose_loopback_neigh to i32))
  %16 = load ptr, ptr @rose_loopback_neigh, align 4
  %dev39 = getelementptr inbounds %struct.rose_neigh, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev39, align 4
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %if.then38.for.inc.sink.split_crit_edge, label %if.end42

if.then38.for.inc.sink.split_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end42:                                         ; preds = %if.then38
  %call43 = tail call ptr @rose_dev_get(ptr noundef %add.ptr) #4
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.for.inc.sink.split_crit_edge, label %if.end46

if.end42.for.inc.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

if.end46:                                         ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rose_loopback_neigh to i32))
  %19 = load ptr, ptr @rose_loopback_neigh, align 4
  %call47 = tail call i32 @rose_rx_call_request(ptr noundef nonnull %call, ptr noundef nonnull %call43, ptr noundef %19, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %do.body1.i, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body1.i:                                       ; preds = %if.end46
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !20
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !10) #4
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !21
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !22

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #4, !srcloc !23
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %dev_put.exit, %if.end42.for.inc.sink.split_crit_edge, %if.then38.for.inc.sink.split_crit_edge, %if.end34.for.inc.sink.split_crit_edge, %if.then28.for.inc.sink.split_crit_edge, %lor.lhs.false.for.inc.sink.split_crit_edge, %land.lhs.true.for.inc.sink.split_crit_edge, %if.end.for.inc.sink.split_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end46.for.inc_crit_edge, %if.then28.for.inc_crit_edge
  %inc = add nuw nsw i32 %count.090, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %34 = load ptr, ptr @loopback_queue, align 4
  %cmp.i.not = icmp eq ptr %34, @loopback_queue
  br i1 %cmp.i.not, label %for.end.cleanup_crit_edge, label %if.then55

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add56 = add i32 %35, 1
  %call57 = tail call i32 @mod_timer(ptr noundef nonnull @loopback_timer, i32 noundef %add56) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_loopback_queue(ptr noundef %skb, ptr nocapture noundef readnone %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.sk_buff_head, ptr @loopback_queue, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %0)
  %cmp = icmp ult i32 %0, 1000
  br i1 %cmp, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %if.then2

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then2:                                         ; preds = %if.end
  tail call void @consume_skb(ptr noundef %skb) #4
  tail call void @skb_queue_tail(ptr noundef nonnull @loopback_queue, ptr noundef nonnull %call1) #4
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @loopback_timer, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.not, label %if.then5, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 10
  %call.i = tail call i32 @mod_timer(ptr noundef nonnull @loopback_timer, i32 noundef %add.i) #4
  br label %if.end7

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %if.then2.if.end7_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_loopback_clear() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @del_timer(ptr noundef nonnull @loopback_timer) #4
  %call13 = tail call ptr @skb_dequeue(ptr noundef nonnull @loopback_queue) #4
  %cmp.not4 = icmp eq ptr %call13, null
  br i1 %cmp.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call15 = phi ptr [ %call1, %while.body.while.body_crit_edge ], [ %call13, %entry.while.body_crit_edge ]
  %0 = getelementptr inbounds %struct.sk_buff, ptr %call15, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call15, i32 noundef 0) #4
  %call1 = tail call ptr @skb_dequeue(ptr noundef nonnull @loopback_queue) #4
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_find_socket(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_process_rx_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rose_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_rx_call_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @rose_loopback_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/rose/rose_loopback.c", i32 26, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @loopback_queue, !4, !"loopback_queue", i1 false, i1 false}
!4 = !{!"../net/rose/rose_loopback.c", i32 15, i32 28}
!5 = !{ptr @loopback_timer, !6, !"loopback_timer", i1 false, i1 false}
!6 = !{!"../net/rose/rose_loopback.c", i32 17, i32 26}
!7 = !{ptr @skb_queue_head_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 986113, i64 986174}
!21 = !{i64 988845}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 989130}
