; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_ddp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_ddp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i40e_profile_info = type { i32, %struct.i40e_ddp_version, i8, [7 x i8], [32 x i8] }
%struct.i40e_ddp_version = type { i8, i8, i8, i8 }
%struct.i40e_vsi = type { ptr, [128 x i32], i8, i8, i32, [1 x i32], i32, %struct.spinlock, [256 x %struct.hlist_head], i8, %struct.rtnl_link_stats64, %struct.rtnl_link_stats64, %struct.i40e_eth_stats, %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, %struct.tc_mqprio_qopt_offload, %struct.i40e_tc_configuration, %struct.i40e_aqc_vsi_properties_data, i16, i8, [8 x i8], [8 x i16], [8 x i8], ptr, i16, i16, ptr, i8, i32, i16, i16, i16, i8, i16, %struct.list_head, [8 x i16], [4 x i32], %struct.list_head, i32, ptr, ptr, ptr, [88 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.i40e_tc_configuration = type { i8, i8, [8 x %struct.i40e_tc_info] }
%struct.i40e_tc_info = type { i16, i16, i8 }
%struct.i40e_aqc_vsi_properties_data = type { i16, i16, [2 x i8], i8, i8, i16, i16, i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, [3 x i8], i8, i8, i32, [8 x i8], [8 x i16], i16, i16, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.i40e_package_header = type { %struct.i40e_ddp_version, i32, [1 x i32] }
%struct.i40e_metadata_segment = type { %struct.i40e_generic_seg_header, %struct.i40e_ddp_version, i32, [32 x i8] }
%struct.i40e_generic_seg_header = type { i32, %struct.i40e_ddp_version, i32, [32 x i8] }
%struct.i40e_profile_segment = type { %struct.i40e_generic_seg_header, %struct.i40e_ddp_version, [32 x i8], i32, [1 x %struct.i40e_device_id_entry] }
%struct.i40e_device_id_entry = type { i32, i32 }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.209, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.209 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.210 }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.i40e_ddp_profile_list = type { i32, [0 x %struct.i40e_profile_info] }
%struct.i40e_profile_section_header = type { i16, i16, %struct.anon.217 }
%struct.anon.217 = type { i32, i32, i32 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.199, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.199 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.i40e_ddp_old_profile_list = type { %struct.list_head, i32, [0 x i8] }

@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to find metadata segment in DDP recipe.\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to find profile segment in DDP recipe.\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to fetch loaded profiles.\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DDP profile already loaded.\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DDP profile overlaps with existing one.\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DDP profile for deletion does not exist.\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Profile is not supported by the device.\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write DDP profile.\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to remove DDP profile.\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add DDP profile info.\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to restore DDP profile info.\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Requested firmware region is not recognized by this driver.\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Any DDP operation is allowed only on Phy0 NIC interface\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DDP recipe file request failed.\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to allocate memory for previous DDP profile data.\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"New profile loaded but roll-back will be impossible.\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"There is no DDP profile to restore.\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported DDP profile version %u.%u.%u.%u\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid DDP profile - size is too small.\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid DDP profile - too many segments\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid DDP profile %u segment alignment\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid DDP profile %u segment offset\00", [58 x i8] zeroinitializer }, align 32
@str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"intel/i40e/ddp/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 294, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 302, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 318, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 323, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 332, i32 23 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 338, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 349, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 352, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 358, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 368, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 375, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 425, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 429, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 436, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 449, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 461, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 462, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 476, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 215, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 225, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 231, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 239, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_ddp.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 245, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @str], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_ddp_load(ptr noundef %netdev, ptr noundef %data, i32 noundef %size, i1 noundef zeroext %is_add) local_unnamed_addr #0 align 64 {
entry:
  %offset.i153 = alloca i32, align 4
  %info.i154 = alloca i32, align 4
  %offset.i = alloca i32, align 4
  %info.i = alloca i32, align 4
  %buff.i139 = alloca [772 x i8], align 4
  %buff.i = alloca [772 x i8], align 4
  %profile_info_sec = alloca [64 x i8], align 2
  %pinfo = alloca %struct.i40e_profile_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %profile_info_sec) #8
  %0 = call ptr @memset(ptr %profile_info_sec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pinfo) #8
  %1 = getelementptr inbounds i8, ptr %pinfo, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4, !annotation !61
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %4, i32 0, i32 57
  %5 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i, label %if.end13.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %8 to i32
  %ver.sroa.5.0.version3.sroa_idx.i = getelementptr inbounds i8, ptr %data, i32 1
  %9 = ptrtoint ptr %ver.sroa.5.0.version3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %ver.sroa.5.0.copyload.i = load i8, ptr %ver.sroa.5.0.version3.sroa_idx.i, align 1
  %ver.sroa.7.0.version3.sroa_idx.i = getelementptr inbounds i8, ptr %data, i32 2
  %10 = ptrtoint ptr %ver.sroa.7.0.version3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %ver.sroa.7.0.copyload.i = load i8, ptr %ver.sroa.7.0.version3.sroa_idx.i, align 2
  %ver.sroa.9.0.version3.sroa_idx.i = getelementptr inbounds i8, ptr %data, i32 3
  %11 = ptrtoint ptr %ver.sroa.9.0.version3.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %ver.sroa.9.0.copyload.i = load i8, ptr %ver.sroa.9.0.version3.sroa_idx.i, align 1
  %conv6.i = zext i8 %ver.sroa.5.0.copyload.i to i32
  %conv7.i = zext i8 %ver.sroa.7.0.copyload.i to i32
  %conv8.i = zext i8 %ver.sroa.9.0.copyload.i to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i) #11
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %size)
  %cmp14.i = icmp ult i32 %size, 104
  br i1 %cmp14.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %segment_count.i = getelementptr inbounds %struct.i40e_package_header, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %segment_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %segment_count.i, align 4
  %add.i = shl i32 %13, 2
  %mul.i = add i32 %add.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %size)
  %cmp18.i = icmp ugt i32 %mul.i, %size
  br i1 %cmp18.i, label %if.then20.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2362.not.i = icmp eq i32 %13, 0
  br i1 %cmp2362.not.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.23) #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %segment.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.i40e_package_header, ptr %data, i32 0, i32 2, i32 %segment.063.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.24, i32 noundef %segment.063.i) #11
  br label %cleanup

if.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %15)
  %cmp29.i = icmp ule i32 %mul.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %size)
  %cmp31.not.i = icmp ult i32 %15, %size
  %or.cond.i = and i1 %cmp29.i, %cmp31.not.i
  br i1 %or.cond.i, label %for.inc.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.25, i32 noundef %segment.063.i) #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.end28.i
  %inc.i = add nuw i32 %segment.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge
  %call5 = tail call ptr @i40e_find_segment_in_package(i32 noundef 1, ptr noundef nonnull %data) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %track_id8 = getelementptr inbounds %struct.i40e_metadata_segment, ptr %call5, i32 0, i32 2
  %16 = ptrtoint ptr %track_id8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %track_id8, align 4
  %call9 = tail call ptr @i40e_find_segment_in_package(i32 noundef 17, ptr noundef nonnull %data) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %pinfo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pinfo, align 4
  %version = getelementptr inbounds %struct.i40e_profile_info, ptr %pinfo, i32 0, i32 1
  %version14 = getelementptr inbounds %struct.i40e_profile_segment, ptr %call9, i32 0, i32 1
  %19 = ptrtoint ptr %version14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version14, align 4
  %21 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %version, align 4
  %spec.select = select i1 %is_add, i8 1, i8 2
  %22 = getelementptr inbounds %struct.i40e_profile_info, ptr %pinfo, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select, ptr %22, align 4
  %name = getelementptr inbounds %struct.i40e_profile_info, ptr %pinfo, i32 0, i32 4
  %name19 = getelementptr inbounds %struct.i40e_profile_segment, ptr %call9, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %name, ptr %name19, i32 32)
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 772, ptr nonnull %buff.i) #8
  %25 = call ptr @memset(ptr %buff.i, i32 255, i32 772)
  %call.i = call i32 @i40e_aq_get_ddp_list(ptr noundef %hw, ptr noundef nonnull %buff.i, i16 noundef zeroext 772, i8 noundef zeroext 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i132 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i132, label %for.cond.preheader.i133, label %if.then23

for.cond.preheader.i133:                          ; preds = %if.end12
  %26 = ptrtoint ptr %buff.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp11.not.i = icmp eq i32 %27, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i133.if.end24_crit_edge, label %for.cond.preheader.i133.for.body.i135_crit_edge

for.cond.preheader.i133.for.body.i135_crit_edge:  ; preds = %for.cond.preheader.i133
  br label %for.body.i135

for.cond.preheader.i133.if.end24_crit_edge:       ; preds = %for.cond.preheader.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.body.i135:                                    ; preds = %for.inc.i138.for.body.i135_crit_edge, %for.cond.preheader.i133.for.body.i135_crit_edge
  %i.012.i = phi i32 [ %inc.i136, %for.inc.i138.for.body.i135_crit_edge ], [ 0, %for.cond.preheader.i133.for.body.i135_crit_edge ]
  %arrayidx.i134 = getelementptr %struct.i40e_ddp_profile_list, ptr %buff.i, i32 0, i32 1, i32 %i.012.i
  %28 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %29)
  %cmp.i.i = icmp eq i32 %17, %29
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i135.for.inc.i138_crit_edge

for.body.i135.for.inc.i138_crit_edge:             ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i138

land.lhs.true.i.i:                                ; preds = %for.body.i135
  %version2.i.i = getelementptr %struct.i40e_ddp_profile_list, ptr %buff.i, i32 0, i32 1, i32 %i.012.i, i32 1
  %30 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %30)
  %lhsv = load i32, ptr %version, align 4
  %31 = ptrtoint ptr %version2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %rhsv = load i32, ptr %version2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lhsv, i32 %rhsv)
  %.not = icmp eq i32 %lhsv, %rhsv
  br i1 %.not, label %i40e_ddp_profiles_eq.exit.i, label %land.lhs.true.i.i.for.inc.i138_crit_edge

land.lhs.true.i.i.for.inc.i138_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i138

i40e_ddp_profiles_eq.exit.i:                      ; preds = %land.lhs.true.i.i
  %name3.i.i = getelementptr %struct.i40e_ddp_profile_list, ptr %buff.i, i32 0, i32 1, i32 %i.012.i, i32 4
  %bcmp10.i.i = call i32 @bcmp(ptr noundef dereferenceable(32) %name, ptr noundef dereferenceable(32) %name3.i.i, i32 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp10.i.i)
  %tobool5.not.i.i = icmp eq i32 %bcmp10.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end24.thread, label %i40e_ddp_profiles_eq.exit.i.for.inc.i138_crit_edge

i40e_ddp_profiles_eq.exit.i.for.inc.i138_crit_edge: ; preds = %i40e_ddp_profiles_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i138

for.inc.i138:                                     ; preds = %i40e_ddp_profiles_eq.exit.i.for.inc.i138_crit_edge, %land.lhs.true.i.i.for.inc.i138_crit_edge, %for.body.i135.for.inc.i138_crit_edge
  %inc.i136 = add nuw i32 %i.012.i, 1
  %exitcond.not.i137 = icmp eq i32 %inc.i136, %27
  br i1 %exitcond.not.i137, label %for.inc.i138.if.end24_crit_edge, label %for.inc.i138.for.body.i135_crit_edge

for.inc.i138.for.body.i135_crit_edge:             ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i135

for.inc.i138.if.end24_crit_edge:                  ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end24:                                         ; preds = %for.inc.i138.if.end24_crit_edge, %for.cond.preheader.i133.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i) #8
  br i1 %is_add, label %if.end29, label %if.then40

if.end24.thread:                                  ; preds = %i40e_ddp_profiles_eq.exit.i
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i) #8
  br i1 %is_add, label %if.then28, label %if.else53

if.then28:                                        ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 772, ptr nonnull %buff.i139) #8
  %32 = call ptr @memset(ptr %buff.i139, i32 255, i32 772)
  %call.i140 = call i32 @i40e_aq_get_ddp_list(ptr noundef %hw, ptr noundef nonnull %buff.i139, i16 noundef zeroext 772, i8 noundef zeroext 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i141, label %for.cond.preheader.i142, label %if.then33

for.cond.preheader.i142:                          ; preds = %if.end29
  %33 = ptrtoint ptr %buff.i139 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buff.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp14.not.i = icmp eq i32 %34, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i142.if.then44.critedge_crit_edge, label %for.body.lr.ph.i143

for.cond.preheader.i142.if.then44.critedge_crit_edge: ; preds = %for.cond.preheader.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.critedge

for.body.lr.ph.i143:                              ; preds = %for.cond.preheader.i142
  %and3.i.i = lshr i32 %17, 16
  %trunc.i.i = trunc i32 %and3.i.i to i8
  %conv6.i.i = and i32 %and3.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trunc.i.i)
  %cond.i = icmp eq i8 %trunc.i.i, 0
  br i1 %cond.i, label %for.body.lr.ph.i143.if.then36_crit_edge, label %for.body.preheader.i

for.body.lr.ph.i143.if.then36_crit_edge:          ; preds = %for.body.lr.ph.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.body.preheader.i:                             ; preds = %for.body.lr.ph.i143
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %trunc.i.i)
  %cond19.i = icmp eq i8 %trunc.i.i, -1
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.inc.i149.for.body.i144_crit_edge, %for.body.preheader.i
  %i.015.i = phi i32 [ %inc.i147, %for.inc.i149.for.body.i144_crit_edge ], [ 0, %for.body.preheader.i ]
  br i1 %cond19.i, label %for.body.i144.for.inc.i149_crit_edge, label %lor.lhs.false.i.i

for.body.i144.for.inc.i149_crit_edge:             ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i149

lor.lhs.false.i.i:                                ; preds = %for.body.i144
  %arrayidx.i145 = getelementptr %struct.i40e_ddp_profile_list, ptr %buff.i139, i32 0, i32 1, i32 %i.015.i
  %35 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i145, align 4
  %and.i.i = lshr i32 %36, 16
  %conv1.i.i = and i32 %and.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv1.i.i)
  %cmp10.i.i = icmp ne i32 %conv1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv6.i.i)
  %cmp14.i.i = icmp ne i32 %conv1.i.i, %conv6.i.i
  %or.cond.i146 = select i1 %cmp10.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond.i146, label %lor.lhs.false.i.i.if.then36_crit_edge, label %lor.lhs.false.i.i.for.inc.i149_crit_edge

lor.lhs.false.i.i.for.inc.i149_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i149

lor.lhs.false.i.i.if.then36_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

for.inc.i149:                                     ; preds = %lor.lhs.false.i.i.for.inc.i149_crit_edge, %for.body.i144.for.inc.i149_crit_edge
  %inc.i147 = add nuw i32 %i.015.i, 1
  %exitcond.not.i148 = icmp eq i32 %inc.i147, %34
  br i1 %exitcond.not.i148, label %for.inc.i149.if.then44.critedge_crit_edge, label %for.inc.i149.for.body.i144_crit_edge

for.inc.i149.for.body.i144_crit_edge:             ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i144

for.inc.i149.if.then44.critedge_crit_edge:        ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.critedge

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i139) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.then36:                                        ; preds = %lor.lhs.false.i.i.if.then36_crit_edge, %for.body.lr.ph.i143.if.then36_crit_edge
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i139) #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.then44.critedge:                               ; preds = %for.inc.i149.if.then44.critedge_crit_edge, %for.cond.preheader.i142.if.then44.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 772, ptr nonnull %buff.i139) #8
  %call46 = call i32 @i40e_write_profile(ptr noundef %hw, ptr noundef nonnull %call9, i32 noundef %17) #8
  %37 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call46, label %if.end51 [
    i32 0, label %if.then61.critedge
    i32 -11, label %if.then50
  ]

if.then50:                                        ; preds = %if.then44.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end51:                                         ; preds = %if.then44.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.else53:                                        ; preds = %if.end24.thread
  %call55 = call i32 @i40e_rollback_profile(ptr noundef %hw, ptr noundef nonnull %call9, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else68, label %if.then57

if.then57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.then61.critedge:                               ; preds = %if.then44.critedge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #8
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #8
  %39 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %info.i, align 4
  %40 = ptrtoint ptr %profile_info_sec to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %profile_info_sec, align 4
  %data_end.i = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 1
  %41 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 64, ptr %data_end.i, align 2
  %section.i = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2
  %42 = ptrtoint ptr %section.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %section.i, align 4
  %offset2.i = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %offset2.i, align 4
  %size.i = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 48, ptr %size.i, align 4
  %add.ptr.i151 = getelementptr inbounds i8, ptr %profile_info_sec, i32 16
  %45 = ptrtoint ptr %add.ptr.i151 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %17, ptr %add.ptr.i151, align 4
  %version.i = getelementptr inbounds i8, ptr %profile_info_sec, i32 20
  %46 = ptrtoint ptr %version14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version14, align 4
  %48 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %version.i, align 4
  %op.i = getelementptr inbounds i8, ptr %profile_info_sec, i32 24
  %49 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %op.i, align 4
  %reserved.i = getelementptr inbounds i8, ptr %profile_info_sec, i32 25
  %50 = call ptr @memset(ptr %reserved.i, i32 0, i32 7)
  %name.i = getelementptr inbounds i8, ptr %profile_info_sec, i32 32
  %51 = call ptr @memcpy(ptr %name.i, ptr %name19, i32 32)
  %call.i152 = call i32 @i40e_aq_write_ddp(ptr noundef %hw, ptr noundef nonnull %profile_info_sec, i16 noundef zeroext 64, i32 noundef %17, ptr noundef nonnull %offset.i, ptr noundef nonnull %info.i, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool65.not = icmp eq i32 %call.i152, 0
  br i1 %tobool65.not, label %if.then61.critedge.cleanup_crit_edge, label %if.then66

if.then61.critedge.cleanup_crit_edge:             ; preds = %if.then61.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then66:                                        ; preds = %if.then61.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.else68:                                        ; preds = %if.else53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i153) #8
  %52 = ptrtoint ptr %offset.i153 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %offset.i153, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i154) #8
  %53 = ptrtoint ptr %info.i154 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %info.i154, align 4
  %54 = ptrtoint ptr %profile_info_sec to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %profile_info_sec, align 4
  %data_end.i155 = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 1
  %55 = ptrtoint ptr %data_end.i155 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 64, ptr %data_end.i155, align 2
  %section.i156 = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2
  %56 = ptrtoint ptr %section.i156 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %section.i156, align 4
  %offset2.i157 = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %offset2.i157 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %offset2.i157, align 4
  %size.i158 = getelementptr inbounds %struct.i40e_profile_section_header, ptr %profile_info_sec, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %size.i158 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 48, ptr %size.i158, align 4
  %add.ptr.i159 = getelementptr inbounds i8, ptr %profile_info_sec, i32 16
  %59 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %17, ptr %add.ptr.i159, align 4
  %version.i160 = getelementptr inbounds i8, ptr %profile_info_sec, i32 20
  %60 = ptrtoint ptr %version14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %version14, align 4
  %62 = ptrtoint ptr %version.i160 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %version.i160, align 4
  %op.i162 = getelementptr inbounds i8, ptr %profile_info_sec, i32 24
  %63 = ptrtoint ptr %op.i162 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %op.i162, align 4
  %reserved.i163 = getelementptr inbounds i8, ptr %profile_info_sec, i32 25
  %64 = call ptr @memset(ptr %reserved.i163, i32 0, i32 7)
  %name.i164 = getelementptr inbounds i8, ptr %profile_info_sec, i32 32
  %65 = call ptr @memcpy(ptr %name.i164, ptr %name19, i32 32)
  %call.i166 = call i32 @i40e_aq_write_ddp(ptr noundef %hw, ptr noundef nonnull %profile_info_sec, i16 noundef zeroext 64, i32 noundef %17, ptr noundef nonnull %offset.i153, ptr noundef nonnull %info.i154, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i154) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i153) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool72.not = icmp eq i32 %call.i166, 0
  br i1 %tobool72.not, label %if.else68.cleanup_crit_edge, label %if.then73

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.else68.cleanup_crit_edge, %if.then66, %if.then61.critedge.cleanup_crit_edge, %if.then57, %if.end51, %if.then50, %if.then40, %if.then36, %if.then33, %if.then28, %if.then23, %if.then11, %if.then6, %if.then33.i, %if.then27.i, %if.then20.i, %if.then16.i, %if.then2.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then23 ], [ -22, %if.then28 ], [ -5, %if.then33 ], [ -22, %if.then36 ], [ -1, %if.then50 ], [ -5, %if.end51 ], [ -5, %if.then66 ], [ -5, %if.then73 ], [ -5, %if.then57 ], [ -22, %if.then40 ], [ -22, %if.then11 ], [ -22, %if.then6 ], [ 0, %if.else68.cleanup_crit_edge ], [ 0, %if.then61.critedge.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %if.then16.i ], [ -22, %if.then20.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then33.i ], [ -22, %if.then27.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pinfo) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %profile_info_sec) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i40e_find_segment_in_package(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_write_profile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_rollback_profile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_ddp_flash(ptr noundef %netdev, ptr nocapture noundef readonly %flash) local_unnamed_addr #0 align 64 {
entry:
  %ddp_config = alloca ptr, align 4
  %profile_name = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ddp_config) #8
  %0 = ptrtoint ptr %ddp_config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ddp_config, align 4, !annotation !61
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %back = getelementptr inbounds %struct.i40e_vsi, ptr %2, i32 0, i32 57
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 8
  %region = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 1
  %5 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %6)
  %cmp.not = icmp eq i32 %6, 100
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12) #11
  br label %cleanup44

if.end:                                           ; preds = %entry
  %func = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 1, i32 4, i32 3
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp2.not = icmp eq i16 %8, 0
  br i1 %cmp2.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.13) #11
  br label %cleanup44

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 2
  %call6 = tail call i32 @strncmp(ptr noundef %data, ptr noundef nonnull dereferenceable(2) @.str.14, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.else35, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %profile_name) #8
  %arrayidx = getelementptr inbounds [80 x i8], ptr %profile_name, i32 0, i32 79
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %10 = call ptr @memcpy(ptr %profile_name, ptr @str, i32 79)
  %call15 = call ptr @strncat(ptr noundef nonnull %profile_name, ptr noundef %data, i32 noundef 64)
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %call17 = call i32 @request_firmware(ptr noundef nonnull %ddp_config, ptr noundef nonnull %profile_name, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then9
  %11 = ptrtoint ptr %ddp_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddp_config, align 4
  %data20 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data20, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %call21 = call i32 @i40e_ddp_load(ptr noundef %netdev, ptr noundef %14, i32 noundef %16, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end8.i.i, label %if.end19.cleanup.thread_crit_edge

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end8.i.i:                                      ; preds = %if.end19
  %17 = ptrtoint ptr %ddp_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddp_config, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add = add i32 %20, 12
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.17) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.18) #11
  br label %cleanup.thread

if.else:                                          ; preds = %if.end8.i.i
  %old_ddp_buf = getelementptr inbounds %struct.i40e_ddp_old_profile_list, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %ddp_config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddp_config, align 4
  %data29 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data29, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %27 = call ptr @memcpy(ptr %old_ddp_buf, ptr %24, i32 %26)
  %28 = load i32, ptr %22, align 4
  %old_ddp_size = getelementptr inbounds %struct.i40e_ddp_old_profile_list, ptr %call9.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %old_ddp_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %old_ddp_size, align 8
  %ddp_old_prof = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 126
  %30 = ptrtoint ptr %ddp_old_prof to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddp_old_prof, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %ddp_old_prof, ptr noundef %31) #8
  br i1 %call.i.i, label %if.end.i.i68, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end.i.i68:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i.i, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ddp_old_prof, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %ddp_old_prof to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call9.i.i, ptr %ddp_old_prof, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.i68, %if.else.cleanup.thread_crit_edge, %if.then27, %if.end19.cleanup.thread_crit_edge
  %36 = ptrtoint ptr %ddp_config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ddp_config, align 4
  call void @release_firmware(ptr noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %profile_name) #8
  br label %cleanup44

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.16) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %profile_name) #8
  br label %cleanup44

if.else35:                                        ; preds = %if.end5
  %ddp_old_prof36 = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 126
  %38 = ptrtoint ptr %ddp_old_prof36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %ddp_old_prof36, align 4
  %cmp.i.not = icmp eq ptr %39, %ddp_old_prof36
  br i1 %cmp.i.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else35
  %vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 74
  %40 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vsi.i, align 8
  %lan_vsi.i = getelementptr inbounds %struct.i40e_pf, ptr %4, i32 0, i32 71
  %42 = ptrtoint ptr %lan_vsi.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %lan_vsi.i, align 8
  %idxprom.i = zext i16 %43 to i32
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 128
  %48 = ptrtoint ptr %ddp_old_prof36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %ddp_old_prof36, align 4
  %cmp.i.not.i = icmp eq ptr %49, %ddp_old_prof36
  br i1 %cmp.i.not.i, label %if.then39.cleanup44_crit_edge, label %if.then.i

if.then39.cleanup44_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.then.i:                                        ; preds = %if.then39
  %old_ddp_buf.i = getelementptr inbounds %struct.i40e_ddp_old_profile_list, ptr %49, i32 0, i32 2
  %old_ddp_size.i = getelementptr inbounds %struct.i40e_ddp_old_profile_list, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %old_ddp_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %old_ddp_size.i, align 4
  %call4.i = tail call i32 @i40e_ddp_load(ptr noundef %47, ptr noundef %old_ddp_buf.i, i32 noundef %51, i1 noundef zeroext false) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %49) #8
  br i1 %call.i.i.i, label %if.end.i.i.i69, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i69:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %49, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i69, %if.then.i.list_del.exit.i_crit_edge
  %58 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %49) #8
  br label %cleanup44

if.else41:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.19) #11
  br label %cleanup44

cleanup44:                                        ; preds = %if.else41, %list_del.exit.i, %if.then39.cleanup44_crit_edge, %cleanup, %cleanup.thread, %if.then4, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ -22, %if.then4 ], [ %call17, %cleanup ], [ -2, %if.else41 ], [ %call21, %cleanup.thread ], [ 0, %if.then39.cleanup44_crit_edge ], [ %call4.i, %list_del.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ddp_config) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_ddp_list(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_write_ddp(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 286, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 294, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 302, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 318, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 323, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 332, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 338, i32 8}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 349, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 352, i32 23}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 358, i32 23}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 368, i32 23}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 375, i32 23}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 425, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 429, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 436, i32 27}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 442, i32 25}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 449, i32 23}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 461, i32 25}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 462, i32 25}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 476, i32 24}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 215, i32 22}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 220, i32 22}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 225, i32 22}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 231, i32 22}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 239, i32 8}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ddp.c", i32 245, i32 8}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
