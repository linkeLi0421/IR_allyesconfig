; ModuleID = '/llk/IR_all_yes/net/rose/rose_link.c_pt.bc'
source_filename = "../net/rose/rose_link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sysctl_rose_link_fail_timeout = external dso_local local_unnamed_addr global i32, align 4
@rose_link_rx_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014ROSE: received diagnostic #%d - %3ph\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rose_link_rx_restart\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/rose/rose_link.c\00", [43 x i8] zeroinitializer }, align 32
@rose_link_rx_restart._entry_ptr = internal global ptr @rose_link_rx_restart._entry, section ".printk_index", align 4
@rose_link_rx_restart._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014ROSE: received unknown %02X with LCI 000\0A\00", [52 x i8] zeroinitializer }, align 32
@rose_link_rx_restart._entry_ptr.5 = internal global ptr @rose_link_rx_restart._entry.3, section ".printk_index", align 4
@rose_callsign = external dso_local global %struct.ax25_address, align 1
@null_ax25_address = external dso_local constant %struct.ax25_address, align 1
@sysctl_rose_restart_request_timeout = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 241, i64 251, i64 255]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 157, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [24 x i8] c"../net/rose/rose_link.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 162, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @rose_link_rx_restart._entry, ptr @rose_link_rx_restart._entry.3, ptr @rose_link_rx_restart._entry_ptr, ptr @rose_link_rx_restart._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_link_rx_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_link_rx_restart._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_ftimer(ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ftimer = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %ftimer) #6
  %function = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_ftimer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_link_fail_timeout to i32))
  %2 = load i32, ptr @sysctl_rose_link_fail_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #6
  %add = add i32 %call2.i, %1
  %expires = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %ftimer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rose_ftimer_expiry(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_stop_ftimer(ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ftimer = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %ftimer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_stop_t0timer(ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %t0timer = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12
  %call = tail call i32 @del_timer(ptr noundef %t0timer) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rose_ftimer_running(ptr noundef %neigh) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %lnot.ext.i = zext i1 %tobool.not.i.i to i32
  ret i32 %lnot.ext.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_link_rx_restart(ptr nocapture noundef readonly %skb, ptr noundef %neigh, i16 noundef zeroext %frametype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %frametype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %frametype, label %do.end13 [
    i16 251, label %sw.bb
    i16 255, label %sw.bb4
    i16 241, label %do.end
  ]

sw.bb:                                            ; preds = %entry
  %t0timer.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12
  %call.i = tail call i32 @del_timer(ptr noundef %t0timer.i) #6
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 8
  %1 = ptrtoint ptr %restarted to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %restarted, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %conv3 = zext i1 %cmp to i8
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 9
  %6 = ptrtoint ptr %dce_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %dce_mode, align 1
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 93, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 89
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 89
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #6
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %11 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %call1.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %call1.i, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %incdec.ptr.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 3
  %13 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %14 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %incdec.ptr3.i, align 1
  %call5.i = tail call fastcc i32 @rose_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %neigh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %t0timer.i37 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12
  %call.i38 = tail call i32 @del_timer(ptr noundef %t0timer.i37) #6
  %restarted5 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 8
  %15 = ptrtoint ptr %restarted5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %restarted5, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data7, align 4
  %arrayidx8 = getelementptr i8, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %19 to i32
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv9, ptr noundef %add.ptr) #9
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %frametype to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %do.end, %sw.bb4, %if.then6.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %restarted17 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 8
  %20 = ptrtoint ptr %restarted17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %restarted17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %sw.epilog.if.end24_crit_edge, label %while.cond.preheader

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

while.cond.preheader:                             ; preds = %sw.epilog
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 11
  %call1839 = tail call ptr @skb_dequeue(ptr noundef %queue) #6
  %cmp19.not40 = icmp eq ptr %call1839, null
  br i1 %cmp19.not40, label %while.cond.preheader.if.end24_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end24_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call1841 = phi ptr [ %call18, %if.end.while.body_crit_edge ], [ %call1839, %while.cond.preheader.while.body_crit_edge ]
  %call21 = tail call fastcc i32 @rose_send_frame(ptr noundef nonnull %call1841, ptr noundef %neigh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1841, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then23, %while.body.if.end_crit_edge
  %call18 = tail call ptr @skb_dequeue(ptr noundef %queue) #6
  %cmp19.not = icmp eq ptr %call18, null
  br i1 %cmp19.not, label %if.end.if.end24_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.end.if.end24_crit_edge, %while.cond.preheader.if.end24_crit_edge, %sw.epilog.if.end24_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rose_send_frame(ptr noundef %skb, ptr noundef %neigh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ax25cmp(ptr noundef nonnull @rose_callsign, ptr noundef nonnull @null_ax25_address) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rose_call.0 = phi ptr [ %3, %if.then ], [ @rose_callsign, %entry.if.end_crit_edge ]
  %ax25 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 3
  %4 = ptrtoint ptr %ax25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ax25, align 4
  %callsign = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 1
  %digipeat = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 2
  %6 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %digipeat, align 4
  %dev1 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 4
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call2 = tail call ptr @ax25_send_frame(ptr noundef %skb, i32 noundef 260, ptr noundef %rose_call.0, ptr noundef %callsign, ptr noundef %7, ptr noundef %9) #6
  %10 = ptrtoint ptr %ax25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %ax25, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %5, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i, !prof !21

if.end5.i.i.i.i.if.end5_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %digipeat.i, align 4
  tail call void @kfree(ptr noundef %13) #6
  tail call void @kfree(ptr noundef nonnull %5) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %ax25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ax25, align 4
  %cmp7 = icmp ne ptr %15, null
  %conv = zext i1 %cmp7 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_transmit_clear_request(ptr noundef %neigh, i32 noundef %lci, i8 noundef zeroext %cause, i8 noundef zeroext %diagnostic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 95, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 89
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 89
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #6
  %incdec.ptr = getelementptr i8, ptr %call1, i32 1
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call1, align 1
  %shr = lshr i32 %lci, 8
  %5 = trunc i32 %shr to i8
  %6 = and i8 %5, 15
  %conv = or i8 %6, 16
  %incdec.ptr2 = getelementptr i8, ptr %call1, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %incdec.ptr, align 1
  %conv5 = trunc i32 %lci to i8
  %incdec.ptr6 = getelementptr i8, ptr %call1, i32 3
  %8 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %incdec.ptr2, align 1
  %incdec.ptr7 = getelementptr i8, ptr %call1, i32 4
  %9 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 19, ptr %incdec.ptr6, align 1
  %incdec.ptr8 = getelementptr i8, ptr %call1, i32 5
  %10 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cause, ptr %incdec.ptr7, align 1
  %11 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %diagnostic, ptr %incdec.ptr8, align 1
  %call10 = tail call fastcc i32 @rose_send_frame(ptr noundef nonnull %call.i, ptr noundef %neigh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_transmit_link(ptr noundef %skb, ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 10
  %0 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %loopback, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @rose_loopback_queue(ptr noundef %skb, ptr noundef %neigh) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ax25cmp(ptr noundef nonnull @rose_callsign, ptr noundef nonnull @null_ax25_address) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 4
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr.i, align 64
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %rose_call.0.i = phi ptr [ %5, %if.then.i ], [ @rose_callsign, %if.end.if.end.i_crit_edge ]
  %ax25.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 3
  %6 = ptrtoint ptr %ax25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ax25.i, align 4
  %callsign.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 1
  %digipeat.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 2
  %8 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %digipeat.i, align 4
  %dev1.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 4
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %call2.i = tail call ptr @ax25_find_cb(ptr noundef %rose_call.0.i, ptr noundef %callsign.i, ptr noundef %9, ptr noundef %11) #6
  %12 = ptrtoint ptr %ax25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i, ptr %ax25.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.rose_link_up.exit_crit_edge, label %if.then4.i

if.end.i.rose_link_up.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_link_up.exit

if.then4.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.ax25_cb, ptr %7, i32 0, i32 36
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rose_link_up.exitthread-pre-split_crit_edge, label %if.then10.i.i.i.i.i, !prof !21

if.end5.i.i.i.i.i.rose_link_up.exitthread-pre-split_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_link_up.exitthread-pre-split

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #6
  br label %rose_link_up.exitthread-pre-split

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  %digipeat.i.i = getelementptr inbounds %struct.ax25_cb, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %digipeat.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %digipeat.i.i, align 4
  tail call void @kfree(ptr noundef %15) #6
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %rose_link_up.exitthread-pre-split

rose_link_up.exitthread-pre-split:                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rose_link_up.exitthread-pre-split_crit_edge
  %16 = ptrtoint ptr %ax25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %ax25.i, align 4
  br label %rose_link_up.exit

rose_link_up.exit:                                ; preds = %rose_link_up.exitthread-pre-split, %if.end.i.rose_link_up.exit_crit_edge
  %17 = phi ptr [ %.pr, %rose_link_up.exitthread-pre-split ], [ %call2.i, %if.end.i.rose_link_up.exit_crit_edge ]
  %cmp7.i.not = icmp eq ptr %17, null
  br i1 %cmp7.i.not, label %if.then3, label %rose_link_up.exit.if.end4_crit_edge

rose_link_up.exit.if.end4_crit_edge:              ; preds = %rose_link_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %rose_link_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  %restarted = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 8
  %18 = ptrtoint ptr %restarted to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %restarted, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rose_link_up.exit.if.end4_crit_edge
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %19 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %call5, align 1
  %restarted6 = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 8
  %20 = ptrtoint ptr %restarted6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %restarted6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not = icmp eq i8 %21, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call9 = tail call fastcc i32 @rose_send_frame(ptr noundef %skb, ptr noundef %neigh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %queue = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 11
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %skb) #6
  %pprev.i.i.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.not, label %if.then15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.else
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 95, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %cmp.i32 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i32, label %if.then15.rose_transmit_restart_request.exit_crit_edge, label %if.end.i34

if.then15.rose_transmit_restart_request.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_transmit_restart_request.exit

if.end.i34:                                       ; preds = %if.then15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 89
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %27, i32 89
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #6
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %28 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %call1.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %call1.i, i32 2
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %incdec.ptr.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 3
  %30 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call1.i, i32 4
  %31 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -5, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call1.i, i32 5
  %32 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %33 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %call7.i = tail call fastcc i32 @rose_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %neigh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i33 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i33, label %if.then8.i, label %if.end.i34.rose_transmit_restart_request.exit_crit_edge

if.end.i34.rose_transmit_restart_request.exit_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_transmit_restart_request.exit

if.then8.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %rose_transmit_restart_request.exit

rose_transmit_restart_request.exit:               ; preds = %if.then8.i, %if.end.i34.rose_transmit_restart_request.exit_crit_edge, %if.then15.rose_transmit_restart_request.exit_crit_edge
  %dce_mode = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 9
  %34 = ptrtoint ptr %dce_mode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %dce_mode, align 1
  %t0timer.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12
  %call.i35 = tail call i32 @del_timer(ptr noundef %t0timer.i) #6
  %function.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12, i32 2
  %35 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rose_t0timer_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_restart_request_timeout to i32))
  %37 = load i32, ptr @sysctl_rose_restart_request_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #6
  %add.i = add i32 %call2.i.i, %36
  %expires.i = getelementptr inbounds %struct.rose_neigh, ptr %neigh, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t0timer.i) #6
  br label %cleanup

cleanup:                                          ; preds = %rose_transmit_restart_request.exit, %if.else.cleanup_crit_edge, %if.then11, %if.then8.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_loopback_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_send_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_find_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_t0timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 95, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.rose_transmit_restart_request.exit_crit_edge, label %if.end.i

entry.rose_transmit_restart_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_transmit_restart_request.exit

if.end.i:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -92
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 89
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 89
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #6
  %incdec.ptr.i = getelementptr i8, ptr %call1.i, i32 1
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call1.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %call1.i, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %incdec.ptr.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %call1.i, i32 3
  %6 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %call1.i, i32 4
  %7 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -5, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %call1.i, i32 5
  %8 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %incdec.ptr4.i, align 1
  %9 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %call7.i = tail call fastcc i32 @rose_send_frame(ptr noundef nonnull %call.i.i, ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.end.i.rose_transmit_restart_request.exit_crit_edge

if.end.i.rose_transmit_restart_request.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rose_transmit_restart_request.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  br label %rose_transmit_restart_request.exit

rose_transmit_restart_request.exit:               ; preds = %if.then8.i, %if.end.i.rose_transmit_restart_request.exit_crit_edge, %entry.rose_transmit_restart_request.exit_crit_edge
  %dce_mode = getelementptr i8, ptr %t, i32 -59
  %10 = ptrtoint ptr %dce_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dce_mode, align 1
  %call.i = tail call i32 @del_timer(ptr noundef %t) #6
  %function.i = getelementptr i8, ptr %t, i32 12
  %11 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rose_t0timer_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_restart_request_timeout to i32))
  %13 = load i32, ptr @sysctl_rose_restart_request_timeout, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #6
  %add.i = add i32 %call2.i.i, %12
  %expires.i = getelementptr i8, ptr %t, i32 8
  %14 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rose/rose_link.c", i32 157, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rose_link_rx_restart._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rose_link_rx_restart._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rose/rose_link.c", i32 162, i32 3}
!8 = !{ptr @rose_link_rx_restart._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rose_link_rx_restart._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148341073}
!20 = !{i64 2148255537, i64 2148255569, i64 2148255598, i64 2148255632, i64 2148255663, i64 2148255686}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149277353}
