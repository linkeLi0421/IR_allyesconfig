; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.hwrm_func_cfg_input = type { i16, i16, i16, i16, i64, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16, [4 x i32], i32, i32, i16, i8, i8, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, [4 x i8] }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.hwrm_func_qcfg_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.hwrm_func_qcfg_output = type { i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i32, i32, i8, i8, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i16, i16, i8, [3 x i8], i32, i32, i16, i16, i16, [5 x i8], i8 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.hwrm_fwd_async_event_cmpl_input = type { i16, i16, i16, i16, i64, i16, [6 x i8], [4 x i32] }
%struct.hwrm_async_event_cmpl = type { i16, i16, i32, i8, i8, i16, i32 }
%struct.hwrm_func_buf_rgtr_input = type { i16, i16, i16, i16, i64, i32, i16, i16, i16, i16, i16, [2 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hwrm_func_vf_resource_cfg_input = type { i16, i16, i16, i16, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hwrm_func_vf_resc_free_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.hwrm_func_vf_cfg_input = type { i16, i16, i16, i16, i64, i32, i16, i16, i16, [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hwrm_exec_fwd_resp_input = type { i16, i16, i16, i16, i64, [26 x i32], i16, [6 x i8] }
%struct.hwrm_reject_fwd_resp_input = type { i16, i16, i16, i16, i64, [26 x i32], i16, [6 x i8] }
%struct.hwrm_cfa_l2_filter_alloc_input = type { i16, i16, i16, i16, i64, i32, i32, [6 x i8], i8, i8, [6 x i8], i16, i16, i16, i16, [2 x i8], [6 x i8], [2 x i8], [6 x i8], i16, i16, i16, i16, i8, i8, i32, i8, i8, i16, i16, i8, i8, i32, i64 }
%struct.hwrm_port_phy_qcfg_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.hwrm_fwd_resp_input = type { i16, i16, i16, i16, i64, i16, i16, i16, i8, i8, i64, [24 x i32] }
%struct.hwrm_func_qcaps_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.hwrm_func_qcaps_output = type { i16, i16, i16, i16, i16, i16, i32, [6 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i8, i8, i16, [7 x i8], i8 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid VF ethernet address\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"max tx rate %d exceed PF link speed for VF %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"min tx rate %d is invalid for VF %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid link option\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to reserve resources for SRIOV.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Only able to reserve resources for %d VFs.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unable to free %d VFs because some are assigned to VMs.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Not allow SRIOV if the irq mode is not MSIX\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Reject SRIOV config request since if is down!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Reject SRIOV config request when FW reset is in progress\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to configure SRIOV since some VFs are assigned to VMs.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VF MAC address %pM not approved by the PF\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vf ndo called though sriov is disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid VF id %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hwrm_fwd_async_event_cmpl failed. rc:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot enable VF's as all resources are used by PF\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Requested VFs %d, can enable %d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hwrm_fwd_err_resp failed. rc:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hwrm_exec_fw_resp failed. rc:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hwrm_fwd_resp failed. rc:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 15, i64 39, i64 144]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 230, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 305, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 311, i32 24 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 357, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 743, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 747, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 855, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 880, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 886, i32 20 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 891, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 899, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1180, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 59, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 63, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 51, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 807, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 812, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 968, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 991, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [51 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 945, i32 23 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_spoofchk(ptr noundef %dev, i32 noundef %vf_id, i1 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %1 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67329, i32 %2)
  %cmp = icmp ult i32 %2, 67329
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %3 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end3, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %7 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %vf4 = getelementptr i8, ptr %dev, i32 3748
  %9 = ptrtoint ptr %vf4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf4, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %10, i32 %vf_id
  %flags = getelementptr %struct.bnxt_vf_info, ptr %10, i32 %vf_id, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %cmp11 = xor i1 %14, %setting
  br i1 %cmp11, label %if.end3.cleanup_crit_edge, label %if.end14

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %call18 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  %. = select i1 %setting, i32 33554432, i32 16777216
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req, align 4
  %fid = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %fid, align 8
  %flags21 = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %19, i32 0, i32 7
  %21 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %flags21, align 4
  %call22 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.then20
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  br i1 %setting, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %23, 2
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %and30 = and i32 %23, -3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and30, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.then26, %if.then20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then4.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ], [ %call22, %if.then20.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.else28 ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bnxt_is_trusted_vf(ptr noundef %bp, ptr nocapture noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %2 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap, align 8
  %and1 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %flags3 = getelementptr inbounds %struct.bnxt_vf_info, ptr %vf, i32 0, i32 5
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags3, align 4
  %and4 = and i32 %5, 16
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 22, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bnxt_hwrm_func_qcfg_flags.exit_crit_edge

if.end.bnxt_hwrm_func_qcfg_flags.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_func_qcfg_flags.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %cond.true.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %vf to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vf, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %10, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  %11 = call i16 @llvm.bswap.i16(i16 %cond.i) #7
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req.i, align 4
  %fid.i = getelementptr inbounds %struct.hwrm_func_qcfg_input, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %11, ptr %fid.i, align 8
  %call3.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %13) #7
  %15 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.i, align 4
  %call4.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %cond.end.i.if.end8.i_crit_edge

cond.end.i.if.end8.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then6.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags7.i = getelementptr inbounds %struct.hwrm_func_qcfg_output, ptr %call3.i, i32 0, i32 7
  %17 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags7.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #7
  %func_qcfg_flags.i = getelementptr inbounds %struct.bnxt_vf_info, ptr %vf, i32 0, i32 4
  %20 = ptrtoint ptr %func_qcfg_flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %func_qcfg_flags.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %cond.end.i.if.end8.i_crit_edge
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %22) #7
  br label %bnxt_hwrm_func_qcfg_flags.exit

bnxt_hwrm_func_qcfg_flags.exit:                   ; preds = %if.end8.i, %if.end.bnxt_hwrm_func_qcfg_flags.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  %func_qcfg_flags = getelementptr inbounds %struct.bnxt_vf_info, ptr %vf, i32 0, i32 4
  %23 = ptrtoint ptr %func_qcfg_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %func_qcfg_flags, align 4
  %25 = and i16 %24, 64
  %and7 = zext i16 %25 to i32
  br label %return

return:                                           ; preds = %bnxt_hwrm_func_qcfg_flags.exit, %if.then
  %retval.0.in = phi i32 [ %and7, %bnxt_hwrm_func_qcfg_flags.exit ], [ %and4, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in)
  %retval.0 = icmp ne i32 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_trust(ptr noundef %dev, i32 noundef %vf_id, i1 noundef zeroext %trusted) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %0 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf2 = getelementptr i8, ptr %dev, i32 3748
  %6 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf2, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %vf_id
  %flags = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %vf_id, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -17
  %masksel = select i1 %trusted, i32 16, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %fw_cap.i = getelementptr i8, ptr %dev, i32 2696
  %11 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_cap.i, align 8
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %if.end.bnxt_hwrm_set_trusted_vf.exit_crit_edge, label %if.end.i15

if.end.bnxt_hwrm_set_trusted_vf.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_set_trusted_vf.exit

if.end.i15:                                       ; preds = %if.end
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i15.bnxt_hwrm_set_trusted_vf.exit_crit_edge

if.end.i15.bnxt_hwrm_set_trusted_vf.exit_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_set_trusted_vf.exit

if.end3.i:                                        ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #7
  %16 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req.i, align 4
  %fid.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %fid.i, align 8
  %flags.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %vf_id, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and4.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 1, i32 8192
  %21 = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %21, align 4
  %call10.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %17) #7
  br label %bnxt_hwrm_set_trusted_vf.exit

bnxt_hwrm_set_trusted_vf.exit:                    ; preds = %if.end3.i, %if.end.i15.bnxt_hwrm_set_trusted_vf.exit_crit_edge, %if.end.bnxt_hwrm_set_trusted_vf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bnxt_hwrm_set_trusted_vf.exit, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ 0, %bnxt_hwrm_set_trusted_vf.exit ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_vf_config(ptr noundef %dev, i32 noundef %vf_id, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %0 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vf_id, ptr %ivi, align 4
  %vf3 = getelementptr i8, ptr %dev, i32 3748
  %7 = ptrtoint ptr %vf3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf3, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id
  %mac_addr = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 1
  %9 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_addr, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then5

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %mac, ptr %mac_addr, i32 6)
  br label %if.end10

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %mac8 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %vf_mac_addr = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 2
  %15 = call ptr @memcpy(ptr %mac8, ptr %vf_mac_addr, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %max_tx_rate = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 7
  %16 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_tx_rate, align 4
  %max_tx_rate11 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %18 = ptrtoint ptr %max_tx_rate11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_tx_rate11, align 4
  %min_tx_rate = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 6
  %19 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_tx_rate, align 4
  %min_tx_rate12 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %21 = ptrtoint ptr %min_tx_rate12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %min_tx_rate12, align 4
  %vlan = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 3
  %22 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan, align 2
  %conv = zext i16 %23 to i32
  %vlan13 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %24 = ptrtoint ptr %vlan13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %vlan13, align 4
  %flags = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 5
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end10.if.end20_crit_edge, label %if.then15

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan, align 2
  %29 = lshr i16 %28, 13
  %30 = zext i16 %29 to i32
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end10.if.end20_crit_edge
  %.sink = phi i32 [ %30, %if.then15 ], [ 0, %if.end10.if.end20_crit_edge ]
  %31 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %31, align 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and22 = lshr i32 %34, 1
  %and22.lobit = and i32 %and22, 1
  %spoofchk = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %35 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and22.lobit, ptr %spoofchk, align 4
  %call25 = tail call zeroext i1 @bnxt_is_trusted_vf(ptr noundef %add.ptr.i, ptr noundef %arrayidx)
  %conv26 = zext i1 %call25 to i32
  %trusted = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 9
  %36 = ptrtoint ptr %trusted to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv26, ptr %trusted, align 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and28 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  %39 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %linkstate, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.end20
  %and33 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %linkstate38 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %linkstate38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %linkstate38, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %linkstate38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %linkstate38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then35, %if.then30, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then35 ], [ 0, %if.else37 ], [ 0, %if.then30 ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_mac(ptr noundef %dev, i32 noundef %vf_id, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %1 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %vf5 = getelementptr i8, ptr %dev, i32 3748
  %10 = ptrtoint ptr %vf5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf5, align 4
  %call6 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %11, i32 %vf_id
  %mac_addr = getelementptr %struct.bnxt_vf_info, ptr %11, i32 %vf_id, i32 1
  %12 = call ptr @memcpy(ptr %mac_addr, ptr %mac, i32 6)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %fid = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %fid, align 8
  %enables = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 8
  %19 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131072, ptr %enables, align 8
  %dflt_mac_addr = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 19
  %20 = call ptr @memcpy(ptr %dflt_mac_addr, ptr %mac, i32 6)
  %call11 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.then3, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -22, %if.then3 ], [ %call11, %if.end9 ], [ %call6, %if.end4.cleanup_crit_edge ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_vlan(ptr noundef %dev, i32 noundef %vf_id, i16 noundef zeroext %vlan_id, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %hwrm_spec_code = getelementptr i8, ptr %dev, i32 2704
  %1 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66049, i32 %2)
  %cmp = icmp ult i32 %2, 66049
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp1.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %3 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %conv.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end7, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %7 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vlan_id)
  %cmp9 = icmp ult i16 %vlan_id, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos)
  %tobool12.not = icmp eq i8 %qos, 0
  %or.cond = and i1 %cmp9, %tobool12.not
  br i1 %or.cond, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %vf15 = getelementptr i8, ptr %dev, i32 3748
  %9 = ptrtoint ptr %vf15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf15, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %10, i32 %vf_id
  %vlan = getelementptr %struct.bnxt_vf_info, ptr %10, i32 %vf_id, i32 3
  %11 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %vlan_id)
  %cmp18 = icmp eq i16 %12, %vlan_id
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %fid = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %fid, align 8
  %19 = call i16 @llvm.bswap.i16(i16 %vlan_id)
  %dflt_vlan = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 20
  %20 = ptrtoint ptr %dflt_vlan to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %dflt_vlan, align 2
  %enables = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %17, i32 0, i32 8
  %21 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262144, ptr %enables, align 8
  %call25 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %vlan_id, ptr %vlan, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.then24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call25, %if.then24.cleanup_crit_edge ], [ 0, %if.then27 ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_bw(ptr noundef %dev, i32 noundef %vf_id, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %1 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf2 = getelementptr i8, ptr %dev, i32 3748
  %7 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf2, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id
  %link_speed = getelementptr i8, ptr %dev, i32 6206
  %9 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %link_speed, align 2
  %call3 = tail call i32 @bnxt_fw_to_ethtool_speed(i16 noundef zeroext %10) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %max_tx_rate)
  %cmp = icmp ult i32 %call3, %max_tx_rate
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr i8, ptr %dev, i32 2388
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %max_tx_rate, i32 noundef %vf_id) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %min_tx_rate)
  %cmp7 = icmp ult i32 %call3, %min_tx_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %min_tx_rate, i32 %max_tx_rate)
  %cmp8 = icmp sgt i32 %min_tx_rate, %max_tx_rate
  %or.cond = or i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr i8, ptr %dev, i32 2388
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %min_tx_rate, i32 noundef %vf_id) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %min_tx_rate12 = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 6
  %15 = ptrtoint ptr %min_tx_rate12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_tx_rate12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %min_tx_rate)
  %cmp13 = icmp eq i32 %16, %min_tx_rate
  br i1 %cmp13, label %land.lhs.true, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %max_tx_rate14 = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 7
  %17 = ptrtoint ptr %max_tx_rate14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_tx_rate14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %max_tx_rate)
  %cmp15 = icmp eq i32 %18, %max_tx_rate
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %call18 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %fid = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %fid, align 8
  %enables = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %23, i32 0, i32 8
  %25 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3145728, ptr %enables, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %max_tx_rate)
  %max_bw = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %23, i32 0, i32 23
  %27 = ptrtoint ptr %max_bw to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_bw, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %min_tx_rate)
  %min_bw = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %23, i32 0, i32 22
  %29 = ptrtoint ptr %min_bw to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %min_bw, align 8
  %call21 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %min_tx_rate12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %min_tx_rate, ptr %min_tx_rate12, align 4
  %max_tx_rate25 = getelementptr %struct.bnxt_vf_info, ptr %8, i32 %vf_id, i32 7
  %31 = ptrtoint ptr %max_tx_rate25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %max_tx_rate, ptr %max_tx_rate25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then9, %if.then4, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ 0, %if.then23 ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_fw_to_ethtool_speed(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_set_vf_link_state(ptr noundef %dev, i32 noundef %vf_id, i32 noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %active_vfs.i = getelementptr i8, ptr %dev, i32 3676
  %0 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %dev, i32 2388
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf_id)
  %cmp.not.i = icmp sgt i32 %conv.i, %vf_id
  br i1 %cmp.not.i, label %if.end, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %vf_id) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %vf2 = getelementptr i8, ptr %dev, i32 3748
  %6 = ptrtoint ptr %vf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf2, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %vf_id
  %flags = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %vf_id, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, -13
  store i32 %and, ptr %flags, align 4
  %10 = zext i32 %link to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %link, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %and, 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or6, ptr %flags, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %9, 12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or9, ptr %flags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr i8, ptr %dev, i32 2388
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb4, %sw.bb
  %rc.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb7 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and12 = and i32 %17, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.epilog.cleanup_crit_edge, label %if.then14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %call.i = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i, i16 noundef zeroext 211, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i30, label %if.end.i31, label %if.then14.if.then8.i_crit_edge

if.then14.if.then8.i_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i31:                                       ; preds = %if.then14
  %tobool1.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool1.not.i, label %if.end.i31.exit.i_crit_edge, label %if.then2.i

if.end.i31.exit.i_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.then2.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20) #7
  br label %exit.i

exit.i:                                           ; preds = %if.then2.i, %if.end.i31.exit.i_crit_edge
  %.sink.i = phi i16 [ %21, %if.then2.i ], [ -1, %if.end.i31.exit.i_crit_edge ]
  %22 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink21.i = load ptr, ptr %req.i, align 4
  %encap_async_event_target_id.i = getelementptr inbounds %struct.hwrm_fwd_async_event_cmpl_input, ptr %.sink21.i, i32 0, i32 5
  %23 = ptrtoint ptr %encap_async_event_target_id.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink.i, ptr %encap_async_event_target_id.i, align 8
  %encap_async_event_cmpl.i = getelementptr inbounds %struct.hwrm_fwd_async_event_cmpl_input, ptr %.sink21.i, i32 0, i32 7
  %24 = ptrtoint ptr %encap_async_event_cmpl.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 11776, ptr %encap_async_event_cmpl.i, align 4
  %event_id5.i = getelementptr inbounds %struct.hwrm_async_event_cmpl, ptr %encap_async_event_cmpl.i, i32 0, i32 1
  %25 = ptrtoint ptr %event_id5.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %event_id5.i, align 2
  %call6.i = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %.sink21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %exit.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge, label %exit.i.if.then8.i_crit_edge

exit.i.if.then8.i_crit_edge:                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

exit.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge: ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_async_event_cmpl.exit

if.then8.i:                                       ; preds = %exit.i.if.then8.i_crit_edge, %if.then14.if.then8.i_crit_edge
  %rc.019.i = phi i32 [ %call6.i, %exit.i.if.then8.i_crit_edge ], [ %call.i, %if.then14.if.then8.i_crit_edge ]
  %dev.i32 = getelementptr i8, ptr %dev, i32 2388
  %26 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i32, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.14, i32 noundef %rc.019.i) #10
  br label %bnxt_hwrm_fwd_async_event_cmpl.exit

bnxt_hwrm_fwd_async_event_cmpl.exit:              ; preds = %if.then8.i, %exit.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge
  %rc.020.i = phi i32 [ %rc.019.i, %if.then8.i ], [ 0, %exit.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  br label %cleanup

cleanup:                                          ; preds = %bnxt_hwrm_fwd_async_event_cmpl.exit, %sw.epilog.cleanup_crit_edge, %if.then4.i, %if.then.i
  %retval.0 = phi i32 [ %rc.020.i, %bnxt_hwrm_fwd_async_event_cmpl.exit ], [ %rc.0, %sw.epilog.cleanup_crit_edge ], [ -22, %if.then4.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_cfg_hw_sriov(ptr noundef %bp, ptr nocapture noundef %num_vfs, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  %req.i6.i = alloca ptr, align 4
  %vf_tx_rsvd.i.i = alloca i32, align 4
  %req.i.i.i = alloca ptr, align 4
  %req.i.i = alloca ptr, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %0 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 31, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %bnxt_hwrm_func_buf_rgtr.exit, label %bnxt_hwrm_func_buf_rgtr.exit.thread

bnxt_hwrm_func_buf_rgtr.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  br label %cleanup

bnxt_hwrm_func_buf_rgtr.exit:                     ; preds = %entry
  %hwrm_cmd_req_pages.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 14
  %1 = ptrtoint ptr %hwrm_cmd_req_pages.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hwrm_cmd_req_pages.i, align 4
  %3 = call i16 @llvm.bswap.i16(i16 %2) #7
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req.i, align 4
  %req_buf_num_pages.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %req_buf_num_pages.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %req_buf_num_pages.i, align 2
  %req_buf_page_size.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %req_buf_page_size.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3072, ptr %req_buf_page_size.i, align 8
  %req_buf_len.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %req_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -32768, ptr %req_buf_len.i, align 2
  %hwrm_cmd_req_dma_addr.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17
  %9 = ptrtoint ptr %hwrm_cmd_req_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwrm_cmd_req_dma_addr.i, align 4
  %conv.i = zext i32 %10 to i64
  %11 = call i64 @llvm.bswap.i64(i64 %conv.i) #7
  %req_buf_page_addr0.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %req_buf_page_addr0.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %req_buf_page_addr0.i, align 8
  %arrayidx4.i = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = zext i32 %14 to i64
  %15 = call i64 @llvm.bswap.i64(i64 %conv5.i) #7
  %req_buf_page_addr1.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 13
  %16 = ptrtoint ptr %req_buf_page_addr1.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %req_buf_page_addr1.i, align 8
  %arrayidx8.i = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 2
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8.i, align 4
  %conv9.i = zext i32 %18 to i64
  %19 = call i64 @llvm.bswap.i64(i64 %conv9.i) #7
  %req_buf_page_addr2.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 14
  %20 = ptrtoint ptr %req_buf_page_addr2.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %req_buf_page_addr2.i, align 8
  %arrayidx12.i = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 3
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12.i, align 4
  %conv13.i = zext i32 %22 to i64
  %23 = call i64 @llvm.bswap.i64(i64 %conv13.i) #7
  %req_buf_page_addr3.i = getelementptr inbounds %struct.hwrm_func_buf_rgtr_input, ptr %5, i32 0, i32 15
  %24 = ptrtoint ptr %req_buf_page_addr3.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %req_buf_page_addr3.i, align 8
  %call14.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not = icmp eq i32 %call14.i, 0
  br i1 %tobool.not, label %if.end, label %bnxt_hwrm_func_buf_rgtr.exit.cleanup_crit_edge

bnxt_hwrm_func_buf_rgtr.exit.cleanup_crit_edge:   ; preds = %bnxt_hwrm_func_buf_rgtr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bnxt_hwrm_func_buf_rgtr.exit
  %25 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_vfs, align 4
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %27 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_cap.i, align 8
  %and.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #7
  %29 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !49
  %call.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i, i16 noundef zeroext 401, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.bnxt_hwrm_func_vf_resc_cfg.exit.i_crit_edge

if.then.i.bnxt_hwrm_func_vf_resc_cfg.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_func_vf_resc_cfg.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %flags.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_nqs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 23
  %32 = ptrtoint ptr %max_nqs.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_nqs.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %call5.i.i = call i32 @bnxt_nq_rings_in_use(ptr noundef %bp) #7
  %sub.i.i = sub i32 %conv.i.i, %call5.i.i
  %phi.cast.i.i = and i32 %sub.i.i, 65535
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_hw_ring_grps.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 13
  %34 = ptrtoint ptr %max_hw_ring_grps.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_hw_ring_grps.i.i, align 2
  %rx_nr_rings.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 33
  %36 = ptrtoint ptr %rx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_nr_rings.i.i, align 8
  %38 = trunc i32 %37 to i16
  %conv9.i.i = sub i16 %35, %38
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then4.i.i
  %vf_ring_grps.0.i.i = phi i16 [ 0, %if.then4.i.i ], [ %conv9.i.i, %if.else.i.i ]
  %vf_msix.0.i.i = phi i32 [ %phi.cast.i.i, %if.then4.i.i ], [ 0, %if.else.i.i ]
  %call11.i.i = call i32 @bnxt_get_avail_cp_rings_for_en(ptr noundef %bp) #7
  %conv12.i.i = trunc i32 %call11.i.i to i16
  %call13.i.i = call i32 @bnxt_get_avail_stat_ctxs_for_en(ptr noundef %bp) #7
  %conv14.i.i = trunc i32 %call13.i.i to i16
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i, align 8
  %and16.i.i = and i32 %40, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %max_rx_rings24.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 10
  %41 = ptrtoint ptr %max_rx_rings24.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_rx_rings24.i.i, align 2
  %rx_nr_rings26.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 33
  %43 = ptrtoint ptr %rx_nr_rings26.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_nr_rings26.i.i, align 8
  %45 = trunc i32 %44 to i16
  %46 = mul i16 %45, -2
  %47 = sub i16 0, %45
  %vf_rx_rings.0.p.i.i = select i1 %tobool17.not.i.i, i16 %47, i16 %46
  %vf_rx_rings.0.i.i = add i16 %vf_rx_rings.0.p.i.i, %42
  %max_tx_rings.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 6
  %48 = ptrtoint ptr %max_tx_rings.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max_tx_rings.i.i, align 2
  %tx_nr_rings.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 38
  %50 = ptrtoint ptr %tx_nr_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_nr_rings.i.i, align 4
  %52 = trunc i32 %51 to i16
  %conv32.i.i = sub i16 %49, %52
  %max_vnics.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 18
  %53 = ptrtoint ptr %max_vnics.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %max_vnics.i.i, align 2
  %nr_vnics.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 51
  %55 = ptrtoint ptr %nr_vnics.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_vnics.i.i, align 8
  %57 = trunc i32 %56 to i16
  %conv35.i.i = sub i16 %54, %57
  %58 = call i16 @llvm.umin.i16(i16 %conv35.i.i, i16 %vf_rx_rings.0.i.i) #7
  %max_rsscos_ctxs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 1
  %59 = ptrtoint ptr %max_rsscos_ctxs.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %max_rsscos_ctxs.i.i, align 2
  %rsscos_nr_ctxs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 34
  %61 = ptrtoint ptr %rsscos_nr_ctxs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rsscos_nr_ctxs.i.i, align 4
  %63 = trunc i32 %62 to i16
  %conv44.i.i = sub i16 %60, %63
  %64 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req.i.i, align 4
  %min_rsscos_ctx.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %min_rsscos_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 256, ptr %min_rsscos_ctx.i.i, align 4
  %vf_resv_strategy.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 15
  %67 = ptrtoint ptr %vf_resv_strategy.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vf_resv_strategy.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp46.i.i = icmp eq i8 %68, 2
  %spec.store.select.i.i = select i1 %cmp46.i.i, i16 0, i16 256
  %69 = ptrtoint ptr %min_rsscos_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %spec.store.select.i.i, ptr %min_rsscos_ctx.i.i, align 4
  %70 = ptrtoint ptr %vf_resv_strategy.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vf_resv_strategy.i.i, align 2
  %.off.i.i = add i8 %71, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then60.i.i, label %if.else73.i.i

if.then60.i.i:                                    ; preds = %if.end10.i.i
  %min_cmpl_rings.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 9
  %72 = ptrtoint ptr %min_cmpl_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %spec.store.select.i.i, ptr %min_cmpl_rings.i.i, align 8
  %min_tx_rings.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 11
  %73 = ptrtoint ptr %min_tx_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %spec.store.select.i.i, ptr %min_tx_rings.i.i, align 4
  %min_rx_rings.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 13
  %74 = ptrtoint ptr %min_rx_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %spec.store.select.i.i, ptr %min_rx_rings.i.i, align 8
  %min_l2_ctxs.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 15
  %75 = ptrtoint ptr %min_l2_ctxs.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %spec.store.select.i.i, ptr %min_l2_ctxs.i.i, align 4
  %min_vnics.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 17
  %76 = ptrtoint ptr %min_vnics.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %spec.store.select.i.i, ptr %min_vnics.i.i, align 8
  %min_stat_ctx.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 19
  %77 = ptrtoint ptr %min_stat_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %spec.store.select.i.i, ptr %min_stat_ctx.i.i, align 4
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i, align 8
  %and68.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.then70.i.i, label %if.then60.i.i.if.end102.i.i_crit_edge

if.then60.i.i.if.end102.i.i_crit_edge:            ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.i

if.then70.i.i:                                    ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %min_hw_ring_grps.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 21
  %80 = ptrtoint ptr %min_hw_ring_grps.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %spec.store.select.i.i, ptr %min_hw_ring_grps.i.i, align 8
  br label %if.end102.i.i

if.else73.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv37.i.i = zext i16 %vf_rx_rings.0.i.i to i32
  %conv74.i.i = and i32 %call11.i.i, 65535
  %div.i.i = sdiv i32 %conv74.i.i, %26
  %conv75.i.i = trunc i32 %div.i.i to i16
  %conv76.i.i = zext i16 %conv32.i.i to i32
  %div77.i.i = sdiv i32 %conv76.i.i, %26
  %conv78.i.i = trunc i32 %div77.i.i to i16
  %div80.i.i = sdiv i32 %conv37.i.i, %26
  %conv81.i.i = trunc i32 %div80.i.i to i16
  %conv82.i.i = zext i16 %58 to i32
  %div83.i.i = sdiv i32 %conv82.i.i, %26
  %conv84.i.i = trunc i32 %div83.i.i to i16
  %conv85.i.i = and i32 %call13.i.i, 65535
  %div86.i.i = sdiv i32 %conv85.i.i, %26
  %conv87.i.i = trunc i32 %div86.i.i to i16
  %conv88.i.i = zext i16 %vf_ring_grps.0.i.i to i32
  %div89.i.i = sdiv i32 %conv88.i.i, %26
  %conv90.i.i = trunc i32 %div89.i.i to i16
  %conv91.i.i = zext i16 %conv44.i.i to i32
  %div92.i.i = sdiv i32 %conv91.i.i, %26
  %conv93.i.i = trunc i32 %div92.i.i to i16
  %81 = call i16 @llvm.bswap.i16(i16 %conv75.i.i) #7
  %min_cmpl_rings94.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 9
  %82 = ptrtoint ptr %min_cmpl_rings94.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %min_cmpl_rings94.i.i, align 8
  %83 = call i16 @llvm.bswap.i16(i16 %conv78.i.i) #7
  %min_tx_rings95.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 11
  %84 = ptrtoint ptr %min_tx_rings95.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %min_tx_rings95.i.i, align 4
  %85 = call i16 @llvm.bswap.i16(i16 %conv81.i.i) #7
  %min_rx_rings96.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 13
  %86 = ptrtoint ptr %min_rx_rings96.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %min_rx_rings96.i.i, align 8
  %min_l2_ctxs97.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 15
  %87 = ptrtoint ptr %min_l2_ctxs97.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1024, ptr %min_l2_ctxs97.i.i, align 4
  %88 = call i16 @llvm.bswap.i16(i16 %conv84.i.i) #7
  %min_vnics98.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 17
  %89 = ptrtoint ptr %min_vnics98.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %min_vnics98.i.i, align 8
  %90 = call i16 @llvm.bswap.i16(i16 %conv87.i.i) #7
  %min_stat_ctx99.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 19
  %91 = ptrtoint ptr %min_stat_ctx99.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %min_stat_ctx99.i.i, align 4
  %92 = call i16 @llvm.bswap.i16(i16 %conv90.i.i) #7
  %min_hw_ring_grps100.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 21
  %93 = ptrtoint ptr %min_hw_ring_grps100.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %min_hw_ring_grps100.i.i, align 8
  %94 = call i16 @llvm.bswap.i16(i16 %conv93.i.i) #7
  %95 = ptrtoint ptr %min_rsscos_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %min_rsscos_ctx.i.i, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.else73.i.i, %if.then70.i.i, %if.then60.i.i.if.end102.i.i_crit_edge
  %vf_tx_rings.0.i.i = phi i16 [ %conv32.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %conv32.i.i, %if.then70.i.i ], [ %conv78.i.i, %if.else73.i.i ]
  %vf_rx_rings.1.i.i = phi i16 [ %vf_rx_rings.0.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %vf_rx_rings.0.i.i, %if.then70.i.i ], [ %conv81.i.i, %if.else73.i.i ]
  %vf_cp_rings.0.i.i = phi i16 [ %conv12.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %conv12.i.i, %if.then70.i.i ], [ %conv75.i.i, %if.else73.i.i ]
  %vf_stat_ctx.0.i.i = phi i16 [ %conv14.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %conv14.i.i, %if.then70.i.i ], [ %conv87.i.i, %if.else73.i.i ]
  %vf_vnics.0.i.i = phi i16 [ %58, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %58, %if.then70.i.i ], [ %conv84.i.i, %if.else73.i.i ]
  %vf_ring_grps.1.i.i = phi i16 [ %vf_ring_grps.0.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %vf_ring_grps.0.i.i, %if.then70.i.i ], [ %conv90.i.i, %if.else73.i.i ]
  %vf_rss.0.i.i = phi i16 [ %conv44.i.i, %if.then60.i.i.if.end102.i.i_crit_edge ], [ %conv44.i.i, %if.then70.i.i ], [ %conv93.i.i, %if.else73.i.i ]
  %96 = call i16 @llvm.bswap.i16(i16 %vf_cp_rings.0.i.i) #7
  %max_cmpl_rings.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 10
  %97 = ptrtoint ptr %max_cmpl_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %max_cmpl_rings.i.i, align 2
  %98 = call i16 @llvm.bswap.i16(i16 %vf_tx_rings.0.i.i) #7
  %max_tx_rings103.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 12
  %99 = ptrtoint ptr %max_tx_rings103.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %max_tx_rings103.i.i, align 2
  %100 = call i16 @llvm.bswap.i16(i16 %vf_rx_rings.1.i.i) #7
  %max_rx_rings104.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 14
  %101 = ptrtoint ptr %max_rx_rings104.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %max_rx_rings104.i.i, align 2
  %max_l2_ctxs.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 16
  %102 = ptrtoint ptr %max_l2_ctxs.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1024, ptr %max_l2_ctxs.i.i, align 2
  %103 = call i16 @llvm.bswap.i16(i16 %vf_vnics.0.i.i) #7
  %max_vnics105.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 18
  %104 = ptrtoint ptr %max_vnics105.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %max_vnics105.i.i, align 2
  %105 = call i16 @llvm.bswap.i16(i16 %vf_stat_ctx.0.i.i) #7
  %max_stat_ctx.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 20
  %106 = ptrtoint ptr %max_stat_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %max_stat_ctx.i.i, align 2
  %107 = call i16 @llvm.bswap.i16(i16 %vf_ring_grps.1.i.i) #7
  %max_hw_ring_grps106.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 22
  %108 = ptrtoint ptr %max_hw_ring_grps106.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %max_hw_ring_grps106.i.i, align 2
  %109 = call i16 @llvm.bswap.i16(i16 %vf_rss.0.i.i) #7
  %max_rsscos_ctx.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 8
  %110 = ptrtoint ptr %max_rsscos_ctx.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %max_rsscos_ctx.i.i, align 2
  %111 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i.i, align 8
  %and108.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i.i)
  %tobool109.not.i.i = icmp eq i32 %and108.i.i, 0
  br i1 %tobool109.not.i.i, label %if.end102.i.i.if.end114.i.i_crit_edge, label %if.then110.i.i

if.end102.i.i.if.end114.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i.i

if.then110.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div112.i.i = sdiv i32 %vf_msix.0.i.i, %26
  %conv113.i.i = trunc i32 %div112.i.i to i16
  %113 = call i16 @llvm.bswap.i16(i16 %conv113.i.i) #7
  %max_msix.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %65, i32 0, i32 6
  %114 = ptrtoint ptr %max_msix.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %max_msix.i.i, align 2
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %if.then110.i.i, %if.end102.i.i.if.end114.i.i_crit_edge
  %call115.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp116310.i.i = icmp sgt i32 %26, 0
  br i1 %cmp116310.i.i, label %for.body.lr.ph.i.i, label %if.end114.i.i.for.end.i.i_crit_edge

if.end114.i.i.for.end.i.i_crit_edge:              ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end114.i.i
  %vf1.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 18
  %first_vf_id.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 3
  %active_vfs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end126.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0311.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add127.i.i, %if.end126.i.i.for.body.i.i_crit_edge ]
  br i1 %reset, label %if.then119.i.i, label %for.body.i.i.if.end121.i.i_crit_edge

for.body.i.i.if.end121.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i.i

if.then119.i.i:                                   ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i.i) #7
  %115 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i.i, align 4, !annotation !49
  %call.i.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i.i, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then119.i.i.__bnxt_set_vf_params.exit.i.i_crit_edge

if.then119.i.i.__bnxt_set_vf_params.exit.i.i_crit_edge: ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__bnxt_set_vf_params.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then119.i.i
  %116 = ptrtoint ptr %vf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vf1.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i
  %118 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.i.i.i, align 4
  %120 = call i16 @llvm.bswap.i16(i16 %119) #7
  %121 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %req.i.i.i, align 4
  %fid.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %fid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %120, ptr %fid.i.i.i, align 8
  %mac_addr.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i, i32 1
  %124 = ptrtoint ptr %mac_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mac_addr.i.i.i, align 4
  %126 = and i32 %125, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.not.i.i.i.i = icmp eq i32 %126, 0
  br i1 %tobool.i.not.i.i.i.i, label %is_valid_ether_addr.exit.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i

is_valid_ether_addr.exit.i.i.i:                   ; preds = %if.end.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %mac_addr.i.i.i, i32 4
  %127 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %128 to i32
  %or.i.i.i.i.i = or i32 %125, %conv.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.not.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i.i, label %is_valid_ether_addr.exit.i.i.i.if.end7.i.i.i_crit_edge, label %if.then3.i.i.i

is_valid_ether_addr.exit.i.i.i.if.end7.i.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i

if.then3.i.i.i:                                   ; preds = %is_valid_ether_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %enables.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 8
  %129 = ptrtoint ptr %enables.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %enables.i.i.i, align 8
  %or.i.i.i = or i32 %130, 131072
  store i32 %or.i.i.i, ptr %enables.i.i.i, align 8
  %dflt_mac_addr.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 19
  %131 = call ptr @memcpy(ptr %dflt_mac_addr.i.i.i, ptr %mac_addr.i.i.i, i32 6)
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i, %is_valid_ether_addr.exit.i.i.i.if.end7.i.i.i_crit_edge, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %vlan.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i, i32 3
  %132 = ptrtoint ptr %vlan.i.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vlan.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool8.not.i.i.i = icmp eq i16 %133, 0
  br i1 %tobool8.not.i.i.i, label %if.end7.i.i.i.if.end13.i.i.i_crit_edge, label %if.then9.i.i.i

if.end7.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %enables10.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 8
  %134 = ptrtoint ptr %enables10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %enables10.i.i.i, align 8
  %or11.i.i.i = or i32 %135, 262144
  store i32 %or11.i.i.i, ptr %enables10.i.i.i, align 8
  %136 = ptrtoint ptr %vlan.i.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vlan.i.i.i, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #7
  %dflt_vlan.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 20
  %139 = ptrtoint ptr %dflt_vlan.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %dflt_vlan.i.i.i, align 2
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end7.i.i.i.if.end13.i.i.i_crit_edge
  %max_tx_rate.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i, i32 7
  %140 = ptrtoint ptr %max_tx_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %max_tx_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool14.not.i.i.i = icmp eq i32 %141, 0
  br i1 %tobool14.not.i.i.i, label %if.end13.i.i.i.if.end19.i.i.i_crit_edge, label %if.then15.i.i.i

if.end13.i.i.i.if.end19.i.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %enables16.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 8
  %142 = ptrtoint ptr %enables16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %enables16.i.i.i, align 8
  %or17.i.i.i = or i32 %143, 3145728
  store i32 %or17.i.i.i, ptr %enables16.i.i.i, align 8
  %144 = ptrtoint ptr %max_tx_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_tx_rate.i.i.i, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145) #7
  %max_bw.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 23
  %147 = ptrtoint ptr %max_bw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %max_bw.i.i.i, align 4
  %min_tx_rate.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i, i32 6
  %148 = ptrtoint ptr %min_tx_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %min_tx_rate.i.i.i, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149) #7
  %min_bw.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 22
  %151 = ptrtoint ptr %min_bw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %min_bw.i.i.i, align 8
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then15.i.i.i, %if.end13.i.i.i.if.end19.i.i.i_crit_edge
  %flags.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %117, i32 %i.0311.i.i, i32 5
  %152 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %153, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %if.end19.i.i.i.if.end24.i.i.i_crit_edge, label %if.then21.i.i.i

if.end19.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags22.i.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %122, i32 0, i32 7
  %154 = ptrtoint ptr %flags22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags22.i.i.i, align 4
  %or23.i.i.i = or i32 %155, 8192
  store i32 %or23.i.i.i, ptr %flags22.i.i.i, align 4
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then21.i.i.i, %if.end19.i.i.i.if.end24.i.i.i_crit_edge
  %call25.i.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %122) #7
  br label %__bnxt_set_vf_params.exit.i.i

__bnxt_set_vf_params.exit.i.i:                    ; preds = %if.end24.i.i.i, %if.then119.i.i.__bnxt_set_vf_params.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #7
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %__bnxt_set_vf_params.exit.i.i, %for.body.i.i.if.end121.i.i_crit_edge
  %156 = ptrtoint ptr %first_vf_id.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %first_vf_id.i.i, align 4
  %add.i.i = add i32 %157, %i.0311.i.i
  %conv122.i.i = trunc i32 %add.i.i to i16
  %158 = call i16 @llvm.bswap.i16(i16 %conv122.i.i) #7
  %159 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %req.i.i, align 4
  %vf_id.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %vf_id.i.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %158, ptr %vf_id.i.i, align 8
  %call123.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i.i)
  %tobool124.not.i.i = icmp eq i32 %call123.i.i, 0
  br i1 %tobool124.not.i.i, label %if.end126.i.i, label %if.end121.i.i.for.end.i.i_crit_edge

if.end121.i.i.for.end.i.i_crit_edge:              ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end126.i.i:                                    ; preds = %if.end121.i.i
  %add127.i.i = add nuw nsw i32 %i.0311.i.i, 1
  %conv128.i.i = trunc i32 %add127.i.i to i16
  %162 = ptrtoint ptr %active_vfs.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv128.i.i, ptr %active_vfs.i.i, align 4
  %163 = ptrtoint ptr %first_vf_id.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %first_vf_id.i.i, align 4
  %add130.i.i = add i32 %164, %i.0311.i.i
  %conv131.i.i = trunc i32 %add130.i.i to i16
  %165 = ptrtoint ptr %vf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vf1.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bnxt_vf_info, ptr %166, i32 %i.0311.i.i
  %167 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv131.i.i, ptr %arrayidx.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %add127.i.i, %26
  br i1 %exitcond.not.i.i, label %if.end126.i.i.for.end.i.i_crit_edge, label %if.end126.i.i.for.body.i.i_crit_edge

if.end126.i.i.for.body.i.i_crit_edge:             ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end126.i.i.for.end.i.i_crit_edge:              ; preds = %if.end126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end126.i.i.for.end.i.i_crit_edge, %if.end121.i.i.for.end.i.i_crit_edge, %if.end114.i.i.for.end.i.i_crit_edge
  %rc.1.i.i = phi i32 [ 0, %if.end114.i.i.for.end.i.i_crit_edge ], [ %call123.i.i, %if.end121.i.i.for.end.i.i_crit_edge ], [ 0, %if.end126.i.i.for.end.i.i_crit_edge ]
  %active_vfs132.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  %168 = ptrtoint ptr %active_vfs132.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %active_vfs132.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool133.not.i.i = icmp eq i16 %169, 0
  br i1 %tobool133.not.i.i, label %for.end.i.i.if.end203.i.i_crit_edge, label %if.then134.i.i

for.end.i.i.if.end203.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203.i.i

if.then134.i.i:                                   ; preds = %for.end.i.i
  %170 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %req.i.i, align 4
  %min_tx_rings136.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 11
  %172 = ptrtoint ptr %min_tx_rings136.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %min_tx_rings136.i.i, align 4
  %174 = call i16 @llvm.bswap.i16(i16 %173) #7
  %mul139.i.i = mul i16 %174, %169
  %175 = ptrtoint ptr %max_tx_rings.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %max_tx_rings.i.i, align 2
  %sub142.i.i = sub i16 %176, %mul139.i.i
  store i16 %sub142.i.i, ptr %max_tx_rings.i.i, align 2
  %min_rx_rings144.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 13
  %177 = ptrtoint ptr %min_rx_rings144.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %min_rx_rings144.i.i, align 8
  %179 = call i16 @llvm.bswap.i16(i16 %178) #7
  %mul147.i.i = mul i16 %179, %169
  %180 = ptrtoint ptr %max_rx_rings24.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %max_rx_rings24.i.i, align 2
  %sub150.i.i = sub i16 %181, %mul147.i.i
  store i16 %sub150.i.i, ptr %max_rx_rings24.i.i, align 2
  %min_hw_ring_grps152.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 21
  %182 = ptrtoint ptr %min_hw_ring_grps152.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %min_hw_ring_grps152.i.i, align 8
  %184 = call i16 @llvm.bswap.i16(i16 %183) #7
  %mul155.i.i = mul i16 %184, %169
  %max_hw_ring_grps156.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 13
  %185 = ptrtoint ptr %max_hw_ring_grps156.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %max_hw_ring_grps156.i.i, align 2
  %sub158.i.i = sub i16 %186, %mul155.i.i
  store i16 %sub158.i.i, ptr %max_hw_ring_grps156.i.i, align 2
  %min_cmpl_rings160.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 9
  %187 = ptrtoint ptr %min_cmpl_rings160.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %min_cmpl_rings160.i.i, align 8
  %189 = call i16 @llvm.bswap.i16(i16 %188) #7
  %mul163.i.i = mul i16 %189, %169
  %max_cp_rings.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 3
  %190 = ptrtoint ptr %max_cp_rings.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %max_cp_rings.i.i, align 2
  %sub165.i.i = sub i16 %191, %mul163.i.i
  store i16 %sub165.i.i, ptr %max_cp_rings.i.i, align 2
  %min_rsscos_ctx167.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 7
  %192 = ptrtoint ptr %min_rsscos_ctx167.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %min_rsscos_ctx167.i.i, align 4
  %194 = call i16 @llvm.bswap.i16(i16 %193) #7
  %mul170.i.i = mul i16 %194, %169
  %195 = ptrtoint ptr %max_rsscos_ctxs.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %max_rsscos_ctxs.i.i, align 2
  %sub173.i.i = sub i16 %196, %mul170.i.i
  store i16 %sub173.i.i, ptr %max_rsscos_ctxs.i.i, align 2
  %min_stat_ctx175.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 19
  %197 = ptrtoint ptr %min_stat_ctx175.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %min_stat_ctx175.i.i, align 4
  %199 = call i16 @llvm.bswap.i16(i16 %198) #7
  %mul178.i.i = mul i16 %199, %169
  %max_stat_ctxs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 21
  %200 = ptrtoint ptr %max_stat_ctxs.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %max_stat_ctxs.i.i, align 2
  %sub180.i.i = sub i16 %201, %mul178.i.i
  store i16 %sub180.i.i, ptr %max_stat_ctxs.i.i, align 2
  %min_vnics182.i.i = getelementptr inbounds %struct.hwrm_func_vf_resource_cfg_input, ptr %171, i32 0, i32 17
  %202 = ptrtoint ptr %min_vnics182.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %min_vnics182.i.i, align 8
  %204 = call i16 @llvm.bswap.i16(i16 %203) #7
  %mul185.i.i = mul i16 %204, %169
  %205 = ptrtoint ptr %max_vnics.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %max_vnics.i.i, align 2
  %sub188.i.i = sub i16 %206, %mul185.i.i
  store i16 %sub188.i.i, ptr %max_vnics.i.i, align 2
  %207 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags.i.i, align 8
  %and191.i.i = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i.i)
  %tobool192.not.i.i = icmp eq i32 %and191.i.i, 0
  br i1 %tobool192.not.i.i, label %if.then134.i.i.if.end200.i.i_crit_edge, label %if.then193.i.i

if.then134.i.i.if.end200.i.i_crit_edge:           ; preds = %if.then134.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200.i.i

if.then193.i.i:                                   ; preds = %if.then134.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_irqs.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 24
  %209 = ptrtoint ptr %max_irqs.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %max_irqs.i.i, align 2
  %211 = trunc i32 %vf_msix.0.i.i to i16
  %212 = mul i16 %169, %211
  %conv199.i.i = sub i16 %210, %212
  store i16 %conv199.i.i, ptr %max_irqs.i.i, align 2
  br label %if.end200.i.i

if.end200.i.i:                                    ; preds = %if.then193.i.i, %if.then134.i.i.if.end200.i.i_crit_edge
  %conv202.i.i = zext i16 %169 to i32
  br label %if.end203.i.i

if.end203.i.i:                                    ; preds = %if.end200.i.i, %for.end.i.i.if.end203.i.i_crit_edge
  %rc.2.i.i = phi i32 [ %conv202.i.i, %if.end200.i.i ], [ %rc.1.i.i, %for.end.i.i.if.end203.i.i_crit_edge ]
  %213 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %214) #7
  br label %bnxt_hwrm_func_vf_resc_cfg.exit.i

bnxt_hwrm_func_vf_resc_cfg.exit.i:                ; preds = %if.end203.i.i, %if.then.i.bnxt_hwrm_func_vf_resc_cfg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %rc.2.i.i, %if.end203.i.i ], [ %call.i.i, %if.then.i.bnxt_hwrm_func_vf_resc_cfg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #7
  br label %bnxt_func_cfg.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i6.i) #7
  %215 = ptrtoint ptr %req.i6.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i6.i, align 4, !annotation !49
  %call.i7.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i6.i, i16 noundef zeroext 23, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i21.i, label %if.else.i.bnxt_hwrm_func_cfg.exit.i_crit_edge

if.else.i.bnxt_hwrm_func_cfg.exit.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_func_cfg.exit.i

if.end.i21.i:                                     ; preds = %if.else.i
  %call3.i.i = call i32 @bnxt_get_avail_cp_rings_for_en(ptr noundef %bp) #7
  %div.i9.i = udiv i32 %call3.i.i, %26
  %conv.i10.i = trunc i32 %div.i9.i to i16
  %call4.i.i = call i32 @bnxt_get_avail_stat_ctxs_for_en(ptr noundef %bp) #7
  %div5.i.i = udiv i32 %call4.i.i, %26
  %conv6.i.i = trunc i32 %div5.i.i to i16
  %flags.i11.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %216 = ptrtoint ptr %flags.i11.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %flags.i11.i, align 8
  %and.i12.i = and i32 %217, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool7.not.i.i = icmp eq i32 %and.i12.i, 0
  %max_rx_rings12.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 10
  %218 = ptrtoint ptr %max_rx_rings12.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %max_rx_rings12.i.i, align 2
  %conv13.i.i = zext i16 %219 to i32
  %rx_nr_rings14.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 33
  %220 = ptrtoint ptr %rx_nr_rings14.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rx_nr_rings14.i.i, align 8
  %mul.neg.i.i = mul i32 %221, -2
  %222 = sub i32 0, %221
  %sub.pn.p.i.i = select i1 %tobool7.not.i.i, i32 %222, i32 %mul.neg.i.i
  %sub.pn.i.i = add i32 %sub.pn.p.i.i, %conv13.i.i
  %vf_rx_rings.0.in.i.i = sdiv i32 %sub.pn.i.i, %26
  %vf_rx_rings.0.i13.i = trunc i32 %vf_rx_rings.0.in.i.i to i16
  %max_hw_ring_grps.i14.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 13
  %223 = ptrtoint ptr %max_hw_ring_grps.i14.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %max_hw_ring_grps.i14.i, align 2
  %conv19.i.i = zext i16 %224 to i32
  %sub21.i.i = sub i32 %conv19.i.i, %221
  %div22.i.i = sdiv i32 %sub21.i.i, %26
  %conv23.i.i = trunc i32 %div22.i.i to i16
  %max_tx_rings.i15.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 6
  %225 = ptrtoint ptr %max_tx_rings.i15.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %max_tx_rings.i15.i, align 2
  %conv24.i.i = zext i16 %226 to i32
  %tx_nr_rings.i16.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 38
  %227 = ptrtoint ptr %tx_nr_rings.i16.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tx_nr_rings.i16.i, align 4
  %sub25.i.i = sub i32 %conv24.i.i, %228
  %div26.i.i = sdiv i32 %sub25.i.i, %26
  %conv27.i.i = trunc i32 %div26.i.i to i16
  %max_vnics.i17.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 18
  %229 = ptrtoint ptr %max_vnics.i17.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %max_vnics.i17.i, align 2
  %conv28.i.i = zext i16 %230 to i32
  %nr_vnics.i18.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 51
  %231 = ptrtoint ptr %nr_vnics.i18.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nr_vnics.i18.i, align 8
  %sub29.i.i = sub i32 %conv28.i.i, %232
  %div30.i.i = sdiv i32 %sub29.i.i, %26
  %conv32.i19.i = and i32 %div30.i.i, 65535
  %conv33.i.i = and i32 %vf_rx_rings.0.in.i.i, 65535
  %233 = call i32 @llvm.umin.i32(i32 %conv32.i19.i, i32 %conv33.i.i) #7
  %conv37.i20.i = trunc i32 %233 to i16
  %234 = ptrtoint ptr %req.i6.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %req.i6.i, align 4
  %enables.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 8
  %236 = ptrtoint ptr %enables.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -16709632, ptr %enables.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %237 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i.i, align 4
  %mtu38.i.i = getelementptr inbounds %struct.net_device, ptr %238, i32 0, i32 20
  %239 = ptrtoint ptr %mtu38.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %mtu38.i.i, align 4
  %241 = trunc i32 %240 to i16
  %conv40.i.i = add i16 %241, 18
  %242 = call i16 @llvm.bswap.i16(i16 %conv40.i.i) #7
  %mru.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 10
  %243 = ptrtoint ptr %mru.i.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %242, ptr %mru.i.i, align 2
  %admin_mtu.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 9
  %244 = ptrtoint ptr %admin_mtu.i.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %242, ptr %admin_mtu.i.i, align 4
  %num_rsscos_ctxs.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 11
  %245 = ptrtoint ptr %num_rsscos_ctxs.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 256, ptr %num_rsscos_ctxs.i.i, align 8
  %246 = call i16 @llvm.bswap.i16(i16 %conv.i10.i) #7
  %num_cmpl_rings.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 12
  %247 = ptrtoint ptr %num_cmpl_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %246, ptr %num_cmpl_rings.i.i, align 2
  %248 = call i16 @llvm.bswap.i16(i16 %conv27.i.i) #7
  %num_tx_rings.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 13
  %249 = ptrtoint ptr %num_tx_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %num_tx_rings.i.i, align 4
  %250 = call i16 @llvm.bswap.i16(i16 %vf_rx_rings.0.i13.i) #7
  %num_rx_rings.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 14
  %251 = ptrtoint ptr %num_rx_rings.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %num_rx_rings.i.i, align 2
  %252 = call i16 @llvm.bswap.i16(i16 %conv23.i.i) #7
  %num_hw_ring_grps.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 18
  %253 = ptrtoint ptr %num_hw_ring_grps.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %252, ptr %num_hw_ring_grps.i.i, align 2
  %num_l2_ctxs.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 15
  %254 = ptrtoint ptr %num_l2_ctxs.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1024, ptr %num_l2_ctxs.i.i, align 8
  %255 = call i16 @llvm.bswap.i16(i16 %conv37.i20.i) #7
  %num_vnics.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 16
  %256 = ptrtoint ptr %num_vnics.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %255, ptr %num_vnics.i.i, align 2
  %257 = call i16 @llvm.bswap.i16(i16 %conv6.i.i) #7
  %num_stat_ctxs.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %235, i32 0, i32 17
  %258 = ptrtoint ptr %num_stat_ctxs.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %num_stat_ctxs.i.i, align 4
  %call42.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %235) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp43188.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp43188.not.i.i, label %if.end.i21.i.for.end.i29.i_crit_edge, label %for.body.lr.ph.i24.i

if.end.i21.i.for.end.i29.i_crit_edge:             ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i29.i

for.body.lr.ph.i24.i:                             ; preds = %if.end.i21.i
  %conv45.i.i = and i32 %div26.i.i, 65535
  %first_vf_id.i22.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 3
  %active_vfs.i23.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  %vf.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 18
  br label %for.body.i25.i

for.body.i25.i:                                   ; preds = %for.inc.i.i.for.body.i25.i_crit_edge, %for.body.lr.ph.i24.i
  %i.0190.i.i = phi i32 [ 0, %for.body.lr.ph.i24.i ], [ %inc.i.i, %for.inc.i.i.for.body.i25.i_crit_edge ]
  %total_vf_tx_rings.0189.i.i = phi i32 [ 0, %for.body.lr.ph.i24.i ], [ %add62.i.i, %for.inc.i.i.for.body.i25.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf_tx_rsvd.i.i) #7
  %259 = ptrtoint ptr %vf_tx_rsvd.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %conv45.i.i, ptr %vf_tx_rsvd.i.i, align 4
  %260 = ptrtoint ptr %first_vf_id.i22.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %first_vf_id.i22.i, align 4
  %add46.i.i = add i32 %261, %i.0190.i.i
  %conv47.i.i = trunc i32 %add46.i.i to i16
  %262 = call i16 @llvm.bswap.i16(i16 %conv47.i.i) #7
  %263 = ptrtoint ptr %req.i6.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %req.i6.i, align 4
  %fid.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %264, i32 0, i32 5
  %265 = ptrtoint ptr %fid.i.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %262, ptr %fid.i.i, align 8
  %call48.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end51.i.i, label %for.body.i25.i.cleanup.thread.i.i_crit_edge

for.body.i25.i.cleanup.thread.i.i_crit_edge:      ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i

if.end51.i.i:                                     ; preds = %for.body.i25.i
  %266 = trunc i32 %i.0190.i.i to i16
  %conv53.i.i = add i16 %266, 1
  %267 = ptrtoint ptr %active_vfs.i23.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv53.i.i, ptr %active_vfs.i23.i, align 4
  %268 = ptrtoint ptr %req.i6.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %req.i6.i, align 4
  %fid54.i.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %269, i32 0, i32 5
  %270 = ptrtoint ptr %fid54.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %fid54.i.i, align 8
  %272 = call i16 @llvm.bswap.i16(i16 %271) #7
  %273 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %vf.i.i, align 4
  %arrayidx.i26.i = getelementptr %struct.bnxt_vf_info, ptr %274, i32 %i.0190.i.i
  %275 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %272, ptr %arrayidx.i26.i, align 4
  %276 = load ptr, ptr %vf.i.i, align 4
  %arrayidx56.i.i = getelementptr %struct.bnxt_vf_info, ptr %276, i32 %i.0190.i.i
  %277 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx56.i.i, align 4
  %call58.i.i = call i32 @__bnxt_hwrm_get_tx_rings(ptr noundef %bp, i16 noundef zeroext %278, ptr noundef nonnull %vf_tx_rsvd.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %for.inc.i.i, label %if.end51.i.i.cleanup.thread.i.i_crit_edge

if.end51.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end51.i.i.cleanup.thread.i.i_crit_edge, %for.body.i25.i.cleanup.thread.i.i_crit_edge
  %rc.1.ph.i.i = phi i32 [ %call58.i.i, %if.end51.i.i.cleanup.thread.i.i_crit_edge ], [ %call48.i.i, %for.body.i25.i.cleanup.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf_tx_rsvd.i.i) #7
  br label %for.end.i29.i

for.inc.i.i:                                      ; preds = %if.end51.i.i
  %279 = ptrtoint ptr %vf_tx_rsvd.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %vf_tx_rsvd.i.i, align 4
  %add62.i.i = add i32 %280, %total_vf_tx_rings.0189.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf_tx_rsvd.i.i) #7
  %inc.i.i = add nuw i32 %i.0190.i.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i27.i, label %for.inc.i.i.for.end.i29.i_crit_edge, label %for.inc.i.i.for.body.i25.i_crit_edge

for.inc.i.i.for.body.i25.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i25.i

for.inc.i.i.for.end.i29.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i29.i

for.end.i29.i:                                    ; preds = %for.inc.i.i.for.end.i29.i_crit_edge, %cleanup.thread.i.i, %if.end.i21.i.for.end.i29.i_crit_edge
  %total_vf_tx_rings.0187.i.i = phi i32 [ %total_vf_tx_rings.0189.i.i, %cleanup.thread.i.i ], [ 0, %if.end.i21.i.for.end.i29.i_crit_edge ], [ %add62.i.i, %for.inc.i.i.for.end.i29.i_crit_edge ]
  %rc.2.i28.i = phi i32 [ %rc.1.ph.i.i, %cleanup.thread.i.i ], [ 0, %if.end.i21.i.for.end.i29.i_crit_edge ], [ 0, %for.inc.i.i.for.end.i29.i_crit_edge ]
  %281 = ptrtoint ptr %req.i6.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %req.i6.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %282) #7
  %active_vfs63.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  %283 = ptrtoint ptr %active_vfs63.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %active_vfs63.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %284)
  %tobool64.not.i.i = icmp eq i16 %284, 0
  br i1 %tobool64.not.i.i, label %for.end.i29.i.bnxt_hwrm_func_cfg.exit.i_crit_edge, label %if.then65.i.i

for.end.i29.i.bnxt_hwrm_func_cfg.exit.i_crit_edge: ; preds = %for.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_func_cfg.exit.i

if.then65.i.i:                                    ; preds = %for.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  %285 = ptrtoint ptr %max_tx_rings.i15.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %max_tx_rings.i15.i, align 2
  %287 = trunc i32 %total_vf_tx_rings.0187.i.i to i16
  %conv69.i.i = sub i16 %286, %287
  store i16 %conv69.i.i, ptr %max_tx_rings.i15.i, align 2
  %mul71.i.i = mul i32 %vf_rx_rings.0.in.i.i, %26
  %288 = ptrtoint ptr %max_rx_rings12.i.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %max_rx_rings12.i.i, align 2
  %290 = trunc i32 %mul71.i.i to i16
  %conv75.i30.i = sub i16 %289, %290
  store i16 %conv75.i30.i, ptr %max_rx_rings12.i.i, align 2
  %mul77.i.i = mul i32 %div22.i.i, %26
  %291 = ptrtoint ptr %max_hw_ring_grps.i14.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %max_hw_ring_grps.i14.i, align 2
  %293 = trunc i32 %mul77.i.i to i16
  %conv81.i31.i = sub i16 %292, %293
  store i16 %conv81.i31.i, ptr %max_hw_ring_grps.i14.i, align 2
  %mul83.i.i = mul i32 %div.i9.i, %26
  %max_cp_rings.i32.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 3
  %294 = ptrtoint ptr %max_cp_rings.i32.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %max_cp_rings.i32.i, align 2
  %296 = trunc i32 %mul83.i.i to i16
  %conv86.i.i = sub i16 %295, %296
  store i16 %conv86.i.i, ptr %max_cp_rings.i32.i, align 2
  %max_rsscos_ctxs.i33.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 1
  %297 = ptrtoint ptr %max_rsscos_ctxs.i33.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %max_rsscos_ctxs.i33.i, align 2
  %299 = trunc i32 %26 to i16
  %conv89.i.i = sub i16 %298, %299
  store i16 %conv89.i.i, ptr %max_rsscos_ctxs.i33.i, align 2
  %mul91.i.i = mul i32 %div5.i.i, %26
  %max_stat_ctxs.i34.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 119, i32 21
  %300 = ptrtoint ptr %max_stat_ctxs.i34.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %max_stat_ctxs.i34.i, align 2
  %302 = trunc i32 %mul91.i.i to i16
  %conv94.i.i = sub i16 %301, %302
  store i16 %conv94.i.i, ptr %max_stat_ctxs.i34.i, align 2
  %mul96.i.i = mul i32 %233, %26
  %303 = ptrtoint ptr %max_vnics.i17.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %max_vnics.i17.i, align 2
  %305 = trunc i32 %mul96.i.i to i16
  %conv100.i.i = sub i16 %304, %305
  store i16 %conv100.i.i, ptr %max_vnics.i17.i, align 2
  %conv102.i.i = zext i16 %284 to i32
  br label %bnxt_hwrm_func_cfg.exit.i

bnxt_hwrm_func_cfg.exit.i:                        ; preds = %if.then65.i.i, %for.end.i29.i.bnxt_hwrm_func_cfg.exit.i_crit_edge, %if.else.i.bnxt_hwrm_func_cfg.exit.i_crit_edge
  %retval.0.i35.i = phi i32 [ %call.i7.i, %if.else.i.bnxt_hwrm_func_cfg.exit.i_crit_edge ], [ %conv102.i.i, %if.then65.i.i ], [ %rc.2.i28.i, %for.end.i29.i.bnxt_hwrm_func_cfg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i6.i) #7
  br label %bnxt_func_cfg.exit

bnxt_func_cfg.exit:                               ; preds = %bnxt_hwrm_func_cfg.exit.i, %bnxt_hwrm_func_vf_resc_cfg.exit.i
  %retval.0.i24 = phi i32 [ %retval.0.i.i, %bnxt_hwrm_func_vf_resc_cfg.exit.i ], [ %retval.0.i35.i, %bnxt_hwrm_func_cfg.exit.i ]
  %306 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i24, i32 %307)
  %cmp.not = icmp eq i32 %retval.0.i24, %307
  br i1 %cmp.not, label %bnxt_func_cfg.exit.if.end8_crit_edge, label %if.then3

bnxt_func_cfg.exit.if.end8_crit_edge:             ; preds = %bnxt_func_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %bnxt_func_cfg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i24)
  %cmp4 = icmp slt i32 %retval.0.i24, 1
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %308 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev, align 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %309, ptr noundef nonnull @.str.4) #10
  %310 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %num_vfs, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %309, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i24) #10
  %311 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %retval.0.i24, ptr %num_vfs, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %bnxt_func_cfg.exit.if.end8_crit_edge
  %312 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %num_vfs, align 4
  call void @bnxt_ulp_sriov_cfg(ptr noundef %bp, i32 noundef %313) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %bnxt_hwrm_func_buf_rgtr.exit.cleanup_crit_edge, %bnxt_hwrm_func_buf_rgtr.exit.thread
  %retval.0 = phi i32 [ %retval.0.i24, %if.then5 ], [ 0, %if.end8 ], [ %call14.i, %bnxt_hwrm_func_buf_rgtr.exit.cleanup_crit_edge ], [ %call.i, %bnxt_hwrm_func_buf_rgtr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ulp_sriov_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_sriov_disable(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #7
  %conv = trunc i32 %call to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sriov_lock = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 126
  tail call void @mutex_lock_nested(ptr noundef %sriov_lock, i32 noundef 0) #7
  tail call void @bnxt_vf_reps_destroy(ptr noundef %bp) #7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call2 = tail call i32 @pci_vfs_assigned(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 211, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.if.then8.i_crit_edge

if.then4.if.then8.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i:                                         ; preds = %if.then4
  %5 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink21.i = load ptr, ptr %req.i, align 4
  %encap_async_event_target_id.i = getelementptr inbounds %struct.hwrm_fwd_async_event_cmpl_input, ptr %.sink21.i, i32 0, i32 5
  %6 = ptrtoint ptr %encap_async_event_target_id.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %encap_async_event_target_id.i, align 8
  %encap_async_event_cmpl.i = getelementptr inbounds %struct.hwrm_fwd_async_event_cmpl_input, ptr %.sink21.i, i32 0, i32 7
  %7 = ptrtoint ptr %encap_async_event_cmpl.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 11776, ptr %encap_async_event_cmpl.i, align 4
  %event_id5.i = getelementptr inbounds %struct.hwrm_async_event_cmpl, ptr %encap_async_event_cmpl.i, i32 0, i32 1
  %8 = ptrtoint ptr %event_id5.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8192, ptr %event_id5.i, align 2
  %call6.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %.sink21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge, label %if.end.i.if.then8.i_crit_edge

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_async_event_cmpl.exit

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.then4.if.then8.i_crit_edge
  %rc.019.i = phi i32 [ %call6.i, %if.end.i.if.then8.i_crit_edge ], [ %call.i, %if.then4.if.then8.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %rc.019.i) #10
  br label %bnxt_hwrm_fwd_async_event_cmpl.exit

bnxt_hwrm_fwd_async_event_cmpl.exit:              ; preds = %if.then8.i, %if.end.i.bnxt_hwrm_fwd_async_event_cmpl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %conv6 = and i32 %call, 65535
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %conv6) #10
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_sriov(ptr noundef %14) #7
  %conv8 = and i32 %call, 65535
  tail call fastcc void @bnxt_hwrm_func_vf_resource_free(ptr noundef %bp, i32 noundef %conv8)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %bnxt_hwrm_fwd_async_event_cmpl.exit
  call void @mutex_unlock(ptr noundef %sriov_lock) #7
  call fastcc void @bnxt_free_vf_resources(ptr noundef %bp)
  call void @rtnl_lock() #7
  %call12 = call i32 @bnxt_restore_pf_fw_resources(ptr noundef %bp) #7
  call void @rtnl_unlock() #7
  call void @bnxt_ulp_sriov_cfg(ptr noundef %bp, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_vf_reps_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_hwrm_func_vf_resource_free(ptr noundef %bp, i32 noundef %num_vfs) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 27, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %call2 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %2) #7
  %first_vf_id = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 3
  %3 = ptrtoint ptr %first_vf_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_vf_id, align 4
  %add1 = add i32 %4, %num_vfs
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add1)
  %cmp2 = icmp ult i32 %4, %add1
  br i1 %cmp2, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.03, 1
  %5 = ptrtoint ptr %first_vf_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_vf_id, align 4
  %add = add i32 %6, %num_vfs
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %4, %if.end.for.body_crit_edge ]
  %conv = trunc i32 %i.03 to i16
  %7 = call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %vf_id = getelementptr inbounds %struct.hwrm_func_vf_resc_free_input, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %vf_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %vf_id, align 8
  %call4 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_free_vf_resources(ptr nocapture noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %vf_event_bmap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 13
  %2 = ptrtoint ptr %vf_event_bmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_event_bmap, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %vf_event_bmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vf_event_bmap, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 16, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 0
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %6, i32 noundef %8, i32 noundef 0) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 16, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.1 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 1
  %12 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %13, i32 noundef 0) #7
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 16, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %16, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.2 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 2
  %17 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0) #7
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 16, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.3 = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 120, i32 17, i32 3
  %22 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %21, i32 noundef %23, i32 noundef 0) #7
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %active_vfs = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  %25 = ptrtoint ptr %active_vfs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %active_vfs, align 4
  %vf = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 18
  %26 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vf, align 4
  tail call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %vf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_restore_pf_fw_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_sriov_configure(ptr nocapture noundef readonly %pdev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  %num_vfs.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %num_vfs, ptr %num_vfs.addr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 2304
  %flags = getelementptr i8, ptr %2, i32 2400
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #7
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.8) #10
  tail call void @rtnl_unlock() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %2, i32 2660
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.9) #10
  tail call void @rtnl_unlock() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %sriov_cfg = getelementptr i8, ptr %2, i32 3852
  %10 = ptrtoint ptr %sriov_cfg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %sriov_cfg, align 4
  tail call void @rtnl_unlock() #7
  %pdev9 = getelementptr i8, ptr %2, i32 2392
  %11 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev9, align 8
  %call10 = tail call i32 @pci_vfs_assigned(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %2, ptr noundef nonnull @.str.10) #10
  %13 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_vfs.addr, align 4
  br label %sriov_cfg_exit

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %tobool14.not = icmp eq i32 %num_vfs, 0
  br i1 %tobool14.not, label %if.end17.thread, label %land.lhs.true

if.end17.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bnxt_sriov_disable(ptr noundef %add.ptr.i)
  br label %sriov_cfg_exit

land.lhs.true:                                    ; preds = %if.end13
  %active_vfs = getelementptr i8, ptr %2, i32 3676
  %14 = ptrtoint ptr %active_vfs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %active_vfs, align 4
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %num_vfs)
  %cmp = icmp eq i32 %conv, %num_vfs
  br i1 %cmp, label %land.lhs.true.sriov_cfg_exit_crit_edge, label %while.body.lr.ph.i

land.lhs.true.sriov_cfg_exit_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sriov_cfg_exit

while.body.lr.ph.i:                               ; preds = %land.lhs.true
  tail call void @bnxt_sriov_disable(ptr noundef %add.ptr.i)
  %call.i = tail call i32 @bnxt_get_avail_cp_rings_for_en(ptr noundef %add.ptr.i) #7
  %call2.i = tail call i32 @bnxt_get_avail_stat_ctxs_for_en(ptr noundef %add.ptr.i) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 %call2.i) #7
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and.i = and i32 %18, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %max_rx_rings.i = getelementptr i8, ptr %2, i32 3628
  %rx_nr_rings.i = getelementptr i8, ptr %2, i32 2480
  %max_vnics.i = getelementptr i8, ptr %2, i32 3644
  %19 = ptrtoint ptr %max_vnics.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_vnics.i, align 2
  %conv16.i = zext i16 %20 to i32
  %nr_vnics.i = getelementptr i8, ptr %2, i32 2552
  %21 = ptrtoint ptr %nr_vnics.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_vnics.i, align 8
  %sub17.i = sub i32 %conv16.i, %22
  %max_tx_rings.i = getelementptr i8, ptr %2, i32 3620
  %23 = ptrtoint ptr %max_tx_rings.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_tx_rings.i, align 2
  %conv24.i = zext i16 %24 to i32
  %tx_nr_rings.i = getelementptr i8, ptr %2, i32 2500
  %25 = ptrtoint ptr %tx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_nr_rings.i, align 4
  %sub25.i = sub i32 %conv24.i, %26
  %max_rsscos_ctxs.i = getelementptr i8, ptr %2, i32 3610
  %27 = ptrtoint ptr %max_rsscos_ctxs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_rsscos_ctxs.i, align 2
  %conv32.i = zext i16 %28 to i32
  %rsscos_nr_ctxs.i = getelementptr i8, ptr %2, i32 2484
  %29 = ptrtoint ptr %rsscos_nr_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rsscos_nr_ctxs.i, align 4
  %sub33.i = sub i32 %conv32.i, %30
  %31 = ptrtoint ptr %max_rx_rings.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_rx_rings.i, align 2
  %conv8.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %rx_nr_rings.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_nr_rings.i, align 8
  %mul.neg.i = mul i32 %34, -2
  %35 = sub i32 0, %34
  %sub10.sink.p.i = select i1 %tobool3.not.i, i32 %35, i32 %mul.neg.i
  %sub10.sink.i = add i32 %sub10.sink.p.i, %conv8.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end44.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %rss_ok.012.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %rss_ok.1.i, %if.end44.i.while.body.i_crit_edge ]
  %rx_ok.011.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %rx_ok.2.i, %if.end44.i.while.body.i_crit_edge ]
  %tx_ok.010.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %tx_ok.1.i, %if.end44.i.while.body.i_crit_edge ]
  %vfs_supported.09.i = phi i32 [ %num_vfs, %while.body.lr.ph.i ], [ %dec.i, %if.end44.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub10.sink.i, i32 %vfs_supported.09.i)
  %cmp11.not.i = icmp slt i32 %sub10.sink.i, %vfs_supported.09.i
  %spec.select1.i = select i1 %cmp11.not.i, i32 %rx_ok.011.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %vfs_supported.09.i)
  %cmp18.i = icmp slt i32 %sub17.i, %vfs_supported.09.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %vfs_supported.09.i)
  %cmp20.i = icmp slt i32 %16, %vfs_supported.09.i
  %or.cond.i = select i1 %cmp18.i, i1 true, i1 %cmp20.i
  %rx_ok.2.i = select i1 %or.cond.i, i32 0, i32 %spec.select1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25.i, i32 %vfs_supported.09.i)
  %cmp26.not.i = icmp slt i32 %sub25.i, %vfs_supported.09.i
  %or.cond2.i = select i1 %cmp26.not.i, i1 true, i1 %cmp20.i
  %tx_ok.1.i = select i1 %or.cond2.i, i32 %tx_ok.010.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i, i32 %vfs_supported.09.i)
  %cmp34.not.i = icmp slt i32 %sub33.i, %vfs_supported.09.i
  %rss_ok.1.i = select i1 %cmp34.not.i, i32 %rss_ok.012.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ok.1.i)
  %tobool38.not.i = icmp eq i32 %tx_ok.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_ok.2.i)
  %tobool40.not.i = icmp eq i32 %rx_ok.2.i, 0
  %or.cond3.i = select i1 %tobool38.not.i, i1 true, i1 %tobool40.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rss_ok.1.i)
  %tobool42.not.i = icmp eq i32 %rss_ok.1.i, 0
  %or.cond4.i = select i1 %or.cond3.i, i1 true, i1 %tobool42.not.i
  br i1 %or.cond4.i, label %if.end44.i, label %if.end47.i

if.end44.i:                                       ; preds = %while.body.i
  %dec.i = add i32 %vfs_supported.09.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then46.i, label %if.end44.i.while.body.i_crit_edge

if.end44.i.while.body.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %2, i32 2388
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.15) #10
  br label %sriov_cfg_exit

if.end47.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %vfs_supported.09.i, i32 %num_vfs)
  %cmp48.not.i = icmp eq i32 %vfs_supported.09.i, %num_vfs
  br i1 %cmp48.not.i, label %if.end47.i.if.end52.i_crit_edge, label %if.then50.i

if.end47.i.if.end52.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev51.i = getelementptr i8, ptr %2, i32 2388
  %38 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev51.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef %num_vfs, i32 noundef %vfs_supported.09.i) #10
  %40 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %vfs_supported.09.i, ptr %num_vfs.addr, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end52.i_crit_edge
  %41 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev9, align 8
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %vfs_supported.09.i, i32 40) #7
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !50

kcalloc.exit.thread.i.i:                          ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %vf86.i.i = getelementptr i8, ptr %2, i32 3748
  %45 = ptrtoint ptr %vf86.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %vf86.i.i, align 4
  br label %err_out1.i

if.end7.i.i.i.i:                                  ; preds = %if.end52.i
  %46 = extractvalue { i32, i1 } %43, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #11
  %vf.i.i = getelementptr i8, ptr %2, i32 3748
  %47 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i.i.i, ptr %vf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.err_out1.i_crit_edge, label %if.end7.i.i.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i.i
  br label %for.body.i.i.i

if.end7.i.i.i.i.err_out1.i_crit_edge:             ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out1.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end7.i.i.i.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.for.body.i.i.i_crit_edge ]
  %48 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vf.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %49, i32 %i.02.i.i.i
  %50 = call ptr @memset(ptr %arrayidx.i.i.i, i32 0, i32 40)
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %vfs_supported.09.i
  br i1 %exitcond.not.i.i.i, label %bnxt_set_vf_attr.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

bnxt_set_vf_attr.exit.i.i:                        ; preds = %for.body.i.i.i
  %51 = lshr i32 %vfs_supported.09.i, 5
  %div84.i.i = and i32 %51, 1048575
  %52 = and i32 %vfs_supported.09.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.i.i = icmp ne i32 %52, 0
  %inc.i.i = zext i1 %tobool5.not.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %div84.i.i, %inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp97.not.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %cmp97.not.i.i, label %bnxt_set_vf_attr.exit.i.i.for.end40.i.i_crit_edge, label %for.body.lr.ph.i.i

bnxt_set_vf_attr.exit.i.i.for.end40.i.i_crit_edge: ; preds = %bnxt_set_vf_attr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40.i.i

for.body.lr.ph.i.i:                               ; preds = %bnxt_set_vf_attr.exit.i.i
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc38.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %k.099.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %k.1.lcssa.i.i, %for.inc38.i.i.for.body.i.i_crit_edge ]
  %i.098.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc39.i.i, %for.inc38.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 120, i32 17, i32 %i.098.i.i
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4096, ptr noundef %arrayidx.i.i, i32 noundef 3264, i32 noundef 0) #7
  %arrayidx11.i.i = getelementptr %struct.bnxt, ptr %add.ptr.i, i32 0, i32 120, i32 16, i32 %i.098.i.i
  %53 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i.i, ptr %arrayidx11.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i.i, label %for.body.i.i.err_out1.i_crit_edge, label %for.cond18.preheader.i.i

for.body.i.i.err_out1.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out1.i

for.cond18.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.099.i.i, i32 %vfs_supported.09.i)
  %cmp2093.i.i = icmp ult i32 %k.099.i.i, %vfs_supported.09.i
  br i1 %cmp2093.i.i, label %for.cond18.preheader.i.i.for.body21.i.i_crit_edge, label %for.cond18.preheader.i.i.for.inc38.i.i_crit_edge

for.cond18.preheader.i.i.for.inc38.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.i.i

for.cond18.preheader.i.i.for.body21.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge
  %k.196.i.i = phi i32 [ %inc36.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ %k.099.i.i, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge ]
  %j.095.i.i = phi i32 [ %inc37.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge ]
  %54 = ptrtoint ptr %vf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vf.i.i, align 4
  %56 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx11.i.i, align 4
  %mul29.i.i = shl nuw nsw i32 %j.095.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 %mul29.i.i
  %hwrm_cmd_req_addr30.i.i = getelementptr %struct.bnxt_vf_info, ptr %55, i32 %k.196.i.i, i32 8
  %58 = ptrtoint ptr %hwrm_cmd_req_addr30.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i, ptr %hwrm_cmd_req_addr30.i.i, align 4
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %60, %mul29.i.i
  %hwrm_cmd_req_dma_addr35.i.i = getelementptr %struct.bnxt_vf_info, ptr %55, i32 %k.196.i.i, i32 9
  %61 = ptrtoint ptr %hwrm_cmd_req_dma_addr35.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i.i, ptr %hwrm_cmd_req_dma_addr35.i.i, align 4
  %inc36.i.i = add nuw i32 %k.196.i.i, 1
  %inc37.i.i = add nuw nsw i32 %j.095.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.095.i.i)
  %cmp19.i.i = icmp ult i32 %j.095.i.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %inc36.i.i, i32 %vfs_supported.09.i)
  %cmp20.i.i = icmp ult i32 %inc36.i.i, %vfs_supported.09.i
  %or.cond.i.i = select i1 %cmp19.i.i, i1 %cmp20.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge, label %for.body21.i.i.for.inc38.i.i_crit_edge

for.body21.i.i.for.inc38.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc38.i.i

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i

for.inc38.i.i:                                    ; preds = %for.body21.i.i.for.inc38.i.i_crit_edge, %for.cond18.preheader.i.i.for.inc38.i.i_crit_edge
  %k.1.lcssa.i.i = phi i32 [ %k.099.i.i, %for.cond18.preheader.i.i.for.inc38.i.i_crit_edge ], [ %inc36.i.i, %for.body21.i.i.for.inc38.i.i_crit_edge ]
  %inc39.i.i = add nuw nsw i32 %i.098.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc39.i.i, %spec.select.i.i
  br i1 %exitcond.not.i.i, label %for.inc38.i.i.for.end40.i.i_crit_edge, label %for.inc38.i.i.for.body.i.i_crit_edge

for.inc38.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc38.i.i.for.end40.i.i_crit_edge:            ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40.i.i

for.end40.i.i:                                    ; preds = %for.inc38.i.i.for.end40.i.i_crit_edge, %bnxt_set_vf_attr.exit.i.i.for.end40.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 16) #12
  %vf_event_bmap.i.i = getelementptr i8, ptr %2, i32 3708
  %63 = ptrtoint ptr %vf_event_bmap.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i.i, ptr %vf_event_bmap.i.i, align 4
  %tobool45.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool45.not.i.i, label %for.end40.i.i.err_out1.i_crit_edge, label %if.end56.i

for.end40.i.i.err_out1.i_crit_edge:               ; preds = %for.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out1.i

if.end56.i:                                       ; preds = %for.end40.i.i
  %conv.i.i = trunc i32 %spec.select.i.i to i16
  %hwrm_cmd_req_pages.i.i = getelementptr i8, ptr %2, i32 3712
  %64 = ptrtoint ptr %hwrm_cmd_req_pages.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i.i, ptr %hwrm_cmd_req_pages.i.i, align 4
  %call57.i = call i32 @bnxt_cfg_hw_sriov(ptr noundef %add.ptr.i, ptr noundef nonnull %num_vfs.addr, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.err_out2.i_crit_edge

if.end56.i.err_out2.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out2.i

if.end60.i:                                       ; preds = %if.end56.i
  %65 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev9, align 8
  %67 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_vfs.addr, align 4
  %call61.i = tail call i32 @pci_enable_sriov(ptr noundef %66, i32 noundef %68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end60.i.sriov_cfg_exit_crit_edge, label %if.end60.i.err_out2.i_crit_edge

if.end60.i.err_out2.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out2.i

if.end60.i.sriov_cfg_exit_crit_edge:              ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sriov_cfg_exit

err_out2.i:                                       ; preds = %if.end60.i.err_out2.i_crit_edge, %if.end56.i.err_out2.i_crit_edge
  %69 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_vfs.addr, align 4
  tail call fastcc void @bnxt_hwrm_func_vf_resource_free(ptr noundef %add.ptr.i, i32 noundef %70) #7
  br label %err_out1.i

err_out1.i:                                       ; preds = %err_out2.i, %for.end40.i.i.err_out1.i_crit_edge, %for.body.i.i.err_out1.i_crit_edge, %if.end7.i.i.i.i.err_out1.i_crit_edge, %kcalloc.exit.thread.i.i
  tail call fastcc void @bnxt_free_vf_resources(ptr noundef %add.ptr.i) #7
  br label %sriov_cfg_exit

sriov_cfg_exit:                                   ; preds = %err_out1.i, %if.end60.i.sriov_cfg_exit_crit_edge, %if.then46.i, %land.lhs.true.sriov_cfg_exit_crit_edge, %if.end17.thread, %if.then12
  %71 = ptrtoint ptr %sriov_cfg to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %sriov_cfg, align 4
  %sriov_cfg_wait = getelementptr i8, ptr %2, i32 3800
  tail call void @__wake_up(ptr noundef %sriov_cfg_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %72 = ptrtoint ptr %num_vfs.addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_vfs.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %sriov_cfg_exit, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %73, %sriov_cfg_exit ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_hwrm_exec_fwd_req(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i29.i.i = alloca ptr, align 4
  %req.i.i34.i = alloca ptr, align 4
  %phy_qcfg_resp.sroa.15.i.i = alloca [40 x i8], align 2
  %phy_qcfg_resp.sroa.17.i.i = alloca [40 x i8], align 1
  %req.i86.i.i = alloca ptr, align 4
  %req.i73.i.i = alloca ptr, align 4
  %req.i.i1.i = alloca ptr, align 4
  %req.i58.i.i = alloca ptr, align 4
  %req.i45.i.i = alloca ptr, align 4
  %req.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active_vfs1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 4
  %0 = ptrtoint ptr %active_vfs1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %active_vfs1, align 4
  %conv = zext i16 %1 to i32
  %vf_event_bmap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 13
  %2 = ptrtoint ptr %vf_event_bmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_event_bmap, align 4
  %call16 = call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %conv, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %conv)
  %cmp.not17 = icmp ult i32 %call16, %conv
  br i1 %cmp.not17, label %if.end.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %vf = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 18
  %link_lock.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 133
  %phy_qcfg_resp1.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41
  %phy_qcfg_resp.sroa.7.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 4
  %phy_qcfg_resp.sroa.10.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 5
  %phy_qcfg_resp.sroa.1039.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 6
  %phy_qcfg_resp.sroa.12.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 7
  %phy_qcfg_resp.sroa.13.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 8
  %phy_qcfg_resp.sroa.15.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 9
  %phy_qcfg_resp.sroa.1543.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 35
  %phy_qcfg_resp.sroa.17.0.phy_qcfg_resp1.sroa_idx.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 134, i32 41, i32 36
  %dev.i34.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %bnxt_vf_req_validate_snd.exit.if.end_crit_edge, %if.end.lr.ph
  %call18 = phi i32 [ %call16, %if.end.lr.ph ], [ %call, %bnxt_vf_req_validate_snd.exit.if.end_crit_edge ]
  %4 = ptrtoint ptr %vf_event_bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_event_bmap, align 4
  call void @_clear_bit(i32 noundef %call18, ptr noundef %5) #7
  %6 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf, align 4
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18
  %hwrm_cmd_req_addr.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 8
  %8 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = call i16 @llvm.bswap.i16(i16 %11) #7
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %12, label %if.end.bnxt_vf_req_validate_snd.exit_crit_edge [
    i16 15, label %sw.bb.i
    i16 144, label %sw.bb2.i
    i16 39, label %sw.bb6.i
  ]

if.end.bnxt_vf_req_validate_snd.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_vf_req_validate_snd.exit

sw.bb.i:                                          ; preds = %if.end
  %enables.i.i = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %enables.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enables.i.i, align 8
  %and.i.i = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end17.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %call.i.i = call zeroext i1 @bnxt_is_trusted_vf(ptr noundef %bp, ptr noundef %arrayidx) #7
  %dflt_mac_addr.i.i = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %dflt_mac_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dflt_mac_addr.i.i, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i.i, label %is_valid_ether_addr.exit.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

is_valid_ether_addr.exit.i.i:                     ; preds = %if.then.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.hwrm_func_vf_cfg_input, ptr %9, i32 0, i32 9, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %20 to i32
  %or.i.i.i.i = or i32 %17, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %is_valid_ether_addr.exit.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

is_valid_ether_addr.exit.i.i.if.end.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %is_valid_ether_addr.exit.i.i
  br i1 %call.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %mac_addr.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 1
  %21 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mac_addr.i.i, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i36.i.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i36.i.i, label %is_valid_ether_addr.exit42.i.i, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

is_valid_ether_addr.exit42.i.i:                   ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i37.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i37.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i37.i.i, align 2
  %conv.i.i38.i.i = zext i16 %25 to i32
  %or.i.i39.i.i = or i32 %22, %conv.i.i38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i39.i.i)
  %cmp.i.i40.not.i.i = icmp eq i32 %or.i.i39.i.i, 0
  br i1 %cmp.i.i40.not.i.i, label %is_valid_ether_addr.exit42.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false5.i.i

is_valid_ether_addr.exit42.i.i.if.then11.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

lor.lhs.false5.i.i:                               ; preds = %is_valid_ether_addr.exit42.i.i
  %xor.i.i.i = xor i32 %22, %17
  %xor37.i.i.i = xor i16 %25, %20
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false5.i.i.if.then11.i.i_crit_edge, label %lor.lhs.false5.i.i.if.end.i.i_crit_edge

lor.lhs.false5.i.i.if.end.i.i_crit_edge:          ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

lor.lhs.false5.i.i.if.then11.i.i_crit_edge:       ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false5.i.i.if.then11.i.i_crit_edge, %is_valid_ether_addr.exit42.i.i.if.then11.i.i_crit_edge, %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge
  %vf_mac_addr.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 2
  %26 = ptrtoint ptr %vf_mac_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %17, ptr %vf_mac_addr.i.i, align 4
  %27 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i44.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 2, i32 4
  %29 = ptrtoint ptr %add.ptr1.i44.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i44.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i.i) #7
  %30 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i.i, align 4, !annotation !49
  %call.i.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i.i, i16 noundef zeroext 208, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i.i, label %if.then11.i.i.if.then6.i.i.i_crit_edge

if.then11.i.i.if.then6.i.i.i_crit_edge:           ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then11.i.i
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 4
  %33 = call i16 @llvm.bswap.i16(i16 %32) #7
  %34 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i.i.i, align 4
  %target_id.i.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %target_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %target_id.i.i.i, align 2
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx, align 4
  %39 = call i16 @llvm.bswap.i16(i16 %38) #7
  %encap_resp_target_id.i.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %35, i32 0, i32 6
  %40 = ptrtoint ptr %encap_resp_target_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %encap_resp_target_id.i.i.i, align 8
  %encap_request.i.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %35, i32 0, i32 5
  %41 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %43 = call ptr @memcpy(ptr %encap_request.i.i.i, ptr %42, i32 56)
  %call3.i.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end4.i.i.i.bnxt_hwrm_exec_fwd_resp.exit.i.i_crit_edge, label %if.end4.i.i.i.if.then6.i.i.i_crit_edge

if.end4.i.i.i.if.then6.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i.i

if.end4.i.i.i.bnxt_hwrm_exec_fwd_resp.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_exec_fwd_resp.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end4.i.i.i.if.then6.i.i.i_crit_edge, %if.then11.i.i.if.then6.i.i.i_crit_edge
  %rc.019.i.i.i = phi i32 [ %call3.i.i.i, %if.end4.i.i.i.if.then6.i.i.i_crit_edge ], [ %call.i.i.i, %if.then11.i.i.if.then6.i.i.i_crit_edge ]
  %44 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %rc.019.i.i.i) #10
  br label %bnxt_hwrm_exec_fwd_resp.exit.i.i

bnxt_hwrm_exec_fwd_resp.exit.i.i:                 ; preds = %if.then6.i.i.i, %if.end4.i.i.i.bnxt_hwrm_exec_fwd_resp.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #7
  br label %bnxt_vf_req_validate_snd.exit

if.end.i.i:                                       ; preds = %lor.lhs.false5.i.i.if.end.i.i_crit_edge, %is_valid_ether_addr.exit.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i45.i.i) #7
  %46 = ptrtoint ptr %req.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i45.i.i, align 4, !annotation !49
  %call.i46.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i45.i.i, i16 noundef zeroext 209, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i.i)
  %tobool.not.i47.i.i = icmp eq i32 %call.i46.i.i, 0
  br i1 %tobool.not.i47.i.i, label %if.end4.i54.i.i, label %if.end.i.i.if.then6.i57.i.i_crit_edge

if.end.i.i.if.then6.i57.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i57.i.i

if.end4.i54.i.i:                                  ; preds = %if.end.i.i
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 4
  %49 = call i16 @llvm.bswap.i16(i16 %48) #7
  %50 = ptrtoint ptr %req.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req.i45.i.i, align 4
  %target_id.i48.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %target_id.i48.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %49, ptr %target_id.i48.i.i, align 2
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx, align 4
  %55 = call i16 @llvm.bswap.i16(i16 %54) #7
  %encap_resp_target_id.i49.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %51, i32 0, i32 6
  %56 = ptrtoint ptr %encap_resp_target_id.i49.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %encap_resp_target_id.i49.i.i, align 8
  %encap_request.i50.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %51, i32 0, i32 5
  %57 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %59 = call ptr @memcpy(ptr %encap_request.i50.i.i, ptr %58, i32 56)
  %call3.i52.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i52.i.i)
  %tobool5.not.i53.i.i = icmp eq i32 %call3.i52.i.i, 0
  br i1 %tobool5.not.i53.i.i, label %if.end4.i54.i.i.bnxt_hwrm_fwd_err_resp.exit.i.i_crit_edge, label %if.end4.i54.i.i.if.then6.i57.i.i_crit_edge

if.end4.i54.i.i.if.then6.i57.i.i_crit_edge:       ; preds = %if.end4.i54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i57.i.i

if.end4.i54.i.i.bnxt_hwrm_fwd_err_resp.exit.i.i_crit_edge: ; preds = %if.end4.i54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_err_resp.exit.i.i

if.then6.i57.i.i:                                 ; preds = %if.end4.i54.i.i.if.then6.i57.i.i_crit_edge, %if.end.i.i.if.then6.i57.i.i_crit_edge
  %rc.019.i55.i.i = phi i32 [ %call3.i52.i.i, %if.end4.i54.i.i.if.then6.i57.i.i_crit_edge ], [ %call.i46.i.i, %if.end.i.i.if.then6.i57.i.i_crit_edge ]
  %60 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.17, i32 noundef %rc.019.i55.i.i) #10
  br label %bnxt_hwrm_fwd_err_resp.exit.i.i

bnxt_hwrm_fwd_err_resp.exit.i.i:                  ; preds = %if.then6.i57.i.i, %if.end4.i54.i.i.bnxt_hwrm_fwd_err_resp.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i45.i.i) #7
  br label %bnxt_vf_req_validate_snd.exit

if.end17.i.i:                                     ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i58.i.i) #7
  %62 = ptrtoint ptr %req.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i58.i.i, align 4, !annotation !49
  %call.i59.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i58.i.i, i16 noundef zeroext 208, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i.i)
  %tobool.not.i60.i.i = icmp eq i32 %call.i59.i.i, 0
  br i1 %tobool.not.i60.i.i, label %if.end4.i67.i.i, label %if.end17.i.i.if.then6.i70.i.i_crit_edge

if.end17.i.i.if.then6.i70.i.i_crit_edge:          ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i70.i.i

if.end4.i67.i.i:                                  ; preds = %if.end17.i.i
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx, align 4
  %65 = call i16 @llvm.bswap.i16(i16 %64) #7
  %66 = ptrtoint ptr %req.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %req.i58.i.i, align 4
  %target_id.i61.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %target_id.i61.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %65, ptr %target_id.i61.i.i, align 2
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx, align 4
  %71 = call i16 @llvm.bswap.i16(i16 %70) #7
  %encap_resp_target_id.i62.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %67, i32 0, i32 6
  %72 = ptrtoint ptr %encap_resp_target_id.i62.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %encap_resp_target_id.i62.i.i, align 8
  %encap_request.i63.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %67, i32 0, i32 5
  %73 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %75 = call ptr @memcpy(ptr %encap_request.i63.i.i, ptr %74, i32 56)
  %call3.i65.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i65.i.i)
  %tobool5.not.i66.i.i = icmp eq i32 %call3.i65.i.i, 0
  br i1 %tobool5.not.i66.i.i, label %if.end4.i67.i.i.bnxt_hwrm_exec_fwd_resp.exit72.i.i_crit_edge, label %if.end4.i67.i.i.if.then6.i70.i.i_crit_edge

if.end4.i67.i.i.if.then6.i70.i.i_crit_edge:       ; preds = %if.end4.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i70.i.i

if.end4.i67.i.i.bnxt_hwrm_exec_fwd_resp.exit72.i.i_crit_edge: ; preds = %if.end4.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_exec_fwd_resp.exit72.i.i

if.then6.i70.i.i:                                 ; preds = %if.end4.i67.i.i.if.then6.i70.i.i_crit_edge, %if.end17.i.i.if.then6.i70.i.i_crit_edge
  %rc.019.i68.i.i = phi i32 [ %call3.i65.i.i, %if.end4.i67.i.i.if.then6.i70.i.i_crit_edge ], [ %call.i59.i.i, %if.end17.i.i.if.then6.i70.i.i_crit_edge ]
  %76 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.18, i32 noundef %rc.019.i68.i.i) #10
  br label %bnxt_hwrm_exec_fwd_resp.exit72.i.i

bnxt_hwrm_exec_fwd_resp.exit72.i.i:               ; preds = %if.then6.i70.i.i, %if.end4.i67.i.i.bnxt_hwrm_exec_fwd_resp.exit72.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i58.i.i) #7
  br label %bnxt_vf_req_validate_snd.exit

sw.bb2.i:                                         ; preds = %if.end
  %l2_addr.i.i = getelementptr inbounds %struct.hwrm_cfa_l2_filter_alloc_input, ptr %9, i32 0, i32 7
  %78 = ptrtoint ptr %l2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %l2_addr.i.i, align 4
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i.i3.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i.i3.i, label %is_valid_ether_addr.exit.i8.i, label %sw.bb2.i.if.then.i11.i_crit_edge

sw.bb2.i.if.then.i11.i_crit_edge:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i11.i

is_valid_ether_addr.exit.i8.i:                    ; preds = %sw.bb2.i
  %add.ptr.i.i.i4.i = getelementptr %struct.hwrm_cfa_l2_filter_alloc_input, ptr %9, i32 0, i32 7, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i.i4.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i.i4.i, align 2
  %conv.i.i.i5.i = zext i16 %82 to i32
  %or.i.i.i6.i = or i32 %79, %conv.i.i.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i6.i)
  %cmp.i.i.not.i7.i = icmp eq i32 %or.i.i.i6.i, 0
  br i1 %cmp.i.i.not.i7.i, label %is_valid_ether_addr.exit.i8.i.if.then.i11.i_crit_edge, label %if.end.i23.i

is_valid_ether_addr.exit.i8.i.if.then.i11.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i11.i

if.then.i11.i:                                    ; preds = %is_valid_ether_addr.exit.i8.i.if.then.i11.i_crit_edge, %sw.bb2.i.if.then.i11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i1.i) #7
  %83 = ptrtoint ptr %req.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i1.i, align 4, !annotation !49
  %call.i.i9.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i1.i, i16 noundef zeroext 209, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %call.i.i9.i, 0
  br i1 %tobool.not.i.i10.i, label %if.end4.i.i17.i, label %if.then.i11.i.if.then6.i.i20.i_crit_edge

if.then.i11.i.if.then6.i.i20.i_crit_edge:         ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i20.i

if.end4.i.i17.i:                                  ; preds = %if.then.i11.i
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85) #7
  %87 = ptrtoint ptr %req.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %req.i.i1.i, align 4
  %target_id.i.i12.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %target_id.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %86, ptr %target_id.i.i12.i, align 2
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx, align 4
  %92 = call i16 @llvm.bswap.i16(i16 %91) #7
  %encap_resp_target_id.i.i13.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %88, i32 0, i32 6
  %93 = ptrtoint ptr %encap_resp_target_id.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %encap_resp_target_id.i.i13.i, align 8
  %encap_request.i.i14.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %88, i32 0, i32 5
  %94 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %96 = call ptr @memcpy(ptr %encap_request.i.i14.i, ptr %95, i32 96)
  %call3.i.i15.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i15.i)
  %tobool5.not.i.i16.i = icmp eq i32 %call3.i.i15.i, 0
  br i1 %tobool5.not.i.i16.i, label %if.end4.i.i17.i.bnxt_hwrm_fwd_err_resp.exit.i22.i_crit_edge, label %if.end4.i.i17.i.if.then6.i.i20.i_crit_edge

if.end4.i.i17.i.if.then6.i.i20.i_crit_edge:       ; preds = %if.end4.i.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i20.i

if.end4.i.i17.i.bnxt_hwrm_fwd_err_resp.exit.i22.i_crit_edge: ; preds = %if.end4.i.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_err_resp.exit.i22.i

if.then6.i.i20.i:                                 ; preds = %if.end4.i.i17.i.if.then6.i.i20.i_crit_edge, %if.then.i11.i.if.then6.i.i20.i_crit_edge
  %rc.019.i.i18.i = phi i32 [ %call3.i.i15.i, %if.end4.i.i17.i.if.then6.i.i20.i_crit_edge ], [ %call.i.i9.i, %if.then.i11.i.if.then6.i.i20.i_crit_edge ]
  %97 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %98, ptr noundef nonnull @.str.17, i32 noundef %rc.019.i.i18.i) #10
  br label %bnxt_hwrm_fwd_err_resp.exit.i22.i

bnxt_hwrm_fwd_err_resp.exit.i22.i:                ; preds = %if.then6.i.i20.i, %if.end4.i.i17.i.bnxt_hwrm_fwd_err_resp.exit.i22.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i1.i) #7
  br label %bnxt_vf_req_validate_snd.exit

if.end.i23.i:                                     ; preds = %is_valid_ether_addr.exit.i8.i
  %call2.i.i = call zeroext i1 @bnxt_is_trusted_vf(ptr noundef %bp, ptr noundef %arrayidx) #7
  br i1 %call2.i.i, label %if.end.i23.i.if.then29.i.i_crit_edge, label %if.else.i.i

if.end.i23.i.if.then29.i.i_crit_edge:             ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.else.i.i:                                      ; preds = %if.end.i23.i
  %mac_addr.i24.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 1
  %99 = ptrtoint ptr %mac_addr.i24.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mac_addr.i24.i, align 4
  %101 = and i32 %100, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i52.i.i = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i52.i.i, label %is_valid_ether_addr.exit58.i.i, label %if.else.i.i.if.else14.i.i_crit_edge

if.else.i.i.if.else14.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i.i

is_valid_ether_addr.exit58.i.i:                   ; preds = %if.else.i.i
  %add.ptr.i.i53.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 1, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i53.i.i, align 2
  %conv.i.i54.i.i = zext i16 %103 to i32
  %or.i.i55.i.i = or i32 %100, %conv.i.i54.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i55.i.i)
  %cmp.i.i56.not.i.i = icmp eq i32 %or.i.i55.i.i, 0
  br i1 %cmp.i.i56.not.i.i, label %is_valid_ether_addr.exit58.i.i.if.else14.i.i_crit_edge, label %if.then6.i.i

is_valid_ether_addr.exit58.i.i.if.else14.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else14.i.i

if.then6.i.i:                                     ; preds = %is_valid_ether_addr.exit58.i.i
  %104 = ptrtoint ptr %l2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %l2_addr.i.i, align 4
  %xor.i.i25.i = xor i32 %105, %100
  %106 = ptrtoint ptr %add.ptr.i.i.i4.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i.i4.i, align 2
  %xor37.i.i26.i = xor i16 %107, %103
  %xor3.i.i27.i = zext i16 %xor37.i.i26.i to i32
  %or.i.i28.i = or i32 %xor.i.i25.i, %xor3.i.i27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i28.i)
  %cmp.i.i29.i = icmp eq i32 %or.i.i28.i, 0
  br i1 %cmp.i.i29.i, label %if.then6.i.i.if.then29.i.i_crit_edge, label %if.then6.i.i.if.end31.i.i_crit_edge

if.then6.i.i.if.end31.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.then6.i.i.if.then29.i.i_crit_edge:             ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.else14.i.i:                                    ; preds = %is_valid_ether_addr.exit58.i.i.if.else14.i.i_crit_edge, %if.else.i.i.if.else14.i.i_crit_edge
  %vf_mac_addr.i30.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 2
  %108 = ptrtoint ptr %vf_mac_addr.i30.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vf_mac_addr.i30.i, align 4
  %110 = and i32 %109, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i.not.i59.i.i = icmp eq i32 %110, 0
  br i1 %tobool.i.not.i59.i.i, label %is_valid_ether_addr.exit65.i.i, label %if.else14.i.i.if.then29.i.i_crit_edge

if.else14.i.i.if.then29.i.i_crit_edge:            ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

is_valid_ether_addr.exit65.i.i:                   ; preds = %if.else14.i.i
  %add.ptr.i.i60.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 2, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i60.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i.i60.i.i, align 2
  %conv.i.i61.i.i = zext i16 %112 to i32
  %or.i.i62.i.i = or i32 %109, %conv.i.i61.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i62.i.i)
  %cmp.i.i63.not.i.i = icmp eq i32 %or.i.i62.i.i, 0
  br i1 %cmp.i.i63.not.i.i, label %is_valid_ether_addr.exit65.i.i.if.then29.i.i_crit_edge, label %if.end28.i.i

is_valid_ether_addr.exit65.i.i.if.then29.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.end28.i.i:                                     ; preds = %is_valid_ether_addr.exit65.i.i
  %113 = ptrtoint ptr %l2_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %l2_addr.i.i, align 4
  %xor.i66.i.i = xor i32 %114, %109
  %115 = ptrtoint ptr %add.ptr.i.i.i4.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr.i.i.i4.i, align 2
  %xor37.i69.i.i = xor i16 %116, %112
  %xor3.i70.i.i = zext i16 %xor37.i69.i.i to i32
  %or.i71.i.i = or i32 %xor.i66.i.i, %xor3.i70.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i71.i.i)
  %cmp.i72.i.i = icmp eq i32 %or.i71.i.i, 0
  br i1 %cmp.i72.i.i, label %if.end28.i.i.if.then29.i.i_crit_edge, label %if.end28.i.i.if.end31.i.i_crit_edge

if.end28.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.end28.i.i.if.then29.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end28.i.i.if.then29.i.i_crit_edge, %is_valid_ether_addr.exit65.i.i.if.then29.i.i_crit_edge, %if.else14.i.i.if.then29.i.i_crit_edge, %if.then6.i.i.if.then29.i.i_crit_edge, %if.end.i23.i.if.then29.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i73.i.i) #7
  %117 = ptrtoint ptr %req.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i73.i.i, align 4, !annotation !49
  %call.i74.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i73.i.i, i16 noundef zeroext 208, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i.i)
  %tobool.not.i75.i.i = icmp eq i32 %call.i74.i.i, 0
  br i1 %tobool.not.i75.i.i, label %if.end4.i82.i.i, label %if.then29.i.i.if.then6.i85.i.i_crit_edge

if.then29.i.i.if.then6.i85.i.i_crit_edge:         ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i85.i.i

if.end4.i82.i.i:                                  ; preds = %if.then29.i.i
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx, align 4
  %120 = call i16 @llvm.bswap.i16(i16 %119) #7
  %121 = ptrtoint ptr %req.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %req.i73.i.i, align 4
  %target_id.i76.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %target_id.i76.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %120, ptr %target_id.i76.i.i, align 2
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx, align 4
  %126 = call i16 @llvm.bswap.i16(i16 %125) #7
  %encap_resp_target_id.i77.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %122, i32 0, i32 6
  %127 = ptrtoint ptr %encap_resp_target_id.i77.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %encap_resp_target_id.i77.i.i, align 8
  %encap_request.i78.i.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %122, i32 0, i32 5
  %128 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %130 = call ptr @memcpy(ptr %encap_request.i78.i.i, ptr %129, i32 96)
  %call3.i80.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i80.i.i)
  %tobool5.not.i81.i.i = icmp eq i32 %call3.i80.i.i, 0
  br i1 %tobool5.not.i81.i.i, label %if.end4.i82.i.i.bnxt_hwrm_exec_fwd_resp.exit.i32.i_crit_edge, label %if.end4.i82.i.i.if.then6.i85.i.i_crit_edge

if.end4.i82.i.i.if.then6.i85.i.i_crit_edge:       ; preds = %if.end4.i82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i85.i.i

if.end4.i82.i.i.bnxt_hwrm_exec_fwd_resp.exit.i32.i_crit_edge: ; preds = %if.end4.i82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_exec_fwd_resp.exit.i32.i

if.then6.i85.i.i:                                 ; preds = %if.end4.i82.i.i.if.then6.i85.i.i_crit_edge, %if.then29.i.i.if.then6.i85.i.i_crit_edge
  %rc.019.i83.i.i = phi i32 [ %call3.i80.i.i, %if.end4.i82.i.i.if.then6.i85.i.i_crit_edge ], [ %call.i74.i.i, %if.then29.i.i.if.then6.i85.i.i_crit_edge ]
  %131 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %132, ptr noundef nonnull @.str.18, i32 noundef %rc.019.i83.i.i) #10
  br label %bnxt_hwrm_exec_fwd_resp.exit.i32.i

bnxt_hwrm_exec_fwd_resp.exit.i32.i:               ; preds = %if.then6.i85.i.i, %if.end4.i82.i.i.bnxt_hwrm_exec_fwd_resp.exit.i32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i73.i.i) #7
  br label %bnxt_vf_req_validate_snd.exit

if.end31.i.i:                                     ; preds = %if.end28.i.i.if.end31.i.i_crit_edge, %if.then6.i.i.if.end31.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i86.i.i) #7
  %133 = ptrtoint ptr %req.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i86.i.i, align 4, !annotation !49
  %call.i87.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i86.i.i, i16 noundef zeroext 209, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i.i)
  %tobool.not.i88.i.i = icmp eq i32 %call.i87.i.i, 0
  br i1 %tobool.not.i88.i.i, label %if.end4.i95.i.i, label %if.end31.i.i.if.then6.i98.i.i_crit_edge

if.end31.i.i.if.then6.i98.i.i_crit_edge:          ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i98.i.i

if.end4.i95.i.i:                                  ; preds = %if.end31.i.i
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx, align 4
  %136 = call i16 @llvm.bswap.i16(i16 %135) #7
  %137 = ptrtoint ptr %req.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req.i86.i.i, align 4
  %target_id.i89.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %target_id.i89.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %136, ptr %target_id.i89.i.i, align 2
  %140 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx, align 4
  %142 = call i16 @llvm.bswap.i16(i16 %141) #7
  %encap_resp_target_id.i90.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %138, i32 0, i32 6
  %143 = ptrtoint ptr %encap_resp_target_id.i90.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %encap_resp_target_id.i90.i.i, align 8
  %encap_request.i91.i.i = getelementptr inbounds %struct.hwrm_reject_fwd_resp_input, ptr %138, i32 0, i32 5
  %144 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %146 = call ptr @memcpy(ptr %encap_request.i91.i.i, ptr %145, i32 96)
  %call3.i93.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %138) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i93.i.i)
  %tobool5.not.i94.i.i = icmp eq i32 %call3.i93.i.i, 0
  br i1 %tobool5.not.i94.i.i, label %if.end4.i95.i.i.bnxt_hwrm_fwd_err_resp.exit100.i.i_crit_edge, label %if.end4.i95.i.i.if.then6.i98.i.i_crit_edge

if.end4.i95.i.i.if.then6.i98.i.i_crit_edge:       ; preds = %if.end4.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i98.i.i

if.end4.i95.i.i.bnxt_hwrm_fwd_err_resp.exit100.i.i_crit_edge: ; preds = %if.end4.i95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_err_resp.exit100.i.i

if.then6.i98.i.i:                                 ; preds = %if.end4.i95.i.i.if.then6.i98.i.i_crit_edge, %if.end31.i.i.if.then6.i98.i.i_crit_edge
  %rc.019.i96.i.i = phi i32 [ %call3.i93.i.i, %if.end4.i95.i.i.if.then6.i98.i.i_crit_edge ], [ %call.i87.i.i, %if.end31.i.i.if.then6.i98.i.i_crit_edge ]
  %147 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %148, ptr noundef nonnull @.str.17, i32 noundef %rc.019.i96.i.i) #10
  br label %bnxt_hwrm_fwd_err_resp.exit100.i.i

bnxt_hwrm_fwd_err_resp.exit100.i.i:               ; preds = %if.then6.i98.i.i, %if.end4.i95.i.i.bnxt_hwrm_fwd_err_resp.exit100.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i86.i.i) #7
  br label %bnxt_vf_req_validate_snd.exit

sw.bb6.i:                                         ; preds = %if.end
  %flags.i.i = getelementptr %struct.bnxt_vf_info, ptr %7, i32 %call18, i32 5
  %149 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i.i, align 4
  %and.i35.i = and i32 %150, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i)
  %tobool.not.i36.i = icmp eq i32 %and.i35.i, 0
  br i1 %tobool.not.i36.i, label %if.then.i39.i, label %if.else.i52.i

if.then.i39.i:                                    ; preds = %sw.bb6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i34.i) #7
  %151 = ptrtoint ptr %req.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i34.i, align 4, !annotation !49
  %call.i.i37.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i34.i, i16 noundef zeroext 208, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %tobool.not.i.i38.i = icmp eq i32 %call.i.i37.i, 0
  br i1 %tobool.not.i.i38.i, label %if.end4.i.i45.i, label %if.then.i39.i.if.then6.i.i48.i_crit_edge

if.then.i39.i.if.then6.i.i48.i_crit_edge:         ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i48.i

if.end4.i.i45.i:                                  ; preds = %if.then.i39.i
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx, align 4
  %154 = call i16 @llvm.bswap.i16(i16 %153) #7
  %155 = ptrtoint ptr %req.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %req.i.i34.i, align 4
  %target_id.i.i40.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %target_id.i.i40.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %154, ptr %target_id.i.i40.i, align 2
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx, align 4
  %160 = call i16 @llvm.bswap.i16(i16 %159) #7
  %encap_resp_target_id.i.i41.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %156, i32 0, i32 6
  %161 = ptrtoint ptr %encap_resp_target_id.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %encap_resp_target_id.i.i41.i, align 8
  %encap_request.i.i42.i = getelementptr inbounds %struct.hwrm_exec_fwd_resp_input, ptr %156, i32 0, i32 5
  %162 = ptrtoint ptr %hwrm_cmd_req_addr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hwrm_cmd_req_addr.i, align 4
  %164 = call ptr @memcpy(ptr %encap_request.i.i42.i, ptr %163, i32 24)
  %call3.i.i43.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i43.i)
  %tobool5.not.i.i44.i = icmp eq i32 %call3.i.i43.i, 0
  br i1 %tobool5.not.i.i44.i, label %if.end4.i.i45.i.bnxt_hwrm_exec_fwd_resp.exit.i50.i_crit_edge, label %if.end4.i.i45.i.if.then6.i.i48.i_crit_edge

if.end4.i.i45.i.if.then6.i.i48.i_crit_edge:       ; preds = %if.end4.i.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i48.i

if.end4.i.i45.i.bnxt_hwrm_exec_fwd_resp.exit.i50.i_crit_edge: ; preds = %if.end4.i.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_exec_fwd_resp.exit.i50.i

if.then6.i.i48.i:                                 ; preds = %if.end4.i.i45.i.if.then6.i.i48.i_crit_edge, %if.then.i39.i.if.then6.i.i48.i_crit_edge
  %rc.019.i.i46.i = phi i32 [ %call3.i.i43.i, %if.end4.i.i45.i.if.then6.i.i48.i_crit_edge ], [ %call.i.i37.i, %if.then.i39.i.if.then6.i.i48.i_crit_edge ]
  %165 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %166, ptr noundef nonnull @.str.18, i32 noundef %rc.019.i.i46.i) #10
  br label %bnxt_hwrm_exec_fwd_resp.exit.i50.i

bnxt_hwrm_exec_fwd_resp.exit.i50.i:               ; preds = %if.then6.i.i48.i, %if.end4.i.i45.i.bnxt_hwrm_exec_fwd_resp.exit.i50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i34.i) #7
  br label %bnxt_vf_req_validate_snd.exit

if.else.i52.i:                                    ; preds = %sw.bb6.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %phy_qcfg_resp.sroa.15.i.i)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %phy_qcfg_resp.sroa.17.i.i)
  call void @mutex_lock_nested(ptr noundef %link_lock.i.i, i32 noundef 0) #7
  %167 = ptrtoint ptr %phy_qcfg_resp1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %phy_qcfg_resp1.i.i, align 4
  %169 = ptrtoint ptr %phy_qcfg_resp.sroa.7.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %phy_qcfg_resp.sroa.7.0.copyload.i.i = load i8, ptr %phy_qcfg_resp.sroa.7.0.phy_qcfg_resp1.sroa_idx.i.i, align 4
  %170 = ptrtoint ptr %phy_qcfg_resp.sroa.10.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %phy_qcfg_resp.sroa.10.0.copyload.i.i = load i8, ptr %phy_qcfg_resp.sroa.10.0.phy_qcfg_resp1.sroa_idx.i.i, align 1
  %171 = ptrtoint ptr %phy_qcfg_resp.sroa.1039.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %phy_qcfg_resp.sroa.1039.0.copyload.i.i = load i16, ptr %phy_qcfg_resp.sroa.1039.0.phy_qcfg_resp1.sroa_idx.i.i, align 2
  %172 = ptrtoint ptr %phy_qcfg_resp.sroa.12.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %phy_qcfg_resp.sroa.12.0.copyload.i.i = load i8, ptr %phy_qcfg_resp.sroa.12.0.phy_qcfg_resp1.sroa_idx.i.i, align 4
  %173 = ptrtoint ptr %phy_qcfg_resp.sroa.13.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %phy_qcfg_resp.sroa.13.0.copyload.i.i = load i8, ptr %phy_qcfg_resp.sroa.13.0.phy_qcfg_resp1.sroa_idx.i.i, align 1
  %174 = call ptr @memcpy(ptr %phy_qcfg_resp.sroa.15.i.i, ptr %phy_qcfg_resp.sroa.15.0.phy_qcfg_resp1.sroa_idx.i.i, i32 40)
  %175 = ptrtoint ptr %phy_qcfg_resp.sroa.1543.0.phy_qcfg_resp1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %phy_qcfg_resp.sroa.1543.0.copyload.i.i = load i8, ptr %phy_qcfg_resp.sroa.1543.0.phy_qcfg_resp1.sroa_idx.i.i, align 2
  %176 = call ptr @memcpy(ptr %phy_qcfg_resp.sroa.17.i.i, ptr %phy_qcfg_resp.sroa.17.0.phy_qcfg_resp1.sroa_idx.i.i, i32 40)
  call void @mutex_unlock(ptr noundef %link_lock.i.i) #7
  %seq_id.i.i = getelementptr inbounds %struct.hwrm_port_phy_qcfg_input, ptr %9, i32 0, i32 2
  %177 = ptrtoint ptr %seq_id.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %seq_id.i.i, align 4
  %179 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags.i.i, align 4
  %and5.i.i = and i32 %180, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i52.i.if.end16.i.i_crit_edge, label %if.then7.i.i

if.else.i52.i.if.end16.i.i_crit_edge:             ; preds = %if.else.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then7.i.i:                                     ; preds = %if.else.i52.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %phy_qcfg_resp.sroa.7.0.copyload.i.i)
  %cmp.not.i.i = icmp eq i8 %phy_qcfg_resp.sroa.7.0.copyload.i.i, 2
  br i1 %cmp.not.i.i, label %if.then7.i.i.if.end16.i.i_crit_edge, label %if.then9.i.i

if.then7.i.i.if.end16.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then9.i.i, %if.then7.i.i.if.end16.i.i_crit_edge, %if.else.i52.i.if.end16.i.i_crit_edge
  %phy_qcfg_resp.sroa.7.0.i.i = phi i8 [ 2, %if.then7.i.i.if.end16.i.i_crit_edge ], [ 2, %if.then9.i.i ], [ 0, %if.else.i52.i.if.end16.i.i_crit_edge ]
  %phy_qcfg_resp.sroa.1039.0.i.i = phi i16 [ %phy_qcfg_resp.sroa.1039.0.copyload.i.i, %if.then7.i.i.if.end16.i.i_crit_edge ], [ 25600, %if.then9.i.i ], [ 0, %if.else.i52.i.if.end16.i.i_crit_edge ]
  %phy_qcfg_resp.sroa.12.0.i.i = phi i8 [ %phy_qcfg_resp.sroa.12.0.copyload.i.i, %if.then7.i.i.if.end16.i.i_crit_edge ], [ 1, %if.then9.i.i ], [ %phy_qcfg_resp.sroa.12.0.copyload.i.i, %if.else.i52.i.if.end16.i.i_crit_edge ]
  %phy_qcfg_resp.sroa.13.0.i.i = phi i8 [ %phy_qcfg_resp.sroa.13.0.copyload.i.i, %if.then7.i.i.if.end16.i.i_crit_edge ], [ 3, %if.then9.i.i ], [ 0, %if.else.i52.i.if.end16.i.i_crit_edge ]
  %phy_qcfg_resp.sroa.1543.0.i.i = phi i8 [ %phy_qcfg_resp.sroa.1543.0.copyload.i.i, %if.then7.i.i.if.end16.i.i_crit_edge ], [ 1, %if.then9.i.i ], [ 0, %if.else.i52.i.if.end16.i.i_crit_edge ]
  %resp_addr.i.i = getelementptr inbounds %struct.hwrm_port_phy_qcfg_input, ptr %9, i32 0, i32 4
  %181 = ptrtoint ptr %resp_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %resp_addr.i.i, align 8
  %cmpl_ring.i.i = getelementptr inbounds %struct.hwrm_port_phy_qcfg_input, ptr %9, i32 0, i32 1
  %183 = ptrtoint ptr %cmpl_ring.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %cmpl_ring.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i29.i.i) #7
  %185 = ptrtoint ptr %req.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i29.i.i, align 4, !annotation !49
  %call.i30.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i29.i.i, i16 noundef zeroext 210, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %if.end6.i.i.i, label %if.end16.i.i.if.then8.i.i.i_crit_edge

if.end16.i.i.if.then8.i.i.i_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end16.i.i
  %186 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx, align 4
  %188 = call i16 @llvm.bswap.i16(i16 %187) #7
  %189 = ptrtoint ptr %req.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %req.i29.i.i, align 4
  %target_id.i32.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %target_id.i32.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %188, ptr %target_id.i32.i.i, align 2
  %192 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx, align 4
  %194 = call i16 @llvm.bswap.i16(i16 %193) #7
  %encap_resp_target_id.i33.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 5
  %195 = ptrtoint ptr %encap_resp_target_id.i33.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %encap_resp_target_id.i33.i.i, align 8
  %encap_resp_len.i.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 7
  %196 = ptrtoint ptr %encap_resp_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 24576, ptr %encap_resp_len.i.i.i, align 4
  %encap_resp_addr3.i.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 10
  %197 = ptrtoint ptr %encap_resp_addr3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %182, ptr %encap_resp_addr3.i.i.i, align 8
  %encap_resp_cmpl_ring.i.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 6
  %198 = ptrtoint ptr %encap_resp_cmpl_ring.i.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %184, ptr %encap_resp_cmpl_ring.i.i.i, align 2
  %encap_resp4.i.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 11
  %199 = ptrtoint ptr %encap_resp4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %168, ptr %encap_resp4.i.i.i, align 8
  %phy_qcfg_resp.sroa.5.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 11, i32 1
  %200 = ptrtoint ptr %phy_qcfg_resp.sroa.5.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %178, ptr %phy_qcfg_resp.sroa.5.0.encap_resp4.i.sroa_idx.i.i, align 4
  %phy_qcfg_resp.sroa.6.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 6
  %201 = ptrtoint ptr %phy_qcfg_resp.sroa.6.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 24576, ptr %phy_qcfg_resp.sroa.6.0.encap_resp4.i.sroa_idx.i.i, align 2
  %phy_qcfg_resp.sroa.7.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 11, i32 2
  %202 = ptrtoint ptr %phy_qcfg_resp.sroa.7.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %phy_qcfg_resp.sroa.7.0.i.i, ptr %phy_qcfg_resp.sroa.7.0.encap_resp4.i.sroa_idx.i.i, align 8
  %phy_qcfg_resp.sroa.10.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 9
  %203 = ptrtoint ptr %phy_qcfg_resp.sroa.10.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %phy_qcfg_resp.sroa.10.0.copyload.i.i, ptr %phy_qcfg_resp.sroa.10.0.encap_resp4.i.sroa_idx.i.i, align 1
  %phy_qcfg_resp.sroa.1039.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 10
  %204 = ptrtoint ptr %phy_qcfg_resp.sroa.1039.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %phy_qcfg_resp.sroa.1039.0.i.i, ptr %phy_qcfg_resp.sroa.1039.0.encap_resp4.i.sroa_idx.i.i, align 2
  %phy_qcfg_resp.sroa.12.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds %struct.hwrm_fwd_resp_input, ptr %190, i32 0, i32 11, i32 3
  %205 = ptrtoint ptr %phy_qcfg_resp.sroa.12.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %phy_qcfg_resp.sroa.12.0.i.i, ptr %phy_qcfg_resp.sroa.12.0.encap_resp4.i.sroa_idx.i.i, align 4
  %phy_qcfg_resp.sroa.13.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 13
  %206 = ptrtoint ptr %phy_qcfg_resp.sroa.13.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %phy_qcfg_resp.sroa.13.0.i.i, ptr %phy_qcfg_resp.sroa.13.0.encap_resp4.i.sroa_idx.i.i, align 1
  %phy_qcfg_resp.sroa.15.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 14
  %207 = call ptr @memcpy(ptr %phy_qcfg_resp.sroa.15.0.encap_resp4.i.sroa_idx.i.i, ptr %phy_qcfg_resp.sroa.15.i.i, i32 40)
  %phy_qcfg_resp.sroa.1543.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 54
  %208 = ptrtoint ptr %phy_qcfg_resp.sroa.1543.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %phy_qcfg_resp.sroa.1543.0.i.i, ptr %phy_qcfg_resp.sroa.1543.0.encap_resp4.i.sroa_idx.i.i, align 2
  %phy_qcfg_resp.sroa.17.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 55
  %209 = call ptr @memcpy(ptr %phy_qcfg_resp.sroa.17.0.encap_resp4.i.sroa_idx.i.i, ptr %phy_qcfg_resp.sroa.17.i.i, i32 40)
  %phy_qcfg_resp.sroa.1745.0.encap_resp4.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %encap_resp4.i.i.i, i32 95
  %210 = ptrtoint ptr %phy_qcfg_resp.sroa.1745.0.encap_resp4.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %phy_qcfg_resp.sroa.1745.0.encap_resp4.i.sroa_idx.i.i, align 1
  %call5.i.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %190) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end6.i.i.i.bnxt_hwrm_fwd_resp.exit.i.i_crit_edge, label %if.end6.i.i.i.if.then8.i.i.i_crit_edge

if.end6.i.i.i.if.then8.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i.i

if.end6.i.i.i.bnxt_hwrm_fwd_resp.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_hwrm_fwd_resp.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i.if.then8.i.i.i_crit_edge, %if.end16.i.i.if.then8.i.i.i_crit_edge
  %rc.03.i.i.i = phi i32 [ %call5.i.i.i, %if.end6.i.i.i.if.then8.i.i.i_crit_edge ], [ %call.i30.i.i, %if.end16.i.i.if.then8.i.i.i_crit_edge ]
  %211 = ptrtoint ptr %dev.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i34.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %212, ptr noundef nonnull @.str.19, i32 noundef %rc.03.i.i.i) #10
  br label %bnxt_hwrm_fwd_resp.exit.i.i

bnxt_hwrm_fwd_resp.exit.i.i:                      ; preds = %if.then8.i.i.i, %if.end6.i.i.i.bnxt_hwrm_fwd_resp.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i29.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %phy_qcfg_resp.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %phy_qcfg_resp.sroa.17.i.i)
  br label %bnxt_vf_req_validate_snd.exit

bnxt_vf_req_validate_snd.exit:                    ; preds = %bnxt_hwrm_fwd_resp.exit.i.i, %bnxt_hwrm_exec_fwd_resp.exit.i50.i, %bnxt_hwrm_fwd_err_resp.exit100.i.i, %bnxt_hwrm_exec_fwd_resp.exit.i32.i, %bnxt_hwrm_fwd_err_resp.exit.i22.i, %bnxt_hwrm_exec_fwd_resp.exit72.i.i, %bnxt_hwrm_fwd_err_resp.exit.i.i, %bnxt_hwrm_exec_fwd_resp.exit.i.i, %if.end.bnxt_vf_req_validate_snd.exit_crit_edge
  %add = add nuw i32 %call18, 1
  %213 = ptrtoint ptr %vf_event_bmap to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %vf_event_bmap, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef %214, i32 noundef %conv, i32 noundef %add) #7
  %cmp.not = icmp ult i32 %call, %conv
  br i1 %cmp.not, label %bnxt_vf_req_validate_snd.exit.if.end_crit_edge, label %bnxt_vf_req_validate_snd.exit.while.end_crit_edge

bnxt_vf_req_validate_snd.exit.while.end_crit_edge: ; preds = %bnxt_vf_req_validate_snd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

bnxt_vf_req_validate_snd.exit.if.end_crit_edge:   ; preds = %bnxt_vf_req_validate_snd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.end:                                        ; preds = %bnxt_vf_req_validate_snd.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_approve_mac(ptr noundef %bp, ptr noundef %mac, i1 noundef zeroext %strict) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %3 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66050, i32 %4)
  %cmp = icmp ult i32 %4, 66050
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %mac_addr = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 123, i32 1
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac_addr, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then1
  %add.ptr.i.i = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 123, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %is_valid_ether_addr.exit.mac_done_crit_edge

is_valid_ether_addr.exit.mac_done_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_done

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 15, i32 noundef 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.mac_done_crit_edge

if.end4.mac_done_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_done

if.end8:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %enables = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 134217728, ptr %enables, align 8
  %dflt_mac_addr = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %11, i32 0, i32 9
  %13 = call ptr @memcpy(ptr %dflt_mac_addr, ptr %mac, i32 6)
  br i1 %strict, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @hwrm_req_flags(ptr noundef %bp, ptr noundef %11, i32 noundef 4) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %call13 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %15) #7
  br label %mac_done

mac_done:                                         ; preds = %if.end12, %if.end4.mac_done_crit_edge, %is_valid_ether_addr.exit.mac_done_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end4.mac_done_crit_edge ], [ %call13, %if.end12 ], [ -99, %is_valid_ether_addr.exit.mac_done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool14.not = icmp ne i32 %rc.0, 0
  %16 = and i1 %tobool14.not, %strict
  br i1 %16, label %if.then16, label %mac_done.cleanup_crit_edge

mac_done.cleanup_crit_edge:                       ; preds = %mac_done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %mac_done
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef %mac) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %mac_done.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %if.then16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %mac_done.cleanup_crit_edge ], [ 0, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_update_vf_mac(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !49
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 21, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 4
  %fid = getelementptr inbounds %struct.hwrm_func_qcaps_input, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %fid, align 8
  %call1 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %2) #7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %call2 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end34.critedge

if.end5:                                          ; preds = %if.end
  %mac_address = getelementptr inbounds %struct.hwrm_func_qcaps_output, ptr %call1, i32 0, i32 7
  %mac_addr = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 123, i32 1
  %6 = ptrtoint ptr %mac_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_address, align 4
  %8 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %9, %7
  %add.ptr.i = getelementptr %struct.hwrm_func_qcaps_output, ptr %call1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bnxt, ptr %bp, i32 0, i32 123, i32 1, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end5.if.end20_crit_edge, label %if.then8

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then8:                                         ; preds = %if.end5
  %14 = call ptr @memcpy(ptr %mac_addr, ptr %mac_address, i32 6)
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac_addr, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then8.if.end20_crit_edge

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

is_valid_ether_addr.exit:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %or.i.i = or i32 %16, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br label %if.end20

if.end20:                                         ; preds = %is_valid_ether_addr.exit, %if.then8.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %inform_pf.0.off0 = phi i1 [ false, %if.end5.if.end20_crit_edge ], [ true, %if.then8.if.end20_crit_edge ], [ %cmp.i.i.not, %is_valid_ether_addr.exit ]
  %20 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_addr, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i50 = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i50, label %is_valid_ether_addr.exit56, label %if.end20.update_vf_mac_exit_crit_edge

if.end20.update_vf_mac_exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_vf_mac_exit

is_valid_ether_addr.exit56:                       ; preds = %if.end20
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i, align 2
  %conv.i.i52 = zext i16 %24 to i32
  %or.i.i53 = or i32 %21, %conv.i.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i53)
  %cmp.i.i54.not = icmp eq i32 %or.i.i53, 0
  br i1 %cmp.i.i54.not, label %is_valid_ether_addr.exit56.update_vf_mac_exit_crit_edge, label %if.then25

is_valid_ether_addr.exit56.update_vf_mac_exit_crit_edge: ; preds = %is_valid_ether_addr.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_vf_mac_exit

if.then25:                                        ; preds = %is_valid_ether_addr.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  call void @dev_addr_mod(ptr noundef %26, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #7
  br label %update_vf_mac_exit

update_vf_mac_exit:                               ; preds = %if.then25, %is_valid_ether_addr.exit56.update_vf_mac_exit_crit_edge, %if.end20.update_vf_mac_exit_crit_edge
  %27 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %28) #7
  br i1 %inform_pf.0.off0, label %if.then31, label %update_vf_mac_exit.cleanup_crit_edge

update_vf_mac_exit.cleanup_crit_edge:             ; preds = %update_vf_mac_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %update_vf_mac_exit
  %dev32 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %29 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev32, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #7
  %33 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !49
  %flags.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then31.bnxt_approve_mac.exit_crit_edge, label %if.end.i

if.then31.bnxt_approve_mac.exit_crit_edge:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_approve_mac.exit

if.end.i:                                         ; preds = %if.then31
  %hwrm_spec_code.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %36 = ptrtoint ptr %hwrm_spec_code.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hwrm_spec_code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66050, i32 %37)
  %cmp.i57 = icmp ult i32 %37, 66050
  br i1 %cmp.i57, label %if.end.i.bnxt_approve_mac.exit_crit_edge, label %if.end4.i

if.end.i.bnxt_approve_mac.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_approve_mac.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 15, i32 noundef 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.bnxt_approve_mac.exit_crit_edge

if.end4.i.bnxt_approve_mac.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bnxt_approve_mac.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %req.i, align 4
  %enables.i = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 134217728, ptr %enables.i, align 8
  %dflt_mac_addr.i = getelementptr inbounds %struct.hwrm_func_vf_cfg_input, ptr %39, i32 0, i32 9
  %41 = call ptr @memcpy(ptr %dflt_mac_addr.i, ptr %32, i32 6)
  call void @hwrm_req_flags(ptr noundef %bp, ptr noundef %39, i32 noundef 4) #7
  %42 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req.i, align 4
  %call13.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %43) #7
  br label %bnxt_approve_mac.exit

bnxt_approve_mac.exit:                            ; preds = %if.end8.i, %if.end4.i.bnxt_approve_mac.exit_crit_edge, %if.end.i.bnxt_approve_mac.exit_crit_edge, %if.then31.bnxt_approve_mac.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #7
  br label %cleanup

if.end34.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %45) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34.critedge, %bnxt_approve_mac.exit, %update_vf_mac_exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_nq_rings_in_use(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_avail_cp_rings_for_en(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_avail_stat_ctxs_for_en(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bnxt_hwrm_get_tx_rings(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 230, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 305, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 311, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 357, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 743, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 747, i32 24}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 855, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 880, i32 20}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 886, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 891, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 899, i32 20}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 1180, i32 24}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 59, i32 23}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 63, i32 23}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 51, i32 23}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 807, i32 23}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 812, i32 24}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 968, i32 23}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 991, i32 23}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_sriov.c", i32 945, i32 23}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 1, i32 2000}
