; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
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
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
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
%struct.bnxt_vf_rep = type { ptr, ptr, ptr, i16, i16, i16, %struct.bnxt_vf_rep_stats, %struct.bnxt_vf_rep_stats }
%struct.bnxt_vf_rep_stats = type { i64, i64, i64 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.hwrm_cfa_vfr_free_input = type { i16, i16, i16, i16, i64, [32 x i8], i16, i16, [4 x i8] }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.171 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.171 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.172, i16, i8, i8, i32, i16, i16 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.hwrm_func_qcfg_input = type { i16, i16, i16, i16, i64, i16, [6 x i8] }
%struct.hwrm_func_qcfg_output = type { i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i32, i32, i8, i8, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i16, i16, i8, [3 x i8], i32, i32, i16, i16, i16, [5 x i8], i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.165, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.165 = type { ptr }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.hwrm_cfa_vfr_alloc_input = type { i16, i16, i16, i16, i64, i16, i16, [4 x i8], [32 x i8] }
%struct.hwrm_cfa_vfr_alloc_output = type { i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@bnxt_vf_rep_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bnxt_vf_rep_open, ptr @bnxt_vf_rep_close, ptr @bnxt_vf_rep_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_vf_rep_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_vf_rep_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_vf_rep_get_port_parent_id, ptr @bnxt_vf_rep_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s error=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.bnxt_vf_reps_alloc = private unnamed_addr constant [19 x i8] c"bnxt_vf_reps_alloc\00", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"already in %s eswitch mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"switchdev\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"FW does not support SRIOV E-Switch SWITCHDEV mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Enable VFs before setting switchdev mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@bnxt_vf_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bnxt_vf_block_cb_list, ptr @bnxt_vf_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pf%dvf%d\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vfr%d\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s error rc=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.hwrm_cfa_vfr_free = private unnamed_addr constant [18 x i8] c"hwrm_cfa_vfr_free\00", align 1
@hwrm_cfa_vfr_alloc.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bnxt_en\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwrm_cfa_vfr_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tx_cfa_action=0x%x, rx_cfa_code=0x%x\00", [59 x i8] zeroinitializer }, align 32
@__func__.bnxt_vf_reps_create = private unnamed_addr constant [20 x i8] c"bnxt_vf_reps_create\00", align 1
@bnxt_vf_rep_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @bnxt_vf_rep_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"bnxt_vf_rep_netdev_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 243, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 440, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 566, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 568, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 568, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 580, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 586, i32 25 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 231, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"bnxt_vf_block_cb_list\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 168, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 676, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 664, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 215, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 62, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 66, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 45, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"bnxt_vf_rep_ethtool_ops\00", align 1
@___asan_gen_.69 = private constant [49 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 239, i32 33 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @bnxt_vf_rep_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bnxt_vf_block_cb_list, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bnxt_vf_rep_ethtool_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_vf_rep_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_vf_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_vf_rep_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bnxt_get_vf_rep(ptr nocapture noundef readonly %bp, i16 noundef zeroext %cfa_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %cfa_code to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cfa_code)
  %tobool.not = icmp eq i16 %cfa_code, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %cfa_code_map = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 152
  %0 = ptrtoint ptr %cfa_code_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfa_code_map, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true2
  %arrayidx = getelementptr i16, ptr %1, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.not = icmp eq i16 %5, -1
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv5 = zext i16 %5 to i32
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  %6 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf_reps, align 8
  %arrayidx9 = getelementptr ptr, ptr %7, i32 %conv5
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %dev = getelementptr inbounds %struct.bnxt_vf_rep, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then7 ], [ null, %if.then.cleanup_crit_edge ], [ null, %land.lhs.true2.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_vf_rep_rx(ptr nocapture noundef readnone %bp, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %conv = zext i32 %4 to i64
  %rx_stats = getelementptr i8, ptr %2, i32 2328
  %bytes = getelementptr i8, ptr %2, i32 2336
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes, align 8
  %add = add i64 %6, %conv
  store i64 %add, ptr %bytes, align 8
  %7 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_stats, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %rx_stats, align 8
  %call2 = tail call i32 @netif_receive_skb(ptr noundef %skb) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bnxt_dev_is_vf_rep(ptr nocapture noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @bnxt_vf_rep_netdev_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_vf_reps_close(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %3) #15
  %conv2 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp317.not = icmp eq i32 %conv2, 0
  br i1 %cmp317.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_reps, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.bnxt_vf_rep, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @bnxt_vf_rep_close(ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  tail call fastcc void @local_bh_disable() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %3, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %9 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  tail call fastcc void @local_bh_enable() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_vf_reps_open(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call15 = tail call i32 @pci_num_vf(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp116 = icmp sgt i32 %call15, 0
  br i1 %cmp116, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_reps, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.017
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tx_cfa_action = getelementptr inbounds %struct.bnxt_vf_rep, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %tx_cfa_action to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_cfa_action, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp2.not = icmp eq i16 %9, -1
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %dev = getelementptr inbounds %struct.bnxt_vf_rep, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2304
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 8
  %dev2.i = getelementptr inbounds %struct.bnxt, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then4.for.inc_crit_edge, label %if.then.i

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i:                                        ; preds = %if.then4
  tail call void @netif_carrier_on(ptr noundef %11) #15
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 104
  %18 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp4.not.i.i, label %if.then.i.for.inc_crit_edge, label %for.body.lr.ph.i.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %i.05.i.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %22 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %23
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.inc_crit_edge

for.body.i.i.for.inc_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc:                                          ; preds = %for.body.i.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %25) #15
  %cmp1 = icmp slt i32 %inc, %call
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev2 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_carrier_on(ptr noundef %dev) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_vf_reps_destroy(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %0 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  %2 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_reps, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @rtnl_lock() #15
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end11.critedge, label %if.then3

if.then3:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @bnxt_close_nic(ptr noundef %bp, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %cfa_code_map.c = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 152
  %8 = ptrtoint ptr %cfa_code_map.c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfa_code_map.c, align 4
  tail call void @kfree(ptr noundef %9) #15
  %10 = ptrtoint ptr %cfa_code_map.c to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cfa_code_map.c, align 4
  %11 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %eswitch_mode, align 4
  %call10 = tail call i32 @bnxt_open_nic(ptr noundef %bp, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %if.end11

if.end11.critedge:                                ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  %cfa_code_map.c20 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 152
  %12 = ptrtoint ptr %cfa_code_map.c20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfa_code_map.c20, align 4
  tail call void @kfree(ptr noundef %13) #15
  %14 = ptrtoint ptr %cfa_code_map.c20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cfa_code_map.c20, align 4
  %15 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %eswitch_mode, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %if.then3
  tail call void @rtnl_unlock() #15
  tail call fastcc void @__bnxt_vf_reps_destroy(ptr noundef %bp)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bnxt_vf_reps_destroy(ptr noundef %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #15
  %conv1 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp26.not = icmp eq i32 %conv1, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf_reps, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call fastcc void @__bnxt_free_one_vf_rep(ptr noundef %bp, ptr noundef nonnull %5)
  %dev = getelementptr inbounds %struct.bnxt_vf_rep, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.for.inc_crit_edge, label %if.then4

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then4:                                         ; preds = %if.then
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then4.if.end_crit_edge, label %if.then7

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_netdev(ptr noundef nonnull %7) #15
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %11) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %conv1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %vf_reps12 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  %12 = ptrtoint ptr %vf_reps12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf_reps12, align 8
  tail call void @kfree(ptr noundef %13) #15
  %14 = ptrtoint ptr %vf_reps12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vf_reps12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_vf_reps_free(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %1) #15
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %2 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv2 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp311.not = icmp eq i32 %conv2, 0
  br i1 %cmp311.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf_reps, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @__bnxt_free_one_vf_rep(ptr noundef %bp, ptr noundef %7)
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bnxt_free_one_vf_rep(ptr noundef %bp, ptr noundef %vf_rep) unnamed_addr #2 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vf_rep, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.bnxt_vf_rep, ptr %vf_rep, i32 0, i32 2
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dst_release(ptr noundef nonnull %1) #15
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dst, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %tx_cfa_action = getelementptr inbounds %struct.bnxt_vf_rep, ptr %vf_rep, i32 0, i32 4
  %3 = ptrtoint ptr %tx_cfa_action to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_cfa_action, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp.not = icmp eq i16 %4, -1
  br i1 %cmp.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %vf_idx = getelementptr inbounds %struct.bnxt_vf_rep, ptr %vf_rep, i32 0, i32 3
  %5 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vf_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #15
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !52
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 254, i32 noundef 56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.then4.i_crit_edge

if.then7.if.then4.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

if.end.i:                                         ; preds = %if.then7
  %8 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req.i, align 4
  %vfr_name.i = getelementptr inbounds %struct.hwrm_cfa_vfr_free_input, ptr %9, i32 0, i32 5
  %conv.i = zext i16 %6 to i32
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %vfr_name.i, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #15
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.i, align 4
  %call2.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.hwrm_cfa_vfr_free.exit_crit_edge, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4.i

if.end.i.hwrm_cfa_vfr_free.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hwrm_cfa_vfr_free.exit

if.then4.i:                                       ; preds = %if.end.i.if.then4.i_crit_edge, %if.then7.if.then4.i_crit_edge
  %rc.03.i = phi i32 [ %call2.i, %if.end.i.if.then4.i_crit_edge ], [ %call.i, %if.then7.if.then4.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.hwrm_cfa_vfr_free, i32 noundef %rc.03.i) #18
  br label %hwrm_cfa_vfr_free.exit

hwrm_cfa_vfr_free.exit:                           ; preds = %if.then4.i, %if.end.i.hwrm_cfa_vfr_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #15
  %14 = ptrtoint ptr %tx_cfa_action to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %tx_cfa_action, align 2
  br label %if.end9

if.end9:                                          ; preds = %hwrm_cfa_vfr_free.exit, %if.end5.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_vf_reps_alloc(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cfa_code_map1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 152
  %0 = ptrtoint ptr %cfa_code_map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfa_code_map1, align 4
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %3) #15
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %4 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %6 = call ptr @memset(ptr %1, i32 255, i32 131072)
  %conv8 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp949.not = icmp eq i32 %conv8, 0
  br i1 %cmp949.not, label %for.body.preheader.cleanup_crit_edge, label %for.body11.lr.ph

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body11.lr.ph:                                 ; preds = %for.body.preheader
  %vf_reps = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 151
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  br label %for.body11

for.body11:                                       ; preds = %for.inc18.for.body11_crit_edge, %for.body11.lr.ph
  %i.150 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc19, %for.inc18.for.body11_crit_edge ]
  %7 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf_reps, align 8
  %arrayidx12 = getelementptr ptr, ptr %8, i32 %i.150
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %conv13 = trunc i32 %i.150 to i16
  %vf_idx = getelementptr inbounds %struct.bnxt_vf_rep, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %vf_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv13, ptr %vf_idx, align 4
  %tx_cfa_action.i = getelementptr inbounds %struct.bnxt_vf_rep, ptr %10, i32 0, i32 4
  %rx_cfa_code.i = getelementptr inbounds %struct.bnxt_vf_rep, ptr %10, i32 0, i32 5
  %call.i = tail call fastcc i32 @hwrm_cfa_vfr_alloc(ptr noundef %bp, i16 noundef zeroext %conv13, ptr noundef %tx_cfa_action.i, ptr noundef %rx_cfa_code.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body11.err_crit_edge

for.body11.err_crit_edge:                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end.i:                                         ; preds = %for.body11
  %12 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vf_idx, align 4
  %14 = ptrtoint ptr %rx_cfa_code.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_cfa_code.i, align 8
  %idxprom.i = zext i16 %15 to i32
  %arrayidx.i = getelementptr i16, ptr %1, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %13, ptr %arrayidx.i, align 2
  %call3.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 1, i32 noundef 3264) #15
  %dst.i = getelementptr inbounds %struct.bnxt_vf_rep, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %dst.i, align 8
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_crit_edge, label %for.inc18

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

for.inc18:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %tx_cfa_action.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_cfa_action.i, align 2
  %conv.i = zext i16 %19 to i32
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %call3.i, i32 0, i32 2
  %port_id.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i, i32 0, i32 1
  %20 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %port_id.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 8
  %u11.i = getelementptr inbounds %struct.metadata_dst, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %u11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %u11.i, align 8
  %inc19 = add nuw nsw i32 %i.150, 1
  %exitcond.not = icmp eq i32 %inc19, %conv8
  br i1 %exitcond.not, label %for.inc18.cleanup_crit_edge, label %for.inc18.for.body11_crit_edge

for.inc18.for.body11_crit_edge:                   ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body11

for.inc18.cleanup_crit_edge:                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err:                                              ; preds = %if.end.i.err_crit_edge, %for.body11.err_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.err_crit_edge ], [ -67, %for.body11.err_crit_edge ]
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bnxt_vf_reps_alloc, i32 noundef %retval.0.i.ph) #18
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %call.i42 = tail call i32 @pci_num_vf(ptr noundef %29) #15
  %30 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eswitch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.not.i = icmp eq i32 %31, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.i:                             ; preds = %err
  %conv2.i = and i32 %call.i42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %cmp311.not.i = icmp eq i32 %conv2.i, 0
  br i1 %cmp311.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %vf_reps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vf_reps, align 8
  %arrayidx.i43 = getelementptr ptr, ptr %33, i32 %i.012.i
  %34 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i43, align 4
  tail call fastcc void @__bnxt_free_one_vf_rep(ptr noundef %bp, ptr noundef %35) #15
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc18.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %err.cleanup_crit_edge ], [ %retval.0.i.ph, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ %retval.0.i.ph, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_dl_eswitch_mode_get(ptr noundef %devlink, ptr nocapture noundef writeonly %mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #15
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 150
  %2 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode, align 4
  %conv = trunc i32 %3 to i16
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %mode, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_dl_eswitch_mode_set(ptr noundef %devlink, i16 noundef zeroext %mode, ptr nocapture noundef readnone %extack) local_unnamed_addr #2 align 64 {
entry:
  %req.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %devlink) #15
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %sriov_lock = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 126
  tail call void @mutex_lock_nested(ptr noundef %sriov_lock, i32 noundef 0) #15
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 150
  %2 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eswitch_mode, align 4
  %conv = zext i16 %mode to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %cmp3 = icmp eq i16 %mode, 0
  %cond = select i1 %cmp3, ptr @.str.2, ptr @.str.3
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #18
  br label %done

if.end:                                           ; preds = %entry
  %6 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %mode, label %if.end.done_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb6
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bnxt_vf_reps_destroy(ptr noundef %1)
  br label %done

sw.bb6:                                           ; preds = %if.end
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 76
  %7 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67587, i32 %8)
  %cmp7 = icmp ult i32 %8, 67587
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  %dev10 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.4) #18
  br label %done

if.end11:                                         ; preds = %sw.bb6
  %pdev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %call12 = tail call i32 @pci_num_vf(ptr noundef %12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %dev16 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.5) #18
  br label %done

if.end17:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call.i31 = tail call i32 @pci_num_vf(ptr noundef %16) #15
  %flags.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.done_crit_edge, label %if.end.i

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end.i:                                         ; preds = %if.end17
  %conv1.i = and i32 %call.i31, 65535
  %19 = shl nuw nsw i32 %conv1.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #19
  %vf_reps.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 151
  %20 = ptrtoint ptr %vf_reps.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %vf_reps.i, align 8
  %tobool4.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.done_crit_edge, label %if.end6.i

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end6.i:                                        ; preds = %if.end.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3264, i32 noundef 5) #19
  %tobool8.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool8.not.i, label %if.end6.i.err.i_crit_edge, label %for.body.preheader.i

if.end6.i.err.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i

for.body.preheader.i:                             ; preds = %if.end6.i
  %21 = call ptr @memset(ptr %call1.i.i.i.i, i32 255, i32 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp1498.not.i = icmp eq i32 %conv1.i, 0
  br i1 %cmp1498.not.i, label %for.body.preheader.i.for.end37.i_crit_edge, label %for.body16.lr.ph.i

for.body.preheader.i.for.end37.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.body16.lr.ph.i:                               ; preds = %for.body.preheader.i
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %mac_addr.i.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 120, i32 2
  %add.ptr.i.i.i.i = getelementptr %struct.bnxt, ptr %1, i32 0, i32 120, i32 2, i32 4
  %arrayidx58.i.i.i.i = getelementptr %struct.bnxt, ptr %1, i32 0, i32 120, i32 2, i32 5
  %arrayidx67.i.i.i.i = getelementptr %struct.bnxt, ptr %1, i32 0, i32 120, i32 2, i32 3
  %arrayidx72.i.i.i.i = getelementptr %struct.bnxt, ptr %1, i32 0, i32 120, i32 2, i32 2
  %arrayidx77.i.i.i.i = getelementptr %struct.bnxt, ptr %1, i32 0, i32 120, i32 2, i32 1
  %vf.i.i.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 120, i32 18
  br label %for.body16.i

for.cond12.i:                                     ; preds = %bnxt_vf_rep_netdev_init.exit.i
  %inc36.i = add nuw nsw i32 %i.199.i, 1
  %exitcond.not.i = icmp eq i32 %inc36.i, %conv1.i
  br i1 %exitcond.not.i, label %for.cond12.i.for.end37.i_crit_edge, label %for.cond12.i.for.body16.i_crit_edge

for.cond12.i.for.body16.i_crit_edge:              ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body16.i

for.cond12.i.for.end37.i_crit_edge:               ; preds = %for.cond12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37.i

for.body16.i:                                     ; preds = %for.cond12.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %i.199.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc36.i, %for.cond12.i.for.body16.i_crit_edge ]
  %call17.i = call ptr @alloc_etherdev_mqs(i32 noundef 72, i32 noundef 1, i32 noundef 1) #15
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %for.body16.i.err.i_crit_edge, label %if.end20.i

for.body16.i.err.i_crit_edge:                     ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i

if.end20.i:                                       ; preds = %for.body16.i
  %add.ptr.i.i = getelementptr i8, ptr %call17.i, i32 2304
  %22 = ptrtoint ptr %vf_reps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf_reps.i, align 8
  %arrayidx23.i = getelementptr ptr, ptr %23, i32 %i.199.i
  %24 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %arrayidx23.i, align 4
  %dev24.i = getelementptr i8, ptr %call17.i, i32 2308
  %25 = ptrtoint ptr %dev24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call17.i, ptr %dev24.i, align 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %add.ptr.i.i, align 8
  %conv26.i = trunc i32 %i.199.i to i16
  %vf_idx.i = getelementptr i8, ptr %call17.i, i32 2316
  %27 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv26.i, ptr %vf_idx.i, align 4
  %tx_cfa_action.i = getelementptr i8, ptr %call17.i, i32 2318
  %28 = ptrtoint ptr %tx_cfa_action.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %tx_cfa_action.i, align 2
  %rx_cfa_code.i.i = getelementptr i8, ptr %call17.i, i32 2320
  %call.i.i = call fastcc i32 @hwrm_cfa_vfr_alloc(ptr noundef %1, i16 noundef zeroext %conv26.i, ptr noundef %tx_cfa_action.i, ptr noundef %rx_cfa_code.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end20.i.err.i_crit_edge

if.end20.i.err.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i

if.end.i.i:                                       ; preds = %if.end20.i
  %29 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vf_idx.i, align 4
  %31 = ptrtoint ptr %rx_cfa_code.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_cfa_code.i.i, align 8
  %idxprom.i.i = zext i16 %32 to i32
  %arrayidx.i.i = getelementptr i16, ptr %call1.i.i.i.i, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %arrayidx.i.i, align 2
  %call3.i.i = call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 1, i32 noundef 3264) #15
  %dst.i.i = getelementptr i8, ptr %call17.i, i32 2312
  %34 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call3.i.i, ptr %dst.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.err.i_crit_edge, label %if.end30.i

if.end.i.i.err.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i

if.end30.i:                                       ; preds = %if.end.i.i
  %35 = ptrtoint ptr %tx_cfa_action.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tx_cfa_action.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call3.i.i, i32 0, i32 2
  %port_id.i.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i.i, ptr %port_id.i.i, align 4
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  %40 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst.i.i, align 8
  %u11.i.i = getelementptr inbounds %struct.metadata_dst, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %u11.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %u11.i.i, align 8
  %43 = load ptr, ptr %dev.i.i, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 16
  %44 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bnxt_vf_rep_netdev_ops, ptr %netdev_ops.i.i, align 8
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 44
  %45 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @bnxt_vf_rep_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  %hw_features.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 24
  %46 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %hw_features.i.i, align 8
  %hw_features2.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 24
  %48 = ptrtoint ptr %hw_features2.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %hw_features2.i.i, align 8
  %gso_partial_features.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 29
  %49 = ptrtoint ptr %gso_partial_features.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %gso_partial_features.i.i, align 64
  %gso_partial_features3.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 29
  %51 = ptrtoint ptr %gso_partial_features3.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %gso_partial_features3.i.i, align 64
  %vlan_features.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 26
  %52 = ptrtoint ptr %vlan_features.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vlan_features.i.i, align 8
  %vlan_features4.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 26
  %54 = ptrtoint ptr %vlan_features4.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %vlan_features4.i.i, align 8
  %hw_enc_features.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 27
  %55 = ptrtoint ptr %hw_enc_features.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hw_enc_features.i.i, align 16
  %hw_enc_features5.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 27
  %57 = ptrtoint ptr %hw_enc_features5.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %hw_enc_features5.i.i, align 16
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 23
  %58 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %features.i.i, align 16
  %features6.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 23
  %60 = ptrtoint ptr %features6.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %features6.i.i, align 16
  %or.i.i = or i64 %61, %59
  store i64 %or.i.i, ptr %features6.i.i, align 16
  %62 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vf_idx.i, align 4
  %perm_addr.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 54
  %64 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac_addr.i.i, align 4
  %66 = ptrtoint ptr %perm_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %perm_addr.i.i, align 4
  %67 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.net_device, ptr %call17.i, i32 0, i32 54, i32 4
  %69 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %add.ptr1.i.i.i.i, align 2
  %70 = ptrtoint ptr %arrayidx58.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx58.i.i.i.i, align 1
  %conv59.i.i.i.i = zext i8 %71 to i32
  %shl60.i.i.i.i = shl nuw nsw i32 %conv59.i.i.i.i, 8
  %add61.i.i.i.i = add nuw nsw i32 %shl60.i.i.i.i, -559038731
  %72 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %conv64.i.i.i.i = zext i8 %72 to i32
  %add65.i.i.i.i = add nuw nsw i32 %add61.i.i.i.i, %conv64.i.i.i.i
  %73 = ptrtoint ptr %arrayidx67.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx67.i.i.i.i, align 1
  %conv68.i.i.i.i = zext i8 %74 to i32
  %shl69.i.i.i.i = shl nuw i32 %conv68.i.i.i.i, 24
  %add70.i.i.i.i = add i32 %shl69.i.i.i.i, -559038731
  %75 = ptrtoint ptr %arrayidx72.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx72.i.i.i.i, align 1
  %conv73.i.i.i.i = zext i8 %76 to i32
  %shl74.i.i.i.i = shl nuw nsw i32 %conv73.i.i.i.i, 16
  %add75.i.i.i.i = add i32 %add70.i.i.i.i, %shl74.i.i.i.i
  %77 = ptrtoint ptr %arrayidx77.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx77.i.i.i.i, align 1
  %conv78.i.i.i.i = zext i8 %78 to i32
  %shl79.i.i.i.i = shl nuw nsw i32 %conv78.i.i.i.i, 8
  %add80.i.i.i.i = add i32 %add75.i.i.i.i, %shl79.i.i.i.i
  %79 = load i8, ptr %mac_addr.i.i, align 1
  %conv83.i.i.i.i = zext i8 %79 to i32
  %add84.i.i.i.i = add i32 %add80.i.i.i.i, %conv83.i.i.i.i
  %xor85.i.i.i.i = xor i32 %add65.i.i.i.i, -559038731
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add65.i.i.i.i, i32 %add65.i.i.i.i, i32 14) #15
  %sub87.i.i.i.i = sub i32 %xor85.i.i.i.i, %or.i.i.i.i.i
  %xor88.i.i.i.i = xor i32 %add84.i.i.i.i, %sub87.i.i.i.i
  %or.i1.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i.i.i.i, i32 %sub87.i.i.i.i, i32 11) #15
  %sub90.i.i.i.i = sub i32 %xor88.i.i.i.i, %or.i1.i.i.i.i
  %xor91.i.i.i.i = xor i32 %sub90.i.i.i.i, %add65.i.i.i.i
  %or.i2.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i.i.i.i, i32 %sub90.i.i.i.i, i32 25) #15
  %sub93.i.i.i.i = sub i32 %xor91.i.i.i.i, %or.i2.i.i.i.i
  %xor94.i.i.i.i = xor i32 %sub93.i.i.i.i, %sub87.i.i.i.i
  %or.i3.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i.i.i.i, i32 %sub93.i.i.i.i, i32 16) #15
  %sub96.i.i.i.i = sub i32 %xor94.i.i.i.i, %or.i3.i.i.i.i
  %xor97.i.i.i.i = xor i32 %sub96.i.i.i.i, %sub90.i.i.i.i
  %or.i4.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i.i.i.i, i32 %sub96.i.i.i.i, i32 4) #15
  %sub99.i.i.i.i = sub i32 %xor97.i.i.i.i, %or.i4.i.i.i.i
  %xor100.i.i.i.i = xor i32 %sub99.i.i.i.i, %sub93.i.i.i.i
  %or.i5.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i.i.i.i, i32 %sub99.i.i.i.i, i32 14) #15
  %sub102.i.i.i.i = sub i32 %xor100.i.i.i.i, %or.i5.i.i.i.i
  %or.i6.i.i.i.i = lshr i32 %sub102.i.i.i.i, 8
  %xor103.i.i.i.i = xor i32 %sub102.i.i.i.i, %sub96.i.i.i.i
  %sub105.i.i.i.i = sub i32 %xor103.i.i.i.i, %or.i6.i.i.i.i
  %conv.i.i.i = zext i16 %63 to i32
  %add.i.i.i = add i32 %sub105.i.i.i.i, %conv.i.i.i
  %conv1.i.i.i = trunc i32 %add.i.i.i to i8
  %arrayidx.i.i.i = getelementptr %struct.net_device, ptr %call17.i, i32 0, i32 54, i32 3
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv1.i.i.i, ptr %arrayidx.i.i.i, align 1
  %shr.i.i.i = lshr i32 %add.i.i.i, 8
  %conv3.i.i.i = trunc i32 %shr.i.i.i to i8
  %81 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv3.i.i.i, ptr %add.ptr1.i.i.i.i, align 1
  %shr5.i.i.i = lshr i32 %add.i.i.i, 16
  %conv7.i.i.i = trunc i32 %shr5.i.i.i to i8
  %arrayidx8.i.i.i = getelementptr %struct.net_device, ptr %call17.i, i32 0, i32 54, i32 5
  %82 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv7.i.i.i, ptr %arrayidx8.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call17.i, i32 noundef 0, ptr noundef %perm_addr.i.i, i32 noundef 6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i.i) #15
  %83 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i.i, align 4, !annotation !52
  %call.i.i.i = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req.i.i.i, i16 noundef zeroext 22, i32 noundef 24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i84.i, label %bnxt_hwrm_vfr_qcfg.exit.thread.i.i

bnxt_hwrm_vfr_qcfg.exit.thread.i.i:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #15
  br label %bnxt_vf_rep_netdev_init.exit.i

if.end.i.i84.i:                                   ; preds = %if.end30.i
  %84 = ptrtoint ptr %vf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vf.i.i.i, align 4
  %86 = ptrtoint ptr %vf_idx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vf_idx.i, align 4
  %idxprom.i.i.i = zext i16 %87 to i32
  %arrayidx.i29.i.i = getelementptr %struct.bnxt_vf_info, ptr %85, i32 %idxprom.i.i.i
  %88 = ptrtoint ptr %arrayidx.i29.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i29.i.i, align 4
  %90 = call i16 @llvm.bswap.i16(i16 %89) #15
  %91 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %req.i.i.i, align 4
  %fid.i.i.i = getelementptr inbounds %struct.hwrm_func_qcfg_input, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %fid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %90, ptr %fid.i.i.i, align 8
  %call1.i.i.i = call ptr @hwrm_req_hold(ptr noundef %1, ptr noundef %92) #15
  %94 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %req.i.i.i, align 4
  %call2.i.i.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %95) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.then.i.i, label %bnxt_hwrm_vfr_qcfg.exit.i.i

bnxt_hwrm_vfr_qcfg.exit.i.i:                      ; preds = %if.end.i.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %req.i.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %1, ptr noundef %97) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #15
  br label %bnxt_vf_rep_netdev_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  %max_mtu_configured.i.i.i = getelementptr inbounds %struct.hwrm_func_qcfg_output, ptr %call1.i.i.i, i32 0, i32 22
  %98 = ptrtoint ptr %max_mtu_configured.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %max_mtu_configured.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool5.not.i.i.i = icmp eq i16 %99, 0
  %100 = call i16 @llvm.bswap.i16(i16 %99) #15
  %.sink.i.i.i = select i1 %tobool5.not.i.i.i, i16 9500, i16 %100
  %101 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %req.i.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %1, ptr noundef %102) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i) #15
  %conv.i85.i = zext i16 %.sink.i.i.i to i32
  %max_mtu10.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 31
  %103 = ptrtoint ptr %max_mtu10.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv.i85.i, ptr %max_mtu10.i.i, align 4
  br label %bnxt_vf_rep_netdev_init.exit.i

bnxt_vf_rep_netdev_init.exit.i:                   ; preds = %if.then.i.i, %bnxt_hwrm_vfr_qcfg.exit.i.i, %bnxt_hwrm_vfr_qcfg.exit.thread.i.i
  %min_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 30
  %104 = ptrtoint ptr %min_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 60, ptr %min_mtu.i.i, align 8
  %call31.i = call i32 @register_netdev(ptr noundef nonnull %call17.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %for.cond12.i, label %if.then33.i

if.then33.i:                                      ; preds = %bnxt_vf_rep_netdev_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev_ops.i.i.le = getelementptr inbounds %struct.net_device, ptr %call17.i, i32 0, i32 16
  %105 = ptrtoint ptr %netdev_ops.i.i.le to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %netdev_ops.i.i.le, align 8
  br label %err.i

for.end37.i:                                      ; preds = %for.cond12.i.for.end37.i_crit_edge, %for.body.preheader.i.for.end37.i_crit_edge
  %cfa_code_map38.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 152
  %106 = ptrtoint ptr %cfa_code_map38.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call1.i.i.i.i, ptr %cfa_code_map38.i, align 4
  %107 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %eswitch_mode, align 4
  %dev39.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %108 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev39.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 15
  %110 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %111, -131105
  store i64 %and.i.i, ptr %priv_flags.i.i, align 16
  br label %done

err.i:                                            ; preds = %if.then33.i, %if.end.i.i.err.i_crit_edge, %if.end20.i.err.i_crit_edge, %for.body16.i.err.i_crit_edge, %if.end6.i.err.i_crit_edge
  %rc.0.i = phi i32 [ %call31.i, %if.then33.i ], [ -12, %if.end6.i.err.i_crit_edge ], [ -12, %for.body16.i.err.i_crit_edge ], [ -12, %if.end.i.i.err.i_crit_edge ], [ -67, %if.end20.i.err.i_crit_edge ]
  %dev40.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %112 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev40.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %113, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bnxt_vf_reps_create, i32 noundef %rc.0.i) #18
  call void @kfree(ptr noundef %call1.i.i.i.i) #15
  call fastcc void @__bnxt_vf_reps_destroy(ptr noundef %1) #15
  br label %done

done:                                             ; preds = %err.i, %for.end37.i, %if.end.i.done_crit_edge, %if.end17.done_crit_edge, %if.then15, %if.then9, %sw.bb, %if.end.done_crit_edge, %if.then
  %rc.0 = phi i32 [ -22, %if.then ], [ -524, %if.then9 ], [ -1, %if.then15 ], [ 0, %sw.bb ], [ -22, %if.end.done_crit_edge ], [ %rc.0.i, %err.i ], [ 0, %for.end37.i ], [ -19, %if.end17.done_crit_edge ], [ -12, %if.end.i.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %sriov_lock) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %and1.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %5) #15
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %dst = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 8
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #15, !srcloc !54
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !55
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 231, i32 noundef 9, ptr noundef null) #15
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 8
  %tobool.not.i15 = icmp eq ptr %11, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i15, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %13 = ptrtoint ptr %11 to i32
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 8
  %15 = load ptr, ptr %dst, align 8
  %u = getelementptr inbounds %struct.metadata_dst, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %u, align 8
  %18 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %18, align 8
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %dst_hold.exit.if.end_crit_edge

dst_hold.exit.if.end_crit_edge:                   ; preds = %dst_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %dst_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  %tx_stats = getelementptr i8, ptr %dev, i32 2352
  %20 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_stats, align 8
  %inc = add i64 %21, 1
  store i64 %inc, ptr %tx_stats, align 8
  %conv = sext i32 %1 to i64
  %bytes = getelementptr i8, ptr %dev, i32 2360
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes, align 8
  %add = add i64 %23, %conv
  store i64 %add, ptr %bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %dst_hold.exit.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnxt_vf_rep_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stats = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_stats, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %bytes = getelementptr i8, ptr %dev, i32 2336
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bytes, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %5 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes, align 8
  %tx_stats = getelementptr i8, ptr %dev, i32 2352
  %6 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_stats, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tx_packets, align 8
  %bytes4 = getelementptr i8, ptr %dev, i32 2360
  %9 = ptrtoint ptr %bytes4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes4, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %11 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_bytes, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @bnxt_vf_block_cb_list, ptr noundef nonnull @bnxt_vf_rep_setup_tc_block_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_get_port_parent_id(ptr nocapture noundef readonly %dev, ptr noundef %ppid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dev1 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @bnxt_get_port_parent_id(ptr noundef %3, ptr noundef %ppid) #15
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_get_phys_port_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, i32 noundef %len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %pdev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %and = and i32 %5, 7
  %vf_idx = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vf_idx, align 4
  %conv = zext i16 %7 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.7, i32 noundef %and, i32 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_vf_rep_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_priv, align 8
  %vf = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 120, i32 18
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %vf_idx = getelementptr inbounds %struct.bnxt_vf_rep, ptr %cb_priv, i32 0, i32 3
  %4 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vf_idx, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.bnxt_vf_info, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %tc_info.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 154
  %8 = ptrtoint ptr %tc_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc_info.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %bnxt_tc_flower_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

bnxt_tc_flower_enabled.exit:                      ; preds = %entry
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.i.not = icmp eq i8 %11, 0
  br i1 %tobool2.i.not, label %bnxt_tc_flower_enabled.exit.cleanup_crit_edge, label %lor.lhs.false

bnxt_tc_flower_enabled.exit.cleanup_crit_edge:    ; preds = %bnxt_tc_flower_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %bnxt_tc_flower_enabled.exit
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %14 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %16 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %17, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %lor.lhs.false
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #15
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tc_can_offload_extack.__msg, ptr %15, align 4
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i13 = icmp eq i32 %20, 0
  br i1 %tobool.not.i13, label %tc_cls_can_offload_and_chain0.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #15
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %15, align 4
  br label %cleanup

tc_cls_can_offload_and_chain0.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge

tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge: ; preds = %tc_cls_can_offload_and_chain0.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %tc_cls_can_offload_and_chain0.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @bnxt_tc_setup_flower(ptr noundef %1, i16 noundef zeroext %7, ptr noundef %type_data) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge, %bnxt_tc_flower_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb ], [ -95, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge ], [ -95, %bnxt_tc_flower_enabled.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_tc_setup_flower(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_port_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hwrm_cfa_vfr_alloc(ptr noundef %bp, i16 noundef zeroext %vf_idx, ptr nocapture noundef %tx_cfa_action, ptr nocapture noundef %rx_cfa_code) unnamed_addr #2 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #15
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !52
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 253, i32 noundef 56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then21_crit_edge

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

if.then:                                          ; preds = %entry
  %1 = call i16 @llvm.bswap.i16(i16 %vf_idx)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %vf_id = getelementptr inbounds %struct.hwrm_cfa_vfr_alloc_input, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vf_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %1, ptr %vf_id, align 8
  %vfr_name = getelementptr inbounds %struct.hwrm_cfa_vfr_alloc_input, ptr %3, i32 0, i32 8
  %conv = zext i16 %vf_idx to i32
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %vfr_name, ptr noundef nonnull @.str.8, i32 noundef %conv)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %call2 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %6) #15
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %call3 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end19.thread44

if.end19.thread44:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %10) #15
  br label %if.then21

if.then5:                                         ; preds = %if.then
  %tx_cfa_action6 = getelementptr inbounds %struct.hwrm_cfa_vfr_alloc_output, ptr %call2, i32 0, i32 5
  %11 = ptrtoint ptr %tx_cfa_action6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_cfa_action6, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %tx_cfa_action to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tx_cfa_action, align 2
  %rx_cfa_code7 = getelementptr inbounds %struct.hwrm_cfa_vfr_alloc_output, ptr %call2, i32 0, i32 4
  %15 = ptrtoint ptr %rx_cfa_code7 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_cfa_code7, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %rx_cfa_code to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rx_cfa_code, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hwrm_cfa_vfr_alloc.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hwrm_cfa_vfr_alloc, %if.end19.thread42)) #15
          to label %if.end19 [label %if.end19.thread42], !srcloc !57

if.end19.thread42:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %tx_cfa_action to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tx_cfa_action, align 2
  %conv14 = zext i16 %22 to i32
  %23 = ptrtoint ptr %rx_cfa_code to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_cfa_code, align 2
  %conv15 = zext i16 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hwrm_cfa_vfr_alloc.__UNIQUE_ID_ddebug632, ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %conv14, i32 noundef %conv15) #15
  %25 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %26) #15
  br label %if.end23

if.end19:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %28) #15
  br label %if.end23

if.then21:                                        ; preds = %if.end19.thread44, %entry.if.then21_crit_edge
  %rc.040 = phi i32 [ %call3, %if.end19.thread44 ], [ %call, %entry.if.then21_crit_edge ]
  %dev22 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %29 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %30, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %rc.040) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19, %if.end19.thread42
  %rc.041 = phi i32 [ %rc.040, %if.then21 ], [ 0, %if.end19 ], [ 0, %if.end19.thread42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #15
  ret i32 %rc.041
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_vf_rep_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.10, i32 noundef 32) #15
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 440, i32 23}
!2 = !{ptr @__func__.bnxt_vf_reps_alloc, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 440, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 566, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 568, i32 8}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 568, i32 19}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 580, i32 25}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 586, i32 25}
!14 = !{ptr @bnxt_vf_rep_netdev_ops, !15, !"bnxt_vf_rep_netdev_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 243, i32 36}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/net/dst.h", i32 231, i32 2}
!18 = !{ptr @bnxt_vf_block_cb_list, !19, !"bnxt_vf_block_cb_list", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 168, i32 8}
!20 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!22 = !{ptr @tc_can_offload_extack.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 215, i32 26}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 62, i32 26}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 66, i32 24}
!30 = !{ptr @__func__.hwrm_cfa_vfr_free, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 66, i32 44}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 45, i32 4}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hwrm_cfa_vfr_alloc.__UNIQUE_ID_ddebug632, !33, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!38 = !{ptr @__func__.bnxt_vf_reps_create, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 543, i32 40}
!40 = !{ptr @bnxt_vf_rep_ethtool_ops, !41, !"bnxt_vf_rep_ethtool_ops", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_vfr.c", i32 239, i32 33}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i64 2148673712}
!54 = !{i64 1160312, i64 1160337, i64 1160359, i64 1160375, i64 1160387, i64 1160407, i64 1160431, i64 1160447, i64 1160459}
!55 = !{i64 2148673900}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148498108, i64 2148498113, i64 2148498126, i64 2148498170, i64 2148498204, i64 2148498225}
