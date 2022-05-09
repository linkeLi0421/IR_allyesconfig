; ModuleID = '/llk/IR_all_yes/net/core/timestamping.c_pt.bc'
source_filename = "../net/core/timestamping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+skb_clone_tx_timestamp\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_clone_tx_timestamp\09\09\09\09"
module asm "\09.long\09__crc_skb_clone_tx_timestamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_clone_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_clone_tx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_skb_clone_tx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+skb_defer_rx_timestamp\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_defer_rx_timestamp\09\09\09\09"
module asm "\09.long\09__crc_skb_defer_rx_timestamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_defer_rx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_defer_rx_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_skb_defer_rx_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_skb_clone_tx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_clone_tx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_clone_tx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_clone_tx_timestamp to i32), ptr @__kstrtab_skb_clone_tx_timestamp, ptr @__kstrtabns_skb_clone_tx_timestamp }, section "___ksymtab_gpl+skb_clone_tx_timestamp", align 4
@__kstrtab_skb_defer_rx_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_defer_rx_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_defer_rx_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_defer_rx_timestamp to i32), ptr @__kstrtab_skb_defer_rx_timestamp, ptr @__kstrtabns_skb_defer_rx_timestamp }, section "___ksymtab_gpl+skb_defer_rx_timestamp", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_skb_clone_tx_timestamp, ptr @__ksymtab_skb_defer_rx_timestamp], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @skb_clone_tx_timestamp(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i, !prof !13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %6 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev.i, align 16
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.rhs.i, !prof !13

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 37
  %8 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mii_ts.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.rhs.i.cleanup_crit_edge, label %classify.exit, !prof !13

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

classify.exit:                                    ; preds = %land.rhs.i
  %call.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %classify.exit.cleanup_crit_edge, label %if.end2

classify.exit.cleanup_crit_edge:                  ; preds = %classify.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end2:                                          ; preds = %classify.exit
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 145
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  %mii_ts3 = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 37
  %14 = ptrtoint ptr %mii_ts3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mii_ts3, align 4
  %txtstamp = getelementptr inbounds %struct.mii_timestamper, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %txtstamp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txtstamp, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then7, !prof !13

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  %call8 = tail call ptr @skb_clone_sk(ptr noundef %skb) #2
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %txtstamp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txtstamp, align 4
  tail call void %19(ptr noundef %15, ptr noundef nonnull %call8, i32 noundef %call.i) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %classify.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone_sk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 145
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 16
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %mii_ts4 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 37
  %5 = ptrtoint ptr %mii_ts4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mii_ts4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 14
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %8, i32 -14
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %13, 14
  store i32 %add.i, ptr %len1.i, align 4
  %call9 = tail call i32 @ptp_classify_raw(ptr noundef %skb) #2
  %14 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %15, -14
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %17)
  %cmp.i = icmp ult i32 %sub.i, %17
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !13

do.body4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #2, !srcloc !14
  unreachable

__skb_pull.exit:                                  ; preds = %if.end7
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %19, i32 14
  store ptr %add.ptr.i40, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp eq i32 %call9, 0
  br i1 %cmp11, label %__skb_pull.exit.cleanup_crit_edge, label %if.end13

__skb_pull.exit.cleanup_crit_edge:                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end13:                                         ; preds = %__skb_pull.exit
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 8
  %phydev14 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %phydev14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev14, align 16
  %mii_ts15 = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 37
  %24 = ptrtoint ptr %mii_ts15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mii_ts15, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then19, !prof !13

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  %call21 = tail call zeroext i1 %27(ptr noundef %25, ptr noundef %skb, i32 noundef %call9) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13.cleanup_crit_edge, %__skb_pull.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call21, %if.then19 ], [ false, %lor.lhs.false2.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %__skb_pull.exit.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_skb_clone_tx_timestamp, !1, !"__ksymtab_skb_clone_tx_timestamp", i1 false, i1 false}
!1 = !{!"../net/core/timestamping.c", i32 43, i32 1}
!2 = !{ptr @__ksymtab_skb_defer_rx_timestamp, !3, !"__ksymtab_skb_defer_rx_timestamp", i1 false, i1 false}
!3 = !{!"../net/core/timestamping.c", i32 71, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2154588181, i64 2154588669, i64 2154588218, i64 2154588274, i64 2154588308, i64 2154588332, i64 2154588373, i64 2154588394, i64 2154588422, i64 2154588456}
