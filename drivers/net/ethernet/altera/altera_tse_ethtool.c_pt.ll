; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/altera/altera_tse_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/altera/altera_tse_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }

@tse_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @tse_get_drvinfo, ptr @tse_reglen, ptr @tse_get_regs, ptr null, ptr null, ptr @tse_get_msglevel, ptr @tse_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tse_gstrings, ptr null, ptr @tse_fill_stats, ptr null, ptr null, ptr null, ptr null, ptr @tse_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"altera_tse\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v%d.%d\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@stat_gstrings = internal constant { [31 x [32 x i8]], [224 x i8] } { [31 x [32 x i8]] [[32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ether_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_total_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_total_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_64_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_65_127_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_128_255_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_256_511_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_512_1023_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_1024_1518_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_gte_1519_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_runts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"tse_ethtool_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 224, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 69, i32 23 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 70, i32 49 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 72, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"stat_gstrings\00", align 1
@___asan_gen_.16 = private constant [52 x i8] c"../drivers/net/ethernet/altera/altera_tse_ethtool.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 29, i32 19 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @tse_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stat_gstrings], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tse_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_gstrings to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @altera_tse_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tse_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tse_get_drvinfo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  %0 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_dev, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !20
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %driver, ptr @.str, i32 11)
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %shr)
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %bus_info, ptr @.str.2, i32 9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tse_reglen(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 512
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tse_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %regbuf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac_dev, align 8
  %mul = shl i32 %i.05, 2
  %3 = ptrtoint ptr %2 to i32
  %add.i = add i32 %mul, %3
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !19
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %arrayidx = getelementptr i32, ptr %regbuf, i32 %i.05
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tse_get_msglevel(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tse_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2828
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tse_gstrings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @stat_gstrings, i32 992)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tse_fill_stats(ptr noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_dev = getelementptr i8, ptr %dev, i32 2536
  %0 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_dev, align 8
  %2 = ptrtoint ptr %1 to i32
  %add.i = add i32 %2, 104
  %3 = inttoptr i32 %add.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %buf, align 8
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 8
  %9 = ptrtoint ptr %8 to i32
  %add.i203 = add i32 %9, 108
  %10 = inttoptr i32 %add.i203 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !19
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv4 = zext i32 %12 to i64
  %arrayidx5 = getelementptr i64, ptr %buf, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv4, ptr %arrayidx5, align 8
  %14 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_dev, align 8
  %16 = ptrtoint ptr %15 to i32
  %add.i204 = add i32 %16, 112
  %17 = inttoptr i32 %add.i204 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !19
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv8 = zext i32 %19 to i64
  %arrayidx9 = getelementptr i64, ptr %buf, i32 2
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv8, ptr %arrayidx9, align 8
  %21 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_dev, align 8
  %23 = ptrtoint ptr %22 to i32
  %add.i205 = add i32 %23, 116
  %24 = inttoptr i32 %add.i205 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !19
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv12 = zext i32 %26 to i64
  %arrayidx13 = getelementptr i64, ptr %buf, i32 3
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv12, ptr %arrayidx13, align 8
  %28 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_dev, align 8
  %30 = ptrtoint ptr %29 to i32
  %add.i206 = add i32 %30, 240
  %31 = inttoptr i32 %add.i206 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %33 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac_dev, align 8
  %35 = ptrtoint ptr %34 to i32
  %add.i207 = add i32 %35, 120
  %36 = inttoptr i32 %add.i207 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %38 = zext i32 %32 to i64
  %39 = zext i32 %37 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %arrayidx20 = getelementptr i64, ptr %buf, i32 4
  %43 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx20, align 8
  %44 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mac_dev, align 8
  %46 = ptrtoint ptr %45 to i32
  %add.i208 = add i32 %46, 244
  %47 = inttoptr i32 %add.i208 to ptr
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %49 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mac_dev, align 8
  %51 = ptrtoint ptr %50 to i32
  %add.i209 = add i32 %51, 124
  %52 = inttoptr i32 %add.i209 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %54 = zext i32 %48 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or i64 %56, %54
  %58 = tail call i64 @llvm.bswap.i64(i64 %57)
  %arrayidx29 = getelementptr i64, ptr %buf, i32 5
  %59 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx29, align 8
  %60 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac_dev, align 8
  %62 = ptrtoint ptr %61 to i32
  %add.i210 = add i32 %62, 128
  %63 = inttoptr i32 %add.i210 to ptr
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !19
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv32 = zext i32 %65 to i64
  %arrayidx33 = getelementptr i64, ptr %buf, i32 6
  %66 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv32, ptr %arrayidx33, align 8
  %67 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_dev, align 8
  %69 = ptrtoint ptr %68 to i32
  %add.i211 = add i32 %69, 132
  %70 = inttoptr i32 %add.i211 to ptr
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !19
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv36 = zext i32 %72 to i64
  %arrayidx37 = getelementptr i64, ptr %buf, i32 7
  %73 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv36, ptr %arrayidx37, align 8
  %74 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac_dev, align 8
  %76 = ptrtoint ptr %75 to i32
  %add.i212 = add i32 %76, 136
  %77 = inttoptr i32 %add.i212 to ptr
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !19
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv40 = zext i32 %79 to i64
  %arrayidx41 = getelementptr i64, ptr %buf, i32 8
  %80 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv40, ptr %arrayidx41, align 8
  %81 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mac_dev, align 8
  %83 = ptrtoint ptr %82 to i32
  %add.i213 = add i32 %83, 140
  %84 = inttoptr i32 %add.i213 to ptr
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !19
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv44 = zext i32 %86 to i64
  %arrayidx45 = getelementptr i64, ptr %buf, i32 9
  %87 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv44, ptr %arrayidx45, align 8
  %88 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mac_dev, align 8
  %90 = ptrtoint ptr %89 to i32
  %add.i214 = add i32 %90, 144
  %91 = inttoptr i32 %add.i214 to ptr
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !19
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv48 = zext i32 %93 to i64
  %arrayidx49 = getelementptr i64, ptr %buf, i32 10
  %94 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv48, ptr %arrayidx49, align 8
  %95 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mac_dev, align 8
  %97 = ptrtoint ptr %96 to i32
  %add.i215 = add i32 %97, 148
  %98 = inttoptr i32 %add.i215 to ptr
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !19
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv52 = zext i32 %100 to i64
  %arrayidx53 = getelementptr i64, ptr %buf, i32 11
  %101 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv52, ptr %arrayidx53, align 8
  %102 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mac_dev, align 8
  %104 = ptrtoint ptr %103 to i32
  %add.i216 = add i32 %104, 152
  %105 = inttoptr i32 %add.i216 to ptr
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !19
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv56 = zext i32 %107 to i64
  %arrayidx57 = getelementptr i64, ptr %buf, i32 12
  %108 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv56, ptr %arrayidx57, align 8
  %109 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mac_dev, align 8
  %111 = ptrtoint ptr %110 to i32
  %add.i217 = add i32 %111, 156
  %112 = inttoptr i32 %add.i217 to ptr
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #8, !srcloc !19
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv60 = zext i32 %114 to i64
  %arrayidx61 = getelementptr i64, ptr %buf, i32 13
  %115 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv60, ptr %arrayidx61, align 8
  %116 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mac_dev, align 8
  %118 = ptrtoint ptr %117 to i32
  %add.i218 = add i32 %118, 160
  %119 = inttoptr i32 %add.i218 to ptr
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #8, !srcloc !19
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv64 = zext i32 %121 to i64
  %arrayidx65 = getelementptr i64, ptr %buf, i32 14
  %122 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv64, ptr %arrayidx65, align 8
  %123 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mac_dev, align 8
  %125 = ptrtoint ptr %124 to i32
  %add.i219 = add i32 %125, 164
  %126 = inttoptr i32 %add.i219 to ptr
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !19
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv68 = zext i32 %128 to i64
  %arrayidx69 = getelementptr i64, ptr %buf, i32 15
  %129 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv68, ptr %arrayidx69, align 8
  %130 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mac_dev, align 8
  %132 = ptrtoint ptr %131 to i32
  %add.i220 = add i32 %132, 168
  %133 = inttoptr i32 %add.i220 to ptr
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #8, !srcloc !19
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv72 = zext i32 %135 to i64
  %arrayidx73 = getelementptr i64, ptr %buf, i32 16
  %136 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv72, ptr %arrayidx73, align 8
  %137 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mac_dev, align 8
  %139 = ptrtoint ptr %138 to i32
  %add.i221 = add i32 %139, 172
  %140 = inttoptr i32 %add.i221 to ptr
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #8, !srcloc !19
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv76 = zext i32 %142 to i64
  %arrayidx77 = getelementptr i64, ptr %buf, i32 17
  %143 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %conv76, ptr %arrayidx77, align 8
  %144 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mac_dev, align 8
  %146 = ptrtoint ptr %145 to i32
  %add.i222 = add i32 %146, 248
  %147 = inttoptr i32 %add.i222 to ptr
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %149 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mac_dev, align 8
  %151 = ptrtoint ptr %150 to i32
  %add.i223 = add i32 %151, 176
  %152 = inttoptr i32 %add.i223 to ptr
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #8, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %154 = zext i32 %148 to i64
  %155 = zext i32 %153 to i64
  %156 = shl nuw i64 %155, 32
  %157 = or i64 %156, %154
  %158 = tail call i64 @llvm.bswap.i64(i64 %157)
  %arrayidx86 = getelementptr i64, ptr %buf, i32 18
  %159 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %arrayidx86, align 8
  %160 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mac_dev, align 8
  %162 = ptrtoint ptr %161 to i32
  %add.i224 = add i32 %162, 180
  %163 = inttoptr i32 %add.i224 to ptr
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #8, !srcloc !19
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv89 = zext i32 %165 to i64
  %arrayidx90 = getelementptr i64, ptr %buf, i32 19
  %166 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %conv89, ptr %arrayidx90, align 8
  %167 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mac_dev, align 8
  %169 = ptrtoint ptr %168 to i32
  %add.i225 = add i32 %169, 184
  %170 = inttoptr i32 %add.i225 to ptr
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #8, !srcloc !19
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv93 = zext i32 %172 to i64
  %arrayidx94 = getelementptr i64, ptr %buf, i32 20
  %173 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv93, ptr %arrayidx94, align 8
  %174 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mac_dev, align 8
  %176 = ptrtoint ptr %175 to i32
  %add.i226 = add i32 %176, 188
  %177 = inttoptr i32 %add.i226 to ptr
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #8, !srcloc !19
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv97 = zext i32 %179 to i64
  %arrayidx98 = getelementptr i64, ptr %buf, i32 21
  %180 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %conv97, ptr %arrayidx98, align 8
  %181 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mac_dev, align 8
  %183 = ptrtoint ptr %182 to i32
  %add.i227 = add i32 %183, 192
  %184 = inttoptr i32 %add.i227 to ptr
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #8, !srcloc !19
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv101 = zext i32 %186 to i64
  %arrayidx102 = getelementptr i64, ptr %buf, i32 22
  %187 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %conv101, ptr %arrayidx102, align 8
  %188 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mac_dev, align 8
  %190 = ptrtoint ptr %189 to i32
  %add.i228 = add i32 %190, 196
  %191 = inttoptr i32 %add.i228 to ptr
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #8, !srcloc !19
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv105 = zext i32 %193 to i64
  %arrayidx106 = getelementptr i64, ptr %buf, i32 23
  %194 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv105, ptr %arrayidx106, align 8
  %195 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mac_dev, align 8
  %197 = ptrtoint ptr %196 to i32
  %add.i229 = add i32 %197, 200
  %198 = inttoptr i32 %add.i229 to ptr
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #8, !srcloc !19
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv109 = zext i32 %200 to i64
  %arrayidx110 = getelementptr i64, ptr %buf, i32 24
  %201 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %conv109, ptr %arrayidx110, align 8
  %202 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mac_dev, align 8
  %204 = ptrtoint ptr %203 to i32
  %add.i230 = add i32 %204, 204
  %205 = inttoptr i32 %add.i230 to ptr
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #8, !srcloc !19
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv113 = zext i32 %207 to i64
  %arrayidx114 = getelementptr i64, ptr %buf, i32 25
  %208 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %conv113, ptr %arrayidx114, align 8
  %209 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mac_dev, align 8
  %211 = ptrtoint ptr %210 to i32
  %add.i231 = add i32 %211, 208
  %212 = inttoptr i32 %add.i231 to ptr
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #8, !srcloc !19
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv117 = zext i32 %214 to i64
  %arrayidx118 = getelementptr i64, ptr %buf, i32 26
  %215 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv117, ptr %arrayidx118, align 8
  %216 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mac_dev, align 8
  %218 = ptrtoint ptr %217 to i32
  %add.i232 = add i32 %218, 212
  %219 = inttoptr i32 %add.i232 to ptr
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #8, !srcloc !19
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv121 = zext i32 %221 to i64
  %arrayidx122 = getelementptr i64, ptr %buf, i32 27
  %222 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %conv121, ptr %arrayidx122, align 8
  %223 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mac_dev, align 8
  %225 = ptrtoint ptr %224 to i32
  %add.i233 = add i32 %225, 216
  %226 = inttoptr i32 %add.i233 to ptr
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #8, !srcloc !19
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv125 = zext i32 %228 to i64
  %arrayidx126 = getelementptr i64, ptr %buf, i32 28
  %229 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 %conv125, ptr %arrayidx126, align 8
  %230 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mac_dev, align 8
  %232 = ptrtoint ptr %231 to i32
  %add.i234 = add i32 %232, 220
  %233 = inttoptr i32 %add.i234 to ptr
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #8, !srcloc !19
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv129 = zext i32 %235 to i64
  %arrayidx130 = getelementptr i64, ptr %buf, i32 29
  %236 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 %conv129, ptr %arrayidx130, align 8
  %237 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mac_dev, align 8
  %239 = ptrtoint ptr %238 to i32
  %add.i235 = add i32 %239, 224
  %240 = inttoptr i32 %add.i235 to ptr
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #8, !srcloc !19
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !21
  %conv133 = zext i32 %242 to i64
  %arrayidx134 = getelementptr i64, ptr %buf, i32 30
  %243 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %conv133, ptr %arrayidx134, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tse_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 31, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @tse_ethtool_ops, !1, !"tse_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/altera/altera_tse_ethtool.c", i32 224, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/altera/altera_tse_ethtool.c", i32 69, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/altera/altera_tse_ethtool.c", i32 70, i32 49}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/altera/altera_tse_ethtool.c", i32 72, i32 26}
!8 = !{ptr @stat_gstrings, !9, !"stat_gstrings", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/altera/altera_tse_ethtool.c", i32 29, i32 19}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 6176793}
!20 = !{i64 2153717142}
!21 = !{i64 2156517729}
