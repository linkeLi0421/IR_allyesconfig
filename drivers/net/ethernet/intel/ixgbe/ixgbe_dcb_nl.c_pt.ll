; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
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
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dcb_app = type { i8, i8, i16 }
%struct.vf_data_storage = type { ptr, [6 x i8], [30 x i16], i16, i8, i8, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.122, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.129, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.131, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.122 = type { ptr }
%union.anon.129 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.131 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.ixgbe_atr_input = type { %struct.anon.132 }
%struct.anon.132 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ixgbe_dcbnl_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @ixgbe_dcbnl_ieee_getets, ptr @ixgbe_dcbnl_ieee_setets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_dcbnl_ieee_getpfc, ptr @ixgbe_dcbnl_ieee_setpfc, ptr null, ptr @ixgbe_dcbnl_ieee_setapp, ptr @ixgbe_dcbnl_ieee_delapp, ptr null, ptr null, ptr @ixgbe_dcbnl_get_state, ptr @ixgbe_dcbnl_set_state, ptr @ixgbe_dcbnl_get_perm_hw_addr, ptr @ixgbe_dcbnl_set_pg_tc_cfg_tx, ptr @ixgbe_dcbnl_set_pg_bwg_cfg_tx, ptr @ixgbe_dcbnl_set_pg_tc_cfg_rx, ptr @ixgbe_dcbnl_set_pg_bwg_cfg_rx, ptr @ixgbe_dcbnl_get_pg_tc_cfg_tx, ptr @ixgbe_dcbnl_get_pg_bwg_cfg_tx, ptr @ixgbe_dcbnl_get_pg_tc_cfg_rx, ptr @ixgbe_dcbnl_get_pg_bwg_cfg_rx, ptr @ixgbe_dcbnl_set_pfc_cfg, ptr @ixgbe_dcbnl_get_pfc_cfg, ptr @ixgbe_dcbnl_set_all, ptr @ixgbe_dcbnl_getcap, ptr @ixgbe_dcbnl_getnumtcs, ptr @ixgbe_dcbnl_setnumtcs, ptr @ixgbe_dcbnl_getpfcstate, ptr @ixgbe_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbe_dcbnl_getapp, ptr null, ptr null, ptr @ixgbe_dcbnl_getdcbx, ptr @ixgbe_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"ixgbe_dcbnl_ops\00", align 1
@___asan_gen_.3 = private constant [51 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 755, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ixgbe_dcbnl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_getets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ixgbe_ieee_ets = getelementptr i8, ptr %dev, i32 4056
  %0 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %num_tcs = getelementptr i8, ptr %dev, i32 4068
  %2 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tcs, align 4
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %4 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %ets_cap, align 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cbs = getelementptr inbounds %struct.ieee_ets, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cbs, align 1
  %cbs1 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %7 = ptrtoint ptr %cbs1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %cbs1, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %tc_tx_bw2 = getelementptr inbounds %struct.ieee_ets, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %tc_tx_bw2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %tc_tx_bw2, align 1
  %10 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %tc_tx_bw, align 1
  %tc_rx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 4
  %tc_rx_bw5 = getelementptr inbounds %struct.ieee_ets, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %tc_rx_bw5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %tc_rx_bw5, align 1
  %13 = ptrtoint ptr %tc_rx_bw to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %tc_rx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tc_tsa8 = getelementptr inbounds %struct.ieee_ets, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tc_tsa8 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %tc_tsa8, align 1
  %16 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %prio_tc11 = getelementptr inbounds %struct.ieee_ets, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %prio_tc11 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %prio_tc11, align 1
  %19 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %prio_tc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add1 = add i32 %1, 18
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %2 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcbx_cap, align 2
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ixgbe_ieee_ets = getelementptr i8, ptr %dev, i32 4056
  %5 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 59) #15
  %8 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %ixgbe_ieee_ets, align 8
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %for.body.preheader

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx = getelementptr %struct.ieee_ets, ptr %10, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx, align 1
  %12 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %12, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx.1, align 1
  %14 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %14, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %arrayidx.2, align 1
  %16 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %16, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %arrayidx.3, align 1
  %18 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %18, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %arrayidx.4, align 1
  %20 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %20, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %arrayidx.5, align 1
  %22 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %22, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %arrayidx.6, align 1
  %24 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %24, i32 0, i32 6, i32 7
  %25 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %arrayidx.7, align 1
  %hw = getelementptr i8, ptr %dev, i32 6528
  %26 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %prio_tc13 = getelementptr inbounds %struct.ieee_ets, ptr %26, i32 0, i32 6
  tail call void @ixgbe_dcb_read_rtrup2tc(ptr noundef %hw, ptr noundef %prio_tc13) #12
  br label %if.end14

if.end14:                                         ; preds = %for.body.preheader, %if.end.if.end14_crit_edge
  %27 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %arrayidx20 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx20, align 1
  %arrayidx34 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 0
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp36.not = icmp eq i8 %30, %32
  %arrayidx20.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20.1, align 1
  %35 = tail call i8 @llvm.umax.i8(i8 %34, i8 %30)
  %arrayidx34.1 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx34.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %37)
  %cmp36.not.1 = icmp eq i8 %34, %37
  %arrayidx20.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx20.2, align 1
  %40 = tail call i8 @llvm.umax.i8(i8 %39, i8 %35)
  %arrayidx34.2 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx34.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %42)
  %cmp36.not.2 = icmp eq i8 %39, %42
  %arrayidx20.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx20.3, align 1
  %45 = tail call i8 @llvm.umax.i8(i8 %44, i8 %40)
  %arrayidx34.3 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 3
  %46 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx34.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %47)
  %cmp36.not.3 = icmp eq i8 %44, %47
  %arrayidx20.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx20.4, align 1
  %50 = tail call i8 @llvm.umax.i8(i8 %49, i8 %45)
  %arrayidx34.4 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 4
  %51 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx34.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %52)
  %cmp36.not.4 = icmp eq i8 %49, %52
  %arrayidx20.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %53 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx20.5, align 1
  %55 = tail call i8 @llvm.umax.i8(i8 %54, i8 %50)
  %arrayidx34.5 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 5
  %56 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx34.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %57)
  %cmp36.not.5 = icmp eq i8 %54, %57
  %arrayidx20.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %58 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx20.6, align 1
  %60 = tail call i8 @llvm.umax.i8(i8 %59, i8 %55)
  %arrayidx34.6 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 6
  %61 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx34.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %62)
  %cmp36.not.6 = icmp eq i8 %59, %62
  %arrayidx20.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %63 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx20.7, align 1
  %65 = tail call i8 @llvm.umax.i8(i8 %64, i8 %60)
  %arrayidx34.7 = getelementptr %struct.ieee_ets, ptr %28, i32 0, i32 6, i32 7
  %66 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx34.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %67)
  %cmp36.not.7 = icmp eq i8 %64, %67
  %68 = select i1 %cmp36.not.7, i1 %cmp36.not.6, i1 false
  %69 = select i1 %68, i1 %cmp36.not.5, i1 false
  %70 = select i1 %69, i1 %cmp36.not.4, i1 false
  %71 = select i1 %70, i1 %cmp36.not.3, i1 false
  %72 = select i1 %71, i1 %cmp36.not.2, i1 false
  %73 = select i1 %72, i1 %cmp36.not.1, i1 false
  %narrow = select i1 %73, i1 %cmp36.not, i1 false
  %74 = call ptr @memcpy(ptr %28, ptr %ets, i32 59)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool44.not = icmp eq i8 %65, 0
  %inc46 = add i8 %65, 1
  %spec.select106 = select i1 %tobool44.not, i8 0, i8 %inc46
  %num_tcs = getelementptr i8, ptr %dev, i32 4068
  %75 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select106, i8 %76)
  %cmp50 = icmp ugt i8 %spec.select106, %76
  br i1 %cmp50, label %if.end14.cleanup_crit_edge, label %if.end53

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.end14
  %hw_tcs = getelementptr i8, ptr %dev, i32 4652
  %77 = ptrtoint ptr %hw_tcs to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %hw_tcs, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select106, i8 %78)
  %cmp56.not = icmp eq i8 %spec.select106, %78
  br i1 %cmp56.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end53
  %call59 = tail call i32 @ixgbe_setup_tc(ptr noundef %dev, i8 noundef zeroext %spec.select106) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end66_crit_edge, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.else:                                          ; preds = %if.end53
  br i1 %narrow, label %if.else.if.end66_crit_edge, label %if.then64

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ixgbe_dcbnl_devreset(ptr noundef %dev)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else.if.end66_crit_edge, %if.then58.if.end66_crit_edge
  %hw67 = getelementptr i8, ptr %dev, i32 6528
  %call68 = tail call i32 @ixgbe_dcb_hw_ets(ptr noundef %hw67, ptr noundef %ets, i32 noundef %add1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then58.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %if.end66 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ %call59, %if.then58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ixgbe_ieee_pfc = getelementptr i8, ptr %dev, i32 4052
  %0 = ptrtoint ptr %ixgbe_ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ixgbe_ieee_pfc, align 4
  %pfc_tcs = getelementptr i8, ptr %dev, i32 4069
  %2 = ptrtoint ptr %pfc_tcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfc_tcs, align 1
  %4 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %pfc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pfc_en, align 1
  %pfc_en1 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %7 = ptrtoint ptr %pfc_en1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %pfc_en1, align 1
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mbc, align 2
  %mbc2 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %10 = ptrtoint ptr %mbc2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %mbc2, align 2
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %delay, align 4
  %delay3 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %13 = ptrtoint ptr %delay3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %delay3, align 4
  %arrayidx = getelementptr i8, ptr %dev, i32 8184
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 0
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr i8, ptr %dev, i32 8120
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx6, align 8
  %arrayidx7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 0
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx7, align 8
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 8192
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.1, align 8
  %arrayidx4.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx4.1, align 8
  %arrayidx6.1 = getelementptr i8, ptr %dev, i32 8128
  %23 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx6.1, align 8
  %arrayidx7.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx7.1, align 8
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 8200
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.2, align 8
  %arrayidx4.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx4.2, align 8
  %arrayidx6.2 = getelementptr i8, ptr %dev, i32 8136
  %29 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx6.2, align 8
  %arrayidx7.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx7.2, align 8
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 8208
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.3, align 8
  %arrayidx4.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx4.3, align 8
  %arrayidx6.3 = getelementptr i8, ptr %dev, i32 8144
  %35 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx6.3, align 8
  %arrayidx7.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx7.3, align 8
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 8216
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.4, align 8
  %arrayidx4.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx4.4, align 8
  %arrayidx6.4 = getelementptr i8, ptr %dev, i32 8152
  %41 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx6.4, align 8
  %arrayidx7.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 4
  %43 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx7.4, align 8
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 8224
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.5, align 8
  %arrayidx4.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx4.5, align 8
  %arrayidx6.5 = getelementptr i8, ptr %dev, i32 8160
  %47 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx6.5, align 8
  %arrayidx7.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 5
  %49 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx7.5, align 8
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 8232
  %50 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.6, align 8
  %arrayidx4.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 6
  %52 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx4.6, align 8
  %arrayidx6.6 = getelementptr i8, ptr %dev, i32 8168
  %53 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx6.6, align 8
  %arrayidx7.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 6
  %55 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx7.6, align 8
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 8240
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.7, align 8
  %arrayidx4.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 7
  %58 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx4.7, align 8
  %arrayidx6.7 = getelementptr i8, ptr %dev, i32 8176
  %59 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx6.7, align 8
  %arrayidx7.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 7
  %61 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx7.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw1 = getelementptr i8, ptr %dev, i32 6528
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ixgbe_ieee_pfc = getelementptr i8, ptr %dev, i32 4052
  %3 = ptrtoint ptr %ixgbe_ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ixgbe_ieee_pfc, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 136) #15
  %6 = ptrtoint ptr %ixgbe_ieee_pfc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %ixgbe_ieee_pfc, align 4
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %ixgbe_ieee_ets = getelementptr i8, ptr %dev, i32 4056
  %7 = ptrtoint ptr %ixgbe_ieee_ets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ixgbe_ieee_ets, align 8
  %9 = ptrtoint ptr %ixgbe_ieee_pfc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ixgbe_ieee_pfc, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %pfc, i32 136)
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %12 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %prio_tc11 = getelementptr inbounds %struct.ieee_ets, ptr %8, i32 0, i32 6
  %call16 = tail call i32 @ixgbe_dcb_hw_pfc_config(ptr noundef %hw1, i8 noundef zeroext %13, ptr noundef %prio_tc11) #12
  br label %if.end18

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %fc_enable = getelementptr i8, ptr %dev, i32 6744
  %14 = ptrtoint ptr %fc_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fc_enable, align 4
  %call17 = tail call i32 %15(ptr noundef %hw1) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %err.0 = phi i32 [ %call16, %if.then14 ], [ %call17, %if.else ]
  tail call void @ixgbe_set_rx_drop_en(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_setapp(ptr noundef %dev, ptr noundef %app) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dcb_ieee_setapp(ptr noundef %dev, ptr noundef %app) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup41_crit_edge

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end4.cleanup41_crit_edge

if.end4.cleanup41_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

land.lhs.true:                                    ; preds = %if.end4
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %6)
  %cmp8 = icmp eq i16 %6, -30458
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then10:                                        ; preds = %land.lhs.true
  %call11 = tail call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %dev, ptr noundef %app) #12
  %conv12 = zext i8 %call11 to i32
  %up = getelementptr i8, ptr %dev, i32 67244
  %7 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %up, align 4
  %conv13 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv13
  %and14 = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then10.cleanup41_crit_edge

if.then10.cleanup41_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %priority, align 1
  %11 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %up, align 4
  tail call fastcc void @ixgbe_dcbnl_devreset(ptr noundef %dev)
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %land.lhs.true.if.end20_crit_edge
  %12 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp23 = icmp eq i8 %.pr, 1
  br i1 %cmp23, label %land.lhs.true25, label %if.end20.cleanup41_crit_edge

if.end20.cleanup41_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

land.lhs.true25:                                  ; preds = %if.end20
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp28 = icmp eq i16 %14, 0
  br i1 %cmp28, label %if.then30, label %land.lhs.true25.cleanup41_crit_edge

land.lhs.true25.cleanup41_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.then30:                                        ; preds = %land.lhs.true25
  %priority31 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %15 = ptrtoint ptr %priority31 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority31, align 1
  %default_up = getelementptr i8, ptr %dev, i32 67688
  %17 = ptrtoint ptr %default_up to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %default_up, align 8
  %num_vfs = getelementptr i8, ptr %dev, i32 67628
  %18 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3266.not = icmp eq i32 %19, 0
  br i1 %cmp3266.not, label %if.then30.cleanup41_crit_edge, label %for.body.lr.ph

if.then30.cleanup41_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %if.then30
  %vfinfo34 = getelementptr i8, ptr %dev, i32 67632
  %hw1.i = getelementptr i8, ptr %dev, i32 6528
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %vf.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end39.for.body_crit_edge ]
  %20 = ptrtoint ptr %vfinfo34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfinfo34, align 16
  %pf_qos = getelementptr %struct.vf_data_storage, ptr %21, i32 %vf.067, i32 7
  %22 = ptrtoint ptr %pf_qos to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pf_qos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool35.not = icmp eq i16 %23, 0
  br i1 %tobool35.not, label %if.then36, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %for.body
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %21, i32 %vf.067, i32 6
  %24 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pf_vlan, align 2
  %26 = ptrtoint ptr %priority31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %priority31, align 1
  %28 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw1.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then36.if.end39_crit_edge, label %do.body1.i.i

if.then36.if.end39_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body1.i.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %vf.067, 2
  %add.i = add i32 %mul.i, 32768
  %conv2.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 13
  %conv.i = zext i16 %25 to i32
  %or.i = or i32 %shl.i, %conv.i
  %or3.i = or i32 %or.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !11
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #12, !srcloc !12
  br label %if.end39

if.end39:                                         ; preds = %do.body1.i.i, %if.then36.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %inc = add nuw i32 %vf.067, 1
  %31 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_vfs, align 4
  %cmp32 = icmp ult i32 %inc, %32
  br i1 %cmp32, label %if.end39.for.body_crit_edge, label %if.end39.cleanup41_crit_edge

if.end39.cleanup41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup41:                                        ; preds = %if.end39.cleanup41_crit_edge, %if.then30.cleanup41_crit_edge, %land.lhs.true25.cleanup41_crit_edge, %if.end20.cleanup41_crit_edge, %if.then10.cleanup41_crit_edge, %if.end4.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup41_crit_edge ], [ %call1, %if.end.cleanup41_crit_edge ], [ 0, %land.lhs.true25.cleanup41_crit_edge ], [ 0, %if.end20.cleanup41_crit_edge ], [ 0, %if.then10.cleanup41_crit_edge ], [ 0, %if.end4.cleanup41_crit_edge ], [ 0, %if.then30.cleanup41_crit_edge ], [ 0, %if.end39.cleanup41_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_ieee_delapp(ptr noundef %dev, ptr noundef %app) #1 align 64 {
entry:
  %app_mask39 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef %app) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.cleanup58_crit_edge

land.lhs.true.cleanup58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

land.lhs.true5:                                   ; preds = %land.lhs.true
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %6)
  %cmp7 = icmp eq i16 %6, -30458
  br i1 %cmp7, label %if.then9, label %land.lhs.true5.if.end23_crit_edge

land.lhs.true5.if.end23_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then9:                                         ; preds = %land.lhs.true5
  %call10 = tail call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %dev, ptr noundef %app) #12
  %conv11 = zext i8 %call10 to i32
  %up = getelementptr i8, ptr %dev, i32 67244
  %7 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %up, align 4
  %conv12 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv12
  %and13 = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then9.cleanup58_crit_edge

if.then9.cleanup58_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

if.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool18.not = icmp eq i8 %call10, 0
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv11, i1 true), !range !13
  %phi.cast = trunc i32 %9 to i8
  %cond = select i1 %tobool18.not, i8 3, i8 %phi.cast
  %10 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond, ptr %up, align 4
  tail call fastcc void @ixgbe_dcbnl_devreset(ptr noundef %dev)
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %land.lhs.true5.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %11 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp26 = icmp eq i8 %.pr, 1
  br i1 %cmp26, label %land.lhs.true28, label %if.end23.cleanup58_crit_edge

if.end23.cleanup58_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

land.lhs.true28:                                  ; preds = %if.end23
  %protocol29 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %12 = ptrtoint ptr %protocol29 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp31 = icmp eq i16 %13, 0
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true28.cleanup58_crit_edge

land.lhs.true28.cleanup58_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %default_up = getelementptr i8, ptr %dev, i32 67688
  %14 = ptrtoint ptr %default_up to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %default_up, align 8
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp36 = icmp eq i8 %15, %17
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.cleanup58_crit_edge

land.lhs.true33.cleanup58_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

if.then38:                                        ; preds = %land.lhs.true33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app_mask39) #12
  %call40 = tail call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %dev, ptr noundef %app) #12
  %conv41 = zext i8 %call40 to i32
  %18 = ptrtoint ptr %app_mask39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv41, ptr %app_mask39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call40)
  %tobool42.not = icmp eq i8 %call40, 0
  br i1 %tobool42.not, label %if.then38.cond.end46_crit_edge, label %cond.true43

if.then38.cond.end46_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end46

cond.true43:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 @_find_first_bit_be(ptr noundef nonnull %app_mask39, i32 noundef 8) #12
  br label %cond.end46

cond.end46:                                       ; preds = %cond.true43, %if.then38.cond.end46_crit_edge
  %cond47 = phi i32 [ %call44, %cond.true43 ], [ 0, %if.then38.cond.end46_crit_edge ]
  %conv48 = trunc i32 %cond47 to i8
  %19 = ptrtoint ptr %default_up to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48, ptr %default_up, align 8
  %num_vfs = getelementptr i8, ptr %dev, i32 67628
  %20 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp5088.not = icmp eq i32 %21, 0
  br i1 %cmp5088.not, label %cond.end46.for.end_crit_edge, label %for.body.lr.ph

cond.end46.for.end_crit_edge:                     ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end46
  %vfinfo52 = getelementptr i8, ptr %dev, i32 67632
  %hw1.i = getelementptr i8, ptr %dev, i32 6528
  %conv2.i = shl i32 %cond47, 13
  %shl.i = and i32 %conv2.i, 536862720
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.body.lr.ph
  %vf.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end56.for.body_crit_edge ]
  %22 = ptrtoint ptr %vfinfo52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfinfo52, align 16
  %pf_qos = getelementptr %struct.vf_data_storage, ptr %23, i32 %vf.089, i32 7
  %24 = ptrtoint ptr %pf_qos to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pf_qos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool53.not = icmp eq i16 %25, 0
  br i1 %tobool53.not, label %if.then54, label %for.body.if.end56_crit_edge

for.body.if.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then54:                                        ; preds = %for.body
  %pf_vlan = getelementptr %struct.vf_data_storage, ptr %23, i32 %vf.089, i32 6
  %26 = ptrtoint ptr %pf_vlan to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pf_vlan, align 2
  %28 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw1.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then54.if.end56_crit_edge, label %do.body1.i.i

if.then54.if.end56_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

do.body1.i.i:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %vf.089, 2
  %add.i = add i32 %mul.i, 32768
  %conv.i = zext i16 %27 to i32
  %or.i = or i32 %shl.i, %conv.i
  %or3.i = or i32 %or.i, 1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !11
  call void @arm_heavy_mb() #12
  %30 = call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #12, !srcloc !12
  br label %if.end56

if.end56:                                         ; preds = %do.body1.i.i, %if.then54.if.end56_crit_edge, %for.body.if.end56_crit_edge
  %inc = add nuw i32 %vf.089, 1
  %31 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_vfs, align 4
  %cmp50 = icmp ult i32 %inc, %32
  br i1 %cmp50, label %if.end56.for.body_crit_edge, label %if.end56.for.end_crit_edge

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end56.for.end_crit_edge, %cond.end46.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app_mask39) #12
  br label %cleanup58

cleanup58:                                        ; preds = %for.end, %land.lhs.true33.cleanup58_crit_edge, %land.lhs.true28.cleanup58_crit_edge, %if.end23.cleanup58_crit_edge, %if.then9.cleanup58_crit_edge, %land.lhs.true.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup58_crit_edge ], [ %call1, %for.end ], [ %call1, %land.lhs.true33.cleanup58_crit_edge ], [ %call1, %land.lhs.true28.cleanup58_crit_edge ], [ %call1, %if.end23.cleanup58_crit_edge ], [ 0, %if.then9.cleanup58_crit_edge ], [ 0, %land.lhs.true.cleanup58_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_get_state(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 12
  %2 = trunc i32 %and to i8
  %3 = and i8 %2, 1
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_set_state(ptr noundef %netdev, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool1.not = icmp eq i8 %state, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and2 = lshr i32 %4, 12
  %and2.lobit = and i32 %and2, 1
  %5 = xor i32 %and2.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lnot.ext)
  %cmp = icmp eq i32 %5, %lnot.ext
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  br i1 %tobool1.not, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %num_tcs = getelementptr i8, ptr %netdev, i32 4068
  %6 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tcs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge
  %cond = phi i8 [ %7, %cond.true ], [ 0, %if.end8.cond.end_crit_edge ]
  %call13 = tail call i32 @ixgbe_setup_tc(ptr noundef %netdev, i8 noundef zeroext %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14 = icmp ne i32 %call13, 0
  %conv19 = zext i1 %tobool14 to i8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv19, %cond.end ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_dcbnl_get_perm_hw_addr(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %perm_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = call ptr @memset(ptr %perm_addr, i32 255, i32 32)
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp34.not = icmp eq i8 %2, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 54, i32 2, i32 3, i32 %i.035
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr i8, ptr %perm_addr, i32 %i.035
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.035, 1
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %type = getelementptr i8, ptr %netdev, i32 6808
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %.off = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.cond6.preheader, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.cond6.preheader:                              ; preds = %for.end
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp937.not = icmp eq i8 %11, 0
  br i1 %cmp937.not, label %for.cond6.preheader.sw.epilog_crit_edge, label %for.cond6.preheader.for.body11_crit_edge

for.cond6.preheader.for.body11_crit_edge:         ; preds = %for.cond6.preheader
  br label %for.body11

for.cond6.preheader.sw.epilog_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond6.preheader.for.body11_crit_edge
  %j.039 = phi i32 [ %inc17, %for.body11.for.body11_crit_edge ], [ 0, %for.cond6.preheader.for.body11_crit_edge ]
  %i.138 = phi i32 [ %inc18, %for.body11.for.body11_crit_edge ], [ %i.0.lcssa, %for.cond6.preheader.for.body11_crit_edge ]
  %arrayidx14 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 54, i32 2, i32 4, i32 %j.039
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr i8, ptr %perm_addr, i32 %i.138
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx15, align 1
  %inc17 = add nuw nsw i32 %j.039, 1
  %inc18 = add nuw nsw i32 %i.138, 1
  %15 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_len, align 1
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ult i32 %inc17, %conv8
  br i1 %cmp9, label %for.body11.for.body11_crit_edge, label %for.body11.sw.epilog_crit_edge

for.body11.sw.epilog_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

sw.epilog:                                        ; preds = %for.body11.sw.epilog_crit_edge, %for.cond6.preheader.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_dcbnl_set_pg_tc_cfg_tx(ptr nocapture noundef writeonly %netdev, i32 noundef %tc, i8 noundef zeroext %prio, i8 noundef zeroext %bwg_id, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %prio)
  %cmp.not = icmp eq i8 %prio, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %prio to i32
  %prio_type = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 0, i32 6
  %0 = ptrtoint ptr %prio_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %prio_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bwg_id)
  %cmp5.not = icmp eq i8 %bwg_id, -1
  br i1 %cmp5.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc
  %1 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bwg_id, ptr %arrayidx10, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bw_pct)
  %cmp16.not = icmp eq i8 %bw_pct, -1
  br i1 %cmp16.not, label %if.end14.if.end24_crit_edge, label %if.then18

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %bwg_percent = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bw_pct, ptr %bwg_percent, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end14.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %up_map)
  %cmp26.not = icmp eq i8 %up_map, -1
  br i1 %cmp26.not, label %if.end24.if.end34_crit_edge, label %if.then28

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %up_to_tc_bitmap = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %up_to_tc_bitmap to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %up_map, ptr %up_to_tc_bitmap, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end24.if.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_dcbnl_set_pg_bwg_cfg_tx(ptr nocapture noundef writeonly %netdev, i32 noundef %bwg_id, i8 noundef zeroext %bw_pct) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bw_percentage = getelementptr i8, ptr %netdev, i32 4624
  %arrayidx1 = getelementptr [8 x i8], ptr %bw_percentage, i32 0, i32 %bwg_id
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %bw_pct, ptr %arrayidx1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_dcbnl_set_pg_tc_cfg_rx(ptr nocapture noundef writeonly %netdev, i32 noundef %tc, i8 noundef zeroext %prio, i8 noundef zeroext %bwg_id, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %prio)
  %cmp.not = icmp eq i8 %prio, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %prio to i32
  %prio_type = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %prio_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %prio_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bwg_id)
  %cmp5.not = icmp eq i8 %bwg_id, -1
  br i1 %cmp5.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bwg_id, ptr %arrayidx12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bw_pct)
  %cmp16.not = icmp eq i8 %bw_pct, -1
  br i1 %cmp16.not, label %if.end14.if.end24_crit_edge, label %if.then18

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %bwg_percent = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bw_pct, ptr %bwg_percent, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end14.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %up_map)
  %cmp26.not = icmp eq i8 %up_map, -1
  br i1 %cmp26.not, label %if.end24.if.end34_crit_edge, label %if.then28

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %up_to_tc_bitmap = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %tc, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %up_to_tc_bitmap to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %up_map, ptr %up_to_tc_bitmap, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end24.if.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_dcbnl_set_pg_bwg_cfg_rx(ptr nocapture noundef writeonly %netdev, i32 noundef %bwg_id, i8 noundef zeroext %bw_pct) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx1 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 3, i32 1, i32 %bwg_id
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %bw_pct, ptr %arrayidx1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_get_pg_tc_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %tc, ptr nocapture noundef writeonly %prio, ptr nocapture noundef writeonly %bwg_id, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %tc
  %prio_type = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx, i32 0, i32 6
  %0 = ptrtoint ptr %prio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_type, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %prio, align 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %bwg_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bwg_id, align 1
  %bwg_percent = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bwg_percent, align 1
  %8 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bw_pct, align 1
  %up_to_tc_bitmap = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %up_to_tc_bitmap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %up_to_tc_bitmap, align 1
  %11 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %up_map, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_get_pg_bwg_cfg_tx(ptr nocapture noundef readonly %netdev, i32 noundef %bwg_id, ptr nocapture noundef writeonly %bw_pct) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bw_percentage = getelementptr i8, ptr %netdev, i32 4328
  %arrayidx1 = getelementptr [8 x i8], ptr %bw_percentage, i32 0, i32 %bwg_id
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx1, align 1
  %2 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %bw_pct, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_get_pg_tc_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %tc, ptr nocapture noundef writeonly %prio, ptr nocapture noundef writeonly %bwg_id, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx1 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %tc, i32 0, i32 1
  %prio_type = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %tc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %prio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio_type, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %prio, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %bwg_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bwg_id, align 1
  %bwg_percent = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %tc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %bwg_percent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bwg_percent, align 1
  %8 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bw_pct, align 1
  %up_to_tc_bitmap = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %tc, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %up_to_tc_bitmap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %up_to_tc_bitmap, align 1
  %11 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %up_map, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_get_pg_bwg_cfg_rx(ptr nocapture noundef readonly %netdev, i32 noundef %bwg_id, ptr nocapture noundef writeonly %bw_pct) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx1 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 3, i32 1, i32 %bwg_id
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx1, align 1
  %2 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %bw_pct, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_set_pfc_cfg(ptr nocapture noundef %netdev, i32 noundef %priority, i8 noundef zeroext %setting) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i8 %setting to i32
  %dcb_pfc = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %priority, i32 1
  %0 = ptrtoint ptr %dcb_pfc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %dcb_pfc, align 4
  %dcb_pfc7 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %priority, i32 1
  %1 = ptrtoint ptr %dcb_pfc7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dcb_pfc7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp eq i32 %2, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pfc_mode_enable = getelementptr i8, ptr %netdev, i32 4640
  %3 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %pfc_mode_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbe_dcbnl_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %priority, ptr nocapture noundef writeonly %setting) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dcb_pfc = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %priority, i32 1
  %0 = ptrtoint ptr %dcb_pfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb_pfc, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %setting, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_set_all(ptr noundef %netdev) #1 align 64 {
entry:
  %app.i = alloca %struct.dcb_app, align 4
  %refill = alloca [8 x i16], align 2
  %max = alloca [8 x i16], align 2
  %bwg_id = alloca [8 x i8], align 8
  %prio_type = alloca [8 x i8], align 8
  %prio_tc = alloca [8 x i8], align 8
  %pfc_en = alloca i8, align 1
  %prio_tc47 = alloca [8 x i8], align 8
  %app = alloca %struct.dcb_app, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dcb_cfg1 = getelementptr i8, ptr %netdev, i32 4060
  %hw2 = getelementptr i8, ptr %netdev, i32 6528
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app.i) #12
  %3 = ptrtoint ptr %app.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 35078, ptr %app.i, align 4
  %netdev.i = getelementptr i8, ptr %netdev, i32 2816
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 128
  %call.i = call zeroext i8 @dcb_getapp(ptr noundef %5, ptr noundef nonnull %app.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %if.end.for.body.i.preheader_crit_edge, label %land.lhs.true.i

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i, %if.end.for.body.i.preheader_crit_edge
  %changes.16.i.ph = phi i32 [ %spec.select.i, %land.lhs.true.i ], [ 0, %if.end.for.body.i.preheader_crit_edge ]
  br label %for.body.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %call.i to i32
  %up2.i = getelementptr i8, ptr %netdev, i32 67244
  %6 = ptrtoint ptr %up2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %up2.i, align 4
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv3.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 16, i32 0
  br label %for.body.i.preheader

for.cond152.preheader.i:                          ; preds = %for.inc.i
  %bw_percentage.i = getelementptr i8, ptr %netdev, i32 4328
  %bw_percentage160.i = getelementptr i8, ptr %netdev, i32 4624
  %8 = ptrtoint ptr %bw_percentage.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bw_percentage.i, align 1
  %10 = ptrtoint ptr %bw_percentage160.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bw_percentage160.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp164.not.i = icmp eq i8 %9, %11
  br i1 %cmp164.not.i, label %for.cond152.preheader.i.if.end174.i_crit_edge, label %if.then166.i

for.cond152.preheader.i.if.end174.i_crit_edge:    ; preds = %for.cond152.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %changes.16.i = phi i32 [ %changes.9.i, %for.inc.i.for.body.i_crit_edge ], [ %changes.16.i.ph, %for.body.i.preheader ]
  %i.01.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.i.preheader ]
  %sub.i = add nsw i32 %i.01.i, -1
  %arrayidx.i = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 40, i32 2, i32 %sub.i
  %arrayidx8.i = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 39, i32 2, i32 %sub.i
  %prio_type.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx8.i, i32 0, i32 6
  %12 = ptrtoint ptr %prio_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prio_type.i, align 4
  %prio_type12.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx.i, i32 0, i32 6
  %14 = ptrtoint ptr %prio_type12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prio_type12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp13.not.i = icmp eq i32 %13, %15
  br i1 %cmp13.not.i, label %for.body.i.if.end23.i_crit_edge, label %if.then15.i

for.body.i.if.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %prio_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %prio_type.i, align 4
  %or22.i = or i32 %changes.16.i, 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then15.i, %for.body.i.if.end23.i_crit_edge
  %changes.2.i = phi i32 [ %or22.i, %if.then15.i ], [ %changes.16.i, %for.body.i.if.end23.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp31.not.i = icmp eq i8 %18, %20
  br i1 %cmp31.not.i, label %if.end23.i.if.end41.i_crit_edge, label %if.then33.i

if.end23.i.if.end41.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx8.i, align 4
  %or40.i = or i32 %changes.2.i, 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then33.i, %if.end23.i.if.end41.i_crit_edge
  %changes.3.i = phi i32 [ %or40.i, %if.then33.i ], [ %changes.2.i, %if.end23.i.if.end41.i_crit_edge ]
  %bwg_percent.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx8.i, i32 0, i32 1
  %22 = ptrtoint ptr %bwg_percent.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bwg_percent.i, align 1
  %bwg_percent47.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx.i, i32 0, i32 1
  %24 = ptrtoint ptr %bwg_percent47.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bwg_percent47.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp49.not.i = icmp eq i8 %23, %25
  br i1 %cmp49.not.i, label %if.end41.i.if.end59.i_crit_edge, label %if.then51.i

if.end41.i.if.end59.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then51.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bwg_percent.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %bwg_percent.i, align 1
  %or58.i = or i32 %changes.3.i, 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then51.i, %if.end41.i.if.end59.i_crit_edge
  %changes.4.i = phi i32 [ %or58.i, %if.then51.i ], [ %changes.3.i, %if.end41.i.if.end59.i_crit_edge ]
  %up_to_tc_bitmap.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx8.i, i32 0, i32 3
  %27 = ptrtoint ptr %up_to_tc_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %up_to_tc_bitmap.i, align 1
  %up_to_tc_bitmap65.i = getelementptr inbounds %struct.tc_bw_alloc, ptr %arrayidx.i, i32 0, i32 3
  %29 = ptrtoint ptr %up_to_tc_bitmap65.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %up_to_tc_bitmap65.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp67.not.i = icmp eq i8 %28, %30
  br i1 %cmp67.not.i, label %if.end59.i.if.end77.i_crit_edge, label %if.then69.i

if.end59.i.if.end77.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then69.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %up_to_tc_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %up_to_tc_bitmap.i, align 1
  %or76.i = or i32 %changes.4.i, 26
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then69.i, %if.end59.i.if.end77.i_crit_edge
  %changes.5.i = phi i32 [ %or76.i, %if.then69.i ], [ %changes.4.i, %if.end59.i.if.end77.i_crit_edge ]
  %arrayidx79.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx8.i, i32 0, i32 1
  %prio_type80.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx8.i, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %prio_type80.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prio_type80.i, align 4
  %arrayidx82.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.i, i32 0, i32 1
  %prio_type83.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.i, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %prio_type83.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prio_type83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp84.not.i = icmp eq i32 %33, %35
  br i1 %cmp84.not.i, label %if.end77.i.if.end94.i_crit_edge, label %if.then86.i

if.end77.i.if.end94.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.then86.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prio_type80.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %prio_type80.i, align 4
  %or93.i = or i32 %changes.5.i, 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then86.i, %if.end77.i.if.end94.i_crit_edge
  %changes.6.i = phi i32 [ %or93.i, %if.then86.i ], [ %changes.5.i, %if.end77.i.if.end94.i_crit_edge ]
  %37 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx79.i, align 4
  %39 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx82.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp103.not.i = icmp eq i8 %38, %40
  br i1 %cmp103.not.i, label %if.end94.i.if.end113.i_crit_edge, label %if.then105.i

if.end94.i.if.end113.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.i

if.then105.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx79.i, align 4
  %or112.i = or i32 %changes.6.i, 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then105.i, %if.end94.i.if.end113.i_crit_edge
  %changes.7.i = phi i32 [ %or112.i, %if.then105.i ], [ %changes.6.i, %if.end94.i.if.end113.i_crit_edge ]
  %bwg_percent116.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx8.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %bwg_percent116.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bwg_percent116.i, align 1
  %bwg_percent120.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %bwg_percent120.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bwg_percent120.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp122.not.i = icmp eq i8 %43, %45
  br i1 %cmp122.not.i, label %if.end113.i.if.end132.i_crit_edge, label %if.then124.i

if.end113.i.if.end132.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132.i

if.then124.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %bwg_percent116.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %bwg_percent116.i, align 1
  %or131.i = or i32 %changes.7.i, 4
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then124.i, %if.end113.i.if.end132.i_crit_edge
  %changes.8.i = phi i32 [ %or131.i, %if.then124.i ], [ %changes.7.i, %if.end113.i.if.end132.i_crit_edge ]
  %up_to_tc_bitmap135.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx8.i, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %up_to_tc_bitmap135.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %up_to_tc_bitmap135.i, align 1
  %up_to_tc_bitmap139.i = getelementptr [2 x %struct.tc_bw_alloc], ptr %arrayidx.i, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %up_to_tc_bitmap139.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %up_to_tc_bitmap139.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp141.not.i = icmp eq i8 %48, %50
  br i1 %cmp141.not.i, label %if.end132.i.for.inc.i_crit_edge, label %if.then143.i

if.end132.i.for.inc.i_crit_edge:                  ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then143.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %up_to_tc_bitmap135.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %up_to_tc_bitmap135.i, align 1
  %or150.i = or i32 %changes.8.i, 22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then143.i, %if.end132.i.for.inc.i_crit_edge
  %changes.9.i = phi i32 [ %or150.i, %if.then143.i ], [ %changes.8.i, %if.end132.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.cond152.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.then166.i:                                     ; preds = %for.cond152.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %bw_percentage.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %11, ptr %bw_percentage.i, align 1
  %or173.i = or i32 %changes.9.i, 8
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then166.i, %for.cond152.preheader.i.if.end174.i_crit_edge
  %changes.11.i = phi i32 [ %or173.i, %if.then166.i ], [ %changes.9.i, %for.cond152.preheader.i.if.end174.i_crit_edge ]
  %arrayidx177.i = getelementptr i8, ptr %netdev, i32 4336
  %53 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx177.i, align 1
  %arrayidx181.i = getelementptr i8, ptr %netdev, i32 4632
  %55 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx181.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp183.not.i = icmp eq i8 %54, %56
  br i1 %cmp183.not.i, label %if.end174.i.for.inc194.i_crit_edge, label %if.then185.i

if.end174.i.for.inc194.i_crit_edge:               ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.i

if.then185.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx177.i, align 1
  %or192.i = or i32 %changes.11.i, 4
  br label %for.inc194.i

for.inc194.i:                                     ; preds = %if.then185.i, %if.end174.i.for.inc194.i_crit_edge
  %changes.12.i = phi i32 [ %or192.i, %if.then185.i ], [ %changes.11.i, %if.end174.i.for.inc194.i_crit_edge ]
  %arrayidx158.1.i = getelementptr i8, ptr %netdev, i32 4329
  %58 = ptrtoint ptr %arrayidx158.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx158.1.i, align 1
  %arrayidx162.1.i = getelementptr i8, ptr %netdev, i32 4625
  %60 = ptrtoint ptr %arrayidx162.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx162.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp164.not.1.i = icmp eq i8 %59, %61
  br i1 %cmp164.not.1.i, label %for.inc194.i.if.end174.1.i_crit_edge, label %if.then166.1.i

for.inc194.i.if.end174.1.i_crit_edge:             ; preds = %for.inc194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.1.i

if.then166.1.i:                                   ; preds = %for.inc194.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %arrayidx158.1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx158.1.i, align 1
  %or173.1.i = or i32 %changes.12.i, 8
  br label %if.end174.1.i

if.end174.1.i:                                    ; preds = %if.then166.1.i, %for.inc194.i.if.end174.1.i_crit_edge
  %changes.11.1.i = phi i32 [ %or173.1.i, %if.then166.1.i ], [ %changes.12.i, %for.inc194.i.if.end174.1.i_crit_edge ]
  %arrayidx177.1.i = getelementptr i8, ptr %netdev, i32 4337
  %63 = ptrtoint ptr %arrayidx177.1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx177.1.i, align 1
  %arrayidx181.1.i = getelementptr i8, ptr %netdev, i32 4633
  %65 = ptrtoint ptr %arrayidx181.1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx181.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp183.not.1.i = icmp eq i8 %64, %66
  br i1 %cmp183.not.1.i, label %if.end174.1.i.for.inc194.1.i_crit_edge, label %if.then185.1.i

if.end174.1.i.for.inc194.1.i_crit_edge:           ; preds = %if.end174.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.1.i

if.then185.1.i:                                   ; preds = %if.end174.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %arrayidx177.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx177.1.i, align 1
  %or192.1.i = or i32 %changes.11.1.i, 4
  br label %for.inc194.1.i

for.inc194.1.i:                                   ; preds = %if.then185.1.i, %if.end174.1.i.for.inc194.1.i_crit_edge
  %changes.12.1.i = phi i32 [ %or192.1.i, %if.then185.1.i ], [ %changes.11.1.i, %if.end174.1.i.for.inc194.1.i_crit_edge ]
  %arrayidx158.2.i = getelementptr i8, ptr %netdev, i32 4330
  %68 = ptrtoint ptr %arrayidx158.2.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx158.2.i, align 1
  %arrayidx162.2.i = getelementptr i8, ptr %netdev, i32 4626
  %70 = ptrtoint ptr %arrayidx162.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx162.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp164.not.2.i = icmp eq i8 %69, %71
  br i1 %cmp164.not.2.i, label %for.inc194.1.i.if.end174.2.i_crit_edge, label %if.then166.2.i

for.inc194.1.i.if.end174.2.i_crit_edge:           ; preds = %for.inc194.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.2.i

if.then166.2.i:                                   ; preds = %for.inc194.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %arrayidx158.2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx158.2.i, align 1
  %or173.2.i = or i32 %changes.12.1.i, 8
  br label %if.end174.2.i

if.end174.2.i:                                    ; preds = %if.then166.2.i, %for.inc194.1.i.if.end174.2.i_crit_edge
  %changes.11.2.i = phi i32 [ %or173.2.i, %if.then166.2.i ], [ %changes.12.1.i, %for.inc194.1.i.if.end174.2.i_crit_edge ]
  %arrayidx177.2.i = getelementptr i8, ptr %netdev, i32 4338
  %73 = ptrtoint ptr %arrayidx177.2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx177.2.i, align 1
  %arrayidx181.2.i = getelementptr i8, ptr %netdev, i32 4634
  %75 = ptrtoint ptr %arrayidx181.2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx181.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp183.not.2.i = icmp eq i8 %74, %76
  br i1 %cmp183.not.2.i, label %if.end174.2.i.for.inc194.2.i_crit_edge, label %if.then185.2.i

if.end174.2.i.for.inc194.2.i_crit_edge:           ; preds = %if.end174.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.2.i

if.then185.2.i:                                   ; preds = %if.end174.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %arrayidx177.2.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx177.2.i, align 1
  %or192.2.i = or i32 %changes.11.2.i, 4
  br label %for.inc194.2.i

for.inc194.2.i:                                   ; preds = %if.then185.2.i, %if.end174.2.i.for.inc194.2.i_crit_edge
  %changes.12.2.i = phi i32 [ %or192.2.i, %if.then185.2.i ], [ %changes.11.2.i, %if.end174.2.i.for.inc194.2.i_crit_edge ]
  %arrayidx158.3.i = getelementptr i8, ptr %netdev, i32 4331
  %78 = ptrtoint ptr %arrayidx158.3.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx158.3.i, align 1
  %arrayidx162.3.i = getelementptr i8, ptr %netdev, i32 4627
  %80 = ptrtoint ptr %arrayidx162.3.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx162.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp164.not.3.i = icmp eq i8 %79, %81
  br i1 %cmp164.not.3.i, label %for.inc194.2.i.if.end174.3.i_crit_edge, label %if.then166.3.i

for.inc194.2.i.if.end174.3.i_crit_edge:           ; preds = %for.inc194.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.3.i

if.then166.3.i:                                   ; preds = %for.inc194.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %arrayidx158.3.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx158.3.i, align 1
  %or173.3.i = or i32 %changes.12.2.i, 8
  br label %if.end174.3.i

if.end174.3.i:                                    ; preds = %if.then166.3.i, %for.inc194.2.i.if.end174.3.i_crit_edge
  %changes.11.3.i = phi i32 [ %or173.3.i, %if.then166.3.i ], [ %changes.12.2.i, %for.inc194.2.i.if.end174.3.i_crit_edge ]
  %arrayidx177.3.i = getelementptr i8, ptr %netdev, i32 4339
  %83 = ptrtoint ptr %arrayidx177.3.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx177.3.i, align 1
  %arrayidx181.3.i = getelementptr i8, ptr %netdev, i32 4635
  %85 = ptrtoint ptr %arrayidx181.3.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx181.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp183.not.3.i = icmp eq i8 %84, %86
  br i1 %cmp183.not.3.i, label %if.end174.3.i.for.inc194.3.i_crit_edge, label %if.then185.3.i

if.end174.3.i.for.inc194.3.i_crit_edge:           ; preds = %if.end174.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.3.i

if.then185.3.i:                                   ; preds = %if.end174.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %arrayidx177.3.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx177.3.i, align 1
  %or192.3.i = or i32 %changes.11.3.i, 4
  br label %for.inc194.3.i

for.inc194.3.i:                                   ; preds = %if.then185.3.i, %if.end174.3.i.for.inc194.3.i_crit_edge
  %changes.12.3.i = phi i32 [ %or192.3.i, %if.then185.3.i ], [ %changes.11.3.i, %if.end174.3.i.for.inc194.3.i_crit_edge ]
  %arrayidx158.4.i = getelementptr i8, ptr %netdev, i32 4332
  %88 = ptrtoint ptr %arrayidx158.4.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx158.4.i, align 1
  %arrayidx162.4.i = getelementptr i8, ptr %netdev, i32 4628
  %90 = ptrtoint ptr %arrayidx162.4.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx162.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %91)
  %cmp164.not.4.i = icmp eq i8 %89, %91
  br i1 %cmp164.not.4.i, label %for.inc194.3.i.if.end174.4.i_crit_edge, label %if.then166.4.i

for.inc194.3.i.if.end174.4.i_crit_edge:           ; preds = %for.inc194.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.4.i

if.then166.4.i:                                   ; preds = %for.inc194.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %arrayidx158.4.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx158.4.i, align 1
  %or173.4.i = or i32 %changes.12.3.i, 8
  br label %if.end174.4.i

if.end174.4.i:                                    ; preds = %if.then166.4.i, %for.inc194.3.i.if.end174.4.i_crit_edge
  %changes.11.4.i = phi i32 [ %or173.4.i, %if.then166.4.i ], [ %changes.12.3.i, %for.inc194.3.i.if.end174.4.i_crit_edge ]
  %arrayidx177.4.i = getelementptr i8, ptr %netdev, i32 4340
  %93 = ptrtoint ptr %arrayidx177.4.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx177.4.i, align 1
  %arrayidx181.4.i = getelementptr i8, ptr %netdev, i32 4636
  %95 = ptrtoint ptr %arrayidx181.4.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx181.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp183.not.4.i = icmp eq i8 %94, %96
  br i1 %cmp183.not.4.i, label %if.end174.4.i.for.inc194.4.i_crit_edge, label %if.then185.4.i

if.end174.4.i.for.inc194.4.i_crit_edge:           ; preds = %if.end174.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.4.i

if.then185.4.i:                                   ; preds = %if.end174.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %arrayidx177.4.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx177.4.i, align 1
  %or192.4.i = or i32 %changes.11.4.i, 4
  br label %for.inc194.4.i

for.inc194.4.i:                                   ; preds = %if.then185.4.i, %if.end174.4.i.for.inc194.4.i_crit_edge
  %changes.12.4.i = phi i32 [ %or192.4.i, %if.then185.4.i ], [ %changes.11.4.i, %if.end174.4.i.for.inc194.4.i_crit_edge ]
  %arrayidx158.5.i = getelementptr i8, ptr %netdev, i32 4333
  %98 = ptrtoint ptr %arrayidx158.5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx158.5.i, align 1
  %arrayidx162.5.i = getelementptr i8, ptr %netdev, i32 4629
  %100 = ptrtoint ptr %arrayidx162.5.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx162.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %101)
  %cmp164.not.5.i = icmp eq i8 %99, %101
  br i1 %cmp164.not.5.i, label %for.inc194.4.i.if.end174.5.i_crit_edge, label %if.then166.5.i

for.inc194.4.i.if.end174.5.i_crit_edge:           ; preds = %for.inc194.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.5.i

if.then166.5.i:                                   ; preds = %for.inc194.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %arrayidx158.5.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx158.5.i, align 1
  %or173.5.i = or i32 %changes.12.4.i, 8
  br label %if.end174.5.i

if.end174.5.i:                                    ; preds = %if.then166.5.i, %for.inc194.4.i.if.end174.5.i_crit_edge
  %changes.11.5.i = phi i32 [ %or173.5.i, %if.then166.5.i ], [ %changes.12.4.i, %for.inc194.4.i.if.end174.5.i_crit_edge ]
  %arrayidx177.5.i = getelementptr i8, ptr %netdev, i32 4341
  %103 = ptrtoint ptr %arrayidx177.5.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx177.5.i, align 1
  %arrayidx181.5.i = getelementptr i8, ptr %netdev, i32 4637
  %105 = ptrtoint ptr %arrayidx181.5.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx181.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %106)
  %cmp183.not.5.i = icmp eq i8 %104, %106
  br i1 %cmp183.not.5.i, label %if.end174.5.i.for.inc194.5.i_crit_edge, label %if.then185.5.i

if.end174.5.i.for.inc194.5.i_crit_edge:           ; preds = %if.end174.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.5.i

if.then185.5.i:                                   ; preds = %if.end174.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %arrayidx177.5.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx177.5.i, align 1
  %or192.5.i = or i32 %changes.11.5.i, 4
  br label %for.inc194.5.i

for.inc194.5.i:                                   ; preds = %if.then185.5.i, %if.end174.5.i.for.inc194.5.i_crit_edge
  %changes.12.5.i = phi i32 [ %or192.5.i, %if.then185.5.i ], [ %changes.11.5.i, %if.end174.5.i.for.inc194.5.i_crit_edge ]
  %arrayidx158.6.i = getelementptr i8, ptr %netdev, i32 4334
  %108 = ptrtoint ptr %arrayidx158.6.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx158.6.i, align 1
  %arrayidx162.6.i = getelementptr i8, ptr %netdev, i32 4630
  %110 = ptrtoint ptr %arrayidx162.6.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx162.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %111)
  %cmp164.not.6.i = icmp eq i8 %109, %111
  br i1 %cmp164.not.6.i, label %for.inc194.5.i.if.end174.6.i_crit_edge, label %if.then166.6.i

for.inc194.5.i.if.end174.6.i_crit_edge:           ; preds = %for.inc194.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.6.i

if.then166.6.i:                                   ; preds = %for.inc194.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %arrayidx158.6.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx158.6.i, align 1
  %or173.6.i = or i32 %changes.12.5.i, 8
  br label %if.end174.6.i

if.end174.6.i:                                    ; preds = %if.then166.6.i, %for.inc194.5.i.if.end174.6.i_crit_edge
  %changes.11.6.i = phi i32 [ %or173.6.i, %if.then166.6.i ], [ %changes.12.5.i, %for.inc194.5.i.if.end174.6.i_crit_edge ]
  %arrayidx177.6.i = getelementptr i8, ptr %netdev, i32 4342
  %113 = ptrtoint ptr %arrayidx177.6.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx177.6.i, align 1
  %arrayidx181.6.i = getelementptr i8, ptr %netdev, i32 4638
  %115 = ptrtoint ptr %arrayidx181.6.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx181.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp183.not.6.i = icmp eq i8 %114, %116
  br i1 %cmp183.not.6.i, label %if.end174.6.i.for.inc194.6.i_crit_edge, label %if.then185.6.i

if.end174.6.i.for.inc194.6.i_crit_edge:           ; preds = %if.end174.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.6.i

if.then185.6.i:                                   ; preds = %if.end174.6.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %arrayidx177.6.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx177.6.i, align 1
  %or192.6.i = or i32 %changes.11.6.i, 4
  br label %for.inc194.6.i

for.inc194.6.i:                                   ; preds = %if.then185.6.i, %if.end174.6.i.for.inc194.6.i_crit_edge
  %changes.12.6.i = phi i32 [ %or192.6.i, %if.then185.6.i ], [ %changes.11.6.i, %if.end174.6.i.for.inc194.6.i_crit_edge ]
  %arrayidx158.7.i = getelementptr i8, ptr %netdev, i32 4335
  %118 = ptrtoint ptr %arrayidx158.7.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx158.7.i, align 1
  %arrayidx162.7.i = getelementptr i8, ptr %netdev, i32 4631
  %120 = ptrtoint ptr %arrayidx162.7.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx162.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %119, i8 %121)
  %cmp164.not.7.i = icmp eq i8 %119, %121
  br i1 %cmp164.not.7.i, label %for.inc194.6.i.if.end174.7.i_crit_edge, label %if.then166.7.i

for.inc194.6.i.if.end174.7.i_crit_edge:           ; preds = %for.inc194.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.7.i

if.then166.7.i:                                   ; preds = %for.inc194.6.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %arrayidx158.7.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx158.7.i, align 1
  %or173.7.i = or i32 %changes.12.6.i, 8
  br label %if.end174.7.i

if.end174.7.i:                                    ; preds = %if.then166.7.i, %for.inc194.6.i.if.end174.7.i_crit_edge
  %changes.11.7.i = phi i32 [ %or173.7.i, %if.then166.7.i ], [ %changes.12.6.i, %for.inc194.6.i.if.end174.7.i_crit_edge ]
  %arrayidx177.7.i = getelementptr i8, ptr %netdev, i32 4343
  %123 = ptrtoint ptr %arrayidx177.7.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx177.7.i, align 1
  %arrayidx181.7.i = getelementptr i8, ptr %netdev, i32 4639
  %125 = ptrtoint ptr %arrayidx181.7.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx181.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %126)
  %cmp183.not.7.i = icmp eq i8 %124, %126
  br i1 %cmp183.not.7.i, label %if.end174.7.i.for.inc194.7.i_crit_edge, label %if.then185.7.i

if.end174.7.i.for.inc194.7.i_crit_edge:           ; preds = %if.end174.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc194.7.i

if.then185.7.i:                                   ; preds = %if.end174.7.i
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %arrayidx177.7.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx177.7.i, align 1
  %or192.7.i = or i32 %changes.11.7.i, 4
  br label %for.inc194.7.i

for.inc194.7.i:                                   ; preds = %if.then185.7.i, %if.end174.7.i.for.inc194.7.i_crit_edge
  %changes.12.7.i = phi i32 [ %or192.7.i, %if.then185.7.i ], [ %changes.11.7.i, %if.end174.7.i.for.inc194.7.i_crit_edge ]
  %dcb_pfc.i = getelementptr i8, ptr %netdev, i32 4096
  %128 = ptrtoint ptr %dcb_pfc.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dcb_pfc.i, align 4
  %dcb_pfc206.i = getelementptr i8, ptr %netdev, i32 4392
  %130 = ptrtoint ptr %dcb_pfc206.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dcb_pfc206.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp207.not.i = icmp eq i32 %129, %131
  br i1 %cmp207.not.i, label %for.inc194.7.i.for.inc218.i_crit_edge, label %if.then209.i

for.inc194.7.i.for.inc218.i_crit_edge:            ; preds = %for.inc194.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.i

if.then209.i:                                     ; preds = %for.inc194.7.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %dcb_pfc.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %dcb_pfc.i, align 4
  %or216.i = or i32 %changes.12.7.i, 2
  br label %for.inc218.i

for.inc218.i:                                     ; preds = %if.then209.i, %for.inc194.7.i.for.inc218.i_crit_edge
  %changes.14.i = phi i32 [ %or216.i, %if.then209.i ], [ %changes.12.7.i, %for.inc194.7.i.for.inc218.i_crit_edge ]
  %dcb_pfc.1.i = getelementptr i8, ptr %netdev, i32 4128
  %133 = ptrtoint ptr %dcb_pfc.1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dcb_pfc.1.i, align 4
  %dcb_pfc206.1.i = getelementptr i8, ptr %netdev, i32 4424
  %135 = ptrtoint ptr %dcb_pfc206.1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dcb_pfc206.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp207.not.1.i = icmp eq i32 %134, %136
  br i1 %cmp207.not.1.i, label %for.inc218.i.for.inc218.1.i_crit_edge, label %if.then209.1.i

for.inc218.i.for.inc218.1.i_crit_edge:            ; preds = %for.inc218.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.1.i

if.then209.1.i:                                   ; preds = %for.inc218.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %dcb_pfc.1.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %dcb_pfc.1.i, align 4
  %or216.1.i = or i32 %changes.14.i, 2
  br label %for.inc218.1.i

for.inc218.1.i:                                   ; preds = %if.then209.1.i, %for.inc218.i.for.inc218.1.i_crit_edge
  %changes.14.1.i = phi i32 [ %or216.1.i, %if.then209.1.i ], [ %changes.14.i, %for.inc218.i.for.inc218.1.i_crit_edge ]
  %dcb_pfc.2.i = getelementptr i8, ptr %netdev, i32 4160
  %138 = ptrtoint ptr %dcb_pfc.2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dcb_pfc.2.i, align 4
  %dcb_pfc206.2.i = getelementptr i8, ptr %netdev, i32 4456
  %140 = ptrtoint ptr %dcb_pfc206.2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dcb_pfc206.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp207.not.2.i = icmp eq i32 %139, %141
  br i1 %cmp207.not.2.i, label %for.inc218.1.i.for.inc218.2.i_crit_edge, label %if.then209.2.i

for.inc218.1.i.for.inc218.2.i_crit_edge:          ; preds = %for.inc218.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.2.i

if.then209.2.i:                                   ; preds = %for.inc218.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %dcb_pfc.2.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %dcb_pfc.2.i, align 4
  %or216.2.i = or i32 %changes.14.1.i, 2
  br label %for.inc218.2.i

for.inc218.2.i:                                   ; preds = %if.then209.2.i, %for.inc218.1.i.for.inc218.2.i_crit_edge
  %changes.14.2.i = phi i32 [ %or216.2.i, %if.then209.2.i ], [ %changes.14.1.i, %for.inc218.1.i.for.inc218.2.i_crit_edge ]
  %dcb_pfc.3.i = getelementptr i8, ptr %netdev, i32 4192
  %143 = ptrtoint ptr %dcb_pfc.3.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dcb_pfc.3.i, align 4
  %dcb_pfc206.3.i = getelementptr i8, ptr %netdev, i32 4488
  %145 = ptrtoint ptr %dcb_pfc206.3.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dcb_pfc206.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp207.not.3.i = icmp eq i32 %144, %146
  br i1 %cmp207.not.3.i, label %for.inc218.2.i.for.inc218.3.i_crit_edge, label %if.then209.3.i

for.inc218.2.i.for.inc218.3.i_crit_edge:          ; preds = %for.inc218.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.3.i

if.then209.3.i:                                   ; preds = %for.inc218.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %dcb_pfc.3.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %dcb_pfc.3.i, align 4
  %or216.3.i = or i32 %changes.14.2.i, 2
  br label %for.inc218.3.i

for.inc218.3.i:                                   ; preds = %if.then209.3.i, %for.inc218.2.i.for.inc218.3.i_crit_edge
  %changes.14.3.i = phi i32 [ %or216.3.i, %if.then209.3.i ], [ %changes.14.2.i, %for.inc218.2.i.for.inc218.3.i_crit_edge ]
  %dcb_pfc.4.i = getelementptr i8, ptr %netdev, i32 4224
  %148 = ptrtoint ptr %dcb_pfc.4.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dcb_pfc.4.i, align 4
  %dcb_pfc206.4.i = getelementptr i8, ptr %netdev, i32 4520
  %150 = ptrtoint ptr %dcb_pfc206.4.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dcb_pfc206.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp207.not.4.i = icmp eq i32 %149, %151
  br i1 %cmp207.not.4.i, label %for.inc218.3.i.for.inc218.4.i_crit_edge, label %if.then209.4.i

for.inc218.3.i.for.inc218.4.i_crit_edge:          ; preds = %for.inc218.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.4.i

if.then209.4.i:                                   ; preds = %for.inc218.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %dcb_pfc.4.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %dcb_pfc.4.i, align 4
  %or216.4.i = or i32 %changes.14.3.i, 2
  br label %for.inc218.4.i

for.inc218.4.i:                                   ; preds = %if.then209.4.i, %for.inc218.3.i.for.inc218.4.i_crit_edge
  %changes.14.4.i = phi i32 [ %or216.4.i, %if.then209.4.i ], [ %changes.14.3.i, %for.inc218.3.i.for.inc218.4.i_crit_edge ]
  %dcb_pfc.5.i = getelementptr i8, ptr %netdev, i32 4256
  %153 = ptrtoint ptr %dcb_pfc.5.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dcb_pfc.5.i, align 4
  %dcb_pfc206.5.i = getelementptr i8, ptr %netdev, i32 4552
  %155 = ptrtoint ptr %dcb_pfc206.5.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dcb_pfc206.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp207.not.5.i = icmp eq i32 %154, %156
  br i1 %cmp207.not.5.i, label %for.inc218.4.i.for.inc218.5.i_crit_edge, label %if.then209.5.i

for.inc218.4.i.for.inc218.5.i_crit_edge:          ; preds = %for.inc218.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.5.i

if.then209.5.i:                                   ; preds = %for.inc218.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %dcb_pfc.5.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %dcb_pfc.5.i, align 4
  %or216.5.i = or i32 %changes.14.4.i, 2
  br label %for.inc218.5.i

for.inc218.5.i:                                   ; preds = %if.then209.5.i, %for.inc218.4.i.for.inc218.5.i_crit_edge
  %changes.14.5.i = phi i32 [ %or216.5.i, %if.then209.5.i ], [ %changes.14.4.i, %for.inc218.4.i.for.inc218.5.i_crit_edge ]
  %dcb_pfc.6.i = getelementptr i8, ptr %netdev, i32 4288
  %158 = ptrtoint ptr %dcb_pfc.6.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dcb_pfc.6.i, align 4
  %dcb_pfc206.6.i = getelementptr i8, ptr %netdev, i32 4584
  %160 = ptrtoint ptr %dcb_pfc206.6.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dcb_pfc206.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %161)
  %cmp207.not.6.i = icmp eq i32 %159, %161
  br i1 %cmp207.not.6.i, label %for.inc218.5.i.for.inc218.6.i_crit_edge, label %if.then209.6.i

for.inc218.5.i.for.inc218.6.i_crit_edge:          ; preds = %for.inc218.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.6.i

if.then209.6.i:                                   ; preds = %for.inc218.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %dcb_pfc.6.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %dcb_pfc.6.i, align 4
  %or216.6.i = or i32 %changes.14.5.i, 2
  br label %for.inc218.6.i

for.inc218.6.i:                                   ; preds = %if.then209.6.i, %for.inc218.5.i.for.inc218.6.i_crit_edge
  %changes.14.6.i = phi i32 [ %or216.6.i, %if.then209.6.i ], [ %changes.14.5.i, %for.inc218.5.i.for.inc218.6.i_crit_edge ]
  %dcb_pfc.7.i = getelementptr i8, ptr %netdev, i32 4320
  %163 = ptrtoint ptr %dcb_pfc.7.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dcb_pfc.7.i, align 4
  %dcb_pfc206.7.i = getelementptr i8, ptr %netdev, i32 4616
  %165 = ptrtoint ptr %dcb_pfc206.7.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dcb_pfc206.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp207.not.7.i = icmp eq i32 %164, %166
  br i1 %cmp207.not.7.i, label %for.inc218.6.i.for.inc218.7.i_crit_edge, label %if.then209.7.i

for.inc218.6.i.for.inc218.7.i_crit_edge:          ; preds = %for.inc218.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc218.7.i

if.then209.7.i:                                   ; preds = %for.inc218.6.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %dcb_pfc.7.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %dcb_pfc.7.i, align 4
  %or216.7.i = or i32 %changes.14.6.i, 2
  br label %for.inc218.7.i

for.inc218.7.i:                                   ; preds = %if.then209.7.i, %for.inc218.6.i.for.inc218.7.i_crit_edge
  %changes.14.7.i = phi i32 [ %or216.7.i, %if.then209.7.i ], [ %changes.14.6.i, %for.inc218.6.i.for.inc218.7.i_crit_edge ]
  %pfc_mode_enable.i = getelementptr i8, ptr %netdev, i32 4344
  %168 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %pfc_mode_enable.i, align 4, !range !14
  %pfc_mode_enable223.i = getelementptr i8, ptr %netdev, i32 4640
  %170 = ptrtoint ptr %pfc_mode_enable223.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %pfc_mode_enable223.i, align 4, !range !14
  call void @__sanitizer_cov_trace_cmp1(i8 %169, i8 %171)
  %cmp226.not.i = icmp eq i8 %169, %171
  br i1 %cmp226.not.i, label %for.inc218.7.i.ixgbe_copy_dcb_cfg.exit_crit_edge, label %if.then228.i

for.inc218.7.i.ixgbe_copy_dcb_cfg.exit_crit_edge: ; preds = %for.inc218.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_copy_dcb_cfg.exit

if.then228.i:                                     ; preds = %for.inc218.7.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %pfc_mode_enable.i, align 4
  %or232.i = or i32 %changes.14.7.i, 2
  br label %ixgbe_copy_dcb_cfg.exit

ixgbe_copy_dcb_cfg.exit:                          ; preds = %if.then228.i, %for.inc218.7.i.ixgbe_copy_dcb_cfg.exit_crit_edge
  %changes.15.i = phi i32 [ %or232.i, %if.then228.i ], [ %changes.14.7.i, %for.inc218.7.i.ixgbe_copy_dcb_cfg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app.i) #12
  %dcb_set_bitmap = getelementptr i8, ptr %netdev, i32 4653
  %173 = ptrtoint ptr %dcb_set_bitmap to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %dcb_set_bitmap, align 1
  %175 = trunc i32 %changes.15.i to i8
  %conv5 = or i8 %174, %175
  store i8 %conv5, ptr %dcb_set_bitmap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %tobool7.not = icmp eq i8 %conv5, 0
  br i1 %tobool7.not, label %ixgbe_copy_dcb_cfg.exit.cleanup_crit_edge, label %if.end9

ixgbe_copy_dcb_cfg.exit.cleanup_crit_edge:        ; preds = %ixgbe_copy_dcb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %ixgbe_copy_dcb_cfg.exit
  %176 = and i8 %conv5, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool13.not = icmp eq i8 %176, 0
  br i1 %tobool13.not, label %if.end9.if.end39_crit_edge, label %if.then14

if.end9.if.end39_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then14:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %refill) #12
  %177 = call ptr @memset(ptr %refill, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max) #12
  %178 = call ptr @memset(ptr %max, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bwg_id) #12
  %179 = ptrtoint ptr %bwg_id to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 -1, ptr %bwg_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prio_type) #12
  %180 = ptrtoint ptr %prio_type to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 -1, ptr %prio_type, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prio_tc) #12
  %181 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 1
  %182 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 2
  %183 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 3
  %184 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 4
  %185 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 5
  %186 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 6
  %187 = getelementptr inbounds [8 x i8], ptr %prio_tc, i32 0, i32 7
  %188 = ptrtoint ptr %prio_tc to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 -1, ptr %prio_tc, align 8
  %189 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %netdev.i, align 128
  %mtu = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 20
  %191 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mtu, align 4
  %add16 = add i32 %192, 18
  %features = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 23
  %193 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %features, align 16
  %and18 = and i64 %194, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  %195 = call i32 @llvm.smax.i32(i32 %add16, i32 3072)
  %max_frame.0 = select i1 %tobool19.not, i32 %add16, i32 %195
  %call23 = call i32 @ixgbe_dcb_calculate_tc_credits(ptr noundef %hw2, ptr noundef %dcb_cfg1, i32 noundef %max_frame.0, i8 noundef zeroext 0) #12
  %call24 = call i32 @ixgbe_dcb_calculate_tc_credits(ptr noundef %hw2, ptr noundef %dcb_cfg1, i32 noundef %max_frame.0, i8 noundef zeroext 1) #12
  call void @ixgbe_dcb_unpack_refill(ptr noundef %dcb_cfg1, i32 noundef 0, ptr noundef nonnull %refill) #12
  call void @ixgbe_dcb_unpack_max(ptr noundef %dcb_cfg1, ptr noundef nonnull %max) #12
  call void @ixgbe_dcb_unpack_bwgid(ptr noundef %dcb_cfg1, i32 noundef 0, ptr noundef nonnull %bwg_id) #12
  call void @ixgbe_dcb_unpack_prio(ptr noundef %dcb_cfg1, i32 noundef 0, ptr noundef nonnull %prio_type) #12
  call void @ixgbe_dcb_unpack_map(ptr noundef %dcb_cfg1, i32 noundef 0, ptr noundef nonnull %prio_tc) #12
  %call34 = call i32 @ixgbe_dcb_hw_ets_config(ptr noundef %hw2, ptr noundef nonnull %refill, ptr noundef nonnull %max, ptr noundef nonnull %bwg_id, ptr noundef nonnull %prio_type, ptr noundef nonnull %prio_tc) #12
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 140
  %196 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %num_tc.i, align 4
  %conv1.i = sext i16 %197 to i32
  %198 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %prio_tc, align 8
  %conv.i107 = zext i8 %199 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107, i32 %conv1.i)
  %cmp.not.i = icmp slt i32 %conv.i107, %conv1.i
  br i1 %cmp.not.i, label %if.end.i110, label %if.then14.netdev_set_prio_tc_map.exit_crit_edge

if.then14.netdev_set_prio_tc_map.exit_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit

if.end.i110:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108 = and i8 %199, 15
  %arrayidx.i109 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 0
  %200 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %and.i108, ptr %arrayidx.i109, align 1
  br label %netdev_set_prio_tc_map.exit

netdev_set_prio_tc_map.exit:                      ; preds = %if.end.i110, %if.then14.netdev_set_prio_tc_map.exit_crit_edge
  %201 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %181, align 1
  %conv.i107.1 = zext i8 %202 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.1, i32 %conv1.i)
  %cmp.not.i.1 = icmp slt i32 %conv.i107.1, %conv1.i
  br i1 %cmp.not.i.1, label %if.end.i110.1, label %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge

netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge: ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.1

if.end.i110.1:                                    ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.1 = and i8 %202, 15
  %arrayidx.i109.1 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 1
  %203 = ptrtoint ptr %arrayidx.i109.1 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %and.i108.1, ptr %arrayidx.i109.1, align 1
  br label %netdev_set_prio_tc_map.exit.1

netdev_set_prio_tc_map.exit.1:                    ; preds = %if.end.i110.1, %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge
  %204 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %182, align 2
  %conv.i107.2 = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.2, i32 %conv1.i)
  %cmp.not.i.2 = icmp slt i32 %conv.i107.2, %conv1.i
  br i1 %cmp.not.i.2, label %if.end.i110.2, label %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge

netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.2

if.end.i110.2:                                    ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.2 = and i8 %205, 15
  %arrayidx.i109.2 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 2
  %206 = ptrtoint ptr %arrayidx.i109.2 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %and.i108.2, ptr %arrayidx.i109.2, align 1
  br label %netdev_set_prio_tc_map.exit.2

netdev_set_prio_tc_map.exit.2:                    ; preds = %if.end.i110.2, %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge
  %207 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %183, align 1
  %conv.i107.3 = zext i8 %208 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.3, i32 %conv1.i)
  %cmp.not.i.3 = icmp slt i32 %conv.i107.3, %conv1.i
  br i1 %cmp.not.i.3, label %if.end.i110.3, label %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge

netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.3

if.end.i110.3:                                    ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.3 = and i8 %208, 15
  %arrayidx.i109.3 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 3
  %209 = ptrtoint ptr %arrayidx.i109.3 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %and.i108.3, ptr %arrayidx.i109.3, align 1
  br label %netdev_set_prio_tc_map.exit.3

netdev_set_prio_tc_map.exit.3:                    ; preds = %if.end.i110.3, %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge
  %210 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %184, align 4
  %conv.i107.4 = zext i8 %211 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.4, i32 %conv1.i)
  %cmp.not.i.4 = icmp slt i32 %conv.i107.4, %conv1.i
  br i1 %cmp.not.i.4, label %if.end.i110.4, label %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge

netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.4

if.end.i110.4:                                    ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.4 = and i8 %211, 15
  %arrayidx.i109.4 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 4
  %212 = ptrtoint ptr %arrayidx.i109.4 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %and.i108.4, ptr %arrayidx.i109.4, align 1
  br label %netdev_set_prio_tc_map.exit.4

netdev_set_prio_tc_map.exit.4:                    ; preds = %if.end.i110.4, %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge
  %213 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %185, align 1
  %conv.i107.5 = zext i8 %214 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.5, i32 %conv1.i)
  %cmp.not.i.5 = icmp slt i32 %conv.i107.5, %conv1.i
  br i1 %cmp.not.i.5, label %if.end.i110.5, label %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge

netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.5

if.end.i110.5:                                    ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.5 = and i8 %214, 15
  %arrayidx.i109.5 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 5
  %215 = ptrtoint ptr %arrayidx.i109.5 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %and.i108.5, ptr %arrayidx.i109.5, align 1
  br label %netdev_set_prio_tc_map.exit.5

netdev_set_prio_tc_map.exit.5:                    ; preds = %if.end.i110.5, %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge
  %216 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %186, align 2
  %conv.i107.6 = zext i8 %217 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.6, i32 %conv1.i)
  %cmp.not.i.6 = icmp slt i32 %conv.i107.6, %conv1.i
  br i1 %cmp.not.i.6, label %if.end.i110.6, label %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge

netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.6

if.end.i110.6:                                    ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.6 = and i8 %217, 15
  %arrayidx.i109.6 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 6
  %218 = ptrtoint ptr %arrayidx.i109.6 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %and.i108.6, ptr %arrayidx.i109.6, align 1
  br label %netdev_set_prio_tc_map.exit.6

netdev_set_prio_tc_map.exit.6:                    ; preds = %if.end.i110.6, %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge
  %219 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %187, align 1
  %conv.i107.7 = zext i8 %220 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i107.7, i32 %conv1.i)
  %cmp.not.i.7 = icmp slt i32 %conv.i107.7, %conv1.i
  br i1 %cmp.not.i.7, label %if.end.i110.7, label %netdev_set_prio_tc_map.exit.6.netdev_set_prio_tc_map.exit.7_crit_edge

netdev_set_prio_tc_map.exit.6.netdev_set_prio_tc_map.exit.7_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_set_prio_tc_map.exit.7

if.end.i110.7:                                    ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #14
  %and.i108.7 = and i8 %220, 15
  %arrayidx.i109.7 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 7
  %221 = ptrtoint ptr %arrayidx.i109.7 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %and.i108.7, ptr %arrayidx.i109.7, align 1
  br label %netdev_set_prio_tc_map.exit.7

netdev_set_prio_tc_map.exit.7:                    ; preds = %if.end.i110.7, %netdev_set_prio_tc_map.exit.6.netdev_set_prio_tc_map.exit.7_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prio_tc) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prio_type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bwg_id) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %refill) #12
  br label %if.end39

if.end39:                                         ; preds = %netdev_set_prio_tc_map.exit.7, %if.end9.if.end39_crit_edge
  %ret.0 = phi i8 [ 0, %netdev_set_prio_tc_map.exit.7 ], [ 1, %if.end9.if.end39_crit_edge ]
  %222 = ptrtoint ptr %dcb_set_bitmap to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %dcb_set_bitmap, align 1
  %224 = and i8 %223, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool43.not = icmp eq i8 %224, 0
  br i1 %tobool43.not, label %if.end39.if.end53_crit_edge, label %if.then44

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then44:                                        ; preds = %if.end39
  %225 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %pfc_mode_enable.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool45.not = icmp eq i8 %226, 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en) #12
  %227 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 -1, ptr %pfc_en, align 1, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prio_tc47) #12
  %228 = ptrtoint ptr %prio_tc47 to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 -1, ptr %prio_tc47, align 8
  call void @ixgbe_dcb_unpack_map(ptr noundef %dcb_cfg1, i32 noundef 0, ptr noundef nonnull %prio_tc47) #12
  call void @ixgbe_dcb_unpack_pfc(ptr noundef %dcb_cfg1, ptr noundef nonnull %pfc_en) #12
  %229 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %pfc_en, align 1
  %call50 = call i32 @ixgbe_dcb_hw_pfc_config(ptr noundef %hw2, i8 noundef zeroext %230, ptr noundef nonnull %prio_tc47) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prio_tc47) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en) #12
  br label %if.end52

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %fc_enable = getelementptr i8, ptr %netdev, i32 6744
  %231 = ptrtoint ptr %fc_enable to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %fc_enable, align 4
  %call51 = call i32 %232(ptr noundef %hw2) #12
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then46
  call void @ixgbe_set_rx_drop_en(ptr noundef %add.ptr.i) #12
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end39.if.end53_crit_edge
  %ret.1 = phi i8 [ 2, %if.end52 ], [ %ret.0, %if.end39.if.end53_crit_edge ]
  %233 = ptrtoint ptr %dcb_set_bitmap to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %dcb_set_bitmap, align 1
  %235 = and i8 %234, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool57.not = icmp eq i8 %235, 0
  br i1 %tobool57.not, label %if.end53.if.end63_crit_edge, label %if.then58

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #12
  %236 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 35078, ptr %app, align 4
  %call59 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #12
  %237 = call i8 @llvm.cttz.i8(i8 %call59, i1 true), !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call59)
  %iszero = icmp eq i8 %call59, 0
  %conv61 = select i1 %iszero, i8 -1, i8 %237
  %up62 = getelementptr i8, ptr %netdev, i32 67244
  %238 = ptrtoint ptr %up62 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv61, ptr %up62, align 4
  call fastcc void @ixgbe_dcbnl_devreset(ptr noundef %netdev)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end53.if.end63_crit_edge
  %ret.2 = phi i8 [ 0, %if.then58 ], [ %ret.1, %if.end53.if.end63_crit_edge ]
  %239 = ptrtoint ptr %dcb_set_bitmap to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %dcb_set_bitmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %ixgbe_copy_dcb_cfg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %ret.2, %if.end63 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %ixgbe_copy_dcb_cfg.exit.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_getcap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef writeonly %cap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %capid, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge16
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %entry.sw.epilog_crit_edge17
    i32 8, label %sw.bb6
    i32 9, label %sw.bb7
  ]

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 4654
  %1 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dcbx_cap, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge16, %entry.sw.epilog_crit_edge17
  %.sink = phi i8 [ 0, %sw.default ], [ %2, %sw.bb7 ], [ 0, %sw.bb6 ], [ -128, %sw.bb4 ], [ -128, %sw.bb3 ], [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge16 ], [ 1, %entry.sw.epilog_crit_edge17 ]
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %cap, align 1
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_dcbnl_getnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, ptr nocapture noundef writeonly %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = zext i32 %tcid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %tcid, label %if.then.cleanup_crit_edge [
    i32 2, label %if.then.if.end_crit_edge
    i32 3, label %sw.bb1
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sw.bb1, %if.then.if.end_crit_edge
  %.sink = phi i32 [ 4069, %sw.bb1 ], [ 4068, %if.then.if.end_crit_edge ]
  %num_tcs = getelementptr i8, ptr %netdev, i32 %.sink
  %3 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %3)
  %storemerge = load i8, ptr %num_tcs, align 1
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %storemerge, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbe_dcbnl_setnumtcs(ptr nocapture noundef readnone %netdev, i32 noundef %tcid, i8 noundef zeroext %num) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc_mode_enable = getelementptr i8, ptr %netdev, i32 4344
  %0 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfc_mode_enable, align 4, !range !14
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbe_dcbnl_setpfcstate(ptr nocapture noundef writeonly %netdev, i8 noundef zeroext %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool = icmp ne i8 %state, 0
  %pfc_mode_enable = getelementptr i8, ptr %netdev, i32 4640
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %pfc_mode_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %pfc_mode_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_dcbnl_getapp(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #1 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #12
  %0 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %idtype, ptr %app, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %id, ptr %1, align 2
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 4654
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcbx_cap, align 2
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #12
  %conv2 = zext i8 %call1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_getdcbx(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 2
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ixgbe_dcbnl_setdcbx(ptr noundef %dev, i8 noundef zeroext %mode) #1 align 64 {
entry:
  %ets = alloca %struct.ieee_ets, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %ets) #12
  %0 = call ptr @memset(ptr %ets, i32 0, i32 59)
  %conv = zext i8 %mode to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %1 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %.not = icmp eq i32 %1, 12
  %and9 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond57 = or i1 %.not, %tobool10.not
  br i1 %or.cond57, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dcbx_cap = getelementptr i8, ptr %dev, i32 4654
  %2 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcbx_cap, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mode)
  %cmp = icmp eq i8 %3, %mode
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mode, ptr %dcbx_cap, align 2
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %5 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %ets_cap, align 1
  br i1 %tobool3.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %call21 = call i32 @ixgbe_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef nonnull %ets)
  %hw1.i = getelementptr i8, ptr %dev, i32 6528
  %6 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dcbx_cap, align 2
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then20.if.end36_crit_edge, label %if.end.i

if.then20.if.end36_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end.i:                                         ; preds = %if.then20
  %ixgbe_ieee_pfc.i = getelementptr i8, ptr %dev, i32 4052
  %9 = ptrtoint ptr %ixgbe_ieee_pfc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ixgbe_ieee_pfc.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 136) #15
  %12 = ptrtoint ptr %ixgbe_ieee_pfc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %ixgbe_ieee_pfc.i, align 4
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %if.then3.i.if.end36_crit_edge, label %if.then3.i.if.end18.i_crit_edge

if.then3.i.if.end18.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then3.i.if.end36_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end18.i:                                       ; preds = %if.then3.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %13 = ptrtoint ptr %ixgbe_ieee_pfc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ixgbe_ieee_pfc.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %14, align 8
  %pfc.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 1
  %fc_enable.i = getelementptr i8, ptr %dev, i32 6744
  %16 = call ptr @memset(ptr %pfc.sroa.6.0..sroa_idx, i32 0, i32 135)
  %17 = ptrtoint ptr %fc_enable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fc_enable.i, align 4
  %call17.i = call i32 %18(ptr noundef %hw1.i) #12
  call void @ixgbe_set_rx_drop_en(ptr noundef %add.ptr.i) #12
  br label %if.end36

if.else:                                          ; preds = %if.end15
  br i1 %tobool6.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dcb_set_bitmap = getelementptr i8, ptr %dev, i32 4653
  %19 = ptrtoint ptr %dcb_set_bitmap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dcb_set_bitmap, align 1
  %21 = or i8 %20, 30
  store i8 %21, ptr %dcb_set_bitmap, align 1
  %call30 = tail call zeroext i8 @ixgbe_dcbnl_set_all(ptr noundef %dev)
  br label %if.end36

if.else31:                                        ; preds = %if.else
  %call32 = call i32 @ixgbe_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef nonnull %ets)
  %hw1.i59 = getelementptr i8, ptr %dev, i32 6528
  %22 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dcbx_cap, align 2
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i61 = icmp eq i8 %24, 0
  br i1 %tobool.not.i61, label %if.else31.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge, label %if.end.i64

if.else31.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge: ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_dcbnl_ieee_setpfc.exit81

if.end.i64:                                       ; preds = %if.else31
  %ixgbe_ieee_pfc.i62 = getelementptr i8, ptr %dev, i32 4052
  %25 = ptrtoint ptr %ixgbe_ieee_pfc.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ixgbe_ieee_pfc.i62, align 4
  %tobool2.not.i63 = icmp eq ptr %26, null
  br i1 %tobool2.not.i63, label %if.then3.i67, label %if.end.i64.if.end18.i79_crit_edge

if.end.i64.if.end18.i79_crit_edge:                ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i79

if.then3.i67:                                     ; preds = %if.end.i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 136) #15
  %28 = ptrtoint ptr %ixgbe_ieee_pfc.i62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i65, ptr %ixgbe_ieee_pfc.i62, align 4
  %tobool7.not.i66 = icmp eq ptr %call7.i.i65, null
  br i1 %tobool7.not.i66, label %if.then3.i67.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge, label %if.then3.i67.if.end18.i79_crit_edge

if.then3.i67.if.end18.i79_crit_edge:              ; preds = %if.then3.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i79

if.then3.i67.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge: ; preds = %if.then3.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbe_dcbnl_ieee_setpfc.exit81

if.end18.i79:                                     ; preds = %if.then3.i67.if.end18.i79_crit_edge, %if.end.i64.if.end18.i79_crit_edge
  %29 = ptrtoint ptr %ixgbe_ieee_pfc.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ixgbe_ieee_pfc.i62, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %30, align 8
  %pfc.sroa.6.0..sroa_idx83 = getelementptr inbounds i8, ptr %30, i32 1
  %fc_enable.i75 = getelementptr i8, ptr %dev, i32 6744
  %32 = call ptr @memset(ptr %pfc.sroa.6.0..sroa_idx83, i32 0, i32 135)
  %33 = ptrtoint ptr %fc_enable.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fc_enable.i75, align 4
  %call17.i76 = call i32 %34(ptr noundef %hw1.i59) #12
  call void @ixgbe_set_rx_drop_en(ptr noundef %add.ptr.i) #12
  br label %ixgbe_dcbnl_ieee_setpfc.exit81

ixgbe_dcbnl_ieee_setpfc.exit81:                   ; preds = %if.end18.i79, %if.then3.i67.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge, %if.else31.ixgbe_dcbnl_ieee_setpfc.exit81_crit_edge
  %call34 = call i32 @ixgbe_setup_tc(ptr noundef %dev, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %phi.cmp = icmp ne i32 %call34, 0
  br label %if.end36

if.end36:                                         ; preds = %ixgbe_dcbnl_ieee_setpfc.exit81, %if.then26, %if.end18.i, %if.then3.i.if.end36_crit_edge, %if.then20.if.end36_crit_edge
  %err.0 = phi i1 [ false, %if.then26 ], [ %phi.cmp, %ixgbe_dcbnl_ieee_setpfc.exit81 ], [ false, %if.then20.if.end36_crit_edge ], [ false, %if.then3.i.if.end36_crit_edge ], [ false, %if.end18.i ]
  %conv38 = zext i1 %err.0 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv38, %if.end36 ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %ets) #12
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_read_rtrup2tc(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_setup_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_dcbnl_devreset(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state = getelementptr i8, ptr %dev, i32 2832
  %call123 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool.not24 = icmp eq i32 %call123, 0
  br i1 %tobool.not24, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_stop, align 4
  %call3 = tail call i32 %5(ptr noundef %dev) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @ixgbe_clear_interrupt_scheme(ptr noundef %add.ptr.i) #12
  %call4 = tail call i32 @ixgbe_init_interrupt_scheme(ptr noundef %add.ptr.i) #12
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i21 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i21)
  %tobool.i22.not = icmp eq i32 %and1.i.i21, 0
  br i1 %tobool.i22.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %netdev_ops7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops7, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_open, align 4
  %call8 = tail call i32 %11(ptr noundef %dev) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_hw_ets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_clear_interrupt_scheme(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_interrupt_scheme(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_hw_pfc_config(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_set_rx_drop_en(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_calculate_tc_credits(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_refill(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_max(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_bwgid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_prio(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_dcb_hw_ets_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_dcb_unpack_pfc(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ixgbe_dcbnl_ops, !1, !"ixgbe_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c", i32 755, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2157275284}
!12 = !{i64 5031615}
!13 = !{i32 0, i32 33}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 9}
