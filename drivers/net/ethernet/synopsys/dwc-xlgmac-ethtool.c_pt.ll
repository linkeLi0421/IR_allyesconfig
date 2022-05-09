; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_stats_desc = type { [32 x i8], i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xlgmac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 35, i32 0, ptr @xlgmac_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_ethtool_get_msglevel, ptr @xlgmac_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_ethtool_get_coalesce, ptr @xlgmac_ethtool_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_ethtool_get_strings, ptr null, ptr @xlgmac_ethtool_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlgmac_ethtool_get_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"S.D.U: %x.%x.%x\00", [16 x i8] zeroinitializer }, align 32
@xlgmac_gstring_stats = internal constant { [52 x %struct.xlgmac_stats_desc], [464 x i8] } { [52 x %struct.xlgmac_stats_desc] [%struct.xlgmac_stats_desc { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_bytes_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 368 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_packets_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 376 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_unicast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 336 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_broadcast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 352 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_broadcast_packets_good\00\00\00\00\00\00\00", i32 272 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_multicast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 344 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_multicast_packets_good\00\00\00\00\00\00\00", i32 280 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_vlan_packets_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 392 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 288 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 296 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_128_to_255_byte_packets\00\00\00\00\00\00", i32 304 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_256_to_511_byte_packets\00\00\00\00\00\00", i32 312 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_512_to_1023_byte_packets\00\00\00\00\00", i32 320 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_1024_to_max_byte_packets\00\00\00\00\00", i32 328 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_underflow_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 360 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 384 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_bytes_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 416 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 400 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_unicast_packets_good\00\00\00\00\00\00\00\00\00", i32 528 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_broadcast_packets_good\00\00\00\00\00\00\00", i32 424 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_multicast_packets_good\00\00\00\00\00\00\00", i32 432 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_vlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 568 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 480 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 488 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_128_to_255_byte_packets\00\00\00\00\00\00", i32 496 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_256_to_511_byte_packets\00\00\00\00\00\00", i32 504 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_512_to_1023_byte_packets\00\00\00\00\00", i32 512 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_1024_to_max_byte_packets\00\00\00\00\00", i32 520 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_undersize_packets_good\00\00\00\00\00\00\00", i32 464 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_oversize_packets_good\00\00\00\00\00\00\00\00", i32 472 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 440 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_crc_errors_small_packets\00\00\00\00\00", i32 448 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_crc_errors_giant_packets\00\00\00\00\00", i32 456 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 536 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_out_of_range_errors\00\00\00\00\00\00\00\00\00\00", i32 544 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_fifo_overflow_errors\00\00\00\00\00\00\00\00\00", i32 560 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_watchdog_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 576 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 552 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_tso_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 584 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_split_header_packets\00\00\00\00\00\00\00\00\00", i32 592 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 600 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 608 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_buffer_unavailable\00\00\00\00\00\00\00\00\00\00\00", i32 616 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_buffer_unavailable\00\00\00\00\00\00\00\00\00\00\00", i32 624 }, %struct.xlgmac_stats_desc { [32 x i8] c"fatal_bus_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.xlgmac_stats_desc { [32 x i8] c"tx_vlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 640 }, %struct.xlgmac_stats_desc { [32 x i8] c"rx_vlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 648 }, %struct.xlgmac_stats_desc { [32 x i8] c"napi_poll_isr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 656 }, %struct.xlgmac_stats_desc { [32 x i8] c"napi_poll_txtimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 664 }], [464 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"xlgmac_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 250, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 120, i32 4 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"xlgmac_gstring_stats\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 36, i32 39 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [54 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 213, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @xlgmac_ethtool_ops, ptr @.str, ptr @xlgmac_gstring_stats, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlgmac_gstring_stats to i32), i32 1872, i32 2336, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xlgmac_get_ethtool_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xlgmac_ethtool_ops
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_ethtool_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_feat = getelementptr i8, ptr %netdev, i32 2984
  %0 = ptrtoint ptr %hw_feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_feat, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %drv_name = getelementptr i8, ptr %netdev, i32 5248
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %drv_name, i32 noundef 32) #9
  %version3 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %drv_ver = getelementptr i8, ptr %netdev, i32 5280
  %call6 = tail call i32 @strlcpy(ptr noundef %version3, ptr noundef %drv_ver, i32 noundef 32) #9
  %dev = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call9 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #9
  %and14 = and i32 %1, 255
  %and28 = lshr i32 %1, 8
  %shr29 = and i32 %and28, 255
  %and42 = lshr i32 %1, 16
  %shr43 = and i32 %and42, 255
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %and14, i32 noundef %shr29, i32 noundef %shr43)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2976
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @xlgmac_ethtool_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %msglevel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2976
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msglevel, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_ethtool_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_usecs = getelementptr i8, ptr %netdev, i32 3236
  %0 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_usecs, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_coalesce_usecs, align 4
  %rx_frames = getelementptr i8, ptr %netdev, i32 3240
  %3 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_frames, align 8
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %5 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_max_coalesced_frames, align 4
  %tx_frames = getelementptr i8, ptr %netdev, i32 3228
  %6 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_frames, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %8 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_ethtool_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %usec_to_riwt = getelementptr i8, ptr %netdev, i32 2452
  %2 = ptrtoint ptr %usec_to_riwt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usec_to_riwt, align 4
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %1) #9
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_max_coalesced_frames, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %6 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_max_coalesced_frames, align 4
  %8 = add i32 %call2, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %8)
  %9 = icmp ult i32 %8, -255
  br i1 %9, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 3180
  %10 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_desc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp5 = icmp ugt i32 %5, %11
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 3176
  %12 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp6 = icmp ugt i32 %7, %13
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_riwt9 = getelementptr i8, ptr %netdev, i32 3232
  %14 = ptrtoint ptr %rx_riwt9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2, ptr %rx_riwt9, align 8
  %rx_usecs10 = getelementptr i8, ptr %netdev, i32 3236
  %15 = ptrtoint ptr %rx_usecs10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %1, ptr %rx_usecs10, align 4
  %rx_frames11 = getelementptr i8, ptr %netdev, i32 3240
  %16 = ptrtoint ptr %rx_frames11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %rx_frames11, align 8
  %config_rx_coalesce = getelementptr i8, ptr %netdev, i32 2444
  %17 = ptrtoint ptr %config_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config_rx_coalesce, align 4
  %call12 = tail call i32 %18(ptr noundef %add.ptr.i) #9
  %tx_frames13 = getelementptr i8, ptr %netdev, i32 3228
  %19 = ptrtoint ptr %tx_frames13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %tx_frames13, align 4
  %config_tx_coalesce = getelementptr i8, ptr %netdev, i32 2448
  %20 = ptrtoint ptr %config_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_tx_coalesce, align 4
  %call14 = tail call i32 %21(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_ethtool_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %data.addr.020 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [52 x %struct.xlgmac_stats_desc], ptr @xlgmac_gstring_stats, i32 0, i32 %i.019
  %0 = call ptr @memcpy(ptr %data.addr.020, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %data.addr.020, i32 32
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_ethtool_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %read_mmc_stats = getelementptr i8, ptr %netdev, i32 2508
  %0 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmc_stats, align 4
  tail call void %1(ptr noundef %add.ptr.i) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.05 = phi ptr [ %data, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %stat_offset = getelementptr [52 x %struct.xlgmac_stats_desc], ptr @xlgmac_gstring_stats, i32 0, i32 %i.06, i32 1
  %2 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.05, i32 1
  %6 = ptrtoint ptr %data.addr.05 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %data.addr.05, align 8
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_ethtool_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %stringset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  %. = select i1 %cond, i32 52, i32 -95
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xlgmac_ethtool_get_channels(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %max_rx, align 4
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 2
  %1 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %max_tx, align 4
  %rx_q_count = getelementptr i8, ptr %netdev, i32 3188
  %2 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_q_count, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 5
  %4 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_count, align 4
  %tx_q_count = getelementptr i8, ptr %netdev, i32 3184
  %5 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_q_count, align 8
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channel, i32 0, i32 6
  %7 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @xlgmac_ethtool_ops, !1, !"xlgmac_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c", i32 250, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c", i32 120, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c", i32 213, i32 3}
!6 = !{ptr @xlgmac_gstring_stats, !7, !"xlgmac_gstring_stats", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-ethtool.c", i32 36, i32 39}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
