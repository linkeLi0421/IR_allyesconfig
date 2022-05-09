; ModuleID = '/llk/IR_all_yes/net/x25/x25_link.c_pt.bc'
source_filename = "../net/x25/x25_link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.x25_subscrip_struct = type { [196 x i8], i32, i32 }

@x25_neigh_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @x25_neigh_list, ptr @x25_neigh_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"x25_neigh_list_lock\00", [44 x i8] zeroinitializer }, align 32
@x25_neigh_list_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@x25_link_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014X25: diagnostic #%d - %02X %02X %02X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"x25_link_control\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/x25/x25_link.c\00", [45 x i8] zeroinitializer }, align 32
@x25_link_control._entry_ptr = internal global ptr @x25_link_control._entry, section ".printk_index", align 4
@x25_link_control._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014X25: received unknown %02X with LCI 000\0A\00", [53 x i8] zeroinitializer }, align 32
@x25_link_control._entry_ptr.6 = internal global ptr @x25_link_control._entry.4, section ".printk_index", align 4
@x25_link_device_up.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&nb->t20timer)\00", [16 x i8] zeroinitializer }, align 32
@sysctl_x25_restart_request_timeout = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 241, i64 251, i64 255]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"x25_neigh_list\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 31, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"x25_neigh_list_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 32, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 113, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 119, i32 3 }
@___asan_gen_.46 = private constant [22 x i8] c"../net/x25/x25_link.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 271, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 1984, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 156, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @x25_link_control._entry, ptr @x25_link_control._entry.4, ptr @x25_link_control._entry_ptr, ptr @x25_link_control._entry_ptr.6, ptr @x25_link_free, ptr @x25_neigh_list, ptr @.str, ptr @x25_neigh_list_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @x25_link_device_up.__key, ptr @.str.7, ptr @skb_queue_head_init.__key, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_neigh_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_neigh_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_link_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_link_control._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_link_device_up.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_control(ptr noundef %skb, ptr noundef %nb, i16 noundef zeroext %frametype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %frametype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %frametype, label %do.end27 [
    i16 251, label %sw.bb
    i16 255, label %sw.bb6
    i16 241, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %2, label %sw.bb.sw.epilog31_crit_edge [
    i32 0, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb.sw.epilog31_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

sw.bb1:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %state, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb1.sw.epilog31_crit_edge, label %if.end.i

sw.bb1.sw.epilog31_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 18
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 18
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #8
  %extended.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %9 = ptrtoint ptr %extended.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  %conv.i = select i1 %tobool2.not.i, i8 16, i8 32
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %call1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %incdec.ptr.i, align 1
  %13 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %incdec.ptr3.i, align 1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %nb) #8
  br label %sw.epilog31

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %t20timer.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 6
  %call.i = tail call i32 @del_timer(ptr noundef %t20timer.i) #8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %state, align 4
  br label %sw.epilog31

sw.bb5:                                           ; preds = %sw.bb
  tail call void @x25_kill_by_neigh(ptr noundef %nb) #8
  %call.i.i60 = tail call ptr @__alloc_skb(i32 noundef 21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i61 = icmp eq ptr %call.i.i60, null
  br i1 %tobool.not.i61, label %sw.bb5.sw.epilog31_crit_edge, label %if.end.i72

sw.bb5.sw.epilog31_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

if.end.i72:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i60, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %18, i32 18
  store ptr %add.ptr.i.i63, ptr %data.i.i62, align 4
  %tail.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i60, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i64, align 8
  %add.ptr1.i.i65 = getelementptr i8, ptr %20, i32 18
  store ptr %add.ptr1.i.i65, ptr %tail.i.i64, align 8
  %call1.i66 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i60, i32 noundef 3) #8
  %extended.i67 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %21 = ptrtoint ptr %extended.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %extended.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i68 = icmp eq i32 %22, 0
  %conv.i69 = select i1 %tobool2.not.i68, i8 16, i8 32
  %incdec.ptr.i70 = getelementptr i8, ptr %call1.i66, i32 1
  %23 = ptrtoint ptr %call1.i66 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i69, ptr %call1.i66, align 1
  %incdec.ptr3.i71 = getelementptr i8, ptr %call1.i66, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i70 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %incdec.ptr.i70, align 1
  %25 = ptrtoint ptr %incdec.ptr3.i71 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %incdec.ptr3.i71, align 1
  %26 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i60, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i.i60, ptr noundef %nb) #8
  br label %sw.epilog31

sw.bb6:                                           ; preds = %entry
  %state7 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %28 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state7, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %29, label %sw.bb6.sw.epilog31_crit_edge [
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
  ]

sw.bb6.sw.epilog31_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %t20timer.i74 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 6
  %call.i75 = tail call i32 @del_timer(ptr noundef %t20timer.i74) #8
  %31 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %state7, align 4
  br label %sw.epilog31

sw.bb10:                                          ; preds = %sw.bb6
  tail call void @x25_kill_by_neigh(ptr noundef %nb) #8
  %call.i.i76 = tail call ptr @__alloc_skb(i32 noundef 23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i77 = icmp eq ptr %call.i.i76, null
  br i1 %tobool.not.i77, label %sw.bb10.x25_transmit_restart_request.exit_crit_edge, label %if.end.i88

sw.bb10.x25_transmit_restart_request.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %x25_transmit_restart_request.exit

if.end.i88:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i76, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i78, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %33, i32 18
  store ptr %add.ptr.i.i79, ptr %data.i.i78, align 4
  %tail.i.i80 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i76, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i80, align 8
  %add.ptr1.i.i81 = getelementptr i8, ptr %35, i32 18
  store ptr %add.ptr1.i.i81, ptr %tail.i.i80, align 8
  %call1.i82 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i76, i32 noundef 5) #8
  %extended.i83 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %36 = ptrtoint ptr %extended.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extended.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.not.i84 = icmp eq i32 %37, 0
  %conv.i85 = select i1 %tobool2.not.i84, i8 16, i8 32
  %incdec.ptr.i86 = getelementptr i8, ptr %call1.i82, i32 1
  %38 = ptrtoint ptr %call1.i82 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i85, ptr %call1.i82, align 1
  %incdec.ptr3.i87 = getelementptr i8, ptr %call1.i82, i32 2
  %39 = ptrtoint ptr %incdec.ptr.i86 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %incdec.ptr.i86, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call1.i82, i32 3
  %40 = ptrtoint ptr %incdec.ptr3.i87 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -5, ptr %incdec.ptr3.i87, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call1.i82, i32 4
  %41 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %42 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %43 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i76, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %43, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i.i76, ptr noundef %nb) #8
  br label %x25_transmit_restart_request.exit

x25_transmit_restart_request.exit:                ; preds = %if.end.i88, %sw.bb10.x25_transmit_restart_request.exit_crit_edge
  %45 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %state7, align 4
  %t20timer.i89 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %t20.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 5
  %47 = ptrtoint ptr %t20.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t20.i, align 4
  %add.i = add i32 %48, %46
  %call.i90 = tail call i32 @mod_timer(ptr noundef %t20timer.i89, i32 noundef %add.i) #8
  br label %sw.epilog31

sw.bb13:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %50, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 6
  br i1 %cmp.i, label %sw.bb13.do.end_crit_edge, label %if.end.i91, !prof !38

sw.bb13.do.end_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i91:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %cmp3.i = icmp ult i32 %50, 7
  br i1 %cmp3.i, label %if.end.i91.sw.epilog31_crit_edge, label %pskb_may_pull.exit, !prof !39

if.end.i91.sw.epilog31_crit_edge:                 ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

pskb_may_pull.exit:                               ; preds = %if.end.i91
  %sub.i = sub nuw nsw i32 7, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.sw.epilog31_crit_edge, label %pskb_may_pull.exit.do.end_crit_edge

pskb_may_pull.exit.do.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

pskb_may_pull.exit.sw.epilog31_crit_edge:         ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog31

do.end:                                           ; preds = %pskb_may_pull.exit.do.end_crit_edge, %sw.bb13.do.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %54, i32 3
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %56 to i32
  %arrayidx16 = getelementptr i8, ptr %54, i32 4
  %57 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %58 to i32
  %arrayidx19 = getelementptr i8, ptr %54, i32 5
  %59 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %60 to i32
  %arrayidx22 = getelementptr i8, ptr %54, i32 6
  %61 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %62 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv20, i32 noundef %conv23) #11
  br label %sw.epilog31

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %frametype to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv) #11
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %do.end27, %do.end, %pskb_may_pull.exit.sw.epilog31_crit_edge, %if.end.i91.sw.epilog31_crit_edge, %x25_transmit_restart_request.exit, %sw.bb8, %sw.bb6.sw.epilog31_crit_edge, %if.end.i72, %sw.bb5.sw.epilog31_crit_edge, %sw.bb3, %if.end.i, %sw.bb1.sw.epilog31_crit_edge, %sw.bb.sw.epilog31_crit_edge
  %state32 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %63 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp = icmp eq i32 %64, 3
  br i1 %cmp, label %while.cond.preheader, label %sw.epilog31.if.end38_crit_edge

sw.epilog31.if.end38_crit_edge:                   ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

while.cond.preheader:                             ; preds = %sw.epilog31
  %queue = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 4
  %call3595 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  %cmp36.not96 = icmp eq ptr %call3595, null
  br i1 %cmp36.not96, label %while.cond.preheader.if.end38_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end38_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3597 = phi ptr [ %call35, %while.body.while.body_crit_edge ], [ %call3595, %while.cond.preheader.while.body_crit_edge ]
  tail call void @x25_send_frame(ptr noundef nonnull %call3597, ptr noundef %nb) #8
  %call35 = tail call ptr @skb_dequeue(ptr noundef %queue) #8
  %cmp36.not = icmp eq ptr %call35, null
  br i1 %cmp36.not, label %while.body.if.end38_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %while.body.if.end38_crit_edge, %while.cond.preheader.if.end38_crit_edge, %sw.epilog31.if.end38_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_kill_by_neigh(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_send_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_transmit_clear_request(ptr noundef %nb, i32 noundef %lci, i8 noundef zeroext %cause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 18
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 18
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #8
  %shr = lshr i32 %lci, 8
  %and = and i32 %shr, 15
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %4 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool2.not, i32 16, i32 32
  %or = or i32 %cond, %and
  %conv = trunc i32 %or to i8
  %incdec.ptr = getelementptr i8, ptr %call1, i32 1
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %call1, align 1
  %conv5 = trunc i32 %lci to i8
  %incdec.ptr6 = getelementptr i8, ptr %call1, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %incdec.ptr, align 1
  %incdec.ptr7 = getelementptr i8, ptr %call1, i32 3
  %8 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 19, ptr %incdec.ptr6, align 1
  %incdec.ptr8 = getelementptr i8, ptr %call1, i32 4
  %9 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cause, ptr %incdec.ptr7, align 1
  %10 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %incdec.ptr8, align 1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i, ptr noundef %nb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_transmit_link(ptr noundef %skb, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge12
    i32 3, label %sw.bb4
  ]

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %queue = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %skb) #8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  tail call void @x25_establish_link(ptr noundef %nb) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge12
  %queue3 = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %queue3, ptr noundef %skb) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @x25_send_frame(ptr noundef %skb, ptr noundef %nb) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_establish_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_established(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb.x25_transmit_restart_request.exit_crit_edge, label %if.end.i

sw.bb.x25_transmit_restart_request.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %x25_transmit_restart_request.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 18
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 18
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 5) #8
  %extended.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 3
  %6 = ptrtoint ptr %extended.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %conv.i = select i1 %tobool2.not.i, i8 16, i8 32
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %8 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %call1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 2
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %incdec.ptr.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call1.i, i32 3
  %10 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -5, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call1.i, i32 4
  %11 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %12 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %nb) #8
  br label %x25_transmit_restart_request.exit

x25_transmit_restart_request.exit:                ; preds = %if.end.i, %sw.bb.x25_transmit_restart_request.exit_crit_edge
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 4
  %t20timer.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %t20.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 5
  %17 = ptrtoint ptr %t20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t20.i, align 4
  %add.i = add i32 %18, %16
  %call.i = tail call i32 @mod_timer(ptr noundef %t20timer.i, i32 noundef %add.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %x25_transmit_restart_request.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_terminated(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %queue = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %queue) #8
  %t20timer.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 6
  %call.i = tail call i32 @del_timer(ptr noundef %t20timer.i) #8
  tail call void @x25_kill_by_neigh(ptr noundef %nb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_device_up(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 136) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %t20timer = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %t20timer, ptr noundef nonnull @x25_t20timer_expiry, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @x25_link_device_up.__key) #8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_hold.exit_crit_edge, label %do.body1.i

if.end.dev_hold.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, 1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !39

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !42
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end.dev_hold.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev1, align 8
  %state = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 2
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %extended to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %extended, align 8
  %global_facil_mask = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 7
  %21 = ptrtoint ptr %global_facil_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 15, ptr %global_facil_mask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_x25_restart_request_timeout to i32))
  %22 = load i32, ptr @sysctl_x25_restart_request_timeout, align 4
  %t20 = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 5
  %23 = ptrtoint ptr %t20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %t20, align 4
  %refcnt = getelementptr inbounds %struct.x25_neigh, ptr %call7.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %24 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %refcnt, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %25 = load ptr, ptr @x25_neigh_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @x25_neigh_list, ptr noundef %25) #8
  br i1 %call.i.i, label %if.end.i.i, label %dev_hold.exit.list_add.exit_crit_edge

dev_hold.exit.list_add.exit_crit_edge:            ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @x25_neigh_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i, ptr @x25_neigh_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %dev_hold.exit.list_add.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_t20timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.x25_transmit_restart_request.exit_crit_edge, label %if.end.i

entry.x25_transmit_restart_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %x25_transmit_restart_request.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 18
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 18
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 5) #8
  %extended.i = getelementptr i8, ptr %t, i32 -64
  %4 = ptrtoint ptr %extended.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  %conv.i = select i1 %tobool2.not.i, i8 16, i8 32
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %call1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call1.i, i32 3
  %8 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -5, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call1.i, i32 4
  %9 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %10 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  tail call void @x25_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %add.ptr) #8
  br label %x25_transmit_restart_request.exit

x25_transmit_restart_request.exit:                ; preds = %if.end.i, %entry.x25_transmit_restart_request.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %t20.i = getelementptr i8, ptr %t, i32 -4
  %14 = ptrtoint ptr %t20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t20.i, align 4
  %add.i = add i32 %15, %13
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_device_down(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %0 = load ptr, ptr @x25_neigh_list, align 4
  %cmp.i.not11 = icmp eq ptr %0, @x25_neigh_list
  br i1 %cmp.i.not11, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq ptr %dev, null
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.012 = phi ptr [ %0, %for.body.lr.ph ], [ %tmp.013, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %entry1.012 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.013 = load ptr, ptr %entry1.012, align 4
  %dev3 = getelementptr inbounds %struct.x25_neigh, ptr %entry1.012, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call fastcc void @__x25_remove_neigh(ptr noundef %entry1.012)
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %do.body1.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body1.i:                                       ; preds = %if.then
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !39

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !42
  br label %for.inc

for.inc:                                          ; preds = %do.end30.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.013, @x25_neigh_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__x25_remove_neigh(ptr noundef %nb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nb) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nb, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %nb, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nb, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %nb, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %if.end

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @kfree(ptr noundef %nb) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @x25_get_neigh(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %nb.0.in = phi ptr [ @x25_neigh_list, %entry ], [ %nb.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %nb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %nb.0 = load ptr, ptr %nb.0.in, align 4
  %cmp.not = icmp eq ptr %nb.0, @x25_neigh_list
  br i1 %cmp.not, label %for.cond.if.end8_crit_edge, label %for.body

for.cond.if.end8_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.body:                                         ; preds = %for.cond
  %dev1 = getelementptr inbounds %struct.x25_neigh, ptr %nb.0, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %2, %dev
  br i1 %cmp2, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %nb.0, null
  br i1 %tobool.not, label %for.end.if.end8_crit_edge, label %if.then7

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %for.end
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %nb.0, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

if.then7.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end8_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end8_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end8_crit_edge, %for.end.if.end8_crit_edge, %for.cond.if.end8_crit_edge
  %use.016 = phi ptr [ null, %for.end.if.end8_crit_edge ], [ %nb.0, %if.else.i.i.i.i.if.end8_crit_edge ], [ %nb.0, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.if.end8_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  ret ptr %use.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_subscr_ioctl(i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %x25_subscr = alloca %struct.x25_subscrip_struct, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %x25_subscr) #8
  %0 = call ptr @memset(ptr %x25_subscr, i32 255, i32 204)
  %1 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 35296, i32 %1)
  %switch = icmp eq i32 %1, 35296
  br i1 %switch, label %if.then.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 204, i32 -1226833920) #13
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !38

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %x25_subscr, i32 noundef 204) #8
  %3 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !47
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %x25_subscr, ptr noundef %arg, i32 noundef 204) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !38

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 204, %if.then.i.if.then11.i.i_crit_edge ], [ 204, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 204, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %x25_subscr, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %out

if.end3:                                          ; preds = %if.end.i.i
  %call4 = call ptr @x25_dev_get(ptr noundef nonnull %x25_subscr) #8
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @_raw_read_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %nb.0.in.i = phi ptr [ @x25_neigh_list, %if.end7 ], [ %nb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %nb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %nb.0.i = load ptr, ptr %nb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %nb.0.i, @x25_neigh_list
  br i1 %cmp.not.i, label %for.cond.i.do.body1.i61_crit_edge, label %for.body.i

for.cond.i.do.body1.i61_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i61

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %9, %call4
  br i1 %cmp2.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %nb.0.i, null
  br i1 %tobool.not.i, label %for.end.i.do.body1.i61_crit_edge, label %if.then7.i

for.end.i.do.body1.i61_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i61

if.then7.i:                                       ; preds = %for.end.i
  %refcnt.i.i = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then7.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.do.body1.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !38

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.do.body1.i_crit_edge:           ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.do.body1.i_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %12 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 118
  %13 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcpu_refcnt.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add13.i = add i32 %24, -1
  store i32 %add13.i, ptr %22, align 4
  %25 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !39

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 35296, i32 %cmd)
  %cmp12 = icmp eq i32 %cmd, 35296
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %dev_put.exit
  call void @_raw_read_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %extended, align 4
  %extended14 = getelementptr inbounds %struct.x25_subscrip_struct, ptr %x25_subscr, i32 0, i32 2
  %28 = ptrtoint ptr %extended14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %extended14, align 4
  %global_facil_mask = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 7
  %29 = ptrtoint ptr %global_facil_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %global_facil_mask, align 4
  %global_facil_mask15 = getelementptr inbounds %struct.x25_subscrip_struct, ptr %x25_subscr, i32 0, i32 1
  %31 = ptrtoint ptr %global_facil_mask15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %global_facil_mask15, align 4
  call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i42 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i42, label %if.then13.if.end29_crit_edge, label %copy_to_user.exit

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

copy_to_user.exit:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i47 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %x25_subscr, i32 noundef 204) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %x25_subscr, i32 noundef 204) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool17.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool17.not, i32 0, i32 -14
  br label %if.end29

if.else:                                          ; preds = %dev_put.exit
  %extended18 = getelementptr inbounds %struct.x25_subscrip_struct, ptr %x25_subscr, i32 0, i32 2
  %32 = ptrtoint ptr %extended18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extended18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch39 = icmp ult i32 %33, 2
  br i1 %switch39, label %if.then23, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_write_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %34 = ptrtoint ptr %extended18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %extended18, align 4
  %extended25 = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %extended25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %extended25, align 4
  %global_facil_mask26 = getelementptr inbounds %struct.x25_subscrip_struct, ptr %x25_subscr, i32 0, i32 1
  %37 = ptrtoint ptr %global_facil_mask26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %global_facil_mask26, align 4
  %global_facil_mask27 = getelementptr inbounds %struct.x25_neigh, ptr %nb.0.i, i32 0, i32 7
  %39 = ptrtoint ptr %global_facil_mask27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %global_facil_mask27, align 4
  call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.else.if.end29_crit_edge, %copy_to_user.exit, %if.then13.if.end29_crit_edge
  %rc.0 = phi i32 [ 0, %if.then23 ], [ -22, %if.else.if.end29_crit_edge ], [ -14, %if.then13.if.end29_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i50 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i50)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i50, 1
  br i1 %cmp.i.i.i.i, label %if.then.i51, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i50)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i50, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !38

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #8
  br label %out

if.then.i51:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @kfree(ptr noundef nonnull %nb.0.i) #8
  br label %out

out:                                              ; preds = %dev_put.exit64, %if.then.i51, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end3.out_crit_edge, %if.then11.i.i, %entry.out_crit_edge
  %rc.1 = phi i32 [ -22, %if.end3.out_crit_edge ], [ -22, %dev_put.exit64 ], [ -22, %entry.out_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i51 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %x25_subscr) #8
  ret i32 %rc.1

do.body1.i61:                                     ; preds = %for.end.i.do.body1.i61_crit_edge, %for.cond.i.do.body1.i61_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %pcpu_refcnt.i53 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 118
  %42 = ptrtoint ptr %pcpu_refcnt.i53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcpu_refcnt.i53, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i54 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i54 to ptr
  %cpu.i55 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i55, align 4
  %arrayidx.i56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i56, align 4
  %add.i57 = add i32 %50, %44
  %51 = inttoptr i32 %add.i57 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add13.i58 = add i32 %53, -1
  store i32 %add13.i58, ptr %51, align 4
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i59 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i59)
  %tobool24.not.i60 = icmp eq i32 %and.i.i.i59, 0
  br i1 %tobool24.not.i60, label %if.then28.i62, label %do.body1.i61.dev_put.exit64_crit_edge, !prof !39

do.body1.i61.dev_put.exit64_crit_edge:            ; preds = %do.body1.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit64

if.then28.i62:                                    ; preds = %do.body1.i61
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit64

dev_put.exit64:                                   ; preds = %if.then28.i62, %do.body1.i61.dev_put.exit64_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #8, !srcloc !42
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @x25_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_link_free() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  %0 = load ptr, ptr @x25_neigh_list, align 4
  %cmp.i.not10 = icmp eq ptr %0, @x25_neigh_list
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %dev_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.011 = phi ptr [ %tmp.012, %dev_put.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %entry1.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.012 = load ptr, ptr %entry1.011, align 4
  %dev3 = getelementptr inbounds %struct.x25_neigh, ptr %entry1.011, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  tail call fastcc void @__x25_remove_neigh(ptr noundef %entry1.011)
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.dev_put.exit_crit_edge, label %do.body1.i

for.body.dev_put.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

do.body1.i:                                       ; preds = %for.body
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !39

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !42
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %for.body.dev_put.exit_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.012, @x25_neigh_list
  br i1 %cmp.i.not, label %dev_put.exit.for.end_crit_edge, label %dev_put.exit.for.body_crit_edge

dev_put.exit.for.body_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

dev_put.exit.for.end_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %dev_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @x25_neigh_list_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @x25_neigh_list, !1, !"x25_neigh_list", i1 false, i1 false}
!1 = !{!"../net/x25/x25_link.c", i32 31, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/x25/x25_link.c", i32 32, i32 1}
!4 = !{ptr @x25_neigh_list_lock, !3, !"x25_neigh_list_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/x25/x25_link.c", i32 113, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @x25_link_control._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @x25_link_control._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/x25/x25_link.c", i32 119, i32 3}
!13 = !{ptr @x25_link_control._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @x25_link_control._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @x25_link_device_up.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/x25/x25_link.c", i32 271, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @skb_queue_head_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 609469, i64 609530}
!41 = !{i64 612201}
!42 = !{i64 612486}
!43 = !{i64 2148306519}
!44 = !{i64 2148220983, i64 2148221015, i64 2148221044, i64 2148221078, i64 2148221109, i64 2148221132}
!45 = !{i64 2149960357}
!46 = !{i64 2148218518, i64 2148218550, i64 2148218579, i64 2148218613, i64 2148218644, i64 2148218667}
!47 = !{i64 5775298}
!48 = !{i64 5775495}
!49 = !{i64 2153260728}
