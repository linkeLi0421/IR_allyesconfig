; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_list = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.adapter = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.adapter_params, [9 x %struct.anon.102], [76 x i8], %struct.sge, [1 x ptr], ptr, i32, ptr, %struct.spinlock, %struct.spinlock, %struct.mbox_list, ptr, %struct.list_head }
%struct.adapter_params = type { %struct.dev_params, %struct.sge_params, %struct.vpd_params, %struct.rss_params, %struct.vf_resources, %struct.arch_specific_params, i32, i8, i8 }
%struct.dev_params = type { i32, i32 }
%struct.sge_params = type { i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32 }
%struct.rss_params = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i16, [2 x i8] }
%struct.vf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arch_specific_params = type { i32, i16 }
%struct.anon.102 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_eth_txq], [8 x %struct.sge_eth_rxq], [96 x i8], %struct.sge_rspq, [96 x i8], %struct.sge_rspq, %struct.spinlock, [1 x i32], %struct.timer_list, %struct.timer_list, i16, i16, i16, [6 x i16], [4 x i8], i32, i32, i32, i32, i32, i32, i32, [16 x ptr], [10 x ptr], [52 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i32, i32, i32, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mbox_cmd_log = type { i32, i32, i32 }
%struct.mbox_cmd = type { [8 x i64], i64, i32, i16, i16 }
%struct.fw_params_cmd = type { i32, i32, [7 x %struct.fw_params_param] }
%struct.fw_params_param = type { i32, i32 }
%struct.fw_vi_cmd = type { i32, i32, i16, [6 x i8], i8, i8, [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, [6 x i8], i64, i64 }
%struct.fw_port_cmd = type { i32, i32, %union.fw_port }
%union.fw_port = type { %struct.fw_port_info }
%struct.fw_port_info = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i64 }
%struct.fw_reset_cmd = type { i32, i32, i32, i32 }
%struct.fw_rss_glb_config_cmd = type { i32, i32, %union.fw_rss_glb_config }
%union.fw_rss_glb_config = type { %struct.fw_rss_glb_config_manual }
%struct.fw_rss_glb_config_manual = type { i32, i32, i64, i64 }
%struct.fw_pfvf_cmd = type { i32, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.fw_rss_vi_config_cmd = type { i32, i32, %union.fw_rss_vi_config }
%union.fw_rss_vi_config = type { %struct.fw_rss_vi_config_manual }
%struct.fw_rss_vi_config_manual = type { i64, i64, i64 }
%struct.fw_rss_vi_config_basicvirtual = type { i32, i32, i64, i64 }
%struct.anon.125 = type { i16, i8, i32 }
%struct.fw_rss_ind_tbl_cmd = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_vi_enable_cmd = type { i32, i32, i16, i16, i32 }
%struct.port_info = type { ptr, i32, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.fw_vi_rxmode_cmd = type { i32, i32, i32, i32 }
%struct.fw_vi_mac_cmd = type { i32, i32, %union.fw_vi_mac }
%union.fw_vi_mac = type { %struct.fw_vi_mac_raw, [24 x i8] }
%struct.fw_vi_mac_raw = type { i32, i32, [2 x i32], i64, [2 x i32] }
%struct.fw_vi_mac_exact = type { i16, [6 x i8] }
%struct.fw_vi_stats_cmd = type { i32, i32, %union.fw_vi_stats }
%union.fw_vi_stats = type { %struct.fw_vi_stats_pf }
%struct.fw_vi_stats_pf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.t4vf_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fw_iq_cmd = type { i32, i32, i16, i16, i16, i16, i32, i16, i16, i64, i32, i16, i16, i64, i32, i16, i16, i64 }
%struct.fw_eq_eth_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.fw_port_info32 = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.fw_acl_mac_cmd = type { i32, i32, i8, [7 x i8], i16, [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, [6 x i8] }
%struct.fw_acl_vlan_cmd = type { i32, i32, i8, i8, [6 x i8], [16 x i16] }

@t4vf_wr_mbox_core.delay = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 1, i32 3, i32 5, i32 10, i32 10, i32 20, i32 50, i32 100], [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c\00", [49 x i8] zeroinitializer }, align 32
@t4vf_get_sge_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 895, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to get SGE Control2; probably old firmware.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t4vf_get_sge_params\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t4vf_get_sge_params._entry_ptr = internal global ptr @t4vf_get_sge_params._entry, section ".printk_index", align 4
@t4vf_get_sge_params._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 928, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unable to get VF SGE Queues/Page; probably old firmware.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@t4vf_get_sge_params._entry_ptr.8 = internal global ptr @t4vf_get_sge_params._entry.5, section ".printk_index", align 4
@t4vf_handle_fw_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 2117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unknown firmware PORT reply action %x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"t4vf_handle_fw_rpl\00", [45 x i8] zeroinitializer }, align 32
@t4vf_handle_fw_rpl._entry_ptr = internal global ptr @t4vf_handle_fw_rpl._entry, section ".printk_index", align 4
@t4vf_handle_fw_rpl._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 2135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown firmware reply %X\0A\00", [37 x i8] zeroinitializer }, align 32
@t4vf_handle_fw_rpl._entry_ptr.13 = internal global ptr @t4vf_handle_fw_rpl._entry.11, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t4vf_handle_get_port_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 1980, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Handle Port Information: Bad Command/Action %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"t4vf_handle_get_port_info\00", [38 x i8] zeroinitializer }, align 32
@t4vf_handle_get_port_info._entry_ptr = internal global ptr @t4vf_handle_get_port_info._entry, section ".printk_index", align 4
@t4vf_handle_get_port_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@t4vf_handle_get_port_info._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str, i32 2024, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Port %d link down, reason: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@t4vf_handle_get_port_info._entry_ptr.19 = internal global ptr @t4vf_handle_get_port_info._entry.17, section ".printk_index", align 4
@t4vf_link_down_rc_str.reason = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.23], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Link Down\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Remote Fault\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-negotiation Failure\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Insufficient Airflow\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable To Determine Reason\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No RX Signal Detected\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4008636142, i64 4294967295]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 4008636142, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 4008636142, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 132, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 289, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 893, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 926, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2115, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2134, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1979, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 2021, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1889, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1890, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1891, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1892, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1893, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1894, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1895, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1896, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @t4vf_get_sge_params._entry, ptr @t4vf_get_sge_params._entry.5, ptr @t4vf_get_sge_params._entry_ptr, ptr @t4vf_get_sge_params._entry_ptr.8, ptr @t4vf_handle_fw_rpl._entry, ptr @t4vf_handle_fw_rpl._entry.11, ptr @t4vf_handle_fw_rpl._entry_ptr, ptr @t4vf_handle_fw_rpl._entry_ptr.13, ptr @t4vf_handle_get_port_info._entry, ptr @t4vf_handle_get_port_info._entry.17, ptr @t4vf_handle_get_port_info._entry_ptr, ptr @t4vf_handle_get_port_info._entry_ptr.19, ptr @t4vf_wr_mbox_core.delay, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @t4vf_handle_get_port_info._rs, ptr @.str.16, ptr @.str.18, ptr @t4vf_link_down_rc_str.reason, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_wr_mbox_core.delay to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_get_sge_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_get_sge_params._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_handle_fw_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_handle_fw_rpl._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_handle_get_port_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_handle_get_port_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_handle_get_port_info._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4vf_link_down_rc_str.reason to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_wait_dev_ready(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 -1, label %entry.if.end_crit_edge
    i32 -286331154, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge15
  tail call void @msleep(i32 noundef 500) #7
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 128
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %switch.selectcmp.case1 = icmp eq i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -286331154, i32 %7)
  %switch.selectcmp.case2 = icmp eq i32 %7, -286331154
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = select i1 %switch.selectcmp, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr nocapture noundef readonly %cmd, i32 noundef %size, ptr noundef %rpl, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  %cmd_rpl = alloca [8 x i64], align 8
  %entry1 = alloca %struct.mbox_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd_rpl) #7
  %2 = call ptr @memset(ptr %cmd_rpl, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry1) #7
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !65
  %4 = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !65
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip, align 4
  %8 = and i32 %7, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %8)
  %cmp = icmp ult i32 %8, 96
  %. = select i1 %cmp, i32 576, i32 640
  %9 = and i32 %size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp5 = icmp sgt i32 %size, 64
  %or.cond = or i1 %cmp5, %cmp4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %mbox_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %mbox_lock) #7
  %mlist = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 17, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %entry1, ptr noundef %11, ptr noundef %mlist) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry1, ptr %prev.i, align 4
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mlist, ptr %entry1, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %4, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry1, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mbox_lock) #7
  br label %if.end15

if.then11:                                        ; preds = %for.inc
  call void @_raw_spin_lock(ptr noundef %mbox_lock) #7
  %call.i.i336 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1) #7
  br i1 %call.i.i336, label %if.end.i.i337, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i337:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %18 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i337, %if.then11.list_del.exit_crit_edge
  %22 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %mbox_lock) #7
  %mbox_log.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %24 = ptrtoint ptr %mbox_log.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbox_log.i, align 16
  %cursor.i = getelementptr inbounds %struct.mbox_cmd_log, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cursor.i, align 4
  %inc.i = add i32 %27, 1
  %arrayidx.i.i = getelementptr %struct.mbox_cmd_log, ptr %25, i32 1
  %arrayidx1.i.i = getelementptr %struct.mbox_cmd, ptr %arrayidx.i.i, i32 %27
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %29)
  %cmp.i = icmp eq i32 %inc.i, %29
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %30 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select.i, ptr %cursor.i, align 4
  %div.i = sdiv i32 %size, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp51.i = icmp sgt i32 %size, 7
  br i1 %cmp51.i, label %list_del.exit.for.body.i_crit_edge, label %list_del.exit.while.body.preheader.i_crit_edge

list_del.exit.while.body.preheader.i_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i)
  %cmp93.i = icmp ult i32 %div.i, 8
  br i1 %cmp93.i, label %while.cond.preheader.i.while.body.preheader.i_crit_edge, label %while.cond.preheader.i.t4vf_record_mbox.exit_crit_edge

while.cond.preheader.i.t4vf_record_mbox.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %t4vf_record_mbox.exit

while.cond.preheader.i.while.body.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i.while.body.preheader.i_crit_edge, %list_del.exit.while.body.preheader.i_crit_edge
  %i.0.lcssa7.i = phi i32 [ %div.i, %while.cond.preheader.i.while.body.preheader.i_crit_edge ], [ 0, %list_del.exit.while.body.preheader.i_crit_edge ]
  %31 = mul i32 %27, 80
  %32 = shl nuw nsw i32 %i.0.lcssa7.i, 3
  %33 = or i32 %31, 12
  %34 = add i32 %33, %32
  %uglygep.i = getelementptr i8, ptr %25, i32 %34
  %35 = sub nuw nsw i32 64, %32
  %36 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %35)
  br label %t4vf_record_mbox.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %cmd, i32 %i.02.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i, align 8
  %arrayidx7.i = getelementptr [8 x i64], ptr %arrayidx1.i.i, i32 0, i32 %i.02.i
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx7.i, align 8
  %inc8.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %div.i
  br i1 %exitcond.not.i, label %while.cond.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

t4vf_record_mbox.exit:                            ; preds = %while.body.preheader.i, %while.cond.preheader.i.t4vf_record_mbox.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i32 %40 to i64
  %timestamp.i = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv.i, ptr %timestamp.i, align 8
  %seqno.i = getelementptr inbounds %struct.mbox_cmd_log, ptr %25, i32 0, i32 2
  %42 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seqno.i, align 4
  %inc13.i = add i32 %43, 1
  store i32 %inc13.i, ptr %seqno.i, align 4
  %seqno14.i = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %seqno14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %seqno14.i, align 8
  %access16.i = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %access16.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %access16.i, align 4
  %execute18.i = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %execute18.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -16, ptr %execute18.i, align 2
  br label %cleanup

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %list_add_tail.exit
  %delay_idx.0486 = phi i32 [ 0, %list_add_tail.exit ], [ %delay_idx.2, %for.inc.if.end15_crit_edge ]
  %ms.0484 = phi i32 [ 1, %list_add_tail.exit ], [ %ms.1, %for.inc.if.end15_crit_edge ]
  %i.0483 = phi i32 [ 0, %list_add_tail.exit ], [ %add, %for.inc.if.end15_crit_edge ]
  %47 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mlist, align 8
  %cmp18 = icmp eq ptr %48, %entry1
  br i1 %cmp18, label %for.end, label %if.end21

if.end21:                                         ; preds = %if.end15
  br i1 %sleep_ok, label %if.then22, label %while.cond.preheader

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [9 x i32], ptr @t4vf_wr_mbox_core.delay, i32 0, i32 %delay_idx.0486
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %delay_idx.0486)
  %cmp23 = icmp ult i32 %delay_idx.0486, 8
  %inc = zext i1 %cmp23 to i32
  %spec.select = add i32 %delay_idx.0486, %inc
  call void @msleep(i32 noundef %50) #7
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ms.0484)
  %tobool41.not481 = icmp eq i32 %ms.0484, 0
  br i1 %tobool41.not481, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.0482 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %ms.0484, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %__ms.0482, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #7
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge, %if.then22
  %ms.1 = phi i32 [ %50, %if.then22 ], [ 0, %while.cond.preheader.for.inc_crit_edge ], [ %ms.0484, %while.body.for.inc_crit_edge ]
  %delay_idx.2 = phi i32 [ %spec.select, %if.then22 ], [ %delay_idx.0486, %while.cond.preheader.for.inc_crit_edge ], [ %delay_idx.0486, %while.body.for.inc_crit_edge ]
  %add = add i32 %ms.1, %i.0483
  %cmp10 = icmp sgt i32 %add, 10000
  br i1 %cmp10, label %if.then11, label %for.inc.if.end15_crit_edge

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.end:                                          ; preds = %if.end15
  %52 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %53, i32 768
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %55 = lshr i32 %54, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %v.0487 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v.0487)
  %cmp47488 = icmp eq i32 %v.0487, 0
  br i1 %cmp47488, label %for.body, label %for.end.for.end56_crit_edge

for.end.for.end56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.body:                                         ; preds = %for.end
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 128
  %add.ptr.i339 = getelementptr i8, ptr %57, i32 768
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #7, !srcloc !63
  %59 = lshr i32 %58, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %v.0 = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v.0)
  %cmp47 = icmp eq i32 %v.0, 0
  br i1 %cmp47, label %for.body.1, label %for.body.for.end56_crit_edge

for.body.for.end56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.body.1:                                       ; preds = %for.body
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 128
  %add.ptr.i339.1 = getelementptr i8, ptr %61, i32 768
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339.1) #7, !srcloc !63
  %63 = lshr i32 %62, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %v.0.1 = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v.0.1)
  %cmp47.1 = icmp eq i32 %v.0.1, 0
  br i1 %cmp47.1, label %for.body.2, label %for.body.1.for.end56_crit_edge

for.body.1.for.end56_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 128
  %add.ptr.i339.2 = getelementptr i8, ptr %65, i32 768
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339.2) #7, !srcloc !63
  %67 = lshr i32 %66, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %v.0.2 = and i32 %67, 3
  br label %for.end56

for.end56:                                        ; preds = %for.body.2, %for.body.1.for.end56_crit_edge, %for.body.for.end56_crit_edge, %for.end.for.end56_crit_edge
  %v.0.lcssa = phi i32 [ %v.0487, %for.end.for.end56_crit_edge ], [ %v.0, %for.body.for.end56_crit_edge ], [ %v.0.1, %for.body.1.for.end56_crit_edge ], [ %v.0.2, %for.body.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %v.0.lcssa)
  %cmp57.not = icmp eq i32 %v.0.lcssa, 2
  br i1 %cmp57.not, label %if.end66, label %if.then59

if.then59:                                        ; preds = %for.end56
  call void @_raw_spin_lock(ptr noundef %mbox_lock) #7
  %call.i.i340 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1) #7
  br i1 %call.i.i340, label %if.end.i.i343, label %if.then59.list_del.exit345_crit_edge

if.then59.list_del.exit345_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit345

if.end.i.i343:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %4, align 4
  %70 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i342 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i342 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i342, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit345

list_del.exit345:                                 ; preds = %if.end.i.i343, %if.then59.list_del.exit345_crit_edge
  %74 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %mbox_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %v.0.lcssa)
  %cmp63 = icmp eq i32 %v.0.lcssa, 1
  %cond = select i1 %cmp63, i32 -16, i32 -110
  %mbox_log.i346 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %76 = ptrtoint ptr %mbox_log.i346 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mbox_log.i346, align 16
  %cursor.i347 = getelementptr inbounds %struct.mbox_cmd_log, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %cursor.i347 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cursor.i347, align 4
  %inc.i348 = add i32 %79, 1
  %arrayidx.i.i349 = getelementptr %struct.mbox_cmd_log, ptr %77, i32 1
  %arrayidx1.i.i350 = getelementptr %struct.mbox_cmd, ptr %arrayidx.i.i349, i32 %79
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i348, i32 %81)
  %cmp.i351 = icmp eq i32 %inc.i348, %81
  %spec.store.select.i352 = select i1 %cmp.i351, i32 0, i32 %inc.i348
  %82 = ptrtoint ptr %cursor.i347 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.store.select.i352, ptr %cursor.i347, align 4
  %div.i353 = sdiv i32 %size, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp51.i354 = icmp sgt i32 %size, 7
  br i1 %cmp51.i354, label %list_del.exit345.for.body.i365_crit_edge, label %list_del.exit345.while.body.preheader.i359_crit_edge

list_del.exit345.while.body.preheader.i359_crit_edge: ; preds = %list_del.exit345
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i359

list_del.exit345.for.body.i365_crit_edge:         ; preds = %list_del.exit345
  br label %for.body.i365

while.cond.preheader.i356:                        ; preds = %for.body.i365
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i353)
  %cmp93.i355 = icmp ult i32 %div.i353, 8
  br i1 %cmp93.i355, label %while.cond.preheader.i356.while.body.preheader.i359_crit_edge, label %while.cond.preheader.i356.t4vf_record_mbox.exit373_crit_edge

while.cond.preheader.i356.t4vf_record_mbox.exit373_crit_edge: ; preds = %while.cond.preheader.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %t4vf_record_mbox.exit373

while.cond.preheader.i356.while.body.preheader.i359_crit_edge: ; preds = %while.cond.preheader.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i359

while.body.preheader.i359:                        ; preds = %while.cond.preheader.i356.while.body.preheader.i359_crit_edge, %list_del.exit345.while.body.preheader.i359_crit_edge
  %i.0.lcssa7.i357 = phi i32 [ %div.i353, %while.cond.preheader.i356.while.body.preheader.i359_crit_edge ], [ 0, %list_del.exit345.while.body.preheader.i359_crit_edge ]
  %83 = mul i32 %79, 80
  %84 = shl nuw nsw i32 %i.0.lcssa7.i357, 3
  %85 = or i32 %83, 12
  %86 = add i32 %85, %84
  %uglygep.i358 = getelementptr i8, ptr %77, i32 %86
  %87 = sub nuw nsw i32 64, %84
  %88 = call ptr @memset(ptr %uglygep.i358, i32 0, i32 %87)
  br label %t4vf_record_mbox.exit373

for.body.i365:                                    ; preds = %for.body.i365.for.body.i365_crit_edge, %list_del.exit345.for.body.i365_crit_edge
  %i.02.i360 = phi i32 [ %inc8.i363, %for.body.i365.for.body.i365_crit_edge ], [ 0, %list_del.exit345.for.body.i365_crit_edge ]
  %arrayidx.i361 = getelementptr i64, ptr %cmd, i32 %i.02.i360
  %89 = ptrtoint ptr %arrayidx.i361 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.i361, align 8
  %arrayidx7.i362 = getelementptr [8 x i64], ptr %arrayidx1.i.i350, i32 0, i32 %i.02.i360
  %91 = ptrtoint ptr %arrayidx7.i362 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %arrayidx7.i362, align 8
  %inc8.i363 = add nuw nsw i32 %i.02.i360, 1
  %exitcond.not.i364 = icmp eq i32 %inc8.i363, %div.i353
  br i1 %exitcond.not.i364, label %while.cond.preheader.i356, label %for.body.i365.for.body.i365_crit_edge

for.body.i365.for.body.i365_crit_edge:            ; preds = %for.body.i365
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i365

t4vf_record_mbox.exit373:                         ; preds = %while.body.preheader.i359, %while.cond.preheader.i356.t4vf_record_mbox.exit373_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %conv.i366 = zext i32 %92 to i64
  %timestamp.i367 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i350, i32 0, i32 1
  %93 = ptrtoint ptr %timestamp.i367 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv.i366, ptr %timestamp.i367, align 8
  %seqno.i368 = getelementptr inbounds %struct.mbox_cmd_log, ptr %77, i32 0, i32 2
  %94 = ptrtoint ptr %seqno.i368 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %seqno.i368, align 4
  %inc13.i369 = add i32 %95, 1
  store i32 %inc13.i369, ptr %seqno.i368, align 4
  %seqno14.i370 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i350, i32 0, i32 2
  %96 = ptrtoint ptr %seqno14.i370 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %seqno14.i370, align 8
  %access16.i371 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i350, i32 0, i32 3
  %97 = ptrtoint ptr %access16.i371 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %access16.i371, align 4
  %conv17.i = trunc i32 %cond to i16
  %execute18.i372 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i350, i32 0, i32 4
  %98 = ptrtoint ptr %execute18.i372 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv17.i, ptr %execute18.i372, align 2
  br label %cleanup

if.end66:                                         ; preds = %for.end56
  %shr.mask = and i32 %1, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 436207616, i32 %shr.mask)
  %cmp67.not = icmp eq i32 %shr.mask, 436207616
  br i1 %cmp67.not, label %if.end66.if.end71_crit_edge, label %if.then69

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  %mbox_log.i374 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %99 = ptrtoint ptr %mbox_log.i374 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mbox_log.i374, align 16
  %cursor.i375 = getelementptr inbounds %struct.mbox_cmd_log, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %cursor.i375 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cursor.i375, align 4
  %inc.i376 = add i32 %102, 1
  %arrayidx.i.i377 = getelementptr %struct.mbox_cmd_log, ptr %100, i32 1
  %arrayidx1.i.i378 = getelementptr %struct.mbox_cmd, ptr %arrayidx.i.i377, i32 %102
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i376, i32 %104)
  %cmp.i379 = icmp eq i32 %inc.i376, %104
  %spec.store.select.i380 = select i1 %cmp.i379, i32 0, i32 %inc.i376
  %105 = ptrtoint ptr %cursor.i375 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.store.select.i380, ptr %cursor.i375, align 4
  %div.i381 = sdiv i32 %size, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp51.i382 = icmp sgt i32 %size, 7
  br i1 %cmp51.i382, label %if.then69.for.body.i393_crit_edge, label %if.then69.while.body.preheader.i387_crit_edge

if.then69.while.body.preheader.i387_crit_edge:    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i387

if.then69.for.body.i393_crit_edge:                ; preds = %if.then69
  br label %for.body.i393

while.cond.preheader.i384:                        ; preds = %for.body.i393
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i381)
  %cmp93.i383 = icmp ult i32 %div.i381, 8
  br i1 %cmp93.i383, label %while.cond.preheader.i384.while.body.preheader.i387_crit_edge, label %while.cond.preheader.i384.t4vf_record_mbox.exit401_crit_edge

while.cond.preheader.i384.t4vf_record_mbox.exit401_crit_edge: ; preds = %while.cond.preheader.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %t4vf_record_mbox.exit401

while.cond.preheader.i384.while.body.preheader.i387_crit_edge: ; preds = %while.cond.preheader.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i387

while.body.preheader.i387:                        ; preds = %while.cond.preheader.i384.while.body.preheader.i387_crit_edge, %if.then69.while.body.preheader.i387_crit_edge
  %i.0.lcssa7.i385 = phi i32 [ %div.i381, %while.cond.preheader.i384.while.body.preheader.i387_crit_edge ], [ 0, %if.then69.while.body.preheader.i387_crit_edge ]
  %106 = mul i32 %102, 80
  %107 = shl nuw nsw i32 %i.0.lcssa7.i385, 3
  %108 = or i32 %106, 12
  %109 = add i32 %108, %107
  %uglygep.i386 = getelementptr i8, ptr %100, i32 %109
  %110 = sub nuw nsw i32 64, %107
  %111 = call ptr @memset(ptr %uglygep.i386, i32 0, i32 %110)
  br label %t4vf_record_mbox.exit401

for.body.i393:                                    ; preds = %for.body.i393.for.body.i393_crit_edge, %if.then69.for.body.i393_crit_edge
  %i.02.i388 = phi i32 [ %inc8.i391, %for.body.i393.for.body.i393_crit_edge ], [ 0, %if.then69.for.body.i393_crit_edge ]
  %arrayidx.i389 = getelementptr i64, ptr %cmd, i32 %i.02.i388
  %112 = ptrtoint ptr %arrayidx.i389 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx.i389, align 8
  %arrayidx7.i390 = getelementptr [8 x i64], ptr %arrayidx1.i.i378, i32 0, i32 %i.02.i388
  %114 = ptrtoint ptr %arrayidx7.i390 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %arrayidx7.i390, align 8
  %inc8.i391 = add nuw nsw i32 %i.02.i388, 1
  %exitcond.not.i392 = icmp eq i32 %inc8.i391, %div.i381
  br i1 %exitcond.not.i392, label %while.cond.preheader.i384, label %for.body.i393.for.body.i393_crit_edge

for.body.i393.for.body.i393_crit_edge:            ; preds = %for.body.i393
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i393

t4vf_record_mbox.exit401:                         ; preds = %while.body.preheader.i387, %while.cond.preheader.i384.t4vf_record_mbox.exit401_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %conv.i394 = zext i32 %115 to i64
  %timestamp.i395 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i378, i32 0, i32 1
  %116 = ptrtoint ptr %timestamp.i395 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv.i394, ptr %timestamp.i395, align 8
  %seqno.i396 = getelementptr inbounds %struct.mbox_cmd_log, ptr %100, i32 0, i32 2
  %117 = ptrtoint ptr %seqno.i396 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %seqno.i396, align 4
  %inc13.i397 = add i32 %118, 1
  store i32 %inc13.i397, ptr %seqno.i396, align 4
  %seqno14.i398 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i378, i32 0, i32 2
  %119 = ptrtoint ptr %seqno14.i398 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %seqno14.i398, align 8
  %access16.i399 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i378, i32 0, i32 3
  %120 = ptrtoint ptr %access16.i399 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %access16.i399, align 4
  %execute18.i400 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i378, i32 0, i32 4
  %121 = ptrtoint ptr %execute18.i400 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %execute18.i400, align 2
  br label %if.end71

if.end71:                                         ; preds = %t4vf_record_mbox.exit401, %if.end66.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp73490 = icmp sgt i32 %size, 0
  br i1 %cmp73490, label %if.end71.for.body75_crit_edge, label %if.end71.for.end79_crit_edge

if.end71.for.end79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end79

if.end71.for.body75_crit_edge:                    ; preds = %if.end71
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %if.end71.for.body75_crit_edge
  %p.0492 = phi ptr [ %incdec.ptr, %for.body75.for.body75_crit_edge ], [ %cmd, %if.end71.for.body75_crit_edge ]
  %i.2491 = phi i32 [ %add78, %for.body75.for.body75_crit_edge ], [ 0, %if.end71.for.body75_crit_edge ]
  %add76 = add i32 %i.2491, %.
  %incdec.ptr = getelementptr i64, ptr %p.0492, i32 1
  %122 = ptrtoint ptr %p.0492 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %p.0492, align 8
  %124 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adapter, align 128
  %add.ptr.i402 = getelementptr i8, ptr %125, i32 %add76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  call void @arm_heavy_mb() #7
  %conv.i.i = trunc i64 %123 to i32
  %126 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402, i32 %126) #7, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @arm_heavy_mb() #7
  %shr.i.i = lshr i64 %123, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %127 = call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i402, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %127) #7, !srcloc !67
  %add78 = add i32 %i.2491, 8
  %cmp73 = icmp slt i32 %add78, %size
  br i1 %cmp73, label %for.body75.for.body75_crit_edge, label %for.body75.for.end79_crit_edge

for.body75.for.end79_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end79

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.end79:                                        ; preds = %for.body75.for.end79_crit_edge, %if.end71.for.end79_crit_edge
  %128 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %adapter, align 128
  %add.ptr.i403 = getelementptr i8, ptr %129, i32 %.
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i403) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @arm_heavy_mb() #7
  %131 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %adapter, align 128
  %add.ptr.i404 = getelementptr i8, ptr %132, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 150994944) #7, !srcloc !67
  %133 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter, align 128
  %add.ptr.i405 = getelementptr i8, ptr %134, i32 768
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %for.body85

for.body85:                                       ; preds = %for.inc211.for.body85_crit_edge, %for.end79
  %delay_idx.3499 = phi i32 [ 0, %for.end79 ], [ %delay_idx.5, %for.inc211.for.body85_crit_edge ]
  %ms.2497 = phi i32 [ 1, %for.end79 ], [ %ms.3, %for.inc211.for.body85_crit_edge ]
  %i.3495 = phi i32 [ 0, %for.end79 ], [ %add212, %for.inc211.for.body85_crit_edge ]
  br i1 %sleep_ok, label %if.then87, label %while.cond114.preheader

if.then87:                                        ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx88 = getelementptr [9 x i32], ptr @t4vf_wr_mbox_core.delay, i32 0, i32 %delay_idx.3499
  %136 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %delay_idx.3499)
  %cmp89 = icmp ult i32 %delay_idx.3499, 8
  %inc92 = zext i1 %cmp89 to i32
  %spec.select334 = add i32 %delay_idx.3499, %inc92
  call void @msleep(i32 noundef %137) #7
  br label %if.end120

while.cond114.preheader:                          ; preds = %for.body85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ms.2497)
  %tobool116.not493 = icmp eq i32 %ms.2497, 0
  br i1 %tobool116.not493, label %while.cond114.preheader.if.end120_crit_edge, label %while.cond114.preheader.while.body117_crit_edge

while.cond114.preheader.while.body117_crit_edge:  ; preds = %while.cond114.preheader
  br label %while.body117

while.cond114.preheader.if.end120_crit_edge:      ; preds = %while.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

while.body117:                                    ; preds = %while.body117.while.body117_crit_edge, %while.cond114.preheader.while.body117_crit_edge
  %__ms113.0494 = phi i32 [ %dec115, %while.body117.while.body117_crit_edge ], [ %ms.2497, %while.cond114.preheader.while.body117_crit_edge ]
  %dec115 = add i32 %__ms113.0494, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 214748000) #7
  %tobool116.not = icmp eq i32 %dec115, 0
  br i1 %tobool116.not, label %while.body117.if.end120_crit_edge, label %while.body117.while.body117_crit_edge

while.body117.while.body117_crit_edge:            ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body117

while.body117.if.end120_crit_edge:                ; preds = %while.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.end120:                                        ; preds = %while.body117.if.end120_crit_edge, %while.cond114.preheader.if.end120_crit_edge, %if.then87
  %ms.3 = phi i32 [ %137, %if.then87 ], [ 0, %while.cond114.preheader.if.end120_crit_edge ], [ %ms.2497, %while.body117.if.end120_crit_edge ]
  %delay_idx.5 = phi i32 [ %spec.select334, %if.then87 ], [ %delay_idx.3499, %while.cond114.preheader.if.end120_crit_edge ], [ %delay_idx.3499, %while.body117.if.end120_crit_edge ]
  %139 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adapter, align 128
  %add.ptr.i406 = getelementptr i8, ptr %140, i32 768
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406) #7, !srcloc !63
  %142 = call i32 @llvm.bswap.i32(i32 %141) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %and123 = and i32 %142, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and123)
  %cmp124 = icmp eq i32 %and123, 2
  br i1 %cmp124, label %if.then126, label %if.end120.for.inc211_crit_edge

if.end120.for.inc211_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc211

if.then126:                                       ; preds = %if.end120
  %and127 = and i32 %142, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @arm_heavy_mb() #7
  %143 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter, align 128
  %add.ptr.i407 = getelementptr i8, ptr %144, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 0) #7, !srcloc !67
  br label %for.inc211

if.end131:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not3.i = icmp eq i32 %size, 0
  br i1 %tobool.not3.i, label %if.end131.get_mbox_rpl.exit_crit_edge, label %if.end131.for.body.i409_crit_edge

if.end131.for.body.i409_crit_edge:                ; preds = %if.end131
  br label %for.body.i409

if.end131.get_mbox_rpl.exit_crit_edge:            ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_mbox_rpl.exit

for.body.i409:                                    ; preds = %for.body.i409.for.body.i409_crit_edge, %if.end131.for.body.i409_crit_edge
  %mbox_data.addr.06.i = phi i32 [ %add.i, %for.body.i409.for.body.i409_crit_edge ], [ %., %if.end131.for.body.i409_crit_edge ]
  %size.addr.05.i = phi i32 [ %sub.i, %for.body.i409.for.body.i409_crit_edge ], [ %size, %if.end131.for.body.i409_crit_edge ]
  %rpl.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i409.for.body.i409_crit_edge ], [ %cmd_rpl, %if.end131.for.body.i409_crit_edge ]
  %145 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %adapter, align 128
  %add.ptr.i.i408 = getelementptr i8, ptr %146, i32 %mbox_data.addr.06.i
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i408) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i408, i32 4
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %149 = zext i32 %148 to i64
  %150 = zext i32 %147 to i64
  %151 = shl nuw i64 %150, 32
  %152 = or i64 %151, %149
  %153 = call i64 @llvm.bswap.i64(i64 %152) #7
  %incdec.ptr.i = getelementptr i64, ptr %rpl.addr.04.i, i32 1
  %154 = ptrtoint ptr %rpl.addr.04.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %rpl.addr.04.i, align 8
  %sub.i = add i32 %size.addr.05.i, -8
  %add.i = add i32 %mbox_data.addr.06.i, 8
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %for.body.i409.get_mbox_rpl.exit_crit_edge, label %for.body.i409.for.body.i409_crit_edge

for.body.i409.for.body.i409_crit_edge:            ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i409

for.body.i409.get_mbox_rpl.exit_crit_edge:        ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_mbox_rpl.exit

get_mbox_rpl.exit:                                ; preds = %for.body.i409.get_mbox_rpl.exit_crit_edge, %if.end131.get_mbox_rpl.exit_crit_edge
  %155 = ptrtoint ptr %cmd_rpl to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %cmd_rpl, align 8
  %conv133 = trunc i64 %156 to i32
  %tobool134.not = icmp eq ptr %rpl, null
  br i1 %tobool134.not, label %get_mbox_rpl.exit.if.end195_crit_edge, label %if.then135

get_mbox_rpl.exit.if.end195_crit_edge:            ; preds = %get_mbox_rpl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then135:                                       ; preds = %get_mbox_rpl.exit
  %157 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cmd, align 4
  %and136 = and i32 %158, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %cmp137 = icmp eq i32 %and136, 0
  br i1 %cmp137, label %do.end, label %if.then135.if.end153_crit_edge, !prof !72

if.then135.if.end153_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

do.end:                                           ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #7
  br label %if.end153

if.end153:                                        ; preds = %do.end, %if.then135.if.end153_crit_edge
  %159 = call ptr @memcpy(ptr %rpl, ptr %cmd_rpl, i32 %size)
  %160 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rpl, align 4
  %and163 = and i32 %161, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %cmp164.not = icmp eq i32 %and163, 0
  br i1 %cmp164.not, label %if.end153.if.end195_crit_edge, label %do.end181, !prof !73

if.end153.if.end195_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

do.end181:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #7
  br label %if.end195

if.end195:                                        ; preds = %do.end181, %if.end153.if.end195_crit_edge, %get_mbox_rpl.exit.if.end195_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @arm_heavy_mb() #7
  %162 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adapter, align 128
  %add.ptr.i410 = getelementptr i8, ptr %163, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410, i32 0) #7, !srcloc !67
  br i1 %cmp67.not, label %if.end195.if.end204_crit_edge, label %if.then200

if.end195.if.end204_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.then200:                                       ; preds = %if.end195
  %add196 = add i32 %ms.3, %i.3495
  %mbox_log.i411 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %164 = ptrtoint ptr %mbox_log.i411 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mbox_log.i411, align 16
  %cursor.i412 = getelementptr inbounds %struct.mbox_cmd_log, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %cursor.i412 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cursor.i412, align 4
  %inc.i413 = add i32 %167, 1
  %arrayidx.i.i414 = getelementptr %struct.mbox_cmd_log, ptr %165, i32 1
  %arrayidx1.i.i415 = getelementptr %struct.mbox_cmd, ptr %arrayidx.i.i414, i32 %167
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %165, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i413, i32 %169)
  %cmp.i416 = icmp eq i32 %inc.i413, %169
  %spec.store.select.i417 = select i1 %cmp.i416, i32 0, i32 %inc.i413
  %170 = ptrtoint ptr %cursor.i412 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %spec.store.select.i417, ptr %cursor.i412, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp51.i419 = icmp sgt i32 %size, 7
  br i1 %cmp51.i419, label %for.body.i430.preheader, label %if.then200.while.body.preheader.i424_crit_edge

if.then200.while.body.preheader.i424_crit_edge:   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i424

for.body.i430.preheader:                          ; preds = %if.then200
  %div.i418503507 = and i32 %size, -8
  %171 = and i32 %size, -8
  %172 = call ptr @memcpy(ptr %arrayidx1.i.i415, ptr %cmd_rpl, i32 %171)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp93.i420 = icmp ult i32 %size, 64
  br i1 %cmp93.i420, label %for.body.i430.preheader.while.body.preheader.i424_crit_edge, label %for.body.i430.preheader.t4vf_record_mbox.exit439_crit_edge

for.body.i430.preheader.t4vf_record_mbox.exit439_crit_edge: ; preds = %for.body.i430.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %t4vf_record_mbox.exit439

for.body.i430.preheader.while.body.preheader.i424_crit_edge: ; preds = %for.body.i430.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i424

while.body.preheader.i424:                        ; preds = %for.body.i430.preheader.while.body.preheader.i424_crit_edge, %if.then200.while.body.preheader.i424_crit_edge
  %i.0.lcssa7.i422 = phi i32 [ %div.i418503507, %for.body.i430.preheader.while.body.preheader.i424_crit_edge ], [ 0, %if.then200.while.body.preheader.i424_crit_edge ]
  %173 = mul i32 %167, 80
  %174 = or i32 %173, 12
  %175 = add i32 %174, %i.0.lcssa7.i422
  %uglygep.i423 = getelementptr i8, ptr %165, i32 %175
  %176 = sub nuw nsw i32 64, %i.0.lcssa7.i422
  %177 = call ptr @memset(ptr %uglygep.i423, i32 0, i32 %176)
  br label %t4vf_record_mbox.exit439

t4vf_record_mbox.exit439:                         ; preds = %while.body.preheader.i424, %for.body.i430.preheader.t4vf_record_mbox.exit439_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %conv.i431 = zext i32 %178 to i64
  %timestamp.i432 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i415, i32 0, i32 1
  %179 = ptrtoint ptr %timestamp.i432 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv.i431, ptr %timestamp.i432, align 8
  %seqno.i433 = getelementptr inbounds %struct.mbox_cmd_log, ptr %165, i32 0, i32 2
  %180 = ptrtoint ptr %seqno.i433 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %seqno.i433, align 4
  %inc13.i434 = add i32 %181, 1
  store i32 %inc13.i434, ptr %seqno.i433, align 4
  %seqno14.i435 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i415, i32 0, i32 2
  %182 = ptrtoint ptr %seqno14.i435 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %seqno14.i435, align 8
  %access16.i436 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i415, i32 0, i32 3
  %183 = ptrtoint ptr %access16.i436 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %access16.i436, align 4
  %conv17.i437 = trunc i32 %add196 to i16
  %execute18.i438 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i415, i32 0, i32 4
  %184 = ptrtoint ptr %execute18.i438 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv17.i437, ptr %execute18.i438, align 2
  br label %if.end204

if.end204:                                        ; preds = %t4vf_record_mbox.exit439, %if.end195.if.end204_crit_edge
  call void @_raw_spin_lock(ptr noundef %mbox_lock) #7
  %call.i.i440 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1) #7
  br i1 %call.i.i440, label %if.end.i.i443, label %if.end204.list_del.exit445_crit_edge

if.end204.list_del.exit445_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit445

if.end.i.i443:                                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %4, align 4
  %187 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i442 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %prev1.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %186, ptr %prev1.i.i.i442, align 4
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %188, ptr %186, align 4
  br label %list_del.exit445

list_del.exit445:                                 ; preds = %if.end.i.i443, %if.end204.list_del.exit445_crit_edge
  %191 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %192 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %mbox_lock) #7
  %shr208 = lshr i32 %conv133, 8
  %and209 = and i32 %shr208, 255
  %sub = sub nsw i32 0, %and209
  br label %cleanup

for.inc211:                                       ; preds = %if.then130, %if.end120.for.inc211_crit_edge
  %add212 = add i32 %ms.3, %i.3495
  %cmp83 = icmp slt i32 %add212, 10000
  br i1 %cmp83, label %for.inc211.for.body85_crit_edge, label %for.end213

for.inc211.for.body85_crit_edge:                  ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

for.end213:                                       ; preds = %for.inc211
  %mbox_log.i446 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  %193 = ptrtoint ptr %mbox_log.i446 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mbox_log.i446, align 16
  %cursor.i447 = getelementptr inbounds %struct.mbox_cmd_log, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %cursor.i447 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cursor.i447, align 4
  %inc.i448 = add i32 %196, 1
  %arrayidx.i.i449 = getelementptr %struct.mbox_cmd_log, ptr %194, i32 1
  %arrayidx1.i.i450 = getelementptr %struct.mbox_cmd, ptr %arrayidx.i.i449, i32 %196
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %194, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i448, i32 %198)
  %cmp.i451 = icmp eq i32 %inc.i448, %198
  %spec.store.select.i452 = select i1 %cmp.i451, i32 0, i32 %inc.i448
  %199 = ptrtoint ptr %cursor.i447 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %spec.store.select.i452, ptr %cursor.i447, align 4
  %div.i453 = sdiv i32 %size, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp51.i454 = icmp sgt i32 %size, 7
  br i1 %cmp51.i454, label %for.end213.for.body.i465_crit_edge, label %for.end213.while.body.preheader.i459_crit_edge

for.end213.while.body.preheader.i459_crit_edge:   ; preds = %for.end213
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i459

for.end213.for.body.i465_crit_edge:               ; preds = %for.end213
  br label %for.body.i465

while.cond.preheader.i456:                        ; preds = %for.body.i465
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i453)
  %cmp93.i455 = icmp ult i32 %div.i453, 8
  br i1 %cmp93.i455, label %while.cond.preheader.i456.while.body.preheader.i459_crit_edge, label %while.cond.preheader.i456.t4vf_record_mbox.exit473_crit_edge

while.cond.preheader.i456.t4vf_record_mbox.exit473_crit_edge: ; preds = %while.cond.preheader.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %t4vf_record_mbox.exit473

while.cond.preheader.i456.while.body.preheader.i459_crit_edge: ; preds = %while.cond.preheader.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i459

while.body.preheader.i459:                        ; preds = %while.cond.preheader.i456.while.body.preheader.i459_crit_edge, %for.end213.while.body.preheader.i459_crit_edge
  %i.0.lcssa7.i457 = phi i32 [ %div.i453, %while.cond.preheader.i456.while.body.preheader.i459_crit_edge ], [ 0, %for.end213.while.body.preheader.i459_crit_edge ]
  %200 = mul i32 %196, 80
  %201 = shl nuw nsw i32 %i.0.lcssa7.i457, 3
  %202 = or i32 %200, 12
  %203 = add i32 %202, %201
  %uglygep.i458 = getelementptr i8, ptr %194, i32 %203
  %204 = sub nuw nsw i32 64, %201
  %205 = call ptr @memset(ptr %uglygep.i458, i32 0, i32 %204)
  br label %t4vf_record_mbox.exit473

for.body.i465:                                    ; preds = %for.body.i465.for.body.i465_crit_edge, %for.end213.for.body.i465_crit_edge
  %i.02.i460 = phi i32 [ %inc8.i463, %for.body.i465.for.body.i465_crit_edge ], [ 0, %for.end213.for.body.i465_crit_edge ]
  %arrayidx.i461 = getelementptr i64, ptr %cmd, i32 %i.02.i460
  %206 = ptrtoint ptr %arrayidx.i461 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %arrayidx.i461, align 8
  %arrayidx7.i462 = getelementptr [8 x i64], ptr %arrayidx1.i.i450, i32 0, i32 %i.02.i460
  %208 = ptrtoint ptr %arrayidx7.i462 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %arrayidx7.i462, align 8
  %inc8.i463 = add nuw nsw i32 %i.02.i460, 1
  %exitcond.not.i464 = icmp eq i32 %inc8.i463, %div.i453
  br i1 %exitcond.not.i464, label %while.cond.preheader.i456, label %for.body.i465.for.body.i465_crit_edge

for.body.i465.for.body.i465_crit_edge:            ; preds = %for.body.i465
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i465

t4vf_record_mbox.exit473:                         ; preds = %while.body.preheader.i459, %while.cond.preheader.i456.t4vf_record_mbox.exit473_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %209 = load volatile i32, ptr @jiffies, align 128
  %conv.i466 = zext i32 %209 to i64
  %timestamp.i467 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i450, i32 0, i32 1
  %210 = ptrtoint ptr %timestamp.i467 to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %conv.i466, ptr %timestamp.i467, align 8
  %seqno.i468 = getelementptr inbounds %struct.mbox_cmd_log, ptr %194, i32 0, i32 2
  %211 = ptrtoint ptr %seqno.i468 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %seqno.i468, align 4
  %inc13.i469 = add i32 %212, 1
  store i32 %inc13.i469, ptr %seqno.i468, align 4
  %seqno14.i470 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i450, i32 0, i32 2
  %213 = ptrtoint ptr %seqno14.i470 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %seqno14.i470, align 8
  %access16.i471 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i450, i32 0, i32 3
  %214 = ptrtoint ptr %access16.i471 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %access16.i471, align 4
  %execute18.i472 = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i.i450, i32 0, i32 4
  %215 = ptrtoint ptr %execute18.i472 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 -110, ptr %execute18.i472, align 2
  call void @_raw_spin_lock(ptr noundef %mbox_lock) #7
  %call.i.i474 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %entry1) #7
  br i1 %call.i.i474, label %if.end.i.i477, label %t4vf_record_mbox.exit473.list_del.exit479_crit_edge

t4vf_record_mbox.exit473.list_del.exit479_crit_edge: ; preds = %t4vf_record_mbox.exit473
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit479

if.end.i.i477:                                    ; preds = %t4vf_record_mbox.exit473
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %4, align 4
  %218 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i476 = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %prev1.i.i.i476 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %217, ptr %prev1.i.i.i476, align 4
  %221 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %219, ptr %217, align 4
  br label %list_del.exit479

list_del.exit479:                                 ; preds = %if.end.i.i477, %t4vf_record_mbox.exit473.list_del.exit479_crit_edge
  %222 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %223 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  call void @_raw_spin_unlock(ptr noundef %mbox_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit479, %list_del.exit445, %t4vf_record_mbox.exit373, %t4vf_record_mbox.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %t4vf_record_mbox.exit ], [ %cond, %t4vf_record_mbox.exit373 ], [ %sub, %list_del.exit445 ], [ -110, %list_del.exit479 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd_rpl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_port_init(ptr noundef %adapter, i32 noundef %pidx) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.fw_params_cmd, align 4
  %vi_cmd = alloca %struct.fw_vi_cmd, align 8
  %vi_rpl = alloca %struct.fw_vi_cmd, align 8
  %port_cmd = alloca %struct.fw_port_cmd, align 8
  %port_rpl = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 %pidx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %fw_caps_support = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %fw_caps_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_caps_support, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vi_cmd) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vi_rpl) #7
  %4 = call ptr @memset(ptr %vi_rpl, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %port_cmd) #7
  %5 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %port_rpl) #7
  %6 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_rpl, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_rpl, i32 0, i32 2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_rpl, i32 0, i32 2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_rpl, i32 0, i32 2, i32 0, i32 6
  %10 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_rpl, i32 0, i32 2, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %11 = call ptr @memset(ptr %port_rpl, i32 255, i32 32)
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #7
  %12 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %13 = getelementptr inbounds i8, ptr %cmd.i, i32 16
  %14 = call ptr @memset(ptr %13, i32 0, i32 48)
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 144703488, ptr %cmd.i, align 4
  %retval_len16.i = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i, i32 0, i32 1
  %16 = ptrtoint ptr %retval_len16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %retval_len16.i, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 37355520, ptr %12, align 4
  %val.i = getelementptr inbounds i8, ptr %cmd.i, i32 12
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val.i, align 4
  %call.i.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i, i32 noundef 64, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp eq i32 %call.i.i, 0
  %cond = select i1 %cmp3, i32 2, i32 1
  %conv5 = trunc i32 %cond to i8
  %19 = ptrtoint ptr %fw_caps_support to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %fw_caps_support, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw_caps.0 = phi i32 [ %cond, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %20 = getelementptr inbounds i8, ptr %vi_cmd, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 56)
  %22 = ptrtoint ptr %vi_cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 348127232, ptr %vi_cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_vi_cmd, ptr %vi_cmd, i32 0, i32 1
  %23 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %alloc_to_len16, align 4
  %viid = getelementptr i8, ptr %1, i32 2312
  %24 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %viid, align 4
  %type_viid = getelementptr inbounds %struct.fw_vi_cmd, ptr %vi_cmd, i32 0, i32 2
  %26 = ptrtoint ptr %type_viid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %type_viid, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %vi_cmd, i32 noundef 64, ptr noundef nonnull %vi_rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.not = icmp eq i32 %call.i, 0
  br i1 %cmp11.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %port_id = getelementptr i8, ptr %1, i32 2326
  %27 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port_id, align 2
  %portid_pkd = getelementptr inbounds %struct.fw_vi_cmd, ptr %vi_rpl, i32 0, i32 4
  %29 = ptrtoint ptr %portid_pkd to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %portid_pkd, align 8
  %31 = lshr i8 %30, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %31)
  %cmp17.not = icmp eq i8 %28, %31
  br i1 %cmp17.not, label %do.end27, label %do.body21, !prof !73

do.body21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

do.end27:                                         ; preds = %do.body
  %rsssize_pkd = getelementptr inbounds %struct.fw_vi_cmd, ptr %vi_rpl, i32 0, i32 7
  %32 = ptrtoint ptr %rsssize_pkd to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rsssize_pkd, align 8
  %34 = and i16 %33, 2047
  %rss_size = getelementptr i8, ptr %1, i32 2320
  %35 = ptrtoint ptr %rss_size to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %rss_size, align 4
  %mac = getelementptr inbounds %struct.fw_vi_cmd, ptr %vi_rpl, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  call void @dev_addr_mod(ptr noundef %37, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #7
  %r_caps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 8
  %38 = ptrtoint ptr %r_caps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_caps, align 4
  %and33 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end27.cleanup_crit_edge, label %if.end36

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %do.end27
  %40 = getelementptr inbounds i8, ptr %port_cmd, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 24)
  %42 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_id, align 2
  %conv38 = zext i8 %43 to i32
  %or = or i32 %conv38, 465567744
  %44 = ptrtoint ptr %port_cmd to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %port_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fw_caps.0)
  %cmp40 = icmp eq i32 %fw_caps.0, 1
  %or44 = select i1 %cmp40, i32 196610, i32 655362
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or44, ptr %5, align 4
  %call.i119 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %port_cmd, i32 noundef 32, ptr noundef nonnull %port_rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp46.not = icmp eq i32 %call.i119, 0
  br i1 %cmp46.not, label %if.end49, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end36
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %6, align 8
  br i1 %cmp40, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %shr53 = lshr i32 %47, 8
  %and54 = and i32 %shr53, 31
  %and55 = and i32 %47, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %shr57 = lshr i32 %47, 16
  %and58 = and i32 %shr57, 31
  %cond59 = select i1 %tobool56.not, i32 -1, i32 %and58
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %7, align 4
  %conv.i = zext i16 %49 to i32
  %and12.i = shl nuw nsw i32 %conv.i, 1
  %50 = and i32 %and12.i, 8
  %and21.i = lshr i32 %conv.i, 1
  %51 = and i32 %and21.i, 4
  %52 = and i32 %and12.i, 64
  %and48.i = shl nuw nsw i32 %conv.i, 10
  %53 = and i32 %and48.i, 65536
  %54 = and i32 %and48.i, 131072
  %and66.i = shl nuw nsw i32 %conv.i, 12
  %55 = and i32 %and66.i, 1048576
  %56 = and i32 %and66.i, 2097152
  %57 = and i32 %and66.i, 4194304
  %58 = and i32 %and66.i, 8388608
  %59 = and i32 %and66.i, 16777216
  %and111.i = shl nuw nsw i32 %conv.i, 4
  %60 = and i32 %and111.i, 262144
  %61 = and i32 %and111.i, 524288
  %62 = and i32 %conv.i, 19
  %63 = or i32 %50, %62
  %64 = or i32 %63, %51
  %65 = or i32 %64, %52
  %66 = or i32 %65, %53
  %67 = or i32 %66, %54
  %68 = or i32 %67, %55
  %69 = or i32 %68, %56
  %70 = or i32 %69, %57
  %71 = or i32 %70, %58
  %72 = or i32 %71, %59
  %73 = or i32 %72, %60
  %74 = or i32 %73, %61
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %8, align 2
  %conv.i120 = zext i16 %76 to i32
  %and12.i121 = shl nuw nsw i32 %conv.i120, 1
  %77 = and i32 %and12.i121, 8
  %and21.i122 = lshr i32 %conv.i120, 1
  %78 = and i32 %and21.i122, 4
  %79 = and i32 %and12.i121, 64
  %and66.i124 = shl nuw nsw i32 %conv.i120, 12
  %80 = and i32 %and66.i124, 1048576
  %81 = and i32 %and66.i124, 8388608
  %82 = and i32 %and66.i124, 16777216
  %and111.i125 = shl nuw nsw i32 %conv.i120, 4
  %83 = and i32 %and111.i125, 262144
  %84 = and i32 %and111.i125, 524288
  %85 = and i32 %conv.i120, 19
  %86 = or i32 %77, %85
  %87 = or i32 %86, %78
  %88 = or i32 %87, %79
  %89 = or i32 %88, %80
  %90 = or i32 %89, %81
  %91 = or i32 %90, %82
  %92 = or i32 %91, %83
  %93 = or i32 %92, %84
  br label %if.end77

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %shr65 = lshr i32 %47, 13
  %and66 = and i32 %shr65, 255
  %and67 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %shr70 = lshr i32 %47, 21
  %and71 = and i32 %shr70, 31
  %cond74 = select i1 %tobool68.not, i32 -1, i32 %and71
  %94 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %9, align 4
  %96 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %10, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then52
  %port_type.0 = phi i32 [ %and54, %if.then52 ], [ %and66, %if.else ]
  %mdio_addr.0 = phi i32 [ %cond59, %if.then52 ], [ %cond74, %if.else ]
  %pcaps.0 = phi i32 [ %74, %if.then52 ], [ %95, %if.else ]
  %acaps.0 = phi i32 [ %93, %if.then52 ], [ %97, %if.else ]
  %conv78 = trunc i32 %port_type.0 to i8
  %port_type79 = getelementptr i8, ptr %1, i32 2324
  %98 = ptrtoint ptr %port_type79 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv78, ptr %port_type79, align 4
  %conv80 = trunc i32 %mdio_addr.0 to i8
  %mdio_addr81 = getelementptr i8, ptr %1, i32 2323
  %99 = ptrtoint ptr %mdio_addr81 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv80, ptr %mdio_addr81, align 1
  %mod_type = getelementptr i8, ptr %1, i32 2325
  %100 = ptrtoint ptr %mod_type to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %mod_type, align 1
  %link_cfg = getelementptr i8, ptr %1, i32 2332
  %101 = ptrtoint ptr %link_cfg to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %pcaps.0, ptr %link_cfg, align 4
  %lpacaps.i = getelementptr i8, ptr %1, i32 2340
  %102 = ptrtoint ptr %lpacaps.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %lpacaps.i, align 4
  %speed_caps.i = getelementptr i8, ptr %1, i32 2344
  %103 = ptrtoint ptr %speed_caps.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %speed_caps.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 2348
  %104 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %speed.i, align 4
  %fc.i = getelementptr i8, ptr %1, i32 2356
  %105 = ptrtoint ptr %fc.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %fc.i, align 4
  %requested_fc.i = getelementptr i8, ptr %1, i32 2352
  %106 = ptrtoint ptr %requested_fc.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 3, ptr %requested_fc.i, align 4
  %and.i.i = lshr i32 %acaps.0, 22
  %107 = and i32 %and.i.i, 6
  %auto_fec.i = getelementptr i8, ptr %1, i32 2364
  %108 = ptrtoint ptr %auto_fec.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %auto_fec.i, align 4
  %requested_fec.i = getelementptr i8, ptr %1, i32 2368
  %109 = ptrtoint ptr %requested_fec.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %requested_fec.i, align 4
  %fec.i = getelementptr i8, ptr %1, i32 2372
  %110 = ptrtoint ptr %fec.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %fec.i, align 4
  %and.i = and i32 %pcaps.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i = and i32 %acaps.0, 261885951
  %acaps5.i = getelementptr i8, ptr %1, i32 2336
  %111 = ptrtoint ptr %acaps5.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and4.i, ptr %acaps5.i, align 4
  %autoneg.i = getelementptr i8, ptr %1, i32 2376
  %112 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %autoneg.i, align 4
  %113 = ptrtoint ptr %requested_fc.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 7, ptr %requested_fc.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end77
  %acaps7.i = getelementptr i8, ptr %1, i32 2336
  %114 = ptrtoint ptr %acaps7.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %acaps7.i, align 4
  %autoneg8.i = getelementptr i8, ptr %1, i32 2376
  %115 = ptrtoint ptr %autoneg8.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %autoneg8.i, align 4
  %and.i29.i = and i32 %acaps.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool.not.i.i, label %do.body1.i.i, label %if.else.i.fwcap_to_fwspeed.exit.i_crit_edge

if.else.i.fwcap_to_fwspeed.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body1.i.i:                                     ; preds = %if.else.i
  %and2.i.i = and i32 %acaps.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body7.i.i, label %do.body1.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body1.i.i.fwcap_to_fwspeed.exit.i_crit_edge:   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body7.i.i:                                     ; preds = %do.body1.i.i
  %and8.i.i = and i32 %acaps.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body13.i.i, label %do.body7.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body7.i.i.fwcap_to_fwspeed.exit.i_crit_edge:   ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body13.i.i:                                    ; preds = %do.body7.i.i
  %and14.i.i = and i32 %acaps.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.body19.i.i, label %do.body13.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body13.i.i.fwcap_to_fwspeed.exit.i_crit_edge:  ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body19.i.i:                                    ; preds = %do.body13.i.i
  %and20.i.i = and i32 %acaps.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %do.body25.i.i, label %do.body19.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body19.i.i.fwcap_to_fwspeed.exit.i_crit_edge:  ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body25.i.i:                                    ; preds = %do.body19.i.i
  %and26.i.i = and i32 %acaps.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %do.body31.i.i, label %do.body25.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body25.i.i.fwcap_to_fwspeed.exit.i_crit_edge:  ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body31.i.i:                                    ; preds = %do.body25.i.i
  %and32.i.i = and i32 %acaps.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %do.body37.i.i, label %do.body31.i.i.fwcap_to_fwspeed.exit.i_crit_edge

do.body31.i.i.fwcap_to_fwspeed.exit.i_crit_edge:  ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_fwspeed.exit.i

do.body37.i.i:                                    ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and38.i.i = and i32 %acaps.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  %and44.i.i = and i32 %acaps.0, 1
  %spec.select.i.i = select i1 %tobool39.not.i.i, i32 %and44.i.i, i32 2
  br label %fwcap_to_fwspeed.exit.i

fwcap_to_fwspeed.exit.i:                          ; preds = %do.body37.i.i, %do.body31.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %do.body25.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %do.body19.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %do.body13.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %do.body7.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %do.body1.i.i.fwcap_to_fwspeed.exit.i_crit_edge, %if.else.i.fwcap_to_fwspeed.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 256, %if.else.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 128, %do.body1.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 64, %do.body7.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 32, %do.body13.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 16, %do.body19.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 8, %do.body25.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ 4, %do.body31.i.i.fwcap_to_fwspeed.exit.i_crit_edge ], [ %spec.select.i.i, %do.body37.i.i ]
  %116 = ptrtoint ptr %speed_caps.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %retval.0.i.i, ptr %speed_caps.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %fwcap_to_fwspeed.exit.i, %if.then.i, %if.end36.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %do.end27.cleanup_crit_edge ], [ %call.i119, %if.end36.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %fwcap_to_fwspeed.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %port_rpl) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %port_cmd) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vi_rpl) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vi_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_set_params(ptr noundef %adapter, i32 noundef %nparams, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %vals) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_params_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nparams)
  %cmp = icmp ugt i32 %nparams, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 144703488, ptr %cmd, align 4
  %3 = shl nuw nsw i32 %nparams, 3
  %sub = add nuw nsw i32 %3, 23
  %div12 = lshr i32 %sub, 4
  %retval_len16 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div12, ptr %retval_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nparams)
  %cmp113.not = icmp eq i32 %nparams, 0
  br i1 %cmp113.not, label %if.end.for.end_crit_edge, label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end
  %param = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %param, align 4
  %8 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vals, align 4
  %val = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nparams)
  %exitcond.not = icmp eq i32 %nparams, 1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %incdec.ptr3 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %incdec.ptr2 = getelementptr i32, ptr %vals, i32 1
  %incdec.ptr = getelementptr i32, ptr %params, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr, align 4
  %13 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr3, align 4
  %14 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr2, align 4
  %val.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %val.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nparams)
  %exitcond.not.1 = icmp eq i32 %nparams, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %incdec.ptr3.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %incdec.ptr2.1 = getelementptr i32, ptr %vals, i32 2
  %incdec.ptr.1 = getelementptr i32, ptr %params, i32 2
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.1, align 4
  %19 = ptrtoint ptr %incdec.ptr3.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr3.1, align 4
  %20 = ptrtoint ptr %incdec.ptr2.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr2.1, align 4
  %val.2 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 2, i32 1
  %22 = ptrtoint ptr %val.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nparams)
  %exitcond.not.2 = icmp eq i32 %nparams, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %incdec.ptr3.2 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %incdec.ptr2.2 = getelementptr i32, ptr %vals, i32 3
  %incdec.ptr.2 = getelementptr i32, ptr %params, i32 3
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr.2, align 4
  %25 = ptrtoint ptr %incdec.ptr3.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %incdec.ptr3.2, align 4
  %26 = ptrtoint ptr %incdec.ptr2.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr2.2, align 4
  %val.3 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 3, i32 1
  %28 = ptrtoint ptr %val.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nparams)
  %exitcond.not.3 = icmp eq i32 %nparams, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %incdec.ptr3.3 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %incdec.ptr2.3 = getelementptr i32, ptr %vals, i32 4
  %incdec.ptr.3 = getelementptr i32, ptr %params, i32 4
  %29 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.3, align 4
  %31 = ptrtoint ptr %incdec.ptr3.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr3.3, align 4
  %32 = ptrtoint ptr %incdec.ptr2.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr2.3, align 4
  %val.4 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 4, i32 1
  %34 = ptrtoint ptr %val.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %nparams)
  %exitcond.not.4 = icmp eq i32 %nparams, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %incdec.ptr3.4 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %incdec.ptr2.4 = getelementptr i32, ptr %vals, i32 5
  %incdec.ptr.4 = getelementptr i32, ptr %params, i32 5
  %35 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr.4, align 4
  %37 = ptrtoint ptr %incdec.ptr3.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr3.4, align 4
  %38 = ptrtoint ptr %incdec.ptr2.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr2.4, align 4
  %val.5 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 5, i32 1
  %40 = ptrtoint ptr %val.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %nparams)
  %exitcond.not.5 = icmp eq i32 %nparams, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr3.5 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %incdec.ptr2.5 = getelementptr i32, ptr %vals, i32 6
  %incdec.ptr.5 = getelementptr i32, ptr %params, i32 6
  %41 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.5, align 4
  %43 = ptrtoint ptr %incdec.ptr3.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr3.5, align 4
  %44 = ptrtoint ptr %incdec.ptr2.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr2.5, align 4
  %val.6 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd, i32 0, i32 2, i32 6, i32 1
  %46 = ptrtoint ptr %val.6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val.6, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef null, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_fw_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_reset_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_reset_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 52428800, ptr %cmd, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @t4vf_fl_pkt_align(ptr nocapture noundef readonly %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sge, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %4 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %4)
  %cmp = icmp ult i32 %4, 96
  %. = select i1 %cmp, i32 5, i32 3
  %shr3 = lshr i32 %1, 4
  %and4 = and i32 %shr3, 7
  %add = add nuw nsw i32 %., %and4
  %shl = shl nuw nsw i32 1, %add
  %5 = and i32 %3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 64
  br i1 %cmp.i.not, label %entry.if.end20_crit_edge, label %if.then7

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sge_control210 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 1
  %6 = ptrtoint ptr %sge_control210 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sge_control210, align 4
  %shr11 = lshr i32 %7, 16
  %and12 = and i32 %shr11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  %shl17 = shl nuw nsw i32 32, %and12
  %ingpackboundary.0 = select i1 %cmp13, i32 16, i32 %shl17
  %8 = tail call i32 @llvm.umax.i32(i32 %shl, i32 %ingpackboundary.0)
  br label %if.end20

if.end20:                                         ; preds = %if.then7, %entry.if.end20_crit_edge
  %fl_align.0 = phi i32 [ %shl, %entry.if.end20_crit_edge ], [ %8, %if.then7 ]
  ret i32 %fl_align.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @t4vf_bar2_sge_qregs(ptr nocapture noundef readonly %adapter, i32 noundef %qid, i32 noundef %qtype, ptr nocapture noundef writeonly %pbar2_qoffset, ptr nocapture noundef writeonly %pbar2_qid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  %2 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 64
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sge_vf_hps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 5
  %3 = ptrtoint ptr %sge_vf_hps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sge_vf_hps, align 4
  %add = add i32 %4, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qtype)
  %cmp = icmp eq i32 %qtype, 0
  %sge_vf_eq_qpp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 6
  %sge_vf_iq_qpp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 7
  %cond.in = select i1 %cmp, ptr %sge_vf_eq_qpp, ptr %sge_vf_iq_qpp
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %notmask = shl nsw i32 -1, %cond
  %sub = xor i32 %notmask, -1
  %shr = lshr i32 %qid, %cond
  %conv = zext i32 %shr to i64
  %sh_prom = zext i32 %add to i64
  %shl7 = shl i64 %conv, %sh_prom
  %and = and i32 %sub, %qid
  %mul = shl i32 %and, 7
  %mul.highbits = lshr i32 %mul, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.highbits)
  %cmp8 = icmp eq i32 %mul.highbits, 0
  %narrow = select i1 %cmp8, i32 %mul, i32 0
  %add13 = zext i32 %narrow to i64
  %bar2_qoffset.0 = add i64 %shl7, %add13
  %bar2_qid.0 = select i1 %cmp8, i32 0, i32 %and
  %6 = ptrtoint ptr %pbar2_qoffset to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %bar2_qoffset.0, ptr %pbar2_qoffset, align 8
  %7 = ptrtoint ptr %pbar2_qid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bar2_qid.0, ptr %pbar2_qid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_pf_from_vf(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  %6 = and i32 %5, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %6)
  %cmp = icmp ult i32 %6, 96
  %cond.in.v = select i1 %cmp, i32 8, i32 9
  %cond.in = lshr i32 %3, %cond.in.v
  %cond = and i32 %cond.in, 7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_sge_params(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i168 = alloca %struct.fw_params_cmd, align 4
  %rpl.i169 = alloca %struct.fw_params_cmd, align 4
  %cmd.i139 = alloca %struct.fw_params_cmd, align 4
  %rpl.i140 = alloca %struct.fw_params_cmd, align 4
  %cmd.i112 = alloca %struct.fw_params_cmd, align 4
  %rpl.i113 = alloca %struct.fw_params_cmd, align 4
  %cmd.i = alloca %struct.fw_params_cmd, align 4
  %rpl.i = alloca %struct.fw_params_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i) #7
  %0 = call ptr @memset(ptr %rpl.i, i32 255, i32 64)
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 146800640, ptr %cmd.i, align 4
  %retval_len16.i = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i, i32 0, i32 1
  %5 = ptrtoint ptr %retval_len16.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %retval_len16.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50335752, ptr %1, align 4
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %cmd.i, i32 16
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50335756, ptr %incdec.ptr2.i, align 4
  %incdec.ptr2.i.1 = getelementptr inbounds i8, ptr %cmd.i, i32 24
  %8 = ptrtoint ptr %incdec.ptr2.i.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50335812, ptr %incdec.ptr2.i.1, align 4
  %incdec.ptr2.i.2 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %9 = ptrtoint ptr %incdec.ptr2.i.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50335816, ptr %incdec.ptr2.i.2, align 4
  %incdec.ptr2.i.3 = getelementptr inbounds i8, ptr %cmd.i, i32 40
  %10 = ptrtoint ptr %incdec.ptr2.i.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50335928, ptr %incdec.ptr2.i.3, align 4
  %incdec.ptr2.i.4 = getelementptr inbounds i8, ptr %cmd.i, i32 48
  %11 = ptrtoint ptr %incdec.ptr2.i.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50335932, ptr %incdec.ptr2.i.4, align 4
  %incdec.ptr2.i.5 = getelementptr inbounds i8, ptr %cmd.i, i32 56
  %12 = ptrtoint ptr %incdec.ptr2.i.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50335936, ptr %incdec.ptr2.i.5, align 4
  %call.i.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i, i32 noundef 64, ptr noundef nonnull %rpl.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.end, label %t4vf_query_params.exit.thread

t4vf_query_params.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  br label %cleanup73

if.end:                                           ; preds = %entry
  %val.i = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %val.i.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i.1, align 4
  %val.i.2 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 2, i32 1
  %17 = ptrtoint ptr %val.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.2, align 4
  %val.i.3 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 3, i32 1
  %19 = ptrtoint ptr %val.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.3, align 4
  %val.i.4 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 4, i32 1
  %21 = ptrtoint ptr %val.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.4, align 4
  %val.i.5 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 5, i32 1
  %23 = ptrtoint ptr %val.i.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.5, align 4
  %val.i.6 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 6, i32 1
  %25 = ptrtoint ptr %val.i.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.6, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %sge to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %14, ptr %sge, align 4
  %sge_host_page_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 2
  %28 = ptrtoint ptr %sge_host_page_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %sge_host_page_size, align 4
  %sge_fl_buffer_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 8
  %29 = ptrtoint ptr %sge_fl_buffer_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %18, ptr %sge_fl_buffer_size, align 4
  %arrayidx15 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 8, i32 1
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %arrayidx15, align 4
  %sge_timer_value_0_and_1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 11
  %31 = ptrtoint ptr %sge_timer_value_0_and_1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %sge_timer_value_0_and_1, align 4
  %sge_timer_value_2_and_3 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 12
  %32 = ptrtoint ptr %sge_timer_value_2_and_3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %sge_timer_value_2_and_3, align 4
  %sge_timer_value_4_and_5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 13
  %33 = ptrtoint ptr %sge_timer_value_4_and_5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %sge_timer_value_4_and_5, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip, align 4
  %36 = and i32 %35, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %cmp.i.not = icmp eq i32 %36, 64
  br i1 %cmp.i.not, label %if.end.if.end30_crit_edge, label %if.then22

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i112) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i113) #7
  %37 = call ptr @memset(ptr %rpl.i113, i32 255, i32 64)
  %38 = getelementptr inbounds i8, ptr %cmd.i112, i32 8
  %39 = getelementptr inbounds i8, ptr %cmd.i112, i32 12
  %40 = call ptr @memset(ptr %39, i32 0, i32 52)
  %41 = ptrtoint ptr %cmd.i112 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 146800640, ptr %cmd.i112, align 4
  %retval_len16.i114 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i112, i32 0, i32 1
  %42 = ptrtoint ptr %retval_len16.i114 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %retval_len16.i114, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 50336036, ptr %38, align 4
  %call.i.i124 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i112, i32 noundef 64, ptr noundef nonnull %rpl.i113, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %cmp3.i125 = icmp eq i32 %call.i.i124, 0
  br i1 %cmp3.i125, label %if.end28, label %do.end

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i113) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i112) #7
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %44 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.1) #10
  br label %cleanup73

if.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %val.i132 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i113, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %val.i132 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i132, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i113) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i112) #7
  %sge_control2 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 1
  %48 = ptrtoint ptr %sge_control2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %sge_control2, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end.if.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i139) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i140) #7
  %49 = call ptr @memset(ptr %rpl.i140, i32 255, i32 64)
  %50 = getelementptr inbounds i8, ptr %cmd.i139, i32 8
  %51 = getelementptr inbounds i8, ptr %cmd.i139, i32 12
  %52 = call ptr @memset(ptr %51, i32 0, i32 52)
  %53 = ptrtoint ptr %cmd.i139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 146800640, ptr %cmd.i139, align 4
  %retval_len16.i141 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i139, i32 0, i32 1
  %54 = ptrtoint ptr %retval_len16.i141 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %retval_len16.i141, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 50335904, ptr %50, align 4
  %incdec.ptr2.i148 = getelementptr inbounds i8, ptr %cmd.i139, i32 16
  %56 = ptrtoint ptr %incdec.ptr2.i148 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 50335892, ptr %incdec.ptr2.i148, align 4
  %call.i.i151 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i139, i32 noundef 64, ptr noundef nonnull %rpl.i140, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %cmp3.i152 = icmp eq i32 %call.i.i151, 0
  br i1 %cmp3.i152, label %if.end38, label %t4vf_query_params.exit165.thread

t4vf_query_params.exit165.thread:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i140) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i139) #7
  br label %cleanup73

if.end38:                                         ; preds = %if.end30
  %val.i159 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i140, i32 0, i32 2, i32 0, i32 1
  %57 = ptrtoint ptr %val.i159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i159, align 4
  %val.i159.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i140, i32 0, i32 2, i32 1, i32 1
  %59 = ptrtoint ptr %val.i159.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i159.1, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i140) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i139) #7
  %sge_ingress_rx_threshold = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 9
  %61 = ptrtoint ptr %sge_ingress_rx_threshold to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %sge_ingress_rx_threshold, align 4
  %sge_congestion_control = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 10
  %62 = ptrtoint ptr %sge_congestion_control to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %sge_congestion_control, align 4
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chip, align 4
  %65 = and i32 %64, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %65)
  %cmp.i166.not = icmp eq i32 %65, 64
  br i1 %cmp.i166.not, label %if.end38.cleanup73_crit_edge, label %if.then45

if.end38.cleanup73_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup73

if.then45:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i168) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i169) #7
  %66 = call ptr @memset(ptr %rpl.i169, i32 255, i32 64)
  %67 = getelementptr inbounds i8, ptr %cmd.i168, i32 8
  %68 = getelementptr inbounds i8, ptr %cmd.i168, i32 12
  %69 = call ptr @memset(ptr %68, i32 0, i32 52)
  %70 = ptrtoint ptr %cmd.i168 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 146800640, ptr %cmd.i168, align 4
  %retval_len16.i170 = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i168, i32 0, i32 1
  %71 = ptrtoint ptr %retval_len16.i170 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %retval_len16.i170, align 4
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 50335764, ptr %67, align 4
  %incdec.ptr2.i177 = getelementptr inbounds i8, ptr %cmd.i168, i32 16
  %73 = ptrtoint ptr %incdec.ptr2.i177 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 50335992, ptr %incdec.ptr2.i177, align 4
  %call.i.i180 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i168, i32 noundef 64, ptr noundef nonnull %rpl.i169, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %cmp3.i181 = icmp eq i32 %call.i.i180, 0
  br i1 %cmp3.i181, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i169) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i168) #7
  %pdev_dev56 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %74 = ptrtoint ptr %pdev_dev56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev_dev56, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.6) #10
  br label %cleanup73

if.end57:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %val.i188 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i169, i32 0, i32 2, i32 0, i32 1
  %76 = ptrtoint ptr %val.i188 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i188, align 4
  %val.i188.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i169, i32 0, i32 2, i32 1, i32 1
  %78 = ptrtoint ptr %val.i188.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i188.1, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i169) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i168) #7
  %sge_egress_queues_per_page = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 3
  %80 = ptrtoint ptr %sge_egress_queues_per_page to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %sge_egress_queues_per_page, align 4
  %sge_ingress_queues_per_page = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 4
  %81 = ptrtoint ptr %sge_ingress_queues_per_page to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %sge_ingress_queues_per_page, align 4
  %82 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter, align 128
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 512
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !63
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %86 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %chip, align 4
  %88 = and i32 %87, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %88)
  %cmp.i195 = icmp ult i32 %88, 96
  %cond.in.v.i = select i1 %cmp.i195, i32 8, i32 9
  %cond.in.i = lshr i32 %85, %cond.in.v.i
  %cond.i = shl nuw nsw i32 %cond.in.i, 2
  %mul = and i32 %cond.i, 28
  %89 = ptrtoint ptr %sge_host_page_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sge_host_page_size, align 4
  %shr = lshr i32 %90, %mul
  %and = and i32 %shr, 15
  %sge_vf_hps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 5
  %91 = ptrtoint ptr %sge_vf_hps to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and, ptr %sge_vf_hps, align 4
  %92 = ptrtoint ptr %sge_egress_queues_per_page to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sge_egress_queues_per_page, align 4
  %shr65 = lshr i32 %93, %mul
  %and66 = and i32 %shr65, 15
  %sge_vf_eq_qpp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 6
  %94 = ptrtoint ptr %sge_vf_eq_qpp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and66, ptr %sge_vf_eq_qpp, align 4
  %95 = ptrtoint ptr %sge_ingress_queues_per_page to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sge_ingress_queues_per_page, align 4
  %shr68 = lshr i32 %96, %mul
  %and69 = and i32 %shr68, 15
  %sge_vf_iq_qpp = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 1, i32 7
  %97 = ptrtoint ptr %sge_vf_iq_qpp to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and69, ptr %sge_vf_iq_qpp, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end57, %do.end55, %if.end38.cleanup73_crit_edge, %t4vf_query_params.exit165.thread, %do.end, %t4vf_query_params.exit.thread
  %retval.1 = phi i32 [ %call.i.i124, %do.end ], [ %call.i.i180, %do.end55 ], [ 0, %if.end57 ], [ 0, %if.end38.cleanup73_crit_edge ], [ %call.i.i, %t4vf_query_params.exit.thread ], [ %call.i.i151, %t4vf_query_params.exit165.thread ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_vpd_params(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.fw_params_cmd, align 4
  %rpl.i = alloca %struct.fw_params_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i) #7
  %0 = call ptr @memset(ptr %rpl.i, i32 255, i32 64)
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 146800640, ptr %cmd.i, align 4
  %retval_len16.i = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i, i32 0, i32 1
  %5 = ptrtoint ptr %retval_len16.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %retval_len16.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %1, align 4
  %call.i.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i, i32 noundef 64, ptr noundef nonnull %rpl.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.end, label %t4vf_query_params.exit.thread

t4vf_query_params.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val.i = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  %vpd = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %vpd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vpd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %t4vf_query_params.exit.thread
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_dev_params(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.fw_params_cmd, align 4
  %rpl.i = alloca %struct.fw_params_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl.i) #7
  %0 = call ptr @memset(ptr %rpl.i, i32 255, i32 64)
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 146800640, ptr %cmd.i, align 4
  %retval_len16.i = getelementptr inbounds %struct.fw_params_cmd, ptr %cmd.i, i32 0, i32 1
  %5 = ptrtoint ptr %retval_len16.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %retval_len16.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 17498112, ptr %1, align 4
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %cmd.i, i32 16
  %7 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 17563648, ptr %incdec.ptr2.i, align 4
  %call.i.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i, i32 noundef 64, ptr noundef nonnull %rpl.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.end, label %t4vf_query_params.exit.thread

t4vf_query_params.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val.i = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %val.i.1 = getelementptr inbounds %struct.fw_params_cmd, ptr %rpl.i, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.1, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd.i) #7
  %params = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7
  %12 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %params, align 4
  %tprev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %tprev to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %tprev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %t4vf_query_params.exit.thread
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_rss_glb_config(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_rss_glb_config_cmd, align 8
  %rpl = alloca %struct.fw_rss_glb_config_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpl) #7
  %1 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 1
  %2 = call ptr @memset(ptr %rpl, i32 255, i32 32)
  %3 = getelementptr inbounds i8, ptr %cmd, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 583008256, ptr %cmd, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %0, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 32, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup92_crit_edge

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.fw_rss_glb_config_cmd, ptr %rpl, i32 0, i32 2
  %rss1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shr = lshr i32 %9, 28
  %10 = ptrtoint ptr %rss1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %rss1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cond = icmp eq i32 %shr, 1
  br i1 %cond, label %sw.bb, label %if.end.cleanup92_crit_edge

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %u5 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 3, i32 1
  %13 = trunc i32 %12 to i16
  %14 = ptrtoint ptr %u5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %u5, align 4
  %15 = shl i16 %13, 7
  %bf.shl = and i16 %15, -32768
  %bf.clear = and i16 %bf.load, 127
  %bf.set = or i16 %bf.shl, %bf.clear
  %bf.shl12 = and i16 %15, 16384
  %bf.set14 = or i16 %bf.set, %bf.shl12
  %bf.shl22 = and i16 %15, 8192
  %bf.set24 = or i16 %bf.set14, %bf.shl22
  %bf.shl32 = and i16 %15, 4096
  %bf.set34 = or i16 %bf.set24, %bf.shl32
  %bf.shl42 = and i16 %15, 2048
  %bf.shl52 = and i16 %15, 1024
  %bf.shl62 = and i16 %15, 512
  %bf.clear53.masked.masked.masked = or i16 %bf.set34, %bf.shl42
  %bf.clear63.masked.masked = or i16 %bf.clear53.masked.masked.masked, %bf.shl52
  %bf.clear73.masked = or i16 %bf.clear63.masked.masked, %bf.shl62
  %bf.clear83 = and i16 %15, 384
  %bf.set84 = or i16 %bf.clear83, %bf.clear73.masked
  store i16 %bf.set84, ptr %u5, align 4
  %16 = and i16 %bf.clear73.masked, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool89.not = icmp eq i16 %16, 0
  %spec.select = select i1 %tobool89.not, i32 -22, i32 0
  br label %cleanup92

cleanup92:                                        ; preds = %sw.bb, %if.end.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.1 = phi i32 [ %call.i, %entry.cleanup92_crit_edge ], [ -22, %if.end.cleanup92_crit_edge ], [ %spec.select, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_vfres(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_pfvf_cmd, align 4
  %rpl = alloca %struct.fw_pfvf_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_pfvf_cmd, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpl) #7
  %1 = call ptr @memset(ptr %rpl, i32 255, i32 32)
  %2 = getelementptr inbounds i8, ptr %cmd, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 163577856, ptr %cmd, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %0, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 32, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.fw_pfvf_cmd, ptr %rpl, i32 0, i32 5
  %7 = getelementptr inbounds %struct.fw_pfvf_cmd, ptr %rpl, i32 0, i32 4
  %8 = getelementptr inbounds %struct.fw_pfvf_cmd, ptr %rpl, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fw_pfvf_cmd, ptr %rpl, i32 0, i32 2
  %vfres1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr = lshr i32 %11, 20
  %niqflint = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 3
  %12 = ptrtoint ptr %niqflint to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %niqflint, align 4
  %and3 = and i32 %11, 1048575
  %niq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 4
  %13 = ptrtoint ptr %niq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and3, ptr %niq, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %and5 = and i32 %15, 1048575
  %neq = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 1
  %16 = ptrtoint ptr %neq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and5, ptr %neq, align 4
  %shr6 = lshr i32 %15, 20
  %and7 = and i32 %shr6, 15
  %pmask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 6
  %17 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and7, ptr %pmask, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 4
  %shr8 = lshr i32 %19, 24
  %tc = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 5
  %20 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr8, ptr %tc, align 4
  %shr10 = lshr i32 %19, 16
  %and11 = and i32 %shr10, 255
  %21 = ptrtoint ptr %vfres1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and11, ptr %vfres1, align 4
  %and13 = and i32 %19, 65535
  %nexactf = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 7
  %22 = ptrtoint ptr %nexactf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and13, ptr %nexactf, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %6, align 4
  %shr14 = lshr i32 %24, 24
  %r_caps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 8
  %25 = ptrtoint ptr %r_caps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr14, ptr %r_caps, align 4
  %shr16 = lshr i32 %24, 16
  %and17 = and i32 %shr16, 255
  %wx_caps = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 9
  %26 = ptrtoint ptr %wx_caps to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and17, ptr %wx_caps, align 4
  %and19 = and i32 %24, 65535
  %nethctrl = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 2
  %27 = ptrtoint ptr %nethctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and19, ptr %nethctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_read_rss_vi_config(ptr noundef %adapter, i32 noundef %viid, ptr nocapture noundef %config) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_rss_vi_config_cmd, align 8
  %rpl = alloca %struct.fw_rss_vi_config_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpl) #7
  %1 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, ptr %rpl, i32 0, i32 2
  %2 = call ptr @memset(ptr %rpl, i32 255, i32 32)
  %3 = getelementptr inbounds i8, ptr %cmd, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %or = or i32 %viid, 599785472
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %cmd, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %0, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 32, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond = icmp eq i32 %8, 1
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %defaultq_to_udpen = getelementptr inbounds %struct.fw_rss_vi_config_basicvirtual, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %defaultq_to_udpen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %defaultq_to_udpen, align 4
  %ip6fourtupen = getelementptr inbounds %struct.anon.125, ptr %config, i32 0, i32 1
  %11 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %ip6fourtupen to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ip6fourtupen, align 2
  %13 = shl i8 %11, 3
  %bf.shl = and i8 %13, -128
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  %bf.shl6 = and i8 %13, 64
  %bf.set8 = or i8 %bf.set, %bf.shl6
  %bf.shl15 = and i8 %13, 32
  %bf.set17 = or i8 %bf.set8, %bf.shl15
  %bf.shl24 = and i8 %13, 16
  %bf.set26 = or i8 %bf.set17, %bf.shl24
  store i8 %bf.set26, ptr %ip6fourtupen, align 2
  %and28 = and i32 %10, 1
  %udpen = getelementptr inbounds %struct.anon.125, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %udpen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and28, ptr %udpen, align 4
  %shr = lshr i32 %10, 16
  %15 = trunc i32 %shr to i16
  %conv32 = and i16 %15, 1023
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv32, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_write_rss_vi_config(ptr noundef %adapter, i32 noundef %viid, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_rss_vi_config_cmd, align 8
  %rpl = alloca %struct.fw_rss_vi_config_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rpl) #7
  %1 = call ptr @memset(ptr %rpl, i32 255, i32 32)
  %2 = getelementptr inbounds i8, ptr %cmd, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %or = or i32 %viid, 597688320
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %cmd, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %0, align 4
  %rss = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr inbounds %struct.fw_rss_vi_config_cmd, ptr %cmd, i32 0, i32 2
  %ip6fourtupen = getelementptr inbounds %struct.anon.125, ptr %config, i32 0, i32 1
  %9 = ptrtoint ptr %ip6fourtupen to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %ip6fourtupen, align 2
  %10 = lshr i8 %bf.load, 3
  %11 = and i8 %10, 30
  %12 = zext i8 %11 to i32
  %udpen = getelementptr inbounds %struct.anon.125, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %udpen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %udpen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp ne i32 %14, 0
  %or27 = zext i1 %tobool25.not to i32
  %word.4 = or i32 %or27, %12
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %config, align 4
  %conv = zext i16 %16 to i32
  %shl29 = shl nuw i32 %conv, 16
  %or30 = or i32 %word.4, %shl29
  %defaultq_to_udpen = getelementptr inbounds %struct.fw_rss_vi_config_basicvirtual, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %defaultq_to_udpen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or30, ptr %defaultq_to_udpen, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 32, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_config_rss_range(ptr noundef %adapter, i32 noundef %viid, i32 noundef %start, i32 noundef %n, ptr noundef readonly %rspq, i32 noundef %nrspq) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_rss_ind_tbl_cmd, align 4
  %qbuf = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i16, ptr %rspq, i32 %nrspq
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %or = or i32 %viid, 547356672
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %cmd, align 4
  %retval_len16 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %retval_len16, align 4
  %iq0_to_iq2 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, ptr %cmd, i32 0, i32 5
  %niqid = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, ptr %cmd, i32 0, i32 2
  %startidx = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds [3 x i16], ptr %qbuf, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i16], ptr %qbuf, i32 0, i32 2
  %incdec.ptr19 = getelementptr inbounds i16, ptr %qbuf, i32 1
  %incdec.ptr19.1 = getelementptr inbounds i16, ptr %qbuf, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.end34.while.cond_crit_edge, %entry
  %n.addr.0 = phi i32 [ %n, %entry ], [ %sub, %while.end34.while.cond_crit_edge ]
  %rsp.0 = phi ptr [ %rspq, %entry ], [ %rsp.2.lcssa, %while.end34.while.cond_crit_edge ]
  %start.addr.0 = phi i32 [ %start, %entry ], [ %add, %while.end34.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0)
  %cmp = icmp sgt i32 %n.addr.0, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup41_crit_edge

while.cond.cleanup41_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

while.body:                                       ; preds = %while.cond
  %6 = tail call i32 @llvm.umin.i32(i32 %n.addr.0, i32 32)
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %niqid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %niqid, align 4
  %conv2 = trunc i32 %start.addr.0 to i16
  %8 = ptrtoint ptr %startidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %startidx, align 2
  %add = add i32 %start.addr.0, %6
  %sub = sub nsw i32 %n.addr.0, %6
  br label %while.body6

while.body6:                                      ; preds = %while.end.while.body6_crit_edge, %while.body
  %nq.070 = phi i32 [ %sub14, %while.end.while.body6_crit_edge ], [ %6, %while.body ]
  %qp.069 = phi ptr [ %incdec.ptr33, %while.end.while.body6_crit_edge ], [ %iq0_to_iq2, %while.body ]
  %rsp.168 = phi ptr [ %rsp.2.lcssa, %while.end.while.body6_crit_edge ], [ %rsp.0, %while.body ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %qbuf) #7
  %9 = tail call i32 @llvm.umin.i32(i32 %nq.070, i32 3)
  %sub14 = sub nsw i32 %nq.070, %9
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %5, align 2
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %4, align 2
  %12 = ptrtoint ptr %qbuf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %qbuf, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not63 = icmp eq i32 %9, 0
  br i1 %tobool.not63, label %while.body6.while.end_crit_edge, label %while.body18

while.body6.while.end_crit_edge:                  ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body18:                                     ; preds = %while.body6
  %incdec.ptr = getelementptr i16, ptr %rsp.168, i32 1
  %13 = ptrtoint ptr %rsp.168 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rsp.168, align 2
  %15 = ptrtoint ptr %qbuf to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %qbuf, align 2
  %cmp20.not = icmp ult ptr %incdec.ptr, %add.ptr
  %spec.select = select i1 %cmp20.not, ptr %incdec.ptr, ptr %rspq
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %tobool.not = icmp eq i32 %9, 1
  br i1 %tobool.not, label %while.body18.while.end_crit_edge, label %while.body18.1

while.body18.while.end_crit_edge:                 ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body18.1:                                   ; preds = %while.body18
  %incdec.ptr.1 = getelementptr i16, ptr %spec.select, i32 1
  %16 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %spec.select, align 2
  %18 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %incdec.ptr19, align 2
  %cmp20.not.1 = icmp ult ptr %incdec.ptr.1, %add.ptr
  %spec.select.1 = select i1 %cmp20.not.1, ptr %incdec.ptr.1, ptr %rspq
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 2
  br i1 %tobool.not.1, label %while.body18.1.while.end_crit_edge, label %while.body18.2

while.body18.1.while.end_crit_edge:               ; preds = %while.body18.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body18.2:                                   ; preds = %while.body18.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.2 = getelementptr i16, ptr %spec.select.1, i32 1
  %19 = ptrtoint ptr %spec.select.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %spec.select.1, align 2
  %21 = ptrtoint ptr %incdec.ptr19.1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %incdec.ptr19.1, align 2
  %cmp20.not.2 = icmp ult ptr %incdec.ptr.2, %add.ptr
  %spec.select.2 = select i1 %cmp20.not.2, ptr %incdec.ptr.2, ptr %rspq
  br label %while.end

while.end:                                        ; preds = %while.body18.2, %while.body18.1.while.end_crit_edge, %while.body18.while.end_crit_edge, %while.body6.while.end_crit_edge
  %rsp.2.lcssa = phi ptr [ %rsp.168, %while.body6.while.end_crit_edge ], [ %spec.select, %while.body18.while.end_crit_edge ], [ %spec.select.1, %while.body18.1.while.end_crit_edge ], [ %spec.select.2, %while.body18.2 ]
  %22 = ptrtoint ptr %qbuf to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %qbuf, align 2
  %conv23 = zext i16 %23 to i32
  %shl24 = shl i32 %conv23, 20
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %4, align 2
  %conv26 = zext i16 %25 to i32
  %shl27 = shl nuw nsw i32 %conv26, 10
  %or28 = or i32 %shl27, %shl24
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %5, align 2
  %conv30 = zext i16 %27 to i32
  %or32 = or i32 %or28, %conv30
  %incdec.ptr33 = getelementptr i32, ptr %qp.069, i32 1
  %28 = ptrtoint ptr %qp.069 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or32, ptr %qp.069, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %qbuf) #7
  %cmp4 = icmp sgt i32 %sub14, 0
  br i1 %cmp4, label %while.end.while.body6_crit_edge, label %while.end34

while.end.while.body6_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body6

while.end34:                                      ; preds = %while.end
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef null, i1 noundef zeroext true) #7
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %while.end34.while.cond_crit_edge, label %while.end34.cleanup41_crit_edge

while.end34.cleanup41_crit_edge:                  ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

while.end34.while.cond_crit_edge:                 ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup41:                                        ; preds = %while.end34.cleanup41_crit_edge, %while.cond.cleanup41_crit_edge
  %retval.2 = phi i32 [ %call.i, %while.end34.cleanup41_crit_edge ], [ 0, %while.cond.cleanup41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_alloc_vi(ptr noundef %adapter, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_cmd, align 8
  %rpl = alloca %struct.fw_vi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl) #7
  %0 = call ptr @memset(ptr %rpl, i32 255, i32 64)
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 56)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 347078656, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_vi_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483644, ptr %alloc_to_len16, align 4
  %port_id.tr = trunc i32 %port_id to i8
  %conv = shl i8 %port_id.tr, 4
  %portid_pkd = getelementptr inbounds %struct.fw_vi_cmd, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %portid_pkd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %portid_pkd, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type_viid = getelementptr inbounds %struct.fw_vi_cmd, ptr %rpl, i32 0, i32 2
  %6 = ptrtoint ptr %type_viid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type_viid, align 8
  %8 = and i16 %7, 4095
  %and = zext i16 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_free_vi(ptr noundef %adapter, i32 noundef %viid) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 344981504, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_vi_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1073741828, ptr %alloc_to_len16, align 4
  %conv = trunc i32 %viid to i16
  %type_viid = getelementptr inbounds %struct.fw_vi_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %type_viid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %type_viid, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_enable_vi(ptr noundef %adapter, i32 noundef %viid, i1 noundef zeroext %rx_en, i1 noundef zeroext %tx_en) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_enable_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_vi_enable_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %or = or i32 %viid, 395313152
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %cmd, align 4
  %shl5 = select i1 %tx_en, i32 1073741824, i32 0
  %or6 = select i1 %rx_en, i32 -2147483647, i32 1
  %or7 = or i32 %or6, %shl5
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or7, ptr %0, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_enable_pi(ptr noundef %adapter, ptr nocapture noundef readonly %pi, i1 noundef zeroext %rx_en, i1 noundef zeroext %tx_en) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.fw_vi_enable_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %viid = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %viid, align 4
  %conv = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #7
  %2 = getelementptr inbounds %struct.fw_vi_enable_cmd, ptr %cmd.i, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %or.i = or i32 %conv, 395313152
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %cmd.i, align 4
  %shl5.i = select i1 %tx_en, i32 1073741824, i32 0
  %or6.i = select i1 %rx_en, i32 -2147483647, i32 1
  %or7.i = or i32 %shl5.i, %or6.i
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or7.i, ptr %2, align 4
  %call.i.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd.i, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pidx = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 5
  %7 = ptrtoint ptr %pidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pidx, align 2
  %conv4 = zext i8 %8 to i32
  %brmerge.demorgan = and i1 %rx_en, %tx_en
  br i1 %brmerge.demorgan, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %link_ok = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 12
  %9 = ptrtoint ptr %link_ok to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link_ok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10 = icmp ne i8 %10, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %11 = phi i32 [ 0, %if.end.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  tail call void @t4vf_os_link_changed(ptr noundef %adapter, i32 noundef %conv4, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %land.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4vf_os_link_changed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_identify_port(ptr noundef %adapter, i32 noundef %viid, i32 noundef %nblinks) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_enable_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_vi_enable_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_vi_enable_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %cmd, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %or = or i32 %viid, 395313152
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %cmd, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 536870913, ptr %0, align 4
  %conv = trunc i32 %nblinks to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %1, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_set_rxmode(ptr noundef %adapter, i32 noundef %viid, i32 noundef %mtu, i32 noundef %promisc, i32 noundef %all_multi, i32 noundef %bcast, i32 noundef %vlanex, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_rxmode_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_vi_rxmode_cmd, ptr %cmd, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtu)
  %cmp = icmp slt i32 %mtu, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %promisc)
  %cmp1 = icmp slt i32 %promisc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all_multi)
  %cmp4 = icmp slt i32 %all_multi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcast)
  %cmp7 = icmp slt i32 %bcast, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlanex)
  %cmp10 = icmp slt i32 %vlanex, 0
  %2 = getelementptr inbounds i8, ptr %cmd, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %or = or i32 %viid, 379584512
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %cmd, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %0, align 4
  %mtu.op = shl i32 %mtu, 16
  %shl13 = select i1 %cmp, i32 -65536, i32 %mtu.op
  %promisc.op = shl i32 %promisc, 14
  %shl14 = select i1 %cmp1, i32 49152, i32 %promisc.op
  %or15 = or i32 %shl14, %shl13
  %all_multi.op = shl i32 %all_multi, 12
  %shl16 = select i1 %cmp4, i32 12288, i32 %all_multi.op
  %or17 = or i32 %or15, %shl16
  %bcast.op = shl i32 %bcast, 10
  %shl18 = select i1 %cmp7, i32 3072, i32 %bcast.op
  %or19 = or i32 %or17, %shl18
  %vlanex.op = shl i32 %vlanex, 8
  %shl20 = select i1 %cmp10, i32 768, i32 %vlanex.op
  %or21 = or i32 %or19, %shl20
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or21, ptr %1, align 4
  %call = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef null, i1 noundef zeroext %sleep_ok)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_alloc_mac_filt(ptr noundef %adapter, i32 noundef %viid, i1 noundef zeroext %free, i32 noundef %naddr, ptr nocapture noundef readonly %addr, ptr noundef writeonly %idx, ptr noundef %hash, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_mac_cmd, align 8
  %rpl = alloca %struct.fw_vi_mac_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl) #7
  %0 = call ptr @memset(ptr %rpl, i32 255, i32 64)
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5, i32 1
  %1 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mps_tcam_size, align 4
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %naddr)
  %cmp = icmp ult i32 %conv, %naddr
  br i1 %cmp, label %entry.cleanup80_crit_edge, label %for.cond.preheader

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %naddr)
  %cmp3141.not = icmp eq i32 %naddr, 0
  br i1 %cmp3141.not, label %for.cond.preheader.if.then78_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then78_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %freemacs_to_len16 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 1
  %u = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2
  %u27 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %rpl, i32 0, i32 2
  %tobool36.not = icmp eq ptr %idx, null
  %tobool55.not = icmp eq ptr %hash, null
  %3 = getelementptr inbounds i8, ptr %cmd, i32 8
  %macaddr = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %u, i32 0, i32 1
  %incdec.ptr = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %macaddr.1 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr, i32 0, i32 1
  %incdec.ptr.1 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %macaddr.2 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr.1, i32 0, i32 1
  %incdec.ptr.2 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4
  %macaddr.3 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr.2, i32 0, i32 1
  %incdec.ptr.3 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %macaddr.4 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 2
  %incdec.ptr.4 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 8
  %macaddr.5 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 10
  %incdec.ptr.5 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 16
  %macaddr.6 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %rem.0147 = phi i32 [ %naddr, %for.body.lr.ph ], [ %sub69, %cleanup.for.body_crit_edge ]
  %nfilters.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %nfilters.1.lcssa, %cleanup.for.body_crit_edge ]
  %offset.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %add68, %cleanup.for.body_crit_edge ]
  %free.addr.0.off0142 = phi i1 [ %free, %for.body.lr.ph ], [ false, %cleanup.for.body_crit_edge ]
  %4 = call i32 @llvm.umin.i32(i32 %rem.0147, i32 7)
  %5 = shl nuw nsw i32 %4, 3
  %sub = add nuw nsw i32 %5, 23
  %div125 = lshr i32 %sub, 4
  %6 = call ptr @memset(ptr %3, i32 0, i32 56)
  %or = select i1 %free.addr.0.off0142, i32 363855872, i32 362807296
  %or9 = or i32 %or, %viid
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or9, ptr %cmd, align 8
  %shl12 = select i1 %free.addr.0.off0142, i32 -2147483648, i32 0
  %or14 = or i32 %div125, %shl12
  %8 = ptrtoint ptr %freemacs_to_len16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or14, ptr %freemacs_to_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16133.not = icmp eq i32 %4, 0
  br i1 %cmp16133.not, label %for.body.for.end_crit_edge, label %for.body18

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18:                                       ; preds = %for.body
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -31745, ptr %u, align 8
  %arrayidx = getelementptr ptr, ptr %addr, i32 %offset.0143
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = call ptr @memcpy(ptr %macaddr, ptr %11, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %exitcond.not = icmp eq i32 %4, 1
  br i1 %exitcond.not, label %for.body18.for.end_crit_edge, label %for.body18.1

for.body18.for.end_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.1:                                     ; preds = %for.body18
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -31745, ptr %incdec.ptr, align 8
  %add20.1 = add i32 %offset.0143, 1
  %arrayidx.1 = getelementptr ptr, ptr %addr, i32 %add20.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %16 = call ptr @memcpy(ptr %macaddr.1, ptr %15, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %exitcond.not.1 = icmp eq i32 %4, 2
  br i1 %exitcond.not.1, label %for.body18.1.for.end_crit_edge, label %for.body18.2

for.body18.1.for.end_crit_edge:                   ; preds = %for.body18.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.2:                                     ; preds = %for.body18.1
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -31745, ptr %incdec.ptr.1, align 8
  %add20.2 = add i32 %offset.0143, 2
  %arrayidx.2 = getelementptr ptr, ptr %addr, i32 %add20.2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %20 = call ptr @memcpy(ptr %macaddr.2, ptr %19, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %exitcond.not.2 = icmp eq i32 %4, 3
  br i1 %exitcond.not.2, label %for.body18.2.for.end_crit_edge, label %for.body18.3

for.body18.2.for.end_crit_edge:                   ; preds = %for.body18.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.3:                                     ; preds = %for.body18.2
  %21 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -31745, ptr %incdec.ptr.2, align 8
  %add20.3 = add i32 %offset.0143, 3
  %arrayidx.3 = getelementptr ptr, ptr %addr, i32 %add20.3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  %24 = call ptr @memcpy(ptr %macaddr.3, ptr %23, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %exitcond.not.3 = icmp eq i32 %4, 4
  br i1 %exitcond.not.3, label %for.body18.3.for.end_crit_edge, label %for.body18.4

for.body18.3.for.end_crit_edge:                   ; preds = %for.body18.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.4:                                     ; preds = %for.body18.3
  %25 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -31745, ptr %incdec.ptr.3, align 8
  %add20.4 = add i32 %offset.0143, 4
  %arrayidx.4 = getelementptr ptr, ptr %addr, i32 %add20.4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %28 = call ptr @memcpy(ptr %macaddr.4, ptr %27, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %exitcond.not.4 = icmp eq i32 %4, 5
  br i1 %exitcond.not.4, label %for.body18.4.for.end_crit_edge, label %for.body18.5

for.body18.4.for.end_crit_edge:                   ; preds = %for.body18.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.5:                                     ; preds = %for.body18.4
  %29 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -31745, ptr %incdec.ptr.4, align 8
  %add20.5 = add i32 %offset.0143, 5
  %arrayidx.5 = getelementptr ptr, ptr %addr, i32 %add20.5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %32 = call ptr @memcpy(ptr %macaddr.5, ptr %31, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %exitcond.not.5 = icmp eq i32 %4, 6
  br i1 %exitcond.not.5, label %for.body18.5.for.end_crit_edge, label %for.body18.6

for.body18.5.for.end_crit_edge:                   ; preds = %for.body18.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body18.6:                                     ; preds = %for.body18.5
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -31745, ptr %incdec.ptr.5, align 8
  %add20.6 = add i32 %offset.0143, 6
  %arrayidx.6 = getelementptr ptr, ptr %addr, i32 %add20.6
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.6, align 4
  %36 = call ptr @memcpy(ptr %macaddr.6, ptr %35, i32 6)
  br label %for.end

for.end:                                          ; preds = %for.body18.6, %for.body18.5.for.end_crit_edge, %for.body18.4.for.end_crit_edge, %for.body18.3.for.end_crit_edge, %for.body18.2.for.end_crit_edge, %for.body18.1.for.end_crit_edge, %for.body18.for.end_crit_edge, %for.body.for.end_crit_edge
  %call = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext %sleep_ok)
  %37 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call, label %for.end.for.end73_crit_edge [
    i32 0, label %for.end.if.end26_crit_edge
    i32 -12, label %for.end.if.end26_crit_edge156
  ]

for.end.if.end26_crit_edge156:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.end.for.end73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

if.end26:                                         ; preds = %for.end.if.end26_crit_edge, %for.end.if.end26_crit_edge156
  br i1 %cmp16133.not, label %if.end26.cleanup_crit_edge, label %if.end26.for.body32_crit_edge

if.end26.for.body32_crit_edge:                    ; preds = %if.end26
  br label %for.body32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body32:                                       ; preds = %if.end63.for.body32_crit_edge, %if.end26.for.body32_crit_edge
  %i.1139 = phi i32 [ %inc65, %if.end63.for.body32_crit_edge ], [ 0, %if.end26.for.body32_crit_edge ]
  %p.1138 = phi ptr [ %incdec.ptr66, %if.end63.for.body32_crit_edge ], [ %u27, %if.end26.for.body32_crit_edge ]
  %nfilters.1137 = phi i32 [ %nfilters.2, %if.end63.for.body32_crit_edge ], [ %nfilters.0146, %if.end26.for.body32_crit_edge ]
  %38 = ptrtoint ptr %p.1138 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %p.1138, align 2
  %40 = and i16 %39, 1023
  br i1 %tobool36.not, label %for.body32.if.end49_crit_edge, label %if.then37

for.body32.if.end49_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then37:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %2)
  %cmp39.not = icmp ult i16 %40, %2
  %spec.select126 = select i1 %cmp39.not, i16 %40, i16 -1
  %add47 = add i32 %i.1139, %offset.0143
  %arrayidx48 = getelementptr i16, ptr %idx, i32 %add47
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %spec.select126, ptr %arrayidx48, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then37, %for.body32.if.end49_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %2)
  %cmp51 = icmp ult i16 %40, %2
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %inc54 = add i32 %nfilters.1137, 1
  br label %if.end63

if.else:                                          ; preds = %if.end49
  br i1 %tobool55.not, label %if.else.if.end63_crit_edge, label %if.then56

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add57 = add i32 %i.1139, %offset.0143
  %arrayidx58 = getelementptr ptr, ptr %addr, i32 %add57
  %42 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx58, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i = zext i8 %45 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr i8, ptr %43, i32 1
  %46 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %47 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %43, i32 2
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %49 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %arrayidx7.i = getelementptr i8, ptr %43, i32 3
  %50 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %51 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %arrayidx10.i = getelementptr i8, ptr %43, i32 4
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %53 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %or13.i = or i32 %shl12.i, %shl9.i
  %arrayidx14.i = getelementptr i8, ptr %43, i32 5
  %54 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %55 to i32
  %or16.i = or i32 %or13.i, %conv15.i
  %xor.i = xor i32 %or16.i, %or6.i
  %shr.i = lshr i32 %xor.i, 12
  %xor17.i = xor i32 %shr.i, %xor.i
  %shr18.i = lshr i32 %xor17.i, 6
  %xor19.i = xor i32 %shr18.i, %xor17.i
  %and.i = and i32 %xor19.i, 63
  %sh_prom = zext i32 %and.i to i64
  %shl60 = shl nuw i64 1, %sh_prom
  %56 = ptrtoint ptr %hash to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %hash, align 8
  %or61 = or i64 %shl60, %57
  store i64 %or61, ptr %hash, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.else.if.end63_crit_edge, %if.then53
  %nfilters.2 = phi i32 [ %inc54, %if.then53 ], [ %nfilters.1137, %if.then56 ], [ %nfilters.1137, %if.else.if.end63_crit_edge ]
  %inc65 = add nuw nsw i32 %i.1139, 1
  %incdec.ptr66 = getelementptr %struct.fw_vi_mac_exact, ptr %p.1138, i32 1
  %exitcond152.not = icmp eq i32 %inc65, %4
  br i1 %exitcond152.not, label %if.end63.cleanup_crit_edge, label %if.end63.for.body32_crit_edge

if.end63.for.body32_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end63.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %nfilters.1.lcssa = phi i32 [ %nfilters.0146, %if.end26.cleanup_crit_edge ], [ %nfilters.2, %if.end63.cleanup_crit_edge ]
  %add68 = add i32 %4, %offset.0143
  %sub69 = sub i32 %rem.0147, %4
  %cmp3 = icmp ult i32 %add68, %naddr
  br i1 %cmp3, label %cleanup.for.body_crit_edge, label %cleanup.for.end73_crit_edge

cleanup.for.end73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end73:                                        ; preds = %cleanup.for.end73_crit_edge, %for.end.for.end73_crit_edge
  %nfilters.0.lcssa = phi i32 [ %nfilters.1.lcssa, %cleanup.for.end73_crit_edge ], [ %nfilters.0146, %for.end.for.end73_crit_edge ]
  %58 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call, label %for.end73.cleanup80_crit_edge [
    i32 0, label %for.end73.if.then78_crit_edge
    i32 -12, label %for.end73.if.then78_crit_edge157
  ]

for.end73.if.then78_crit_edge157:                 ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

for.end73.if.then78_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

for.end73.cleanup80_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80

if.then78:                                        ; preds = %for.end73.if.then78_crit_edge, %for.end73.if.then78_crit_edge157, %for.cond.preheader.if.then78_crit_edge
  %nfilters.0.lcssa155 = phi i32 [ %nfilters.0.lcssa, %for.end73.if.then78_crit_edge ], [ %nfilters.0.lcssa, %for.end73.if.then78_crit_edge157 ], [ 0, %for.cond.preheader.if.then78_crit_edge ]
  br label %cleanup80

cleanup80:                                        ; preds = %if.then78, %for.end73.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup80_crit_edge ], [ %nfilters.0.lcssa155, %if.then78 ], [ %call, %for.end73.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_free_mac_filt(ptr noundef %adapter, i32 noundef %viid, i32 noundef %naddr, ptr nocapture noundef readonly %addr, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_mac_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5, i32 1
  %0 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mps_tcam_size, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %naddr)
  %cmp = icmp ult i32 %conv, %naddr
  br i1 %cmp, label %entry.cleanup46_crit_edge, label %for.cond.preheader

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %naddr)
  %cmp290 = icmp sgt i32 %naddr, 0
  br i1 %cmp290, label %for.body.lr.ph, label %for.cond.preheader.cleanup46_crit_edge

for.cond.preheader.cleanup46_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %or = or i32 %viid, 362807296
  %freemacs_to_len16 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 1
  %u = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %cmd, i32 8
  %macaddr = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %u, i32 0, i32 1
  %incdec.ptr = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %macaddr.1 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr, i32 0, i32 1
  %incdec.ptr.1 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %macaddr.2 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr.1, i32 0, i32 1
  %incdec.ptr.2 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4
  %macaddr.3 = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %incdec.ptr.2, i32 0, i32 1
  %incdec.ptr.3 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %macaddr.4 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 2
  %incdec.ptr.4 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 8
  %macaddr.5 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 10
  %incdec.ptr.5 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 16
  %macaddr.6 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 18
  %incdec.ptr34 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %incdec.ptr34.1 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %incdec.ptr34.2 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4
  %incdec.ptr34.3 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %incdec.ptr34.4 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 8
  %incdec.ptr34.5 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2, i32 1, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %offset.093 = phi i32 [ 0, %for.body.lr.ph ], [ %add36, %cleanup.for.body_crit_edge ]
  %rem.092 = phi i32 [ %naddr, %for.body.lr.ph ], [ %sub37, %cleanup.for.body_crit_edge ]
  %nfilters.091 = phi i32 [ 0, %for.body.lr.ph ], [ %nfilters.1.lcssa, %cleanup.for.body_crit_edge ]
  %3 = call i32 @llvm.umin.i32(i32 %rem.092, i32 7)
  %4 = shl nuw nsw i32 %3, 3
  %sub = add nuw nsw i32 %4, 23
  %div75 = lshr i32 %sub, 4
  %5 = call ptr @memset(ptr %2, i32 0, i32 56)
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %cmd, align 8
  %7 = ptrtoint ptr %freemacs_to_len16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div75, ptr %freemacs_to_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp983.not = icmp eq i32 %3, 0
  br i1 %cmp983.not, label %for.end.thread, label %for.body11

for.body11:                                       ; preds = %for.body
  %8 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -31747, ptr %u, align 8
  %arrayidx = getelementptr ptr, ptr %addr, i32 %offset.093
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = call ptr @memcpy(ptr %macaddr, ptr %10, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %exitcond.not = icmp eq i32 %3, 1
  br i1 %exitcond.not, label %for.body11.for.end_crit_edge, label %for.body11.1

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.1:                                     ; preds = %for.body11
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -31747, ptr %incdec.ptr, align 8
  %add13.1 = add i32 %offset.093, 1
  %arrayidx.1 = getelementptr ptr, ptr %addr, i32 %add13.1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %15 = call ptr @memcpy(ptr %macaddr.1, ptr %14, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %for.body11.1.for.end_crit_edge, label %for.body11.2

for.body11.1.for.end_crit_edge:                   ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.2:                                     ; preds = %for.body11.1
  %16 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -31747, ptr %incdec.ptr.1, align 8
  %add13.2 = add i32 %offset.093, 2
  %arrayidx.2 = getelementptr ptr, ptr %addr, i32 %add13.2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %19 = call ptr @memcpy(ptr %macaddr.2, ptr %18, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %exitcond.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond.not.2, label %for.body11.2.for.end_crit_edge, label %for.body11.3

for.body11.2.for.end_crit_edge:                   ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.3:                                     ; preds = %for.body11.2
  %20 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -31747, ptr %incdec.ptr.2, align 8
  %add13.3 = add i32 %offset.093, 3
  %arrayidx.3 = getelementptr ptr, ptr %addr, i32 %add13.3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %23 = call ptr @memcpy(ptr %macaddr.3, ptr %22, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %exitcond.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond.not.3, label %for.body11.3.for.end_crit_edge, label %for.body11.4

for.body11.3.for.end_crit_edge:                   ; preds = %for.body11.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.4:                                     ; preds = %for.body11.3
  %24 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -31747, ptr %incdec.ptr.3, align 8
  %add13.4 = add i32 %offset.093, 4
  %arrayidx.4 = getelementptr ptr, ptr %addr, i32 %add13.4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.4, align 4
  %27 = call ptr @memcpy(ptr %macaddr.4, ptr %26, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %exitcond.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond.not.4, label %for.body11.4.for.end_crit_edge, label %for.body11.5

for.body11.4.for.end_crit_edge:                   ; preds = %for.body11.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.5:                                     ; preds = %for.body11.4
  %28 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -31747, ptr %incdec.ptr.4, align 8
  %add13.5 = add i32 %offset.093, 5
  %arrayidx.5 = getelementptr ptr, ptr %addr, i32 %add13.5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.5, align 4
  %31 = call ptr @memcpy(ptr %macaddr.5, ptr %30, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %exitcond.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond.not.5, label %for.body11.5.for.end_crit_edge, label %for.body11.6

for.body11.5.for.end_crit_edge:                   ; preds = %for.body11.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11.6:                                     ; preds = %for.body11.5
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -31747, ptr %incdec.ptr.5, align 8
  %add13.6 = add i32 %offset.093, 6
  %arrayidx.6 = getelementptr ptr, ptr %addr, i32 %add13.6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.6, align 4
  %35 = call ptr @memcpy(ptr %macaddr.6, ptr %34, i32 6)
  br label %for.end

for.end:                                          ; preds = %for.body11.6, %for.body11.5.for.end_crit_edge, %for.body11.4.for.end_crit_edge, %for.body11.3.for.end_crit_edge, %for.body11.2.for.end_crit_edge, %for.body11.1.for.end_crit_edge, %for.body11.for.end_crit_edge
  %call = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %cmd, i1 noundef zeroext %sleep_ok)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %for.cond19.preheader, label %for.end.cleanup46_crit_edge

for.end.cleanup46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.end.thread:                                   ; preds = %for.body
  %call100 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %cmd, i1 noundef zeroext %sleep_ok)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool14.not101 = icmp eq i32 %call100, 0
  br i1 %tobool14.not101, label %for.end.thread.cleanup_crit_edge, label %for.end.thread.cleanup46_crit_edge

for.end.thread.cleanup46_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond19.preheader:                             ; preds = %for.end
  br i1 %cmp983.not, label %for.cond19.preheader.cleanup_crit_edge, label %for.body22

for.cond19.preheader.cleanup_crit_edge:           ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22:                                       ; preds = %for.cond19.preheader
  %36 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %u, align 8
  %38 = and i16 %37, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %1)
  %cmp27 = icmp ult i16 %38, %1
  %inc30 = zext i1 %cmp27 to i32
  %spec.select76 = add i32 %nfilters.091, %inc30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %exitcond99.not = icmp eq i32 %3, 1
  br i1 %exitcond99.not, label %for.body22.cleanup_crit_edge, label %for.body22.1

for.body22.cleanup_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.1:                                     ; preds = %for.body22
  %39 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %incdec.ptr34, align 8
  %41 = and i16 %40, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %1)
  %cmp27.1 = icmp ult i16 %41, %1
  %inc30.1 = zext i1 %cmp27.1 to i32
  %spec.select76.1 = add i32 %spec.select76, %inc30.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %exitcond99.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond99.not.1, label %for.body22.1.cleanup_crit_edge, label %for.body22.2

for.body22.1.cleanup_crit_edge:                   ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.2:                                     ; preds = %for.body22.1
  %42 = ptrtoint ptr %incdec.ptr34.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr34.1, align 8
  %44 = and i16 %43, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %1)
  %cmp27.2 = icmp ult i16 %44, %1
  %inc30.2 = zext i1 %cmp27.2 to i32
  %spec.select76.2 = add i32 %spec.select76.1, %inc30.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %exitcond99.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond99.not.2, label %for.body22.2.cleanup_crit_edge, label %for.body22.3

for.body22.2.cleanup_crit_edge:                   ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.3:                                     ; preds = %for.body22.2
  %45 = ptrtoint ptr %incdec.ptr34.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %incdec.ptr34.2, align 8
  %47 = and i16 %46, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %1)
  %cmp27.3 = icmp ult i16 %47, %1
  %inc30.3 = zext i1 %cmp27.3 to i32
  %spec.select76.3 = add i32 %spec.select76.2, %inc30.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %exitcond99.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond99.not.3, label %for.body22.3.cleanup_crit_edge, label %for.body22.4

for.body22.3.cleanup_crit_edge:                   ; preds = %for.body22.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.4:                                     ; preds = %for.body22.3
  %48 = ptrtoint ptr %incdec.ptr34.3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %incdec.ptr34.3, align 8
  %50 = and i16 %49, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %1)
  %cmp27.4 = icmp ult i16 %50, %1
  %inc30.4 = zext i1 %cmp27.4 to i32
  %spec.select76.4 = add i32 %spec.select76.3, %inc30.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %exitcond99.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond99.not.4, label %for.body22.4.cleanup_crit_edge, label %for.body22.5

for.body22.4.cleanup_crit_edge:                   ; preds = %for.body22.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.5:                                     ; preds = %for.body22.4
  %51 = ptrtoint ptr %incdec.ptr34.4 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %incdec.ptr34.4, align 8
  %53 = and i16 %52, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %1)
  %cmp27.5 = icmp ult i16 %53, %1
  %inc30.5 = zext i1 %cmp27.5 to i32
  %spec.select76.5 = add i32 %spec.select76.4, %inc30.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %exitcond99.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond99.not.5, label %for.body22.5.cleanup_crit_edge, label %for.body22.6

for.body22.5.cleanup_crit_edge:                   ; preds = %for.body22.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.6:                                     ; preds = %for.body22.5
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %incdec.ptr34.5 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %incdec.ptr34.5, align 8
  %56 = and i16 %55, 1023
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %1)
  %cmp27.6 = icmp ult i16 %56, %1
  %inc30.6 = zext i1 %cmp27.6 to i32
  %spec.select76.6 = add i32 %spec.select76.5, %inc30.6
  br label %cleanup

cleanup:                                          ; preds = %for.body22.6, %for.body22.5.cleanup_crit_edge, %for.body22.4.cleanup_crit_edge, %for.body22.3.cleanup_crit_edge, %for.body22.2.cleanup_crit_edge, %for.body22.1.cleanup_crit_edge, %for.body22.cleanup_crit_edge, %for.cond19.preheader.cleanup_crit_edge, %for.end.thread.cleanup_crit_edge
  %nfilters.1.lcssa = phi i32 [ %nfilters.091, %for.cond19.preheader.cleanup_crit_edge ], [ %nfilters.091, %for.end.thread.cleanup_crit_edge ], [ %spec.select76, %for.body22.cleanup_crit_edge ], [ %spec.select76.1, %for.body22.1.cleanup_crit_edge ], [ %spec.select76.2, %for.body22.2.cleanup_crit_edge ], [ %spec.select76.3, %for.body22.3.cleanup_crit_edge ], [ %spec.select76.4, %for.body22.4.cleanup_crit_edge ], [ %spec.select76.5, %for.body22.5.cleanup_crit_edge ], [ %spec.select76.6, %for.body22.6 ]
  %add36 = add i32 %offset.093, %3
  %sub37 = sub i32 %rem.092, %3
  %cmp2 = icmp slt i32 %add36, %naddr
  br i1 %cmp2, label %cleanup.for.body_crit_edge, label %cleanup.cleanup46_crit_edge

cleanup.cleanup46_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup46:                                        ; preds = %cleanup.cleanup46_crit_edge, %for.end.thread.cleanup46_crit_edge, %for.end.cleanup46_crit_edge, %for.cond.preheader.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup46_crit_edge ], [ 0, %for.cond.preheader.cleanup46_crit_edge ], [ %nfilters.1.lcssa, %cleanup.cleanup46_crit_edge ], [ %call100, %for.end.thread.cleanup46_crit_edge ], [ %call, %for.end.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_change_mac(ptr noundef %adapter, i32 noundef %viid, i32 noundef %idx, ptr nocapture noundef readonly %addr, i1 noundef zeroext %persist) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_mac_cmd, align 8
  %rpl = alloca %struct.fw_vi_mac_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rpl) #7
  %0 = call ptr @memset(ptr %rpl, i32 255, i32 64)
  %u = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5, i32 1
  %1 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mps_tcam_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp slt i32 %idx, 0
  %cond = select i1 %persist, i32 1022, i32 1023
  %spec.select = select i1 %cmp, i32 %cond, i32 %idx
  %3 = getelementptr inbounds i8, ptr %cmd, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 48)
  %or = or i32 %viid, 362807296
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %cmd, align 8
  %freemacs_to_len16 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %freemacs_to_len16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %freemacs_to_len16, align 4
  %7 = trunc i32 %spec.select to i16
  %conv6 = or i16 %7, -32768
  %8 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6, ptr %u, align 8
  %macaddr = getelementptr inbounds %struct.fw_vi_mac_exact, ptr %u, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %macaddr, ptr %addr, i32 6)
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp eq i32 %call.i, 0
  br i1 %cmp7, label %if.then9, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u10 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %rpl, i32 0, i32 2
  %10 = ptrtoint ptr %u10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u10, align 8
  %12 = and i16 %11, 1023
  %and = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %2)
  %cmp14.not = icmp ult i16 %12, %2
  %spec.store.select = select i1 %cmp14.not, i32 %and, i32 -12
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %entry.if.end18_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then9 ], [ %call.i, %entry.if.end18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_set_addr_hash(ptr noundef %adapter, i32 noundef %viid, i1 noundef zeroext %ucast, i64 noundef %vec, i1 noundef zeroext %sleep_ok) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_mac_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %or = or i32 %viid, 362807296
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %cmd, align 8
  %or5 = select i1 %ucast, i32 12582913, i32 8388609
  %freemacs_to_len16 = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %freemacs_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or5, ptr %freemacs_to_len16, align 4
  %u = getelementptr inbounds %struct.fw_vi_mac_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %vec, ptr %u, align 8
  %call = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef null, i1 noundef zeroext %sleep_ok)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_port_stats(ptr noundef %adapter, i32 noundef %pidx, ptr nocapture noundef writeonly %s) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_vi_stats_cmd, align 8
  %rpl = alloca %struct.fw_vi_stats_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 %pidx
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %viid = getelementptr i8, ptr %1, i32 2312
  %retval_len16 = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %cmd, i32 0, i32 1
  %u = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %cmd, i32 0, i32 2
  %stat0 = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %rpl) #7
  %2 = call ptr @memset(ptr %rpl, i32 255, i32 144)
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 144)
  %4 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %viid, align 4
  %conv = zext i16 %5 to i32
  %or3 = or i32 %conv, 448790528
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3, ptr %cmd, align 8
  %7 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %retval_len16, align 4
  %8 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 24576, ptr %u, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %cleanup, label %entry.cleanup.thread_crit_edge

entry.cleanup.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.1.cleanup.thread_crit_edge, %cleanup.cleanup.thread_crit_edge, %entry.cleanup.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.cleanup.thread_crit_edge ], [ %call.i.1, %cleanup.cleanup.thread_crit_edge ], [ %call.i.2, %cleanup.1.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #7
  br label %cleanup35

cleanup:                                          ; preds = %entry
  %9 = ptrtoint ptr %stat0 to i32
  call void @__asan_load8_noabort(i32 %9)
  %fwstats.sroa.0.0.copyload = load i64, ptr %stat0, align 8
  %fwstats.sroa.5.0.stat0.sroa_idx = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %fwstats.sroa.5.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %fwstats.sroa.5.0.copyload = load i64, ptr %fwstats.sroa.5.0.stat0.sroa_idx, align 8
  %fwstats.sroa.6.0.stat0.sroa_idx = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %fwstats.sroa.6.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %11)
  %fwstats.sroa.6.0.copyload = load i64, ptr %fwstats.sroa.6.0.stat0.sroa_idx, align 8
  %fwstats.sroa.7.0.stat0.sroa_idx = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %fwstats.sroa.7.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %12)
  %fwstats.sroa.7.0.copyload = load i64, ptr %fwstats.sroa.7.0.stat0.sroa_idx, align 8
  %fwstats.sroa.8.0.stat0.sroa_idx = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 5
  %13 = ptrtoint ptr %fwstats.sroa.8.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %fwstats.sroa.8.0.copyload = load i64, ptr %fwstats.sroa.8.0.stat0.sroa_idx, align 8
  %fwstats.sroa.9.0.stat0.sroa_idx = getelementptr inbounds %struct.fw_vi_stats_cmd, ptr %rpl, i32 0, i32 2, i32 0, i32 6
  %14 = ptrtoint ptr %fwstats.sroa.9.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %fwstats.sroa.9.0.copyload = load i64, ptr %fwstats.sroa.9.0.stat0.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %rpl) #7
  %15 = call ptr @memset(ptr %rpl, i32 255, i32 144)
  %16 = call ptr @memset(ptr %cmd, i32 0, i32 144)
  %17 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %viid, align 4
  %conv.1 = zext i16 %18 to i32
  %or3.1 = or i32 %conv.1, 448790528
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or3.1, ptr %cmd, align 8
  %20 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %retval_len16, align 4
  %21 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 24582, ptr %u, align 8
  %call.i.1 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool10.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool10.not.1, label %cleanup.1, label %cleanup.cleanup.thread_crit_edge

cleanup.cleanup.thread_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.1:                                        ; preds = %cleanup
  %22 = ptrtoint ptr %stat0 to i32
  call void @__asan_load8_noabort(i32 %22)
  %fwstats.sroa.10.48.copyload = load i64, ptr %stat0, align 8
  %23 = ptrtoint ptr %fwstats.sroa.5.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %23)
  %fwstats.sroa.12.48.copyload = load i64, ptr %fwstats.sroa.5.0.stat0.sroa_idx, align 8
  %24 = ptrtoint ptr %fwstats.sroa.6.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %24)
  %fwstats.sroa.13.48.copyload = load i64, ptr %fwstats.sroa.6.0.stat0.sroa_idx, align 8
  %25 = ptrtoint ptr %fwstats.sroa.7.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %25)
  %fwstats.sroa.14.48.copyload = load i64, ptr %fwstats.sroa.7.0.stat0.sroa_idx, align 8
  %26 = ptrtoint ptr %fwstats.sroa.8.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %26)
  %fwstats.sroa.15.48.copyload = load i64, ptr %fwstats.sroa.8.0.stat0.sroa_idx, align 8
  %27 = ptrtoint ptr %fwstats.sroa.9.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %27)
  %fwstats.sroa.16.48.copyload = load i64, ptr %fwstats.sroa.9.0.stat0.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %rpl) #7
  %28 = call ptr @memset(ptr %rpl, i32 255, i32 144)
  %29 = call ptr @memset(ptr %cmd, i32 0, i32 144)
  %30 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %viid, align 4
  %conv.2 = zext i16 %31 to i32
  %or3.2 = or i32 %conv.2, 448790528
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or3.2, ptr %cmd, align 8
  %33 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %retval_len16, align 4
  %34 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16396, ptr %u, align 8
  %call.i.2 = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef nonnull %rpl, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool10.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool10.not.2, label %cleanup.2, label %cleanup.1.cleanup.thread_crit_edge

cleanup.1.cleanup.thread_crit_edge:               ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.2:                                        ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %stat0 to i32
  call void @__asan_load8_noabort(i32 %35)
  %fwstats.sroa.17.96.copyload = load i64, ptr %stat0, align 8
  %36 = ptrtoint ptr %fwstats.sroa.5.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %36)
  %fwstats.sroa.19.96.copyload = load i64, ptr %fwstats.sroa.5.0.stat0.sroa_idx, align 8
  %37 = ptrtoint ptr %fwstats.sroa.6.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %37)
  %fwstats.sroa.20.96.copyload = load i64, ptr %fwstats.sroa.6.0.stat0.sroa_idx, align 8
  %38 = ptrtoint ptr %fwstats.sroa.7.0.stat0.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %38)
  %fwstats.sroa.21.96.copyload = load i64, ptr %fwstats.sroa.7.0.stat0.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rpl) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #7
  %39 = ptrtoint ptr %s to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %fwstats.sroa.0.0.copyload, ptr %s, align 8
  %tx_bcast_frames20 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 1
  %40 = ptrtoint ptr %tx_bcast_frames20 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %fwstats.sroa.5.0.copyload, ptr %tx_bcast_frames20, align 8
  %tx_mcast_bytes21 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 2
  %41 = ptrtoint ptr %tx_mcast_bytes21 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %fwstats.sroa.6.0.copyload, ptr %tx_mcast_bytes21, align 8
  %tx_mcast_frames22 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 3
  %42 = ptrtoint ptr %tx_mcast_frames22 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %fwstats.sroa.7.0.copyload, ptr %tx_mcast_frames22, align 8
  %tx_ucast_bytes23 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 4
  %43 = ptrtoint ptr %tx_ucast_bytes23 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %fwstats.sroa.8.0.copyload, ptr %tx_ucast_bytes23, align 8
  %tx_ucast_frames24 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 5
  %44 = ptrtoint ptr %tx_ucast_frames24 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %fwstats.sroa.9.0.copyload, ptr %tx_ucast_frames24, align 8
  %tx_drop_frames25 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 6
  %45 = ptrtoint ptr %tx_drop_frames25 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %fwstats.sroa.10.48.copyload, ptr %tx_drop_frames25, align 8
  %tx_offload_bytes26 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 7
  %46 = ptrtoint ptr %tx_offload_bytes26 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %fwstats.sroa.12.48.copyload, ptr %tx_offload_bytes26, align 8
  %tx_offload_frames27 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 8
  %47 = ptrtoint ptr %tx_offload_frames27 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %fwstats.sroa.13.48.copyload, ptr %tx_offload_frames27, align 8
  %rx_bcast_bytes28 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 9
  %48 = ptrtoint ptr %rx_bcast_bytes28 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %fwstats.sroa.14.48.copyload, ptr %rx_bcast_bytes28, align 8
  %rx_bcast_frames29 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 10
  %49 = ptrtoint ptr %rx_bcast_frames29 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %fwstats.sroa.15.48.copyload, ptr %rx_bcast_frames29, align 8
  %rx_mcast_bytes30 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 11
  %50 = ptrtoint ptr %rx_mcast_bytes30 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %fwstats.sroa.16.48.copyload, ptr %rx_mcast_bytes30, align 8
  %rx_mcast_frames31 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 12
  %51 = ptrtoint ptr %rx_mcast_frames31 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %fwstats.sroa.17.96.copyload, ptr %rx_mcast_frames31, align 8
  %rx_ucast_bytes32 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 13
  %52 = ptrtoint ptr %rx_ucast_bytes32 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %fwstats.sroa.19.96.copyload, ptr %rx_ucast_bytes32, align 8
  %rx_ucast_frames33 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 14
  %53 = ptrtoint ptr %rx_ucast_frames33 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %fwstats.sroa.20.96.copyload, ptr %rx_ucast_frames33, align 8
  %rx_err_frames34 = getelementptr inbounds %struct.t4vf_port_stats, ptr %s, i32 0, i32 15
  %54 = ptrtoint ptr %rx_err_frames34 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %fwstats.sroa.21.96.copyload, ptr %rx_err_frames34, align 8
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup.2, %cleanup.thread
  %retval.2 = phi i32 [ 0, %cleanup.2 ], [ %call.i.lcssa, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_iq_free(ptr noundef %adapter, i32 noundef %iqtype, i32 noundef %iqid, i32 noundef %fl0id, i32 noundef %fl1id) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_iq_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 277872640, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1073741828, ptr %alloc_to_len16, align 4
  %shl = shl i32 %iqtype, 29
  %type_to_iqandstindex = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 6
  %4 = ptrtoint ptr %type_to_iqandstindex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %type_to_iqandstindex, align 8
  %conv = trunc i32 %iqid to i16
  %iqid1 = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %iqid1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %iqid1, align 2
  %conv2 = trunc i32 %fl0id to i16
  %fl0id3 = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %fl0id3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %fl0id3, align 4
  %conv4 = trunc i32 %fl1id to i16
  %fl1id5 = getelementptr inbounds %struct.fw_iq_cmd, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %fl1id5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv4, ptr %fl1id5, align 2
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 64, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_eth_eq_free(ptr noundef %adapter, i32 noundef %eqid) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_eq_eth_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 311427072, ptr %cmd, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1073741827, ptr %alloc_to_len16, align 4
  %eqid_pkd = getelementptr inbounds %struct.fw_eq_eth_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %eqid_pkd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %eqid, ptr %eqid_pkd, align 8
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef null, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_update_port_info(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  %port_cmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  %fw_caps_support = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %fw_caps_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_caps_support, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %port_cmd) #7
  %4 = getelementptr inbounds %struct.fw_port_cmd, ptr %port_cmd, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %port_cmd, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 9
  %7 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_id, align 2
  %conv1 = zext i8 %8 to i32
  %or = or i32 %conv1, 465567744
  %9 = ptrtoint ptr %port_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %port_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %or4 = select i1 %cmp, i32 196610, i32 655362
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or4, ptr %4, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %1, ptr noundef nonnull %port_cmd, i32 noundef 32, ptr noundef nonnull %port_cmd, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @t4vf_handle_get_port_info(ptr noundef %pi, ptr noundef nonnull %port_cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %port_cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4vf_handle_get_port_info(ptr noundef %pi, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link_cfg = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  %action_to_len16 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %action_to_len16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action_to_len16, align 4
  %shr = lshr i32 %3, 16
  %trunc = trunc i32 %shr to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %trunc, label %do.end [
    i16 3, label %sw.bb
    i16 10, label %sw.bb50
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 8
  %shr3 = lshr i32 %6, 5
  %shr5 = lshr i32 %6, 8
  %and6 = and i32 %shr5, 31
  %pcap = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %pcap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pcap, align 4
  %conv.i = zext i16 %8 to i32
  %and12.i = shl nuw nsw i32 %conv.i, 1
  %9 = and i32 %and12.i, 8
  %and21.i = lshr i32 %conv.i, 1
  %10 = and i32 %and21.i, 4
  %11 = and i32 %and12.i, 64
  %and48.i = shl nuw nsw i32 %conv.i, 10
  %12 = and i32 %and48.i, 65536
  %13 = and i32 %and48.i, 131072
  %and66.i = shl nuw nsw i32 %conv.i, 12
  %14 = and i32 %and66.i, 1048576
  %15 = and i32 %and66.i, 2097152
  %16 = and i32 %and66.i, 4194304
  %17 = and i32 %and66.i, 8388608
  %18 = and i32 %and66.i, 16777216
  %and111.i = shl nuw nsw i32 %conv.i, 4
  %19 = and i32 %and111.i, 262144
  %20 = and i32 %and111.i, 524288
  %21 = and i32 %conv.i, 19
  %22 = or i32 %9, %21
  %23 = or i32 %22, %10
  %24 = or i32 %23, %11
  %25 = or i32 %24, %12
  %26 = or i32 %25, %13
  %27 = or i32 %26, %14
  %28 = or i32 %27, %15
  %29 = or i32 %28, %16
  %30 = or i32 %29, %17
  %31 = or i32 %30, %18
  %32 = or i32 %31, %19
  %33 = or i32 %32, %20
  %acap = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %acap to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %acap, align 2
  %conv.i242 = zext i16 %35 to i32
  %and12.i243 = shl nuw nsw i32 %conv.i242, 1
  %36 = and i32 %and12.i243, 8
  %and21.i244 = lshr i32 %conv.i242, 1
  %37 = and i32 %and21.i244, 4
  %38 = and i32 %and12.i243, 64
  %and48.i245 = shl nuw nsw i32 %conv.i242, 10
  %39 = and i32 %and48.i245, 65536
  %40 = and i32 %and48.i245, 131072
  %and66.i246 = shl nuw nsw i32 %conv.i242, 12
  %41 = and i32 %and66.i246, 1048576
  %42 = and i32 %and66.i246, 8388608
  %43 = and i32 %and66.i246, 16777216
  %and111.i247 = shl nuw nsw i32 %conv.i242, 4
  %44 = and i32 %and111.i247, 262144
  %45 = and i32 %and111.i247, 524288
  %46 = and i32 %conv.i242, 19
  %47 = or i32 %36, %46
  %48 = or i32 %47, %37
  %49 = or i32 %48, %38
  %50 = or i32 %49, %39
  %51 = or i32 %50, %40
  %52 = or i32 %51, %41
  %53 = or i32 %52, %42
  %54 = or i32 %53, %43
  %55 = or i32 %54, %44
  %56 = or i32 %55, %45
  %lpacap = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 8
  %57 = ptrtoint ptr %lpacap to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %lpacap, align 2
  %conv.i248 = zext i16 %58 to i32
  %and12.i249 = shl nuw nsw i32 %conv.i248, 1
  %59 = and i32 %and12.i249, 8
  %and21.i250 = lshr i32 %conv.i248, 1
  %60 = and i32 %and21.i250, 4
  %61 = and i32 %and12.i249, 64
  %and48.i251 = shl nuw nsw i32 %conv.i248, 10
  %62 = and i32 %and48.i251, 65536
  %63 = and i32 %and48.i251, 131072
  %and66.i252 = shl nuw nsw i32 %conv.i248, 12
  %64 = and i32 %and66.i252, 1048576
  %65 = and i32 %and66.i252, 2097152
  %66 = and i32 %and66.i252, 4194304
  %67 = and i32 %and66.i252, 8388608
  %68 = and i32 %and66.i252, 16777216
  %and111.i253 = shl nuw nsw i32 %conv.i248, 4
  %69 = and i32 %and111.i253, 262144
  %70 = and i32 %and111.i253, 524288
  %71 = and i32 %conv.i248, 19
  %72 = or i32 %59, %71
  %73 = or i32 %72, %60
  %74 = or i32 %73, %61
  %75 = or i32 %74, %62
  %76 = or i32 %75, %63
  %77 = or i32 %76, %64
  %78 = or i32 %77, %65
  %79 = or i32 %78, %66
  %80 = or i32 %79, %67
  %81 = or i32 %80, %68
  %82 = or i32 %81, %69
  %83 = or i32 %82, %70
  %and14 = lshr i32 %6, 6
  %84 = and i32 %and14, 196608
  %and20 = lshr i32 %6, 24
  %85 = and i32 %and20, 1
  %86 = or i32 %84, %85
  %87 = and i32 %and20, 2
  %88 = or i32 %86, %87
  %and30 = lshr i32 %6, 25
  %89 = and i32 %and30, 4
  %90 = or i32 %88, %89
  %and35 = lshr i32 %6, 23
  %91 = and i32 %and35, 8
  %92 = or i32 %90, %91
  %93 = and i32 %and20, 16
  %94 = or i32 %92, %93
  %95 = and i32 %and35, 64
  %96 = or i32 %94, %95
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %u51 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2
  %97 = ptrtoint ptr %u51 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %u51, align 8
  %shr55 = lshr i32 %98, 28
  %shr57 = lshr i32 %98, 13
  %and58 = and i32 %shr57, 255
  %shr59 = lshr i32 %98, 8
  %pcaps32 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 6
  %99 = ptrtoint ptr %pcaps32 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pcaps32, align 4
  %acaps32 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 9
  %101 = ptrtoint ptr %acaps32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %acaps32, align 8
  %lpacaps32 = getelementptr inbounds %struct.fw_port_info32, ptr %u51, i32 0, i32 5
  %103 = ptrtoint ptr %lpacaps32 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lpacaps32, align 4
  %linkattr32 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %105 = ptrtoint ptr %linkattr32 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %linkattr32, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.14, i32 noundef %3) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb
  %lpacaps.0 = phi i32 [ %104, %sw.bb50 ], [ %83, %sw.bb ]
  %linkattr.8 = phi i32 [ %106, %sw.bb50 ], [ %96, %sw.bb ]
  %mod_type.0.in = phi i32 [ %shr59, %sw.bb50 ], [ %6, %sw.bb ]
  %acaps.0 = phi i32 [ %102, %sw.bb50 ], [ %56, %sw.bb ]
  %link_ok.0.in = phi i32 [ %98, %sw.bb50 ], [ %6, %sw.bb ]
  %linkdnrc.0.in = phi i32 [ %shr55, %sw.bb50 ], [ %shr3, %sw.bb ]
  %port_type.0 = phi i32 [ %and58, %sw.bb50 ], [ %and6, %sw.bb ]
  %pcaps.0 = phi i32 [ %100, %sw.bb50 ], [ %33, %sw.bb ]
  %link_ok.0 = lshr i32 %link_ok.0.in, 31
  %mod_type.0 = and i32 %mod_type.0.in, 31
  %and.i = lshr i32 %acaps.0, 22
  %109 = and i32 %and.i, 6
  %and.i254 = lshr i32 %acaps.0, 16
  %110 = and i32 %and.i254, 3
  %and.i255 = lshr i32 %linkattr.8, 16
  %111 = and i32 %and.i255, 3
  %and.i256 = and i32 %linkattr.8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.not.i = icmp eq i32 %and.i256, 0
  br i1 %tobool.not.i, label %do.body1.i, label %sw.epilog.fwcap_to_speed.exit_crit_edge

sw.epilog.fwcap_to_speed.exit_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body1.i:                                       ; preds = %sw.epilog
  %and2.i = and i32 %linkattr.8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body7.i, label %do.body1.i.fwcap_to_speed.exit_crit_edge

do.body1.i.fwcap_to_speed.exit_crit_edge:         ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body7.i:                                       ; preds = %do.body1.i
  %and8.i = and i32 %linkattr.8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body13.i, label %do.body7.i.fwcap_to_speed.exit_crit_edge

do.body7.i.fwcap_to_speed.exit_crit_edge:         ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body13.i:                                      ; preds = %do.body7.i
  %and14.i = and i32 %linkattr.8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body19.i, label %do.body13.i.fwcap_to_speed.exit_crit_edge

do.body13.i.fwcap_to_speed.exit_crit_edge:        ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body19.i:                                      ; preds = %do.body13.i
  %and20.i = and i32 %linkattr.8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body25.i, label %do.body19.i.fwcap_to_speed.exit_crit_edge

do.body19.i.fwcap_to_speed.exit_crit_edge:        ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body25.i:                                      ; preds = %do.body19.i
  %and26.i = and i32 %linkattr.8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body31.i, label %do.body25.i.fwcap_to_speed.exit_crit_edge

do.body25.i.fwcap_to_speed.exit_crit_edge:        ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body31.i:                                      ; preds = %do.body25.i
  %and32.i = and i32 %linkattr.8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body37.i, label %do.body31.i.fwcap_to_speed.exit_crit_edge

do.body31.i.fwcap_to_speed.exit_crit_edge:        ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body37.i:                                      ; preds = %do.body31.i
  %and38.i = and i32 %linkattr.8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body43.i, label %do.body37.i.fwcap_to_speed.exit_crit_edge

do.body37.i.fwcap_to_speed.exit_crit_edge:        ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit

do.body43.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  %and44.i = and i32 %linkattr.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %..i = select i1 %tobool45.not.i, i32 0, i32 100
  br label %fwcap_to_speed.exit

fwcap_to_speed.exit:                              ; preds = %do.body43.i, %do.body37.i.fwcap_to_speed.exit_crit_edge, %do.body31.i.fwcap_to_speed.exit_crit_edge, %do.body25.i.fwcap_to_speed.exit_crit_edge, %do.body19.i.fwcap_to_speed.exit_crit_edge, %do.body13.i.fwcap_to_speed.exit_crit_edge, %do.body7.i.fwcap_to_speed.exit_crit_edge, %do.body1.i.fwcap_to_speed.exit_crit_edge, %sw.epilog.fwcap_to_speed.exit_crit_edge
  %retval.0.i = phi i32 [ 400000, %sw.epilog.fwcap_to_speed.exit_crit_edge ], [ 200000, %do.body1.i.fwcap_to_speed.exit_crit_edge ], [ 100000, %do.body7.i.fwcap_to_speed.exit_crit_edge ], [ 50000, %do.body13.i.fwcap_to_speed.exit_crit_edge ], [ 40000, %do.body19.i.fwcap_to_speed.exit_crit_edge ], [ 25000, %do.body25.i.fwcap_to_speed.exit_crit_edge ], [ 10000, %do.body31.i.fwcap_to_speed.exit_crit_edge ], [ 1000, %do.body37.i.fwcap_to_speed.exit_crit_edge ], [ %..i, %do.body43.i ]
  %mod_type70 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 8
  %112 = ptrtoint ptr %mod_type70 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mod_type70, align 1
  %conv71 = zext i8 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mod_type.0, i32 %conv71)
  %cmp72.not = icmp eq i32 %mod_type.0, %conv71
  br i1 %cmp72.not, label %fwcap_to_speed.exit.if.end80_crit_edge, label %if.then74

fwcap_to_speed.exit.if.end80_crit_edge:           ; preds = %fwcap_to_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then74:                                        ; preds = %fwcap_to_speed.exit
  call void @__sanitizer_cov_trace_pc() #9
  %auto_fec = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 8
  %114 = ptrtoint ptr %auto_fec to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %109, ptr %auto_fec, align 4
  %conv75 = trunc i32 %port_type.0 to i8
  %port_type76 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %115 = ptrtoint ptr %port_type76 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv75, ptr %port_type76, align 4
  %conv77 = trunc i32 %mod_type.0 to i8
  %116 = ptrtoint ptr %mod_type70 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv77, ptr %mod_type70, align 1
  %pidx = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 5
  %117 = ptrtoint ptr %pidx to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pidx, align 2
  %conv79 = zext i8 %118 to i32
  tail call void @t4vf_os_portmod_changed(ptr noundef %1, i32 noundef %conv79) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %fwcap_to_speed.exit.if.end80_crit_edge
  %link_ok81 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 12
  %119 = ptrtoint ptr %link_ok81 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %link_ok81, align 1
  %conv82 = zext i8 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %link_ok.0, i32 %conv82)
  %cmp83.not = icmp eq i32 %link_ok.0, %conv82
  br i1 %cmp83.not, label %lor.lhs.false, label %if.end80.if.then99_crit_edge

if.end80.if.then99_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false:                                    ; preds = %if.end80
  %speed85 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 4
  %121 = ptrtoint ptr %speed85 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %speed85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %122)
  %cmp86.not = icmp eq i32 %retval.0.i, %122
  br i1 %cmp86.not, label %lor.lhs.false88, label %lor.lhs.false.if.then99_crit_edge

lor.lhs.false.if.then99_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false88:                                  ; preds = %lor.lhs.false
  %fc89 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 6
  %123 = ptrtoint ptr %fc89 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fc89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %124)
  %cmp90.not = icmp eq i32 %111, %124
  br i1 %cmp90.not, label %lor.lhs.false92, label %lor.lhs.false88.if.then99_crit_edge

lor.lhs.false88.if.then99_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false92:                                  ; preds = %lor.lhs.false88
  %advertised_fc = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 7
  %125 = ptrtoint ptr %advertised_fc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %advertised_fc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %126)
  %cmp93.not = icmp eq i32 %110, %126
  br i1 %cmp93.not, label %lor.lhs.false95, label %lor.lhs.false92.if.then99_crit_edge

lor.lhs.false92.if.then99_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %fec96 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 10
  %127 = ptrtoint ptr %fec96 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fec96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %128)
  %cmp97.not = icmp eq i32 %109, %128
  br i1 %cmp97.not, label %lor.lhs.false95.cleanup_crit_edge, label %lor.lhs.false95.if.then99_crit_edge

lor.lhs.false95.if.then99_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then99

lor.lhs.false95.cleanup_crit_edge:                ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then99:                                        ; preds = %lor.lhs.false95.if.then99_crit_edge, %lor.lhs.false92.if.then99_crit_edge, %lor.lhs.false88.if.then99_crit_edge, %lor.lhs.false.if.then99_crit_edge, %if.end80.if.then99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_ok.0.in)
  %tobool100.not = icmp slt i32 %link_ok.0.in, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool103.not = icmp eq i8 %120, 0
  %or.cond = select i1 %tobool100.not, i1 true, i1 %tobool103.not
  br i1 %or.cond, label %if.then99.if.end120_crit_edge, label %if.then104

if.then99.if.end120_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then104:                                       ; preds = %if.then99
  %129 = trunc i32 %linkdnrc.0.in to i8
  %conv105 = and i8 %129, 7
  %link_down_rc = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 13
  %130 = ptrtoint ptr %link_down_rc to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv105, ptr %link_down_rc, align 2
  %call107 = tail call i32 @___ratelimit(ptr noundef nonnull @t4vf_handle_get_port_info._rs, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then104.if.end120_crit_edge, label %do.end112

if.then104.if.end120_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end112:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev113 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %131 = ptrtoint ptr %pdev_dev113 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev_dev113, align 4
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 9
  %133 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %port_id, align 2
  %conv114 = zext i8 %134 to i32
  %conv.i257 = zext i8 %conv105 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @t4vf_link_down_rc_str.reason, i32 0, i32 %conv.i257
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.18, i32 noundef %conv114, ptr noundef %136) #10
  br label %if.end120

if.end120:                                        ; preds = %do.end112, %if.then104.if.end120_crit_edge, %if.then99.if.end120_crit_edge
  %conv121 = trunc i32 %link_ok.0 to i8
  %137 = ptrtoint ptr %link_ok81 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv121, ptr %link_ok81, align 1
  %speed123 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 4
  %138 = ptrtoint ptr %speed123 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %retval.0.i, ptr %speed123, align 4
  %advertised_fc124 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 7
  %139 = ptrtoint ptr %advertised_fc124 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %110, ptr %advertised_fc124, align 4
  %fc125 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 6
  %140 = ptrtoint ptr %fc125 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %111, ptr %fc125, align 4
  %fec126 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 10
  %141 = ptrtoint ptr %fec126 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %109, ptr %fec126, align 4
  %142 = ptrtoint ptr %link_cfg to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %pcaps.0, ptr %link_cfg, align 4
  %lpacaps128 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 2
  %143 = ptrtoint ptr %lpacaps128 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %lpacaps.0, ptr %lpacaps128, align 4
  %and129 = and i32 %acaps.0, 261885951
  %acaps130 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 1
  %144 = ptrtoint ptr %acaps130 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and129, ptr %acaps130, align 4
  %and132 = and i32 %pcaps.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end120.if.end145_crit_edge, label %if.else

if.end120.if.end145_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.else:                                          ; preds = %if.end120
  %and136 = and i32 %acaps.0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.else140, label %if.else.if.end145_crit_edge

if.else.if.end145_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.else140:                                       ; preds = %if.else
  %145 = ptrtoint ptr %acaps130 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %acaps130, align 4
  %and.i258 = and i32 %acaps.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258)
  %tobool.not.i259 = icmp eq i32 %and.i258, 0
  br i1 %tobool.not.i259, label %do.body1.i262, label %if.else140.fwcap_to_speed.exit286_crit_edge

if.else140.fwcap_to_speed.exit286_crit_edge:      ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body1.i262:                                    ; preds = %if.else140
  %and2.i260 = and i32 %acaps.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i260)
  %tobool3.not.i261 = icmp eq i32 %and2.i260, 0
  br i1 %tobool3.not.i261, label %do.body7.i265, label %do.body1.i262.fwcap_to_speed.exit286_crit_edge

do.body1.i262.fwcap_to_speed.exit286_crit_edge:   ; preds = %do.body1.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body7.i265:                                    ; preds = %do.body1.i262
  %and8.i263 = and i32 %acaps.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i263)
  %tobool9.not.i264 = icmp eq i32 %and8.i263, 0
  br i1 %tobool9.not.i264, label %do.body13.i268, label %do.body7.i265.fwcap_to_speed.exit286_crit_edge

do.body7.i265.fwcap_to_speed.exit286_crit_edge:   ; preds = %do.body7.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body13.i268:                                   ; preds = %do.body7.i265
  %and14.i266 = and i32 %acaps.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i266)
  %tobool15.not.i267 = icmp eq i32 %and14.i266, 0
  br i1 %tobool15.not.i267, label %do.body19.i271, label %do.body13.i268.fwcap_to_speed.exit286_crit_edge

do.body13.i268.fwcap_to_speed.exit286_crit_edge:  ; preds = %do.body13.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body19.i271:                                   ; preds = %do.body13.i268
  %and20.i269 = and i32 %acaps.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i269)
  %tobool21.not.i270 = icmp eq i32 %and20.i269, 0
  br i1 %tobool21.not.i270, label %do.body25.i274, label %do.body19.i271.fwcap_to_speed.exit286_crit_edge

do.body19.i271.fwcap_to_speed.exit286_crit_edge:  ; preds = %do.body19.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body25.i274:                                   ; preds = %do.body19.i271
  %and26.i272 = and i32 %acaps.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i272)
  %tobool27.not.i273 = icmp eq i32 %and26.i272, 0
  br i1 %tobool27.not.i273, label %do.body31.i277, label %do.body25.i274.fwcap_to_speed.exit286_crit_edge

do.body25.i274.fwcap_to_speed.exit286_crit_edge:  ; preds = %do.body25.i274
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body31.i277:                                   ; preds = %do.body25.i274
  %and32.i275 = and i32 %acaps.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i275)
  %tobool33.not.i276 = icmp eq i32 %and32.i275, 0
  br i1 %tobool33.not.i276, label %do.body37.i280, label %do.body31.i277.fwcap_to_speed.exit286_crit_edge

do.body31.i277.fwcap_to_speed.exit286_crit_edge:  ; preds = %do.body31.i277
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body37.i280:                                   ; preds = %do.body31.i277
  %and38.i278 = and i32 %acaps.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i278)
  %tobool39.not.i279 = icmp eq i32 %and38.i278, 0
  br i1 %tobool39.not.i279, label %do.body43.i284, label %do.body37.i280.fwcap_to_speed.exit286_crit_edge

do.body37.i280.fwcap_to_speed.exit286_crit_edge:  ; preds = %do.body37.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwcap_to_speed.exit286

do.body43.i284:                                   ; preds = %do.body37.i280
  call void @__sanitizer_cov_trace_pc() #9
  %and44.i281 = and i32 %acaps.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i281)
  %tobool45.not.i282 = icmp eq i32 %and44.i281, 0
  %..i283 = select i1 %tobool45.not.i282, i32 0, i32 100
  br label %fwcap_to_speed.exit286

fwcap_to_speed.exit286:                           ; preds = %do.body43.i284, %do.body37.i280.fwcap_to_speed.exit286_crit_edge, %do.body31.i277.fwcap_to_speed.exit286_crit_edge, %do.body25.i274.fwcap_to_speed.exit286_crit_edge, %do.body19.i271.fwcap_to_speed.exit286_crit_edge, %do.body13.i268.fwcap_to_speed.exit286_crit_edge, %do.body7.i265.fwcap_to_speed.exit286_crit_edge, %do.body1.i262.fwcap_to_speed.exit286_crit_edge, %if.else140.fwcap_to_speed.exit286_crit_edge
  %retval.0.i285 = phi i32 [ 400000, %if.else140.fwcap_to_speed.exit286_crit_edge ], [ 200000, %do.body1.i262.fwcap_to_speed.exit286_crit_edge ], [ 100000, %do.body7.i265.fwcap_to_speed.exit286_crit_edge ], [ 50000, %do.body13.i268.fwcap_to_speed.exit286_crit_edge ], [ 40000, %do.body19.i271.fwcap_to_speed.exit286_crit_edge ], [ 25000, %do.body25.i274.fwcap_to_speed.exit286_crit_edge ], [ 10000, %do.body31.i277.fwcap_to_speed.exit286_crit_edge ], [ 1000, %do.body37.i280.fwcap_to_speed.exit286_crit_edge ], [ %..i283, %do.body43.i284 ]
  %speed_caps = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 3
  %146 = ptrtoint ptr %speed_caps to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %retval.0.i285, ptr %speed_caps, align 4
  br label %if.end145

if.end145:                                        ; preds = %fwcap_to_speed.exit286, %if.else.if.end145_crit_edge, %if.end120.if.end145_crit_edge
  %.sink = phi i8 [ 0, %fwcap_to_speed.exit286 ], [ 0, %if.end120.if.end145_crit_edge ], [ 1, %if.else.if.end145_crit_edge ]
  %autoneg139 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 12, i32 11
  %147 = ptrtoint ptr %autoneg139 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %.sink, ptr %autoneg139, align 4
  %pidx146 = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 5
  %148 = ptrtoint ptr %pidx146 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %pidx146, align 2
  %conv147 = zext i8 %149 to i32
  tail call void @t4vf_os_link_changed(ptr noundef %1, i32 noundef %conv147, i32 noundef %link_ok.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %lor.lhs.false95.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_handle_fw_rpl(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpl, align 4
  %shr = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %shr)
  %cond = icmp eq i32 %shr, 27
  br i1 %cond, label %sw.bb, label %do.end24

sw.bb:                                            ; preds = %entry
  %action_to_len16 = getelementptr inbounds %struct.fw_port_cmd, ptr %rpl, i32 0, i32 1
  %2 = ptrtoint ptr %action_to_len16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action_to_len16, align 4
  %shr2 = lshr i32 %3, 16
  %trunc = trunc i32 %shr2 to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %trunc, label %do.end [
    i16 3, label %sw.bb.if.end_crit_edge
    i16 10, label %sw.bb.if.end_crit_edge44
  ]

sw.bb.if.end_crit_edge44:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %5 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %shr2) #10
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge44
  %and8 = and i32 %1, 15
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 7
  %7 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1042.not = icmp eq i8 %8, 0
  br i1 %cmp1042.not, label %if.end.sw.epilog_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %pidx.043 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 11, i32 %pidx.043
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %port_id12 = getelementptr i8, ptr %10, i32 2326
  %11 = ptrtoint ptr %port_id12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_id12, align 2
  %conv13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %conv13)
  %cmp14.not = icmp eq i32 %and8, %conv13
  br i1 %cmp14.not, label %if.end17, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 2304
  tail call fastcc void @t4vf_handle_get_port_info(ptr noundef %add.ptr.i.i, ptr noundef %rpl)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %pidx.043, 1
  %13 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nports, align 4
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp ult i32 %inc, %conv9
  br i1 %cmp10, label %cleanup.for.body_crit_edge, label %cleanup.sw.epilog_crit_edge

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev25 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %pdev_dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12, i32 noundef %shr) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %cleanup.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_prep_adapter(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 -1, label %entry.if.end.i_crit_edge
    i32 -286331154, label %entry.if.end.i_crit_edge63
  ]

entry.if.end.i_crit_edge63:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge63
  tail call void @msleep(i32 noundef 500) #7
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 128
  %add.ptr.i14.i = getelementptr i8, ptr %6, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %7, label %if.end.i.if.end_crit_edge [
    i32 -1, label %if.end.i.cleanup_crit_edge
    i32 -286331154, label %if.end.i.cleanup_crit_edge64
  ]

if.end.i.cleanup_crit_edge64:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 7
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %nports, align 4
  %pmask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 4, i32 6
  %10 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %pmask, align 4
  %vpd = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %vpd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50000, ptr %vpd, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 6
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %chip, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  %17 = lshr i16 %16, 12
  %18 = zext i16 %17 to i32
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %18, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.cleanup.sink.split_crit_edge
    i32 5, label %sw.bb9
    i32 6, label %sw.bb22
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %cleanup.sink.split.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 128
  %add.ptr.i55 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb22, %sw.bb9
  %.sink62.in = phi i32 [ %25, %sw.bb22 ], [ %22, %sw.bb9 ]
  %.sink60 = phi i32 [ 96, %sw.bb22 ], [ 80, %sw.bb9 ]
  %.sink58.ph = phi i32 [ 0, %sw.bb22 ], [ 24576, %sw.bb9 ]
  %.sink62 = lshr i32 %.sink62.in, 24
  %and25 = and i32 %.sink62, 15
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip, align 4
  %or26 = or i32 %and25, %27
  %or29 = or i32 %or26, %.sink60
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %.sink59 = phi i32 [ 64, %if.end.cleanup.sink.split_crit_edge ], [ %or29, %cleanup.sink.split.sink.split ]
  %.sink58 = phi i32 [ 16384, %if.end.cleanup.sink.split_crit_edge ], [ %.sink58.ph, %cleanup.sink.split.sink.split ]
  %.sink = phi i16 [ 336, %if.end.cleanup.sink.split_crit_edge ], [ 512, %cleanup.sink.split.sink.split ]
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink59, ptr %chip, align 4
  %arch = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink58, ptr %arch, align 4
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 7, i32 5, i32 1
  %30 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %.sink, ptr %mps_tcam_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge64
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge64 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_vf_mac_acl(ptr noundef %adapter, i32 noundef %port, ptr nocapture noundef %naddr, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_acl_mac_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 415236096, ptr %cmd, align 4
  %en_to_len16 = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %en_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %en_to_len16, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull %cmd, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nmac = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %nmac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nmac, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %naddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %naddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ugt i32 %7, %conv
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %naddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %naddr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %9 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %port, label %if.end5.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %sw.bb8
    i32 0, label %sw.bb10
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr3 = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 11
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr2 = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 9
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr1 = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 7
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %macaddr0 = getelementptr inbounds %struct.fw_acl_mac_cmd, ptr %cmd, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %macaddr3.sink = phi ptr [ %macaddr3, %sw.bb ], [ %macaddr2, %sw.bb6 ], [ %macaddr1, %sw.bb8 ], [ %macaddr0, %sw.bb10 ]
  %10 = call ptr @memcpy(ptr %addr, ptr %macaddr3.sink, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4vf_get_vf_vlan_acl(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fw_acl_vlan_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 432013312, ptr %cmd, align 4
  %en_to_len16 = getelementptr inbounds %struct.fw_acl_vlan_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %en_to_len16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %en_to_len16, align 4
  %call.i = call i32 @t4vf_wr_mbox_core(ptr noundef %adapter, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull %cmd, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vlanid = getelementptr inbounds %struct.fw_acl_vlan_cmd, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %vlanid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlanid, align 4
  %conv = zext i16 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %conv, %if.then ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #7
  ret i32 %vlan.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4vf_os_portmod_changed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @t4vf_wr_mbox_core.delay, !1, !"delay", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 132, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 289, i32 5}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 893, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @t4vf_get_sge_params._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @t4vf_get_sge_params._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 926, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @t4vf_get_sge_params._entry.5, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @t4vf_get_sge_params._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 2115, i32 4}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @t4vf_handle_fw_rpl._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @t4vf_handle_fw_rpl._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 2134, i32 3}
!23 = !{ptr @t4vf_handle_fw_rpl._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @t4vf_handle_fw_rpl._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1979, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @t4vf_handle_get_port_info._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @t4vf_handle_get_port_info._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 2021, i32 4}
!32 = !{ptr @t4vf_handle_get_port_info._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @t4vf_handle_get_port_info._entry.17, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @t4vf_handle_get_port_info._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1890, i32 3}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1891, i32 3}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1892, i32 3}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1893, i32 3}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1894, i32 3}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1895, i32 3}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1896, i32 3}
!50 = !{ptr @t4vf_link_down_rc_str.reason, !51, !"reason", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1889, i32 28}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/cxgb4vf/t4vf_hw.c", i32 1901, i32 10}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 6240879}
!64 = !{i64 2156690301}
!65 = !{!"auto-init"}
!66 = !{i64 2156692296}
!67 = !{i64 6240461}
!68 = !{i64 2156692669}
!69 = !{i64 2156690691}
!70 = !{i64 2156691476}
!71 = !{i64 2156691926}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2156829020, i64 2156829531, i64 2156829057, i64 2156829113, i64 2156829147, i64 2156829171, i64 2156829212, i64 2156829233, i64 2156829261, i64 2156829295}
