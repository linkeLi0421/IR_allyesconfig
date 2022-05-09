; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/alx/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/alx/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.142, i32 }
%struct.anon.142 = type { [3 x i32], [3 x i32], [3 x i32] }

@alx_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_get_msglevel, ptr @alx_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_get_pauseparam, ptr @alx_set_pauseparam, ptr null, ptr @alx_get_strings, ptr null, ptr @alx_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @alx_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alx_get_link_ksettings, ptr @alx_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@alx_gstrings_stats = internal constant { [50 x [32 x i8]], [384 x i8] } { [50 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ctrl_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fcs_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_runt_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_64B_or_less_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_65B_to_127B_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_128B_to_255B_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_256B_to_511B_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_512B_to_1023B_packets\00\00\00\00\00\00\00\00", [32 x i8] c"rx_1024B_to_1518B_packets\00\00\00\00\00\00\00", [32 x i8] c"rx_1519B_to_mtu_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_oversize_packets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_rxf_ov_drop_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_rrd_ov_drop_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_address_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_exc_defer_packets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ctrl_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_defer_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_64B_or_less_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_65B_to_127B_packets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_128B_to_255B_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_256B_to_511B_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_512B_to_1023B_packets\00\00\00\00\00\00\00\00", [32 x i8] c"tx_1024B_to_1518B_packets\00\00\00\00\00\00\00", [32 x i8] c"tx_1519B_to_mtu_packets\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_single_collision\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multiple_collisions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_abort_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_trd_eop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_trunc_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_update\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [384 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/atheros/alx/ethtool.c\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"alx_ethtool_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 324, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"alx_gstrings_stats\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 53, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [46 x i8] c"../drivers/net/ethernet/atheros/alx/ethtool.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 309, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @alx_ethtool_ops, ptr @alx_gstrings_stats, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alx_gstrings_stats to i32), i32 1600, i32 1984, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alx_get_msglevel(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3056
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 8
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @alx_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 3056
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_get_pauseparam(ptr noundef %netdev, ptr nocapture noundef writeonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %flowctrl = getelementptr i8, ptr %netdev, i32 2365
  %0 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flowctrl, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %adv_cfg = getelementptr i8, ptr %netdev, i32 2368
  %3 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %adv_cfg, align 8
  %and2 = lshr i32 %4, 6
  %and2.lobit = and i32 %and2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %and2.lobit, %land.rhs ]
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %autoneg, align 4
  %7 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flowctrl, align 1
  %9 = lshr i8 %8, 1
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %11 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pause, align 4
  %12 = load i8, ptr %flowctrl, align 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %15 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_pause, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %0 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 2
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp ne i32 %3, 0
  %4 = zext i1 %tobool3.not to i8
  %fc.1 = or i8 %spec.select, %4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  %7 = or i8 %fc.1, 4
  %fc.2 = select i1 %tobool9.not, i8 %fc.1, i8 %7
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %adv_cfg = getelementptr i8, ptr %netdev, i32 2368
  %8 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adv_cfg, align 8
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %entry.if.end46_crit_edge, label %if.then16

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then16:                                        ; preds = %entry
  %flowctrl = getelementptr i8, ptr %netdev, i32 2365
  %10 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flowctrl, align 1
  %xor86 = xor i8 %11, %fc.2
  %and2687 = and i8 %fc.2, 4
  %12 = and i8 %and2687, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.end37, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then16
  %13 = and i8 %xor86, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %.not = icmp eq i8 %13, 4
  br i1 %.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.if.then39_crit_edge

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end37:                                         ; preds = %if.then16
  %14 = and i8 %xor86, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %if.end37.if.then39_crit_edge, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  %call41 = tail call i32 @alx_setup_speed_duplex(ptr noundef %hw1, i32 noundef %9, i8 noundef zeroext %fc.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then39.if.end46_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %if.then39.if.end46_crit_edge, %if.end37.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %entry.if.end46_crit_edge
  %flowctrl48 = getelementptr i8, ptr %netdev, i32 2365
  %15 = ptrtoint ptr %flowctrl48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flowctrl48, align 1
  %xor5085 = xor i8 %16, %fc.2
  %17 = and i8 %xor5085, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool52.not = icmp eq i8 %17, 0
  br i1 %tobool52.not, label %if.end46.if.end54_crit_edge, label %if.then53

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @alx_cfg_mac_flowcontrol(ptr noundef %hw1, i8 noundef zeroext %fc.2) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end46.if.end54_crit_edge
  %18 = ptrtoint ptr %flowctrl48 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %fc.2, ptr %flowctrl48, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %call41, %if.then39.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memcpy(ptr %buf, ptr @alx_gstrings_stats, i32 1600)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alx_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  %stats_lock = getelementptr i8, ptr %netdev, i32 3060
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #6
  tail call void @alx_update_hw_stats(ptr noundef %hw1) #6
  %stats = getelementptr i8, ptr %netdev, i32 2448
  %0 = call ptr @memcpy(ptr %data, ptr %stats, i32 400)
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alx_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 50, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %adv_cfg = getelementptr i8, ptr %netdev, i32 2368
  %4 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adv_cfg, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or7 = or i32 %5, 128
  %advertising.0 = select i1 %tobool.not, i32 128, i32 %or7
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %phy_address, align 2
  %8 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adv_cfg, align 8
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %13, align 1
  %flowctrl = getelementptr i8, ptr %netdev, i32 2365
  %15 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flowctrl, align 1
  %conv = zext i8 %16 to i32
  %and18 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %entry.if.end46_crit_edge, label %land.lhs.true

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %entry
  %17 = ptrtoint ptr %adv_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %adv_cfg, align 8
  %and21 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end46_crit_edge, label %if.then23

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then23:                                        ; preds = %land.lhs.true
  %and26 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else37, label %if.then28

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %and32 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %spec.select81.v = select i1 %tobool33.not, i32 24576, i32 8192
  %spec.select81 = or i32 %spec.select81.v, %advertising.0
  br label %if.end46

if.else37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %and40 = shl nuw nsw i32 %conv, 13
  %19 = and i32 %and40, 16384
  %20 = or i32 %19, %advertising.0
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.then28, %land.lhs.true.if.end46_crit_edge, %entry.if.end46_crit_edge
  %advertising.1 = phi i32 [ %advertising.0, %land.lhs.true.if.end46_crit_edge ], [ %advertising.0, %entry.if.end46_crit_edge ], [ %spec.select81, %if.then28 ], [ %20, %if.else37 ]
  %21 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.not.i = icmp eq i16 %21, 0
  %or4 = select i1 %tobool.i.not.i, i32 24783, i32 24815
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %link_speed = getelementptr i8, ptr %netdev, i32 2360
  %22 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_speed, align 8
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %speed, align 4
  %duplex = getelementptr i8, ptr %netdev, i32 2364
  %25 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %duplex, align 4
  %duplex49 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %duplex49 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %duplex49, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #6
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %or4) #6
  %advertising53 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising53, i32 noundef %advertising.1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alx_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #6
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !15
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #6
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertising, align 4
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device.i.i, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  %neg = select i1 %tobool.i.not.i, i32 -16, i32 -48
  %and = and i32 %neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %4, 64
  br label %if.end15

if.else:                                          ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %11)
  %cmp.i = icmp eq i32 %11, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp1.i = icmp eq i8 %13, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %11)
  %cmp3.i = icmp eq i32 %11, 100
  %or.cond43.i = and i1 %cmp3.i, %cmp1.i
  br i1 %or.cond43.i, label %if.end.i.if.end15_crit_edge, label %if.end10.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15.i = icmp eq i8 %13, 0
  %or.cond44.i = and i1 %cmp3.i, %cmp15.i
  br i1 %or.cond44.i, label %if.end10.i.if.end15_crit_edge, label %if.end18.i

if.end10.i.if.end15_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp19.i = icmp eq i32 %11, 10
  %or.cond45.i = and i1 %cmp19.i, %cmp1.i
  br i1 %or.cond45.i, label %if.end18.i.if.end15_crit_edge, label %alx_speed_to_ethadv.exit

if.end18.i.if.end15_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

alx_speed_to_ethadv.exit:                         ; preds = %if.end18.i
  %or.cond46.i = and i1 %cmp19.i, %cmp15.i
  br i1 %or.cond46.i, label %alx_speed_to_ethadv.exit.if.end15_crit_edge, label %alx_speed_to_ethadv.exit.cleanup_crit_edge

alx_speed_to_ethadv.exit.cleanup_crit_edge:       ; preds = %alx_speed_to_ethadv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

alx_speed_to_ethadv.exit.if.end15_crit_edge:      ; preds = %alx_speed_to_ethadv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %alx_speed_to_ethadv.exit.if.end15_crit_edge, %if.end18.i.if.end15_crit_edge, %if.end10.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %if.end
  %adv_cfg.0 = phi i32 [ %or, %if.end ], [ 1, %alx_speed_to_ethadv.exit.if.end15_crit_edge ], [ 2, %if.end18.i.if.end15_crit_edge ], [ 4, %if.end10.i.if.end15_crit_edge ], [ 8, %if.end.i.if.end15_crit_edge ]
  %adv_cfg16 = getelementptr i8, ptr %netdev, i32 2368
  %14 = ptrtoint ptr %adv_cfg16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %adv_cfg.0, ptr %adv_cfg16, align 8
  %mtx = getelementptr i8, ptr %netdev, i32 3104
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #6
  %flowctrl = getelementptr i8, ptr %netdev, i32 2365
  %15 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flowctrl, align 1
  %call17 = call i32 @alx_setup_speed_duplex(ptr noundef %hw1, i32 noundef %adv_cfg.0, i8 noundef zeroext %16) #6
  call void @mutex_unlock(ptr noundef %mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %alx_speed_to_ethadv.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %alx_speed_to_ethadv.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alx_setup_speed_duplex(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_cfg_mac_flowcontrol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alx_update_hw_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @alx_ethtool_ops, !1, !"alx_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/alx/ethtool.c", i32 324, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/alx/ethtool.c", i32 309, i32 3}
!4 = !{ptr @alx_gstrings_stats, !5, !"alx_gstrings_stats", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/alx/ethtool.c", i32 53, i32 19}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
