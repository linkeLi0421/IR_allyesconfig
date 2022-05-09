; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hnae3_dcb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hclge_dev = type { ptr, ptr, %struct.hclge_hw, %struct.hclge_misc_vector, %struct.hclge_mac_stats, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclge_rst_stats, %struct.semaphore, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, %struct.hclge_tm_info, i16, i16, i16, ptr, ptr, i16, i16, i32, i32, %struct.timer_list, %struct.delayed_work, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.hclge_vlan_type_cfg, [4096 x [8 x i32]], [8 x i32], [8 x i32], %struct.hclge_fd_cfg, %struct.hlist_head, %struct.spinlock, i16, i32, i32, i32, i32, [128 x i32], i32, i8, i8, i16, i16, i16, i16, i16, %struct.anon.149, %struct.cpumask, ptr, ptr, %struct.hclge_comm_rss_cfg }
%struct.hclge_hw = type { %struct.hclge_comm_hw, %struct.hclge_mac, i32 }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.hclge_mac = type { i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [3 x i32], [3 x i32] }
%struct.hclge_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hclge_rst_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hclge_tm_info = type { i8, i8, [4 x i8], [8 x i8], [4 x %struct.hclge_pg_info], [8 x %struct.hclge_tc_info], i32, i8, i8 }
%struct.hclge_pg_info = type { i8, i8, i8, i32, [8 x i8] }
%struct.hclge_tc_info = type { i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hclge_vlan_type_cfg = type { i16, i16, i16, i16, i16, i16 }
%struct.hclge_fd_cfg = type { i8, i16, [2 x i32], [2 x i16], [2 x %struct.hclge_fd_key_cfg], [3 x %struct.hclge_fd_user_def_cfg] }
%struct.hclge_fd_key_cfg = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.hclge_fd_user_def_cfg = type { i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.149 = type { %union.anon.150, [8 x %struct.hclge_mac_tnl_stats] }
%union.anon.150 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hclge_mac_tnl_stats = type { i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hclge_vport = type { i16, i16, i32, i8, i8, i8, [128 x i32], %struct.hclge_port_base_vlan_config, %struct.hclge_tx_vtag_cfg, %struct.hclge_rx_vtag_cfg, i16, i16, ptr, %struct.hnae3_handle, %struct.hnae3_handle, i32, i32, i32, %struct.hclge_vf_info, i8, i8, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hclge_port_base_vlan_config = type { i16, %struct.hclge_vlan_info }
%struct.hclge_vlan_info = type { i16, i16, i16 }
%struct.hclge_tx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i16, i16, i8 }
%struct.hclge_rx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.102, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.102 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.hclge_vf_info = type { i32, [6 x i8], i32, i32, i32, i8, i8, i8 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }

@hns3_dcb_ops = internal constant { %struct.hnae3_dcb_ops, [36 x i8] } { %struct.hnae3_dcb_ops { ptr @hclge_ieee_getets, ptr @hclge_ieee_setets, ptr @hclge_ieee_getpfc, ptr @hclge_ieee_setpfc, ptr @hclge_getdcbx, ptr @hclge_setdcbx, ptr @hclge_setup_tc }, [36 x i8] zeroinitializer }, align 32
@hclge_ieee_setets.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hclge\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_ieee_setets\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set ets\0A\00", [23 x i8] zeroinitializer }, align 32
@hclge_dcb_common_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 84, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tc num checking failed, %u > tc_max(%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_dcb_common_validate\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_dcb_common_validate._entry_ptr = internal global ptr @hclge_dcb_common_validate._entry, section ".printk_index", align 4
@hclge_dcb_common_validate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"prio_tc[%d] checking failed, %u >= num_tc(%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@hclge_dcb_common_validate._entry_ptr.10 = internal global ptr @hclge_dcb_common_validate._entry.8, section ".printk_index", align 4
@hclge_dcb_common_validate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"allocated tqp checking failed, %u > tqp(%u)\0A\00", [51 x i8] zeroinitializer }, align 32
@hclge_dcb_common_validate._entry_ptr.13 = internal global ptr @hclge_dcb_common_validate._entry.11, section ".printk_index", align 4
@hclge_ets_sch_mode_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 145, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tc%u ets bw cannot be 0\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_ets_sch_mode_validate\00", [36 x i8] zeroinitializer }, align 32
@hclge_ets_sch_mode_validate._entry_ptr = internal global ptr @hclge_ets_sch_mode_validate._entry, section ".printk_index", align 4
@hclge_ieee_getpfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to update MAC stats, ret = %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_ieee_getpfc\00", [46 x i8] zeroinitializer }, align 32
@hclge_ieee_getpfc._entry_ptr = internal global ptr @hclge_ieee_getpfc._entry, section ".printk_index", align 4
@hclge_ieee_setpfc.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_ieee_setpfc\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set pfc: pfc_en=%x, pfc_map=%x, num_tc=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@hclge_setdcbx.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclge_setdcbx\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set dcbx: mode=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@hclge_setup_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 498, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to check mqprio qopt params, ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclge_setup_tc\00", [17 x i8] zeroinitializer }, align 32
@hclge_setup_tc._entry_ptr = internal global ptr @hclge_setup_tc._entry, section ".printk_index", align 4
@hclge_setup_tc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 528, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"failed to destroy mqprio, will active after reset, ret = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hclge_setup_tc._entry_ptr.27 = internal global ptr @hclge_setup_tc._entry.24, section ".printk_index", align 4
@hclge_setup_tc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 534, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to roll back tc configuration\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_setup_tc._entry_ptr.30 = internal global ptr @hclge_setup_tc._entry.28, section ".printk_index", align 4
@hclge_mqprio_qopt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qopt queue count must be power of 2\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_mqprio_qopt_check\00", [40 x i8] zeroinitializer }, align 32
@hclge_mqprio_qopt_check._entry_ptr = internal global ptr @hclge_mqprio_qopt_check._entry, section ".printk_index", align 4
@hclge_mqprio_qopt_check._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 420, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"qopt queue count should be no more than %u\0A\00", [52 x i8] zeroinitializer }, align 32
@hclge_mqprio_qopt_check._entry_ptr.35 = internal global ptr @hclge_mqprio_qopt_check._entry.33, section ".printk_index", align 4
@hclge_mqprio_qopt_check._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 426, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"qopt queue offset must start from 0, and being continuous\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_mqprio_qopt_check._entry_ptr.38 = internal global ptr @hclge_mqprio_qopt_check._entry.36, section ".printk_index", align 4
@hclge_mqprio_qopt_check._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qopt tx_rate is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@hclge_mqprio_qopt_check._entry_ptr.41 = internal global ptr @hclge_mqprio_qopt_check._entry.39, section ".printk_index", align 4
@hclge_mqprio_qopt_check._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"qopt queue count sum should be less than %u\0A\00", [51 x i8] zeroinitializer }, align 32
@hclge_mqprio_qopt_check._entry_ptr.44 = internal global ptr @hclge_mqprio_qopt_check._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"hns3_dcb_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 541, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 251, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 82, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 90, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 98, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 144, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 299, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 339, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 380, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 497, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 526, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 533, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 412, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 418, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 425, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 431, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [58 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 440, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @hclge_dcb_common_validate._entry, ptr @hclge_dcb_common_validate._entry.11, ptr @hclge_dcb_common_validate._entry.8, ptr @hclge_dcb_common_validate._entry_ptr, ptr @hclge_dcb_common_validate._entry_ptr.10, ptr @hclge_dcb_common_validate._entry_ptr.13, ptr @hclge_ets_sch_mode_validate._entry, ptr @hclge_ets_sch_mode_validate._entry_ptr, ptr @hclge_ieee_getpfc._entry, ptr @hclge_ieee_getpfc._entry_ptr, ptr @hclge_mqprio_qopt_check._entry, ptr @hclge_mqprio_qopt_check._entry.33, ptr @hclge_mqprio_qopt_check._entry.36, ptr @hclge_mqprio_qopt_check._entry.39, ptr @hclge_mqprio_qopt_check._entry.42, ptr @hclge_mqprio_qopt_check._entry_ptr, ptr @hclge_mqprio_qopt_check._entry_ptr.35, ptr @hclge_mqprio_qopt_check._entry_ptr.38, ptr @hclge_mqprio_qopt_check._entry_ptr.41, ptr @hclge_mqprio_qopt_check._entry_ptr.44, ptr @hclge_setup_tc._entry, ptr @hclge_setup_tc._entry.24, ptr @hclge_setup_tc._entry.28, ptr @hclge_setup_tc._entry_ptr, ptr @hclge_setup_tc._entry_ptr.27, ptr @hclge_setup_tc._entry_ptr.30, ptr @hns3_dcb_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns3_dcb_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dcb_common_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dcb_common_validate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_dcb_common_validate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ets_sch_mode_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ieee_getpfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_setup_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_setup_tc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_setup_tc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mqprio_qopt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mqprio_qopt_check._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mqprio_qopt_check._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mqprio_qopt_check._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mqprio_qopt_check._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hclge_dcb_ops_set(ptr nocapture noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vport_id = getelementptr inbounds %struct.hclge_vport, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vport_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not = icmp eq i16 %8, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dcb_ops = getelementptr inbounds %struct.hclge_vport, ptr %1, i32 0, i32 13, i32 5, i32 0, i32 10
  %9 = ptrtoint ptr %dcb_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hns3_dcb_ops, ptr %dcb_ops, align 4
  %dcbx_cap = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 36
  %10 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %dcbx_cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ieee_getets(ptr noundef %h, ptr noundef writeonly %ets) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = getelementptr inbounds i8, ptr %ets, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 58)
  %4 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ets, align 1
  %tc_max.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %tc_max.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tc_max.i, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %2, align 1
  %arrayidx.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx2.i, align 1
  %arrayidx5.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx6.i, align 1
  %tc_sch_mode.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %tc_sch_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tc_sch_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp9.i = icmp eq i8 %15, 0
  %spec.select.i = select i1 %cmp9.i, i8 0, i8 2
  %16 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %16, align 1
  %arrayidx.1.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx2.1.i, align 1
  %arrayidx5.1.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx5.1.i, align 1
  %arrayidx6.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx6.1.i, align 1
  %tc_sch_mode.1.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 1, i32 1
  %24 = ptrtoint ptr %tc_sch_mode.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tc_sch_mode.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp9.1.i = icmp eq i8 %25, 0
  %.sink33.i = select i1 %cmp9.1.i, i8 0, i8 2
  %26 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink33.i, ptr %26, align 1
  %arrayidx.2.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx2.2.i, align 1
  %arrayidx5.2.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx5.2.i, align 1
  %arrayidx6.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx6.2.i, align 1
  %tc_sch_mode.2.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 2, i32 1
  %34 = ptrtoint ptr %tc_sch_mode.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tc_sch_mode.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp9.2.i = icmp eq i8 %35, 0
  %.sink34.i = select i1 %cmp9.2.i, i8 0, i8 2
  %36 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink34.i, ptr %36, align 1
  %arrayidx.3.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx2.3.i, align 1
  %arrayidx5.3.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx5.3.i, align 1
  %arrayidx6.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx6.3.i, align 1
  %tc_sch_mode.3.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 3, i32 1
  %44 = ptrtoint ptr %tc_sch_mode.3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tc_sch_mode.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp9.3.i = icmp eq i8 %45, 0
  %.sink35.i = select i1 %cmp9.3.i, i8 0, i8 2
  %46 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink35.i, ptr %46, align 1
  %arrayidx.4.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 4
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %50 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx2.4.i, align 1
  %arrayidx5.4.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 4
  %51 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx5.4.i, align 1
  %arrayidx6.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %53 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx6.4.i, align 1
  %tc_sch_mode.4.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 4, i32 1
  %54 = ptrtoint ptr %tc_sch_mode.4.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tc_sch_mode.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp9.4.i = icmp eq i8 %55, 0
  %.sink36.i = select i1 %cmp9.4.i, i8 0, i8 2
  %56 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink36.i, ptr %56, align 1
  %arrayidx.5.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 5
  %58 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx2.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %60 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx2.5.i, align 1
  %arrayidx5.5.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 5
  %61 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx5.5.i, align 1
  %arrayidx6.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %63 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx6.5.i, align 1
  %tc_sch_mode.5.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 5, i32 1
  %64 = ptrtoint ptr %tc_sch_mode.5.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tc_sch_mode.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp9.5.i = icmp eq i8 %65, 0
  %.sink37.i = select i1 %cmp9.5.i, i8 0, i8 2
  %66 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink37.i, ptr %66, align 1
  %arrayidx.6.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 6
  %68 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx2.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %70 = ptrtoint ptr %arrayidx2.6.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx2.6.i, align 1
  %arrayidx5.6.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 6
  %71 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx5.6.i, align 1
  %arrayidx6.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %73 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx6.6.i, align 1
  %tc_sch_mode.6.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 6, i32 1
  %74 = ptrtoint ptr %tc_sch_mode.6.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tc_sch_mode.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp9.6.i = icmp eq i8 %75, 0
  %.sink38.i = select i1 %cmp9.6.i, i8 0, i8 2
  %76 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink38.i, ptr %76, align 1
  %arrayidx.7.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3, i32 7
  %78 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx2.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %80 = ptrtoint ptr %arrayidx2.7.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx2.7.i, align 1
  %arrayidx5.7.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 4, i32 7
  %81 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx5.7.i, align 1
  %arrayidx6.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %83 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx6.7.i, align 1
  %tc_sch_mode.7.i = getelementptr %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 5, i32 7, i32 1
  %84 = ptrtoint ptr %tc_sch_mode.7.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tc_sch_mode.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp9.7.i = icmp eq i8 %85, 0
  %.sink39.i = select i1 %cmp9.7.i, i8 0, i8 2
  %86 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink39.i, ptr %86, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ieee_setets(ptr noundef %h, ptr noundef %ets) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %0 = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %dcbx_cap = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcbx_cap, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flag = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 56
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %and2 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp7.not.i.i = icmp ne i8 %11, %13
  %arrayidx.1.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx5.1.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp7.not.1.i.i = icmp ne i8 %15, %17
  %arrayidx.2.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx5.2.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx5.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp7.not.2.i.i = icmp ne i8 %19, %21
  %arrayidx.3.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx5.3.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp7.not.3.i.i = icmp ne i8 %23, %25
  %arrayidx.4.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx5.4.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 4
  %28 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp7.not.4.i.i = icmp ne i8 %27, %29
  %arrayidx.5.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %30 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx5.5.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 5
  %32 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp7.not.5.i.i = icmp ne i8 %31, %33
  %arrayidx.6.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.6.i.i, align 1
  %arrayidx5.6.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 6
  %36 = ptrtoint ptr %arrayidx5.6.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx5.6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp7.not.6.i.i = icmp ne i8 %35, %37
  %arrayidx.7.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %38 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.7.i.i, align 1
  %arrayidx5.7.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 7
  %40 = ptrtoint ptr %arrayidx5.7.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp7.not.7.i.i = icmp ne i8 %39, %41
  %42 = select i1 %cmp7.not.7.i.i, i1 true, i1 %cmp7.not.6.i.i
  %43 = select i1 %42, i1 true, i1 %cmp7.not.5.i.i
  %44 = select i1 %43, i1 true, i1 %cmp7.not.4.i.i
  %45 = select i1 %44, i1 true, i1 %cmp7.not.3.i.i
  %46 = select i1 %45, i1 true, i1 %cmp7.not.2.i.i
  %47 = select i1 %46, i1 true, i1 %cmp7.not.1.i.i
  %narrow = select i1 %47, i1 true, i1 %cmp7.not.i.i
  %map_changed.7 = zext i1 %narrow to i8
  %48 = tail call i8 @llvm.umax.i8(i8 %15, i8 %11) #6
  %49 = tail call i8 @llvm.umax.i8(i8 %19, i8 %48) #6
  %50 = tail call i8 @llvm.umax.i8(i8 %23, i8 %49) #6
  %51 = tail call i8 @llvm.umax.i8(i8 %27, i8 %50) #6
  %52 = tail call i8 @llvm.umax.i8(i8 %31, i8 %51) #6
  %53 = tail call i8 @llvm.umax.i8(i8 %35, i8 %52) #6
  %54 = tail call i8 @llvm.umax.i8(i8 %39, i8 %53) #6
  %add.i.i = add i8 %54, 1
  %call1.i = tail call fastcc i32 @hclge_dcb_common_validate(ptr noundef %4, i8 noundef zeroext %add.i.i, ptr noundef %arrayidx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.body.i.i.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i.preheader:                           ; preds = %if.end
  %arrayidx.i23.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %55 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i23.i, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i8 %56, label %for.body.i.i.preheader.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 2, label %sw.bb8.i.i
  ]

for.body.i.i.preheader.cleanup_crit_edge:         ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.i:                                        ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %tc_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tc_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp6.not.i.i = icmp eq i8 %59, 0
  %spec.select111 = select i1 %cmp6.not.i.i, i8 %map_changed.7, i8 1
  br label %for.inc.i.i

sw.bb8.i.i:                                       ; preds = %for.body.i.i.preheader
  %arrayidx10.i.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %60 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i, label %sw.bb8.i.i.do.end.i.i_crit_edge, label %if.end13.i.i

sw.bb8.i.i.do.end.i.i_crit_edge:                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb8.i.i.7.do.end.i.i_crit_edge, %sw.bb8.i.i.6.do.end.i.i_crit_edge, %sw.bb8.i.i.5.do.end.i.i_crit_edge, %sw.bb8.i.i.4.do.end.i.i_crit_edge, %sw.bb8.i.i.3.do.end.i.i_crit_edge, %sw.bb8.i.i.2.do.end.i.i_crit_edge, %sw.bb8.i.i.1.do.end.i.i_crit_edge, %sw.bb8.i.i.do.end.i.i_crit_edge
  %indvars.iv.i.i.lcssa118 = phi i32 [ 0, %sw.bb8.i.i.do.end.i.i_crit_edge ], [ 1, %sw.bb8.i.i.1.do.end.i.i_crit_edge ], [ 2, %sw.bb8.i.i.2.do.end.i.i_crit_edge ], [ 3, %sw.bb8.i.i.3.do.end.i.i_crit_edge ], [ 4, %sw.bb8.i.i.4.do.end.i.i_crit_edge ], [ 5, %sw.bb8.i.i.5.do.end.i.i_crit_edge ], [ 6, %sw.bb8.i.i.6.do.end.i.i_crit_edge ], [ 7, %sw.bb8.i.i.7.do.end.i.i_crit_edge ]
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %4, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, i32 noundef %indvars.iv.i.i.lcssa118) #9
  br label %cleanup

if.end13.i.i:                                     ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 0, i32 1
  %64 = ptrtoint ptr %tc_sch_mode18.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tc_sch_mode18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp20.not.i.i = icmp eq i8 %65, 1
  %spec.select112 = select i1 %cmp20.not.i.i, i8 %map_changed.7, i8 1
  %conv27.i.i = zext i8 %61 to i32
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %sw.bb.i.i
  %map_changed.10 = phi i8 [ %spec.select112, %if.end13.i.i ], [ %spec.select111, %sw.bb.i.i ]
  %has_ets_tc.1.off0.i.i = phi i1 [ true, %if.end13.i.i ], [ false, %sw.bb.i.i ]
  %total_ets_bw.1.i.i = phi i32 [ %conv27.i.i, %if.end13.i.i ], [ 0, %sw.bb.i.i ]
  %arrayidx.i23.i.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx.i23.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i23.i.1, align 1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %67, label %for.inc.i.i.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.1
    i8 2, label %sw.bb8.i.i.1
  ]

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.1:                                     ; preds = %for.inc.i.i
  %arrayidx10.i.i.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %arrayidx10.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx10.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i.1 = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i.1, label %sw.bb8.i.i.1.do.end.i.i_crit_edge, label %if.end13.i.i.1

sw.bb8.i.i.1.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.1:                                   ; preds = %sw.bb8.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.1 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %tc_sch_mode18.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tc_sch_mode18.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp20.not.i.i.1 = icmp eq i8 %72, 1
  %spec.select112.1 = select i1 %cmp20.not.i.i.1, i8 %map_changed.10, i8 1
  %conv27.i.i.1 = zext i8 %70 to i32
  %add.i25.i.1 = add nuw nsw i32 %total_ets_bw.1.i.i, %conv27.i.i.1
  br label %for.inc.i.i.1

sw.bb.i.i.1:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.1 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 1, i32 1
  %73 = ptrtoint ptr %tc_sch_mode.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tc_sch_mode.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp6.not.i.i.1 = icmp eq i8 %74, 0
  %spec.select111.1 = select i1 %cmp6.not.i.i.1, i8 %map_changed.10, i8 1
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %sw.bb.i.i.1, %if.end13.i.i.1
  %map_changed.10.1 = phi i8 [ %spec.select112.1, %if.end13.i.i.1 ], [ %spec.select111.1, %sw.bb.i.i.1 ]
  %has_ets_tc.1.off0.i.i.1 = phi i1 [ true, %if.end13.i.i.1 ], [ %has_ets_tc.1.off0.i.i, %sw.bb.i.i.1 ]
  %total_ets_bw.1.i.i.1 = phi i32 [ %add.i25.i.1, %if.end13.i.i.1 ], [ %total_ets_bw.1.i.i, %sw.bb.i.i.1 ]
  %arrayidx.i23.i.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %arrayidx.i23.i.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i23.i.2, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %76, label %for.inc.i.i.1.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.2
    i8 2, label %sw.bb8.i.i.2
  ]

for.inc.i.i.1.cleanup_crit_edge:                  ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.2:                                     ; preds = %for.inc.i.i.1
  %arrayidx10.i.i.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %78 = ptrtoint ptr %arrayidx10.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.i.2 = icmp eq i8 %79, 0
  br i1 %tobool.not.i.i.2, label %sw.bb8.i.i.2.do.end.i.i_crit_edge, label %if.end13.i.i.2

sw.bb8.i.i.2.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.2:                                   ; preds = %sw.bb8.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.2 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 2, i32 1
  %80 = ptrtoint ptr %tc_sch_mode18.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tc_sch_mode18.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp20.not.i.i.2 = icmp eq i8 %81, 1
  %spec.select112.2 = select i1 %cmp20.not.i.i.2, i8 %map_changed.10.1, i8 1
  %conv27.i.i.2 = zext i8 %79 to i32
  %add.i25.i.2 = add nuw nsw i32 %total_ets_bw.1.i.i.1, %conv27.i.i.2
  br label %for.inc.i.i.2

sw.bb.i.i.2:                                      ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.2 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 2, i32 1
  %82 = ptrtoint ptr %tc_sch_mode.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tc_sch_mode.i.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp6.not.i.i.2 = icmp eq i8 %83, 0
  %spec.select111.2 = select i1 %cmp6.not.i.i.2, i8 %map_changed.10.1, i8 1
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %sw.bb.i.i.2, %if.end13.i.i.2
  %map_changed.10.2 = phi i8 [ %spec.select112.2, %if.end13.i.i.2 ], [ %spec.select111.2, %sw.bb.i.i.2 ]
  %has_ets_tc.1.off0.i.i.2 = phi i1 [ true, %if.end13.i.i.2 ], [ %has_ets_tc.1.off0.i.i.1, %sw.bb.i.i.2 ]
  %total_ets_bw.1.i.i.2 = phi i32 [ %add.i25.i.2, %if.end13.i.i.2 ], [ %total_ets_bw.1.i.i.1, %sw.bb.i.i.2 ]
  %arrayidx.i23.i.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %arrayidx.i23.i.3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i23.i.3, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %85, label %for.inc.i.i.2.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.3
    i8 2, label %sw.bb8.i.i.3
  ]

for.inc.i.i.2.cleanup_crit_edge:                  ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.3:                                     ; preds = %for.inc.i.i.2
  %arrayidx10.i.i.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %87 = ptrtoint ptr %arrayidx10.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx10.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i.3 = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i.3, label %sw.bb8.i.i.3.do.end.i.i_crit_edge, label %if.end13.i.i.3

sw.bb8.i.i.3.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.3:                                   ; preds = %sw.bb8.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.3 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 3, i32 1
  %89 = ptrtoint ptr %tc_sch_mode18.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tc_sch_mode18.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp20.not.i.i.3 = icmp eq i8 %90, 1
  %spec.select112.3 = select i1 %cmp20.not.i.i.3, i8 %map_changed.10.2, i8 1
  %conv27.i.i.3 = zext i8 %88 to i32
  %add.i25.i.3 = add nuw nsw i32 %total_ets_bw.1.i.i.2, %conv27.i.i.3
  br label %for.inc.i.i.3

sw.bb.i.i.3:                                      ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.3 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 3, i32 1
  %91 = ptrtoint ptr %tc_sch_mode.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tc_sch_mode.i.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp6.not.i.i.3 = icmp eq i8 %92, 0
  %spec.select111.3 = select i1 %cmp6.not.i.i.3, i8 %map_changed.10.2, i8 1
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %sw.bb.i.i.3, %if.end13.i.i.3
  %map_changed.10.3 = phi i8 [ %spec.select112.3, %if.end13.i.i.3 ], [ %spec.select111.3, %sw.bb.i.i.3 ]
  %has_ets_tc.1.off0.i.i.3 = phi i1 [ true, %if.end13.i.i.3 ], [ %has_ets_tc.1.off0.i.i.2, %sw.bb.i.i.3 ]
  %total_ets_bw.1.i.i.3 = phi i32 [ %add.i25.i.3, %if.end13.i.i.3 ], [ %total_ets_bw.1.i.i.2, %sw.bb.i.i.3 ]
  %arrayidx.i23.i.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %93 = ptrtoint ptr %arrayidx.i23.i.4 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i23.i.4, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %94, label %for.inc.i.i.3.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.4
    i8 2, label %sw.bb8.i.i.4
  ]

for.inc.i.i.3.cleanup_crit_edge:                  ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.4:                                     ; preds = %for.inc.i.i.3
  %arrayidx10.i.i.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %96 = ptrtoint ptr %arrayidx10.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx10.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.4 = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i.4, label %sw.bb8.i.i.4.do.end.i.i_crit_edge, label %if.end13.i.i.4

sw.bb8.i.i.4.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.4:                                   ; preds = %sw.bb8.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.4 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 4, i32 1
  %98 = ptrtoint ptr %tc_sch_mode18.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tc_sch_mode18.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp20.not.i.i.4 = icmp eq i8 %99, 1
  %spec.select112.4 = select i1 %cmp20.not.i.i.4, i8 %map_changed.10.3, i8 1
  %conv27.i.i.4 = zext i8 %97 to i32
  %add.i25.i.4 = add nuw nsw i32 %total_ets_bw.1.i.i.3, %conv27.i.i.4
  br label %for.inc.i.i.4

sw.bb.i.i.4:                                      ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.4 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 4, i32 1
  %100 = ptrtoint ptr %tc_sch_mode.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tc_sch_mode.i.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp6.not.i.i.4 = icmp eq i8 %101, 0
  %spec.select111.4 = select i1 %cmp6.not.i.i.4, i8 %map_changed.10.3, i8 1
  br label %for.inc.i.i.4

for.inc.i.i.4:                                    ; preds = %sw.bb.i.i.4, %if.end13.i.i.4
  %map_changed.10.4 = phi i8 [ %spec.select112.4, %if.end13.i.i.4 ], [ %spec.select111.4, %sw.bb.i.i.4 ]
  %has_ets_tc.1.off0.i.i.4 = phi i1 [ true, %if.end13.i.i.4 ], [ %has_ets_tc.1.off0.i.i.3, %sw.bb.i.i.4 ]
  %total_ets_bw.1.i.i.4 = phi i32 [ %add.i25.i.4, %if.end13.i.i.4 ], [ %total_ets_bw.1.i.i.3, %sw.bb.i.i.4 ]
  %arrayidx.i23.i.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %102 = ptrtoint ptr %arrayidx.i23.i.5 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i23.i.5, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %103, label %for.inc.i.i.4.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.5
    i8 2, label %sw.bb8.i.i.5
  ]

for.inc.i.i.4.cleanup_crit_edge:                  ; preds = %for.inc.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.5:                                     ; preds = %for.inc.i.i.4
  %arrayidx10.i.i.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %105 = ptrtoint ptr %arrayidx10.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx10.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i.i.5 = icmp eq i8 %106, 0
  br i1 %tobool.not.i.i.5, label %sw.bb8.i.i.5.do.end.i.i_crit_edge, label %if.end13.i.i.5

sw.bb8.i.i.5.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.5:                                   ; preds = %sw.bb8.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.5 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 5, i32 1
  %107 = ptrtoint ptr %tc_sch_mode18.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tc_sch_mode18.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp20.not.i.i.5 = icmp eq i8 %108, 1
  %spec.select112.5 = select i1 %cmp20.not.i.i.5, i8 %map_changed.10.4, i8 1
  %conv27.i.i.5 = zext i8 %106 to i32
  %add.i25.i.5 = add nuw nsw i32 %total_ets_bw.1.i.i.4, %conv27.i.i.5
  br label %for.inc.i.i.5

sw.bb.i.i.5:                                      ; preds = %for.inc.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.5 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 5, i32 1
  %109 = ptrtoint ptr %tc_sch_mode.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tc_sch_mode.i.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp6.not.i.i.5 = icmp eq i8 %110, 0
  %spec.select111.5 = select i1 %cmp6.not.i.i.5, i8 %map_changed.10.4, i8 1
  br label %for.inc.i.i.5

for.inc.i.i.5:                                    ; preds = %sw.bb.i.i.5, %if.end13.i.i.5
  %map_changed.10.5 = phi i8 [ %spec.select112.5, %if.end13.i.i.5 ], [ %spec.select111.5, %sw.bb.i.i.5 ]
  %has_ets_tc.1.off0.i.i.5 = phi i1 [ true, %if.end13.i.i.5 ], [ %has_ets_tc.1.off0.i.i.4, %sw.bb.i.i.5 ]
  %total_ets_bw.1.i.i.5 = phi i32 [ %add.i25.i.5, %if.end13.i.i.5 ], [ %total_ets_bw.1.i.i.4, %sw.bb.i.i.5 ]
  %arrayidx.i23.i.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %111 = ptrtoint ptr %arrayidx.i23.i.6 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i23.i.6, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %112, label %for.inc.i.i.5.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.6
    i8 2, label %sw.bb8.i.i.6
  ]

for.inc.i.i.5.cleanup_crit_edge:                  ; preds = %for.inc.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.6:                                     ; preds = %for.inc.i.i.5
  %arrayidx10.i.i.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %114 = ptrtoint ptr %arrayidx10.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx10.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i.6 = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i.6, label %sw.bb8.i.i.6.do.end.i.i_crit_edge, label %if.end13.i.i.6

sw.bb8.i.i.6.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.6:                                   ; preds = %sw.bb8.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.6 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 6, i32 1
  %116 = ptrtoint ptr %tc_sch_mode18.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tc_sch_mode18.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp20.not.i.i.6 = icmp eq i8 %117, 1
  %spec.select112.6 = select i1 %cmp20.not.i.i.6, i8 %map_changed.10.5, i8 1
  %conv27.i.i.6 = zext i8 %115 to i32
  %add.i25.i.6 = add nuw nsw i32 %total_ets_bw.1.i.i.5, %conv27.i.i.6
  br label %for.inc.i.i.6

sw.bb.i.i.6:                                      ; preds = %for.inc.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.6 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 6, i32 1
  %118 = ptrtoint ptr %tc_sch_mode.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %tc_sch_mode.i.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp6.not.i.i.6 = icmp eq i8 %119, 0
  %spec.select111.6 = select i1 %cmp6.not.i.i.6, i8 %map_changed.10.5, i8 1
  br label %for.inc.i.i.6

for.inc.i.i.6:                                    ; preds = %sw.bb.i.i.6, %if.end13.i.i.6
  %map_changed.10.6 = phi i8 [ %spec.select112.6, %if.end13.i.i.6 ], [ %spec.select111.6, %sw.bb.i.i.6 ]
  %has_ets_tc.1.off0.i.i.6 = phi i1 [ true, %if.end13.i.i.6 ], [ %has_ets_tc.1.off0.i.i.5, %sw.bb.i.i.6 ]
  %total_ets_bw.1.i.i.6 = phi i32 [ %add.i25.i.6, %if.end13.i.i.6 ], [ %total_ets_bw.1.i.i.5, %sw.bb.i.i.6 ]
  %arrayidx.i23.i.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %120 = ptrtoint ptr %arrayidx.i23.i.7 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i23.i.7, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %121, label %for.inc.i.i.6.cleanup_crit_edge [
    i8 0, label %sw.bb.i.i.7
    i8 2, label %sw.bb8.i.i.7
  ]

for.inc.i.i.6.cleanup_crit_edge:                  ; preds = %for.inc.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.i.i.7:                                     ; preds = %for.inc.i.i.6
  %arrayidx10.i.i.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %123 = ptrtoint ptr %arrayidx10.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx10.i.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.i.7 = icmp eq i8 %124, 0
  br i1 %tobool.not.i.i.7, label %sw.bb8.i.i.7.do.end.i.i_crit_edge, label %if.end13.i.i.7

sw.bb8.i.i.7.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end13.i.i.7:                                   ; preds = %sw.bb8.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode18.i.i.7 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 7, i32 1
  %125 = ptrtoint ptr %tc_sch_mode18.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tc_sch_mode18.i.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp20.not.i.i.7 = icmp eq i8 %126, 1
  %spec.select112.7 = select i1 %cmp20.not.i.i.7, i8 %map_changed.10.6, i8 1
  %conv27.i.i.7 = zext i8 %124 to i32
  %add.i25.i.7 = add nuw nsw i32 %total_ets_bw.1.i.i.6, %conv27.i.i.7
  br label %for.inc.i.i.7

sw.bb.i.i.7:                                      ; preds = %for.inc.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i.i.7 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 7, i32 1
  %127 = ptrtoint ptr %tc_sch_mode.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %tc_sch_mode.i.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp6.not.i.i.7 = icmp eq i8 %128, 0
  %spec.select111.7 = select i1 %cmp6.not.i.i.7, i8 %map_changed.10.6, i8 1
  br label %for.inc.i.i.7

for.inc.i.i.7:                                    ; preds = %sw.bb.i.i.7, %if.end13.i.i.7
  %map_changed.10.7 = phi i8 [ %spec.select112.7, %if.end13.i.i.7 ], [ %spec.select111.7, %sw.bb.i.i.7 ]
  %has_ets_tc.1.off0.i.i.7 = phi i1 [ true, %if.end13.i.i.7 ], [ %has_ets_tc.1.off0.i.i.6, %sw.bb.i.i.7 ]
  %total_ets_bw.1.i.i.7 = phi i32 [ %add.i25.i.7, %if.end13.i.i.7 ], [ %total_ets_bw.1.i.i.6, %sw.bb.i.i.7 ]
  %has_ets_tc.0.off0.not.i.i = xor i1 %has_ets_tc.1.off0.i.i.7, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %total_ets_bw.1.i.i.7)
  %cmp30.not.i.i = icmp eq i32 %total_ets_bw.1.i.i.7, 100
  %or.cond.i.i = select i1 %has_ets_tc.0.off0.not.i.i, i1 true, i1 %cmp30.not.i.i
  br i1 %or.cond.i.i, label %if.end5.i, label %for.inc.i.i.7.cleanup_crit_edge

for.inc.i.i.7.cleanup_crit_edge:                  ; preds = %for.inc.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %for.inc.i.i.7
  %tm_info.i = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 37
  %129 = ptrtoint ptr %tm_info.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %tm_info.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i.i, i8 %130)
  %cmp.not.i = icmp eq i8 %add.i.i, %130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %map_changed.10.7)
  %tobool8.not = icmp eq i8 %map_changed.10.7, 0
  %or.cond = select i1 %cmp.not.i, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.end5.i.if.end27_crit_edge, label %do.body

if.end5.i.if.end27_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body:                                          ; preds = %if.end5.i
  %msg_enable = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 11
  %131 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msg_enable, align 8
  %and10 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body.do.end22_crit_edge, label %do.body13

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hclge_ieee_setets.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hclge_ieee_setets, %if.then18)) #6
          to label %do.end22 [label %if.then18], !srcloc !85

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hclge_ieee_setets.__UNIQUE_ID_ddebug379, ptr noundef %2, ptr noundef nonnull @.str.3) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body13, %do.body.do.end22_crit_edge
  %call.i = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i79 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i79, label %hclge_notify_down_uinit.exit, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hclge_notify_down_uinit.exit:                     ; preds = %do.end22
  %call1.i80 = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool24.not = icmp eq i32 %call1.i80, 0
  br i1 %tobool24.not, label %hclge_notify_down_uinit.exit.if.end27_crit_edge, label %hclge_notify_down_uinit.exit.cleanup_crit_edge

hclge_notify_down_uinit.exit.cleanup_crit_edge:   ; preds = %hclge_notify_down_uinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hclge_notify_down_uinit.exit.if.end27_crit_edge:  ; preds = %hclge_notify_down_uinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %hclge_notify_down_uinit.exit.if.end27_crit_edge, %if.end5.i.if.end27_crit_edge
  tail call void @hclge_tm_schd_info_update(ptr noundef %4, i8 noundef zeroext %add.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add.i.i)
  %cmp = icmp ugt i8 %add.i.i, 1
  %133 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flag, align 4
  %and33 = and i32 %134, -5
  %masksel = select i1 %cmp, i32 4, i32 0
  %storemerge = or i32 %and33, %masksel
  store i32 %storemerge, ptr %flag, align 4
  %135 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i23.i, align 1
  %137 = zext i8 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %136, label %if.end27.err_out_crit_edge [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb9.i
  ]

if.end27.err_out_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb.i:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 0, i32 1
  %138 = ptrtoint ptr %tc_sch_mode.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %tc_sch_mode.i, align 1
  br label %for.inc.i

sw.bb9.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 0, i32 1
  %139 = ptrtoint ptr %tc_sch_mode14.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %tc_sch_mode14.i, align 1
  %arrayidx16.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %140 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx16.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb9.i, %sw.bb.i
  %.sink.i = phi i8 [ 0, %sw.bb.i ], [ %141, %sw.bb9.i ]
  %arrayidx8.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 0
  %142 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %.sink.i, ptr %arrayidx8.i, align 1
  %143 = ptrtoint ptr %arrayidx.i23.i.1 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i23.i.1, align 1
  %145 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %144, label %for.inc.i.err_out_crit_edge [
    i8 0, label %sw.bb.1.i
    i8 2, label %sw.bb9.1.i
  ]

for.inc.i.err_out_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.1.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 1, i32 1
  %146 = ptrtoint ptr %tc_sch_mode14.1.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %tc_sch_mode14.1.i, align 1
  %arrayidx16.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx16.1.i, align 1
  br label %for.inc.1.i

sw.bb.1.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.1.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 1, i32 1
  %149 = ptrtoint ptr %tc_sch_mode.1.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %tc_sch_mode.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb.1.i, %sw.bb9.1.i
  %.sink38.i = phi i8 [ 0, %sw.bb.1.i ], [ %148, %sw.bb9.1.i ]
  %arrayidx8.1.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %.sink38.i, ptr %arrayidx8.1.i, align 1
  %151 = ptrtoint ptr %arrayidx.i23.i.2 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i23.i.2, align 1
  %153 = zext i8 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %152, label %for.inc.1.i.err_out_crit_edge [
    i8 0, label %sw.bb.2.i
    i8 2, label %sw.bb9.2.i
  ]

for.inc.1.i.err_out_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.2.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 2, i32 1
  %154 = ptrtoint ptr %tc_sch_mode14.2.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %tc_sch_mode14.2.i, align 1
  %arrayidx16.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %155 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx16.2.i, align 1
  br label %for.inc.2.i

sw.bb.2.i:                                        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.2.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 2, i32 1
  %157 = ptrtoint ptr %tc_sch_mode.2.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %tc_sch_mode.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.bb.2.i, %sw.bb9.2.i
  %.sink39.i = phi i8 [ 0, %sw.bb.2.i ], [ %156, %sw.bb9.2.i ]
  %arrayidx8.2.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 2
  %158 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %.sink39.i, ptr %arrayidx8.2.i, align 1
  %159 = ptrtoint ptr %arrayidx.i23.i.3 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx.i23.i.3, align 1
  %161 = zext i8 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %160, label %for.inc.2.i.err_out_crit_edge [
    i8 0, label %sw.bb.3.i
    i8 2, label %sw.bb9.3.i
  ]

for.inc.2.i.err_out_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.3.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 3, i32 1
  %162 = ptrtoint ptr %tc_sch_mode14.3.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %tc_sch_mode14.3.i, align 1
  %arrayidx16.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %163 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx16.3.i, align 1
  br label %for.inc.3.i

sw.bb.3.i:                                        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.3.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 3, i32 1
  %165 = ptrtoint ptr %tc_sch_mode.3.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %tc_sch_mode.3.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.bb.3.i, %sw.bb9.3.i
  %.sink40.i = phi i8 [ 0, %sw.bb.3.i ], [ %164, %sw.bb9.3.i ]
  %arrayidx8.3.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 3
  %166 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %.sink40.i, ptr %arrayidx8.3.i, align 1
  %167 = ptrtoint ptr %arrayidx.i23.i.4 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx.i23.i.4, align 1
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %168, label %for.inc.3.i.err_out_crit_edge [
    i8 0, label %sw.bb.4.i
    i8 2, label %sw.bb9.4.i
  ]

for.inc.3.i.err_out_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.4.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 4, i32 1
  %170 = ptrtoint ptr %tc_sch_mode14.4.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %tc_sch_mode14.4.i, align 1
  %arrayidx16.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %171 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx16.4.i, align 1
  br label %for.inc.4.i

sw.bb.4.i:                                        ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.4.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 4, i32 1
  %173 = ptrtoint ptr %tc_sch_mode.4.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %tc_sch_mode.4.i, align 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %sw.bb.4.i, %sw.bb9.4.i
  %.sink41.i = phi i8 [ 0, %sw.bb.4.i ], [ %172, %sw.bb9.4.i ]
  %arrayidx8.4.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 4
  %174 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %.sink41.i, ptr %arrayidx8.4.i, align 1
  %175 = ptrtoint ptr %arrayidx.i23.i.5 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i23.i.5, align 1
  %177 = zext i8 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %176, label %for.inc.4.i.err_out_crit_edge [
    i8 0, label %sw.bb.5.i
    i8 2, label %sw.bb9.5.i
  ]

for.inc.4.i.err_out_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.5.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 5, i32 1
  %178 = ptrtoint ptr %tc_sch_mode14.5.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %tc_sch_mode14.5.i, align 1
  %arrayidx16.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %179 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx16.5.i, align 1
  br label %for.inc.5.i

sw.bb.5.i:                                        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.5.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 5, i32 1
  %181 = ptrtoint ptr %tc_sch_mode.5.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %tc_sch_mode.5.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %sw.bb.5.i, %sw.bb9.5.i
  %.sink42.i = phi i8 [ 0, %sw.bb.5.i ], [ %180, %sw.bb9.5.i ]
  %arrayidx8.5.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 5
  %182 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.sink42.i, ptr %arrayidx8.5.i, align 1
  %183 = ptrtoint ptr %arrayidx.i23.i.6 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i23.i.6, align 1
  %185 = zext i8 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %184, label %for.inc.5.i.err_out_crit_edge [
    i8 0, label %sw.bb.6.i
    i8 2, label %sw.bb9.6.i
  ]

for.inc.5.i.err_out_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.6.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 6, i32 1
  %186 = ptrtoint ptr %tc_sch_mode14.6.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %tc_sch_mode14.6.i, align 1
  %arrayidx16.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %187 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx16.6.i, align 1
  br label %for.inc.6.i

sw.bb.6.i:                                        ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.6.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 6, i32 1
  %189 = ptrtoint ptr %tc_sch_mode.6.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %tc_sch_mode.6.i, align 1
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %sw.bb.6.i, %sw.bb9.6.i
  %.sink43.i = phi i8 [ 0, %sw.bb.6.i ], [ %188, %sw.bb9.6.i ]
  %arrayidx8.6.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 6
  %190 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %.sink43.i, ptr %arrayidx8.6.i, align 1
  %191 = ptrtoint ptr %arrayidx.i23.i.7 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i23.i.7, align 1
  %193 = zext i8 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %192, label %for.inc.6.i.err_out_crit_edge [
    i8 0, label %sw.bb.7.i
    i8 2, label %sw.bb9.7.i
  ]

for.inc.6.i.err_out_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

sw.bb9.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode14.7.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 7, i32 1
  %194 = ptrtoint ptr %tc_sch_mode14.7.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %tc_sch_mode14.7.i, align 1
  %arrayidx16.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %195 = ptrtoint ptr %arrayidx16.7.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx16.7.i, align 1
  br label %if.end38

sw.bb.7.i:                                        ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %tc_sch_mode.7.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 5, i32 7, i32 1
  %197 = ptrtoint ptr %tc_sch_mode.7.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %tc_sch_mode.7.i, align 1
  br label %if.end38

if.end38:                                         ; preds = %sw.bb.7.i, %sw.bb9.7.i
  %.sink44.i = phi i8 [ 0, %sw.bb.7.i ], [ %196, %sw.bb9.7.i ]
  %arrayidx8.7.i = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 4, i32 0, i32 4, i32 7
  %198 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %.sink44.i, ptr %arrayidx8.7.i, align 1
  tail call void @hclge_tm_prio_tc_info_update(ptr noundef %4, ptr noundef %arrayidx.i.i) #6
  br i1 %or.cond, label %if.end46, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call41 = tail call fastcc i32 @hclge_map_update(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call fastcc i32 @hclge_notify_init_up(ptr noundef %4)
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 @hclge_tm_dwrr_cfg(ptr noundef %4) #6
  br label %cleanup

err_out:                                          ; preds = %for.inc.6.i.err_out_crit_edge, %for.inc.5.i.err_out_crit_edge, %for.inc.4.i.err_out_crit_edge, %for.inc.3.i.err_out_crit_edge, %for.inc.2.i.err_out_crit_edge, %for.inc.1.i.err_out_crit_edge, %for.inc.i.err_out_crit_edge, %if.end27.err_out_crit_edge
  br i1 %or.cond, label %err_out.cleanup_crit_edge, label %err_out.if.end50_crit_edge

err_out.if.end50_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %err_out.if.end50_crit_edge, %if.then40.if.end50_crit_edge
  %ret.0110 = phi i32 [ -22, %err_out.if.end50_crit_edge ], [ %call41, %if.then40.if.end50_crit_edge ]
  %call.i83 = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i86, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i86:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i85 = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i86, %if.end50.cleanup_crit_edge, %err_out.cleanup_crit_edge, %if.end46, %if.end44, %hclge_notify_down_uinit.exit.cleanup_crit_edge, %do.end22.cleanup_crit_edge, %for.inc.i.i.7.cleanup_crit_edge, %for.inc.i.i.6.cleanup_crit_edge, %for.inc.i.i.5.cleanup_crit_edge, %for.inc.i.i.4.cleanup_crit_edge, %for.inc.i.i.3.cleanup_crit_edge, %for.inc.i.i.2.cleanup_crit_edge, %for.inc.i.i.1.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %do.end.i.i, %for.body.i.i.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end44 ], [ %call47, %if.end46 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i80, %hclge_notify_down_uinit.exit.cleanup_crit_edge ], [ -22, %err_out.cleanup_crit_edge ], [ %ret.0110, %if.end50.cleanup_crit_edge ], [ %ret.0110, %if.end.i86 ], [ -22, %for.inc.i.i.7.cleanup_crit_edge ], [ -22, %do.end.i.i ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call.i, %do.end22.cleanup_crit_edge ], [ -22, %for.inc.i.i.6.cleanup_crit_edge ], [ -22, %for.inc.i.i.5.cleanup_crit_edge ], [ -22, %for.inc.i.i.4.cleanup_crit_edge ], [ -22, %for.inc.i.i.3.cleanup_crit_edge ], [ -22, %for.inc.i.i.2.cleanup_crit_edge ], [ -22, %for.inc.i.i.1.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %for.body.i.i.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ieee_getpfc(ptr noundef %h, ptr noundef %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %2 = call ptr @memset(ptr %pfc, i32 0, i32 136)
  %pfc_max = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %pfc_max to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfc_max, align 1
  %5 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pfc, align 8
  %pfc_en = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 8
  %6 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_en, align 1
  %pfc_en1 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %8 = ptrtoint ptr %pfc_en1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %pfc_en1, align 1
  %call2 = tail call i32 @hclge_mac_update_stats(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %requests = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 4
  tail call void @hclge_pfc_tx_stats_get(ptr noundef %1, ptr noundef %requests) #6
  %indications = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 5
  tail call void @hclge_pfc_rx_stats_get(ptr noundef %1, ptr noundef %indications) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ieee_setpfc(ptr noundef %h, ptr nocapture noundef readonly %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %0 = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %dcbx_cap = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcbx_cap, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %8 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pfc_en, align 1
  %tm_info = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 37
  %pfc_en3 = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 8
  %10 = ptrtoint ptr %pfc_en3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pfc_en3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp = icmp eq i8 %9, %11
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tm_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13115.not = icmp eq i8 %13, 0
  br i1 %cmp13115.not, label %if.end7.for.end37_crit_edge, label %for.cond15.preheader.lr.ph

if.end7.for.end37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.cond15.preheader.lr.ph:                       ; preds = %if.end7
  %prio_tc9 = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3
  %conv25 = zext i8 %9 to i32
  %wide.trip.count = zext i8 %13 to i32
  %14 = ptrtoint ptr %prio_tc9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prio_tc9, align 1
  %16 = zext i8 %15 to i32
  %and27 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %arrayidx.1 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 1
  %and27.1 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.1)
  %tobool28.not.1 = icmp eq i32 %and27.1, 0
  %arrayidx.2 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 2
  %and27.2 = and i32 %conv25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.2)
  %tobool28.not.2 = icmp eq i32 %and27.2, 0
  %arrayidx.3 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 3
  %and27.3 = and i32 %conv25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.3)
  %tobool28.not.3 = icmp eq i32 %and27.3, 0
  %arrayidx.4 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 4
  %and27.4 = and i32 %conv25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.4)
  %tobool28.not.4 = icmp eq i32 %and27.4, 0
  %arrayidx.5 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 5
  %and27.5 = and i32 %conv25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.5)
  %tobool28.not.5 = icmp eq i32 %and27.5, 0
  %arrayidx.6 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 6
  %and27.6 = and i32 %conv25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.6)
  %tobool28.not.6 = icmp eq i32 %and27.6, 0
  %arrayidx.7 = getelementptr %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 3, i32 7
  %and27.7 = and i32 %conv25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.7)
  %tobool28.not.7 = icmp eq i32 %and27.7, 0
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc35.for.cond15.preheader_crit_edge, %for.cond15.preheader.lr.ph
  %indvars.iv = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %indvars.iv.next, %for.inc35.for.cond15.preheader_crit_edge ]
  %pfc_map.0118 = phi i8 [ 0, %for.cond15.preheader.lr.ph ], [ %pfc_map.1, %for.inc35.for.cond15.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %16)
  %cmp22 = icmp ne i32 %indvars.iv, %16
  %brmerge = select i1 %cmp22, i1 true, i1 %tobool28.not
  br i1 %brmerge, label %for.inc, label %for.cond15.preheader.if.then29_crit_edge

for.cond15.preheader.if.then29_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %for.inc.6.if.then29_crit_edge, %for.inc.5.if.then29_crit_edge, %for.inc.4.if.then29_crit_edge, %for.inc.3.if.then29_crit_edge, %for.inc.2.if.then29_crit_edge, %for.inc.1.if.then29_crit_edge, %for.inc.if.then29_crit_edge, %for.cond15.preheader.if.then29_crit_edge
  %shl31 = shl nuw i32 1, %indvars.iv
  %17 = trunc i32 %shl31 to i8
  %conv33 = or i8 %pfc_map.0118, %17
  br label %for.inc35

for.inc:                                          ; preds = %for.cond15.preheader
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %20)
  %cmp22.1 = icmp ne i32 %indvars.iv, %20
  %brmerge120 = select i1 %cmp22.1, i1 true, i1 %tobool28.not.1
  br i1 %brmerge120, label %for.inc.1, label %for.inc.if.then29_crit_edge

for.inc.if.then29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.1:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2, align 1
  %23 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %23)
  %cmp22.2 = icmp ne i32 %indvars.iv, %23
  %brmerge121 = select i1 %cmp22.2, i1 true, i1 %tobool28.not.2
  br i1 %brmerge121, label %for.inc.2, label %for.inc.1.if.then29_crit_edge

for.inc.1.if.then29_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.2:                                        ; preds = %for.inc.1
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.3, align 1
  %26 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %26)
  %cmp22.3 = icmp ne i32 %indvars.iv, %26
  %brmerge122 = select i1 %cmp22.3, i1 true, i1 %tobool28.not.3
  br i1 %brmerge122, label %for.inc.3, label %for.inc.2.if.then29_crit_edge

for.inc.2.if.then29_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.3:                                        ; preds = %for.inc.2
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  %29 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %29)
  %cmp22.4 = icmp ne i32 %indvars.iv, %29
  %brmerge123 = select i1 %cmp22.4, i1 true, i1 %tobool28.not.4
  br i1 %brmerge123, label %for.inc.4, label %for.inc.3.if.then29_crit_edge

for.inc.3.if.then29_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.4:                                        ; preds = %for.inc.3
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %32 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %32)
  %cmp22.5 = icmp ne i32 %indvars.iv, %32
  %brmerge124 = select i1 %cmp22.5, i1 true, i1 %tobool28.not.5
  br i1 %brmerge124, label %for.inc.5, label %for.inc.4.if.then29_crit_edge

for.inc.4.if.then29_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.5:                                        ; preds = %for.inc.4
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6, align 1
  %35 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %35)
  %cmp22.6 = icmp ne i32 %indvars.iv, %35
  %brmerge125 = select i1 %cmp22.6, i1 true, i1 %tobool28.not.6
  br i1 %brmerge125, label %for.inc.6, label %for.inc.5.if.then29_crit_edge

for.inc.5.if.then29_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.6:                                        ; preds = %for.inc.5
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.7, align 1
  %38 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %38)
  %cmp22.7 = icmp ne i32 %indvars.iv, %38
  %brmerge126 = select i1 %cmp22.7, i1 true, i1 %tobool28.not.7
  br i1 %brmerge126, label %for.inc.6.for.inc35_crit_edge, label %for.inc.6.if.then29_crit_edge

for.inc.6.if.then29_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

for.inc.6.for.inc35_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc.6.for.inc35_crit_edge, %if.then29
  %pfc_map.1 = phi i8 [ %conv33, %if.then29 ], [ %pfc_map.0118, %for.inc.6.for.inc35_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35.for.end37_crit_edge, label %for.inc35.for.cond15.preheader_crit_edge

for.inc35.for.cond15.preheader_crit_edge:         ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %if.end7.for.end37_crit_edge
  %pfc_map.0.lcssa = phi i8 [ 0, %if.end7.for.end37_crit_edge ], [ %pfc_map.1, %for.inc35.for.end37_crit_edge ]
  %hw_pfc_map = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 37, i32 7
  %39 = ptrtoint ptr %hw_pfc_map to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %pfc_map.0.lcssa, ptr %hw_pfc_map, align 4
  %40 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pfc_en, align 1
  %42 = ptrtoint ptr %pfc_en3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %pfc_en3, align 1
  %msg_enable = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 11
  %43 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable, align 8
  %and42 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %for.end37.do.end60_crit_edge, label %do.body45

for.end37.do.end60_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.body45:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hclge_ieee_setpfc.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hclge_ieee_setpfc, %if.then50)) #6
          to label %do.end60 [label %if.then50], !srcloc !85

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pfc_en, align 1
  %conv52 = zext i8 %46 to i32
  %conv53 = zext i8 %pfc_map.0.lcssa to i32
  %47 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tm_info, align 8
  %conv56 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hclge_ieee_setpfc.__UNIQUE_ID_ddebug380, ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %conv56) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then50, %do.body45, %for.end37.do.end60_crit_edge
  tail call void @hclge_tm_pfc_info_update(ptr noundef %4) #6
  %call61 = tail call i32 @hclge_pause_setup_hw(ptr noundef %4, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %do.end60.cleanup_crit_edge

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %do.end60
  %call65 = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = tail call i32 @hclge_buffer_alloc(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  %call74 = tail call i32 @hclge_notify_client(ptr noundef %4, i32 noundef 0) #6
  %call74.call69 = select i1 %tobool70.not, i32 %call74, i32 %call69
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end64.cleanup_crit_edge, %do.end60.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call61, %do.end60.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call74.call69, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @hclge_getdcbx(ptr noundef %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %flag = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dcbx_cap = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dcbx_cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @hclge_setdcbx(ptr noundef %h, i8 noundef zeroext %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %0 = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %back, align 4
  %msg_enable = getelementptr inbounds %struct.hnae3_handle, ptr %h, i32 0, i32 11
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hclge_setdcbx.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hclge_setdcbx, %if.then7)) #6
          to label %do.end10 [label %if.then7], !srcloc !85

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %mode to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hclge_setdcbx.__UNIQUE_ID_ddebug381, ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %7 = and i8 %mode, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %.not = icmp eq i8 %7, 1
  br i1 %.not, label %if.end22, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dcbx_cap = getelementptr inbounds %struct.hclge_dev, ptr %4, i32 0, i32 36
  %8 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %mode, ptr %dcbx_cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end10.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end22 ], [ 1, %do.end10.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_setup_tc(ptr noundef %h, ptr nocapture noundef %mqprio_qopt) #2 align 64 {
entry:
  %old_tc_info = alloca %struct.hnae3_tc_info, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %h) #6
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %old_tc_info)
  %2 = ptrtoint ptr %mqprio_qopt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mqprio_qopt, align 8
  %state = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mqprio_qopt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mqprio_qopt, align 8
  br label %if.end8

if.end.i:                                         ; preds = %if.end4
  %prio_tc_map.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 1
  %call.i = tail call fastcc i32 @hclge_dcb_common_validate(ptr noundef %1, i8 noundef zeroext %3, ptr noundef %prio_tc_map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %for.cond.preheader.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader.i:                             ; preds = %if.end.i
  %10 = ptrtoint ptr %mqprio_qopt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mqprio_qopt, align 8
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp121.not.i = icmp eq i8 %11, 0
  br i1 %cmp121.not.i, label %for.cond.preheader.i.if.end8_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end8_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pf_rss_size_max.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %if.end56.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0123.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end56.i.for.body.i_crit_edge ]
  %queue_sum.0122.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %phi.cast.i, %if.end56.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 3, i32 %i.0123.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %conv13.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i = icmp ne i16 %13, 0
  %14 = tail call i32 @llvm.ctpop.i32(i32 %conv13.i) #6, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp1.i.i = icmp ult i32 %14, 2
  %or.cond.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond.i, label %if.end16.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #9
  br label %do.end

if.end16.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %pf_rss_size_max.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pf_rss_size_max.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %18)
  %cmp22.i = icmp ugt i16 %13, %18
  br i1 %cmp22.i, label %do.end27.i, label %if.end32.i

do.end27.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv21.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.34, i32 noundef %conv21.i) #9
  br label %do.end

if.end32.i:                                       ; preds = %if.end16.i
  %arrayidx34.i = getelementptr %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 4, i32 %i.0123.i
  %21 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx34.i, align 2
  %conv35.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %queue_sum.0122.i, i32 %conv35.i)
  %cmp37.not.i = icmp eq i32 %queue_sum.0122.i, %conv35.i
  br i1 %cmp37.not.i, label %if.end45.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.37) #9
  br label %do.end

if.end45.i:                                       ; preds = %if.end32.i
  %arrayidx46.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio_qopt, i32 0, i32 4, i32 %i.0123.i
  %25 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool47.not.i = icmp eq i64 %26, 0
  br i1 %tobool47.not.i, label %lor.lhs.false.i, label %if.end45.i.do.end53.i_crit_edge

if.end45.i.do.end53.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53.i

lor.lhs.false.i:                                  ; preds = %if.end45.i
  %arrayidx48.i = getelementptr %struct.tc_mqprio_qopt_offload, ptr %mqprio_qopt, i32 0, i32 5, i32 %i.0123.i
  %27 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx48.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool49.not.i = icmp eq i64 %28, 0
  br i1 %tobool49.not.i, label %if.end56.i, label %lor.lhs.false.i.do.end53.i_crit_edge

lor.lhs.false.i.do.end53.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53.i

do.end53.i:                                       ; preds = %lor.lhs.false.i.do.end53.i_crit_edge, %if.end45.i.do.end53.i_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull @.str.40) #9
  br label %do.end

if.end56.i:                                       ; preds = %lor.lhs.false.i
  %add.i = add nuw nsw i32 %queue_sum.0122.i, %conv13.i
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end56.i.for.body.i_crit_edge

if.end56.i.for.body.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end56.i
  %vport.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 52
  %31 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vport.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 8
  %conv67.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.cast.i, i32 %conv67.i)
  %cmp69.i = icmp ugt i32 %phi.cast.i, %conv67.i
  br i1 %cmp69.i, label %do.end74.i, label %for.end.i.if.end8_crit_edge

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end74.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %dev76.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76.i, ptr noundef nonnull @.str.43, i32 noundef %conv67.i) #9
  br label %do.end

do.end:                                           ; preds = %do.end74.i, %do.end53.i, %do.end42.i, %do.end27.i, %do.end.i, %if.end.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.do.end_crit_edge ], [ -22, %do.end74.i ], [ -22, %do.end.i ], [ -95, %do.end53.i ], [ -22, %do.end42.i ], [ -22, %do.end27.i ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end8:                                          ; preds = %for.end.i.if.end8_crit_edge, %for.cond.preheader.i.if.end8_crit_edge, %if.then.i
  %call.i88 = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %hclge_notify_down_uinit.exit, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hclge_notify_down_uinit.exit:                     ; preds = %if.end8
  %call1.i = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %if.end12, label %hclge_notify_down_uinit.exit.cleanup_crit_edge

hclge_notify_down_uinit.exit.cleanup_crit_edge:   ; preds = %hclge_notify_down_uinit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %hclge_notify_down_uinit.exit
  %tc_info = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 13, i32 5, i32 0, i32 7
  %39 = call ptr @memcpy(ptr %old_tc_info, ptr %tc_info, i32 42)
  %40 = call ptr @memset(ptr %tc_info, i32 0, i32 42)
  %41 = ptrtoint ptr %mqprio_qopt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mqprio_qopt, align 8
  %num_tc1.i = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %num_tc1.i, align 2
  %prio_tc_map.i92 = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 1
  %44 = ptrtoint ptr %prio_tc_map.i92 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %prio_tc_map.i92, align 1
  %46 = ptrtoint ptr %tc_info to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %tc_info, align 2
  %tqp_count.i = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1
  %count.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 3
  %47 = call ptr @memcpy(ptr %tqp_count.i, ptr %count.i, i32 16)
  %tqp_offset.i = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2
  %offset.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %mqprio_qopt, i32 0, i32 4
  %48 = call ptr @memcpy(ptr %tqp_offset.i, ptr %offset.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp ne i8 %3, 0
  %mqprio_active = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 13, i32 5, i32 0, i32 7, i32 4
  %frombool = zext i1 %cmp to i8
  %49 = ptrtoint ptr %mqprio_active to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool, ptr %mqprio_active, align 1
  %call17 = tail call fastcc i32 @hclge_config_tc(ptr noundef %1, ptr noundef %tc_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %err_out

if.end20:                                         ; preds = %if.end12
  %50 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flag, align 4
  %and22 = and i32 %51, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp24 = icmp ugt i8 %3, 1
  %or = or i32 %and22, 8
  %storemerge = select i1 %cmp24, i32 %or, i32 %and22
  %52 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %flag, align 4
  %call.i93 = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i96, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i96:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i95 = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 0) #6
  br label %cleanup

err_out:                                          ; preds = %if.end12
  br i1 %tobool.not.i, label %do.end36, label %if.else39

do.end36:                                         ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38, ptr noundef nonnull @.str.25, i32 noundef %call17) #9
  br label %if.end51

if.else39:                                        ; preds = %err_out
  %55 = call ptr @memcpy(ptr %tc_info, ptr %old_tc_info, i32 42)
  %call42 = tail call fastcc i32 @hclge_config_tc(ptr noundef %1, ptr noundef %tc_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else39.if.end51_crit_edge, label %do.end47

if.else39.if.end51_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end47:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.29) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %if.else39.if.end51_crit_edge, %do.end36
  %call.i98 = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i101, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i101:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i100 = tail call i32 @hclge_notify_client(ptr noundef %1, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i101, %if.end51.cleanup_crit_edge, %if.end.i96, %if.end20.cleanup_crit_edge, %hclge_notify_down_uinit.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call1.i, %hclge_notify_down_uinit.exit.cleanup_crit_edge ], [ %call1.i95, %if.end.i96 ], [ %call.i93, %if.end20.cleanup_crit_edge ], [ %call17, %if.end51.cleanup_crit_edge ], [ %call17, %if.end.i101 ], [ %call.i88, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %old_tc_info)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hclge_get_vport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_tm_schd_info_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_map_update(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hclge_tm_schd_setup_hw(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hclge_pause_setup_hw(ptr noundef %hdev, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hclge_buffer_alloc(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %0 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_dev, align 4
  %rss_cfg = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 87
  tail call void @hclge_comm_rss_indir_init_cfg(ptr noundef %1, ptr noundef %rss_cfg) #6
  %call9 = tail call i32 @hclge_rss_init_hw(ptr noundef %hdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_notify_init_up(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hclge_notify_client(ptr noundef %hdev, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @hclge_notify_client(ptr noundef %hdev, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_dwrr_cfg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_dcb_common_validate(ptr nocapture noundef readonly %hdev, i8 noundef zeroext %num_tc, ptr nocapture noundef readonly %prio_tc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_tc to i32
  %tc_max = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 33
  %0 = ptrtoint ptr %tc_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tc_max, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %num_tc)
  %cmp = icmp ult i8 %1, %num_tc
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prio_tc, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %num_tc)
  %cmp10.not = icmp ult i8 %3, %num_tc
  br i1 %cmp10.not, label %for.inc, label %for.body.preheader.do.end15_crit_edge

for.body.preheader.do.end15_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %1 to i32
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %conv1) #9
  br label %cleanup

do.end15:                                         ; preds = %for.inc.6.do.end15_crit_edge, %for.inc.5.do.end15_crit_edge, %for.inc.4.do.end15_crit_edge, %for.inc.3.do.end15_crit_edge, %for.inc.2.do.end15_crit_edge, %for.inc.1.do.end15_crit_edge, %for.inc.do.end15_crit_edge, %for.body.preheader.do.end15_crit_edge
  %i.056.lcssa = phi i32 [ 0, %for.body.preheader.do.end15_crit_edge ], [ 1, %for.inc.do.end15_crit_edge ], [ 2, %for.inc.1.do.end15_crit_edge ], [ 3, %for.inc.2.do.end15_crit_edge ], [ 4, %for.inc.3.do.end15_crit_edge ], [ 5, %for.inc.4.do.end15_crit_edge ], [ 6, %for.inc.5.do.end15_crit_edge ], [ 7, %for.inc.6.do.end15_crit_edge ]
  %.lcssa = phi i8 [ %3, %for.body.preheader.do.end15_crit_edge ], [ %9, %for.inc.do.end15_crit_edge ], [ %11, %for.inc.1.do.end15_crit_edge ], [ %13, %for.inc.2.do.end15_crit_edge ], [ %15, %for.inc.3.do.end15_crit_edge ], [ %17, %for.inc.4.do.end15_crit_edge ], [ %19, %for.inc.5.do.end15_crit_edge ], [ %21, %for.inc.6.do.end15_crit_edge ]
  %conv8 = zext i8 %.lcssa to i32
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.9, i32 noundef %i.056.lcssa, i32 noundef %conv8, i32 noundef %conv) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %num_tc)
  %cmp10.not.1 = icmp ult i8 %9, %num_tc
  br i1 %cmp10.not.1, label %for.inc.1, label %for.inc.do.end15_crit_edge

for.inc.do.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %num_tc)
  %cmp10.not.2 = icmp ult i8 %11, %num_tc
  br i1 %cmp10.not.2, label %for.inc.2, label %for.inc.1.do.end15_crit_edge

for.inc.1.do.end15_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %num_tc)
  %cmp10.not.3 = icmp ult i8 %13, %num_tc
  br i1 %cmp10.not.3, label %for.inc.3, label %for.inc.2.do.end15_crit_edge

for.inc.2.do.end15_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %num_tc)
  %cmp10.not.4 = icmp ult i8 %15, %num_tc
  br i1 %cmp10.not.4, label %for.inc.4, label %for.inc.3.do.end15_crit_edge

for.inc.3.do.end15_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %num_tc)
  %cmp10.not.5 = icmp ult i8 %17, %num_tc
  br i1 %cmp10.not.5, label %for.inc.5, label %for.inc.4.do.end15_crit_edge

for.inc.4.do.end15_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %num_tc)
  %cmp10.not.6 = icmp ult i8 %19, %num_tc
  br i1 %cmp10.not.6, label %for.inc.6, label %for.inc.5.do.end15_crit_edge

for.inc.5.do.end15_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %num_tc)
  %cmp10.not.7 = icmp ult i8 %21, %num_tc
  br i1 %cmp10.not.7, label %for.inc.7, label %for.inc.6.do.end15_crit_edge

for.inc.6.do.end15_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.inc.7:                                        ; preds = %for.inc.6
  %vport = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 8
  %conv24 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv24)
  %cmp25 = icmp ugt i32 %conv, %conv24
  br i1 %cmp25, label %do.end30, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %for.inc.7.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ -22, %do.end30 ], [ 0, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_notify_client(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_tm_prio_tc_info_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_tm_schd_setup_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_pause_setup_hw(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_buffer_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_rss_indir_init_cfg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_rss_init_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_mac_update_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_pfc_tx_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_pfc_rx_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_tm_pfc_info_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_tc(ptr noundef %hdev, ptr nocapture noundef readonly %tc_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc = getelementptr inbounds %struct.hnae3_tc_info, ptr %tc_info, i32 0, i32 3
  %0 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tc, align 2
  tail call void @hclge_tm_schd_info_update(ptr noundef %hdev, i8 noundef zeroext %1) #6
  %2 = ptrtoint ptr %tc_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tc_info, align 1
  %arrayidx2 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx2, align 1
  %arrayidx.1 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx2.2, align 1
  %arrayidx.3 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx2.4, align 1
  %arrayidx.5 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %arrayidx2.5 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 5
  %19 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx2.5, align 1
  %arrayidx.6 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %arrayidx2.6 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 6
  %22 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx2.6, align 1
  %arrayidx.7 = getelementptr [8 x i8], ptr %tc_info, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %arrayidx2.7 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 7
  %25 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx2.7, align 1
  %call.i = tail call i32 @hclge_tm_schd_setup_hw(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hclge_map_update.exit_crit_edge

entry.hclge_map_update.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_map_update.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @hclge_pause_setup_hw(ptr noundef %hdev, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.hclge_map_update.exit_crit_edge

if.end.i.hclge_map_update.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_map_update.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @hclge_buffer_alloc(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.hclge_map_update.exit_crit_edge

if.end4.i.hclge_map_update.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_map_update.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %ae_dev.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %26 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ae_dev.i, align 4
  %rss_cfg.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 87
  tail call void @hclge_comm_rss_indir_init_cfg(ptr noundef %27, ptr noundef %rss_cfg.i) #6
  %call9.i = tail call i32 @hclge_rss_init_hw(ptr noundef %hdev) #6
  br label %hclge_map_update.exit

hclge_map_update.exit:                            ; preds = %if.end8.i, %if.end4.i.hclge_map_update.exit_crit_edge, %if.end.i.hclge_map_update.exit_crit_edge, %entry.hclge_map_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end8.i ], [ %call.i, %entry.hclge_map_update.exit_crit_edge ], [ %call1.i, %if.end.i.hclge_map_update.exit_crit_edge ], [ %call5.i, %if.end4.i.hclge_map_update.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @hns3_dcb_ops, !1, !"hns3_dcb_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 541, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 251, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hclge_ieee_setets.__UNIQUE_ID_ddebug379, !3, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 82, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hclge_dcb_common_validate._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @hclge_dcb_common_validate._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 90, i32 4}
!17 = !{ptr @hclge_dcb_common_validate._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hclge_dcb_common_validate._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 98, i32 3}
!21 = !{ptr @hclge_dcb_common_validate._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hclge_dcb_common_validate._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 144, i32 5}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hclge_ets_sch_mode_validate._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hclge_ets_sch_mode_validate._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 299, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hclge_ieee_getpfc._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @hclge_ieee_getpfc._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 339, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hclge_ieee_setpfc.__UNIQUE_ID_ddebug380, !34, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 380, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hclge_setdcbx.__UNIQUE_ID_ddebug381, !38, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 497, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hclge_setup_tc._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hclge_setup_tc._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 526, i32 3}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hclge_setup_tc._entry.24, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hclge_setup_tc._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 533, i32 4}
!53 = !{ptr @hclge_setup_tc._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hclge_setup_tc._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 412, i32 4}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hclge_mqprio_qopt_check._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @hclge_mqprio_qopt_check._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 418, i32 4}
!62 = !{ptr @hclge_mqprio_qopt_check._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hclge_mqprio_qopt_check._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 425, i32 4}
!66 = !{ptr @hclge_mqprio_qopt_check._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hclge_mqprio_qopt_check._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 431, i32 4}
!70 = !{ptr @hclge_mqprio_qopt_check._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @hclge_mqprio_qopt_check._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_dcb.c", i32 440, i32 3}
!74 = !{ptr @hclge_mqprio_qopt_check._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hclge_mqprio_qopt_check._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148518326, i64 2148518331, i64 2148518344, i64 2148518388, i64 2148518422, i64 2148518443}
!86 = !{i32 0, i32 17}
