; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
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
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hclge_cfg_pause_param_cmd = type { [6 x i8], i8, i8, i16, [6 x i8], [6 x i8], i16 }
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
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
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
%struct.hclge_pg_weight_cmd = type { i8, i8 }
%struct.hclge_priority_weight_cmd = type { i8, i8 }
%struct.hclge_qs_weight_cmd = type { i16, i8 }
%struct.hclge_qs_to_pri_link_cmd = type { i16, i16, i8, i8 }
%struct.hclge_pfc_en_cmd = type { i8, i8 }
%struct.hclge_bp_to_qs_map_cmd = type { i8, [2 x i8], i8, i32, i32 }
%struct.hclge_tm_nodes_cmd = type { i8, i8, i16, i16, i8, i8, i16, i16 }
%struct.hclge_tm_shaper_para = type { i32, i8, i8, i8, i8, i8, i8 }

@hclge_tm_qs_shaper_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 586, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"vport%u, qs%u failed to set tx_rate:%d, ret=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclge_tm_qs_shaper_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_tm_qs_shaper_cfg._entry_ptr = internal global ptr @hclge_tm_qs_shaper_cfg._entry, section ".printk_index", align 4
@hclge_pause_setup_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1538, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GE MAC does not support pfc\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclge_pause_setup_hw\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hclge_pause_setup_hw._entry_ptr = internal global ptr @hclge_pause_setup_hw._entry, section ".printk_index", align 4
@hclge_pause_setup_hw._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 1541, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"config pfc failed! ret = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hclge_pause_setup_hw._entry_ptr.10 = internal global ptr @hclge_pause_setup_hw._entry.8, section ".printk_index", align 4
@hclge_tm_get_qset_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1651, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get qset num, ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclge_tm_get_qset_num\00", [42 x i8] zeroinitializer }, align 32
@hclge_tm_get_qset_num._entry_ptr = internal global ptr @hclge_tm_get_qset_num._entry, section ".printk_index", align 4
@hclge_tm_get_pri_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get pri num, ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclge_tm_get_pri_num\00", [43 x i8] zeroinitializer }, align 32
@hclge_tm_get_pri_num._entry_ptr = internal global ptr @hclge_tm_get_pri_num._entry, section ".printk_index", align 4
@hclge_tm_get_qset_map_pri._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get qset map priority, ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_tm_get_qset_map_pri\00", [38 x i8] zeroinitializer }, align 32
@hclge_tm_get_qset_map_pri._entry_ptr = internal global ptr @hclge_tm_get_qset_map_pri._entry, section ".printk_index", align 4
@hclge_tm_get_qset_sch_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get qset sch mode, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_tm_get_qset_sch_mode\00", [37 x i8] zeroinitializer }, align 32
@hclge_tm_get_qset_sch_mode._entry_ptr = internal global ptr @hclge_tm_get_qset_sch_mode._entry, section ".printk_index", align 4
@hclge_tm_get_qset_weight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get qset weight, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_tm_get_qset_weight\00", [39 x i8] zeroinitializer }, align 32
@hclge_tm_get_qset_weight._entry_ptr = internal global ptr @hclge_tm_get_qset_weight._entry, section ".printk_index", align 4
@hclge_tm_get_qset_shaper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get qset %u shaper, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_tm_get_qset_shaper\00", [39 x i8] zeroinitializer }, align 32
@hclge_tm_get_qset_shaper._entry_ptr = internal global ptr @hclge_tm_get_qset_shaper._entry, section ".printk_index", align 4
@hclge_tm_get_pri_sch_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get priority sch mode, ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_tm_get_pri_sch_mode\00", [38 x i8] zeroinitializer }, align 32
@hclge_tm_get_pri_sch_mode._entry_ptr = internal global ptr @hclge_tm_get_pri_sch_mode._entry, section ".printk_index", align 4
@hclge_tm_get_pri_weight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get priority weight, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_tm_get_pri_weight\00", [40 x i8] zeroinitializer }, align 32
@hclge_tm_get_pri_weight._entry_ptr = internal global ptr @hclge_tm_get_pri_weight._entry, section ".printk_index", align 4
@hclge_tm_get_pri_shaper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1836, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to get priority shaper(%#x), ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclge_tm_get_pri_shaper\00", [40 x i8] zeroinitializer }, align 32
@hclge_tm_get_pri_shaper._entry_ptr = internal global ptr @hclge_tm_get_pri_shaper._entry, section ".printk_index", align 4
@hclge_tm_get_q_to_qs_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get queue to qset map, ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_tm_get_q_to_qs_map\00", [39 x i8] zeroinitializer }, align 32
@hclge_tm_get_q_to_qs_map._entry_ptr = internal global ptr @hclge_tm_get_q_to_qs_map._entry, section ".printk_index", align 4
@hclge_tm_get_q_to_tc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1903, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get queue to tc map, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclge_tm_get_q_to_tc\00", [43 x i8] zeroinitializer }, align 32
@hclge_tm_get_q_to_tc._entry_ptr = internal global ptr @hclge_tm_get_q_to_tc._entry, section ".printk_index", align 4
@hclge_tm_get_pg_to_pri_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get pg to pri map, ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_tm_get_pg_to_pri_map\00", [37 x i8] zeroinitializer }, align 32
@hclge_tm_get_pg_to_pri_map._entry_ptr = internal global ptr @hclge_tm_get_pg_to_pri_map._entry, section ".printk_index", align 4
@hclge_tm_get_pg_weight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1944, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get pg weight, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclge_tm_get_pg_weight\00", [41 x i8] zeroinitializer }, align 32
@hclge_tm_get_pg_weight._entry_ptr = internal global ptr @hclge_tm_get_pg_weight._entry, section ".printk_index", align 4
@hclge_tm_get_pg_sch_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get pg sch mode, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_tm_get_pg_sch_mode\00", [39 x i8] zeroinitializer }, align 32
@hclge_tm_get_pg_sch_mode._entry_ptr = internal global ptr @hclge_tm_get_pg_sch_mode._entry, section ".printk_index", align 4
@hclge_tm_get_pg_shaper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1990, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get pg shaper(%#x), ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclge_tm_get_pg_shaper\00", [41 x i8] zeroinitializer }, align 32
@hclge_tm_get_pg_shaper._entry_ptr = internal global ptr @hclge_tm_get_pg_shaper._entry, section ".printk_index", align 4
@hclge_tm_get_port_shaper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2017, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get port shaper, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_tm_get_port_shaper\00", [39 x i8] zeroinitializer }, align 32
@hclge_tm_get_port_shaper._entry_ptr = internal global ptr @hclge_tm_get_port_shaper._entry, section ".printk_index", align 4
@hclge_update_fc_mode_by_dcb_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 765, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Only 1 tc used, but last mode is FC_PFC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_update_fc_mode_by_dcb_flag\00", [63 x i8] zeroinitializer }, align 32
@hclge_update_fc_mode_by_dcb_flag._entry_ptr = internal global ptr @hclge_update_fc_mode_by_dcb_flag._entry, section ".printk_index", align 4
@hclge_tm_pri_dwrr_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1229, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fw %08x does't support ets tc weight cmd\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclge_tm_pri_dwrr_cfg\00", [42 x i8] zeroinitializer }, align 32
@hclge_tm_pri_dwrr_cfg._entry_ptr = internal global ptr @hclge_tm_pri_dwrr_cfg._entry, section ".printk_index", align 4
@hclge_tm_update_kinfo_rss_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 663, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss changes from %u to %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_tm_update_kinfo_rss_size\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hclge_tm_update_kinfo_rss_size._entry_ptr = internal global ptr @hclge_tm_update_kinfo_rss_size._entry, section ".printk_index", align 4
@switch.table.hclge_pause_setup_hw = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 16777216, i32 16777216, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.hclge_pause_setup_hw.50 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 33554432, i32 0, i32 33554432, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 583, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1538, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1540, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1650, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1674, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1696, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1717, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1737, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1759, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1787, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1807, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1834, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1864, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1902, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1923, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1943, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1961, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1988, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 2016, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 764, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1227, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [57 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 662, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [34 x i8] c"switch.table.hclge_pause_setup_hw\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [37 x i8] c"switch.table.hclge_pause_setup_hw.50\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @hclge_pause_setup_hw._entry, ptr @hclge_pause_setup_hw._entry.8, ptr @hclge_pause_setup_hw._entry_ptr, ptr @hclge_pause_setup_hw._entry_ptr.10, ptr @hclge_tm_get_pg_sch_mode._entry, ptr @hclge_tm_get_pg_sch_mode._entry_ptr, ptr @hclge_tm_get_pg_shaper._entry, ptr @hclge_tm_get_pg_shaper._entry_ptr, ptr @hclge_tm_get_pg_to_pri_map._entry, ptr @hclge_tm_get_pg_to_pri_map._entry_ptr, ptr @hclge_tm_get_pg_weight._entry, ptr @hclge_tm_get_pg_weight._entry_ptr, ptr @hclge_tm_get_port_shaper._entry, ptr @hclge_tm_get_port_shaper._entry_ptr, ptr @hclge_tm_get_pri_num._entry, ptr @hclge_tm_get_pri_num._entry_ptr, ptr @hclge_tm_get_pri_sch_mode._entry, ptr @hclge_tm_get_pri_sch_mode._entry_ptr, ptr @hclge_tm_get_pri_shaper._entry, ptr @hclge_tm_get_pri_shaper._entry_ptr, ptr @hclge_tm_get_pri_weight._entry, ptr @hclge_tm_get_pri_weight._entry_ptr, ptr @hclge_tm_get_q_to_qs_map._entry, ptr @hclge_tm_get_q_to_qs_map._entry_ptr, ptr @hclge_tm_get_q_to_tc._entry, ptr @hclge_tm_get_q_to_tc._entry_ptr, ptr @hclge_tm_get_qset_map_pri._entry, ptr @hclge_tm_get_qset_map_pri._entry_ptr, ptr @hclge_tm_get_qset_num._entry, ptr @hclge_tm_get_qset_num._entry_ptr, ptr @hclge_tm_get_qset_sch_mode._entry, ptr @hclge_tm_get_qset_sch_mode._entry_ptr, ptr @hclge_tm_get_qset_shaper._entry, ptr @hclge_tm_get_qset_shaper._entry_ptr, ptr @hclge_tm_get_qset_weight._entry, ptr @hclge_tm_get_qset_weight._entry_ptr, ptr @hclge_tm_pri_dwrr_cfg._entry, ptr @hclge_tm_pri_dwrr_cfg._entry_ptr, ptr @hclge_tm_qs_shaper_cfg._entry, ptr @hclge_tm_qs_shaper_cfg._entry_ptr, ptr @hclge_tm_update_kinfo_rss_size._entry, ptr @hclge_tm_update_kinfo_rss_size._entry_ptr, ptr @hclge_update_fc_mode_by_dcb_flag._entry, ptr @hclge_update_fc_mode_by_dcb_flag._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @switch.table.hclge_pause_setup_hw, ptr @switch.table.hclge_pause_setup_hw.50], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_qs_shaper_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_pause_setup_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_pause_setup_hw._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_qset_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pri_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_qset_map_pri._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_qset_sch_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_qset_weight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_qset_shaper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pri_sch_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pri_weight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pri_shaper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_q_to_qs_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_q_to_tc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pg_to_pri_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pg_weight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pg_sch_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_pg_shaper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_get_port_shaper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_update_fc_mode_by_dcb_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_pri_dwrr_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_update_kinfo_rss_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hclge_pause_setup_hw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hclge_pause_setup_hw.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hclge_pfc_rx_stats_get(ptr nocapture noundef readonly %hdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %add.ptr.1.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 12
  %3 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1.i, align 8
  %arrayidx1.1.i = getelementptr i64, ptr %stats, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1.i, align 8
  %add.ptr.2.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2.i, align 8
  %arrayidx1.2.i = getelementptr i64, ptr %stats, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2.i, align 8
  %add.ptr.3.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 14
  %9 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3.i, align 8
  %arrayidx1.3.i = getelementptr i64, ptr %stats, i32 3
  %11 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3.i, align 8
  %add.ptr.4.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 15
  %12 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4.i, align 8
  %arrayidx1.4.i = getelementptr i64, ptr %stats, i32 4
  %14 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx1.4.i, align 8
  %add.ptr.5.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 16
  %15 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5.i, align 8
  %arrayidx1.5.i = getelementptr i64, ptr %stats, i32 5
  %17 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx1.5.i, align 8
  %add.ptr.6.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 17
  %18 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6.i, align 8
  %arrayidx1.6.i = getelementptr i64, ptr %stats, i32 6
  %20 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.6.i, align 8
  %add.ptr.7.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 18
  %21 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7.i, align 8
  %arrayidx1.7.i = getelementptr i64, ptr %stats, i32 7
  %23 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.7.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hclge_pfc_tx_stats_get(ptr nocapture noundef readonly %hdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %add.ptr.1.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1.i, align 8
  %arrayidx1.1.i = getelementptr i64, ptr %stats, i32 1
  %5 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1.i, align 8
  %add.ptr.2.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 5
  %6 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2.i, align 8
  %arrayidx1.2.i = getelementptr i64, ptr %stats, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2.i, align 8
  %add.ptr.3.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3.i, align 8
  %arrayidx1.3.i = getelementptr i64, ptr %stats, i32 3
  %11 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3.i, align 8
  %add.ptr.4.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4.i, align 8
  %arrayidx1.4.i = getelementptr i64, ptr %stats, i32 4
  %14 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx1.4.i, align 8
  %add.ptr.5.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5.i, align 8
  %arrayidx1.5.i = getelementptr i64, ptr %stats, i32 5
  %17 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx1.5.i, align 8
  %add.ptr.6.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6.i, align 8
  %arrayidx1.6.i = getelementptr i64, ptr %stats, i32 6
  %20 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.6.i, align 8
  %add.ptr.7.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 4, i32 10
  %21 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7.i, align 8
  %arrayidx1.7.i = getelementptr i64, ptr %stats, i32 7
  %23 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.7.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_mac_pause_en_cfg(ptr noundef %hdev, i1 noundef zeroext %tx, i1 noundef zeroext %rx) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 1793, i1 noundef zeroext false) #7
  %cond = zext i1 %tx to i32
  %cond3 = select i1 %rx, i32 2, i32 0
  %or = or i32 %cond3, %cond
  %2 = shl nuw nsw i32 %or, 24
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_pause_addr_cfg(ptr noundef %hdev, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 1795, i1 noundef zeroext true) #7
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %pause_trans_gap = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pause_trans_gap to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pause_trans_gap, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %7 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %9 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %10 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %11 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 5
  %12 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 1795, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %8, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %11, align 4
  %pause_trans_gap3.i = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %pause_trans_gap3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %4, ptr %pause_trans_gap3.i, align 2
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %6, ptr %9, align 4
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_qs_shaper_cfg(ptr nocapture noundef readonly %vport, i32 noundef %max_tx_rate) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_tx_rate)
  %tobool.not = icmp eq i32 %max_tx_rate, 0
  %6 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ae_dev, align 4
  %max_tm_rate = getelementptr inbounds %struct.hnae3_ae_dev, ptr %8, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %max_tm_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_tm_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_tx_rate.addr.0 = phi i32 [ %max_tx_rate, %entry.if.end_crit_edge ], [ %10, %if.then ]
  %ae_dev1 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ae_dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ae_dev1, align 4
  %max_tm_rate3 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %12, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %max_tm_rate3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_tm_rate3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_tx_rate.addr.0, i32 %14)
  %cmp2.i = icmp ugt i32 %max_tx_rate.addr.0, %14
  br i1 %cmp2.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %max_tx_rate.addr.0)
  %cmp5.i = icmp eq i32 %max_tx_rate.addr.0, 656
  br i1 %cmp5.i, label %if.end.i.if.end6_crit_edge, label %if.else.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %max_tx_rate.addr.0)
  %cmp8.i = icmp ult i32 %max_tx_rate.addr.0, 656
  br i1 %cmp8.i, label %while.cond.preheader.i, label %if.else.i.while.body27.i_crit_edge

if.else.i.while.body27.i_crit_edge:               ; preds = %if.else.i
  br label %while.body27.i

while.cond.preheader.i:                           ; preds = %if.else.i
  %15 = add nsw i32 %max_tx_rate.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %15)
  %.not95.i = icmp ult i32 %15, 656
  br i1 %.not95.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %ir_s_calc.096.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %inc.i = add i8 %ir_s_calc.096.i, 1
  %conv13.i = zext i8 %inc.i to i32
  %mul.i = shl i32 1536, %conv13.i
  %div14.i = udiv i32 1008000, %mul.i
  %.not.i = icmp ult i32 %15, %div14.i
  br i1 %.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %ir_s_calc.0.lcssa.i = phi i8 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %mul15.i = mul i32 %max_tx_rate.addr.0, 1536
  %conv16.i = zext i8 %ir_s_calc.0.lcssa.i to i32
  %mul18.i = shl i32 %mul15.i, %conv16.i
  %add19.i = add i32 %mul18.i, 4000
  %div20.i = udiv i32 %add19.i, 8000
  br label %if.end6

while.body27.i:                                   ; preds = %while.body27.i.while.body27.i_crit_edge, %if.else.i.while.body27.i_crit_edge
  %ir_u_calc.093.i = phi i8 [ %inc28.i, %while.body27.i.while.body27.i_crit_edge ], [ 0, %if.else.i.while.body27.i_crit_edge ]
  %inc28.i = add i8 %ir_u_calc.093.i, 1
  %conv29.i = zext i8 %inc28.i to i32
  %mul31.i = shl i32 1008000, %conv29.i
  %add33.i = add i32 %mul31.i, 768
  %div34.i = udiv i32 %add33.i, 1536
  %cmp25.i = icmp ult i32 %div34.i, %max_tx_rate.addr.0
  br i1 %cmp25.i, label %while.body27.i.while.body27.i_crit_edge, label %while.end35.i

while.body27.i.while.body27.i_crit_edge:          ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i

while.end35.i:                                    ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i, i32 %max_tx_rate.addr.0)
  %cmp36.i = icmp eq i32 %div34.i, %max_tx_rate.addr.0
  br i1 %cmp36.i, label %while.end35.i.if.end6_crit_edge, label %if.else40.i

while.end35.i.if.end6_crit_edge:                  ; preds = %while.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else40.i:                                      ; preds = %while.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv41.i = zext i8 %ir_u_calc.093.i to i32
  %mul43.i = shl i32 8000, %conv41.i
  %mul44.i = mul i32 %max_tx_rate.addr.0, 1536
  %shr45.i = lshr exact i32 %mul43.i, 1
  %add46.i = add i32 %shr45.i, %mul44.i
  %div47.i = udiv i32 %add46.i, %mul43.i
  br label %if.end6

if.end6:                                          ; preds = %if.else40.i, %while.end35.i.if.end6_crit_edge, %while.end.i, %if.end.i.if.end6_crit_edge
  %ir_para.sroa.8.0.ph = phi i8 [ 0, %while.end35.i.if.end6_crit_edge ], [ 0, %if.else40.i ], [ %ir_s_calc.0.lcssa.i, %while.end.i ], [ 0, %if.end.i.if.end6_crit_edge ]
  %ir_para.sroa.5.0.ph = phi i8 [ %inc28.i, %while.end35.i.if.end6_crit_edge ], [ %ir_u_calc.093.i, %if.else40.i ], [ 0, %while.end.i ], [ 0, %if.end.i.if.end6_crit_edge ]
  %ir_para.sroa.0.0.ph = phi i32 [ 126, %while.end35.i.if.end6_crit_edge ], [ %div47.i, %if.else40.i ], [ %div20.i, %while.end.i ], [ 126, %if.end.i.if.end6_crit_edge ]
  %num_tc = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp62.not = icmp eq i8 %17, 0
  br i1 %cmp62.not, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %conv4.i = zext i8 %ir_para.sroa.5.0.ph to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %and6.i = and i32 %shl5.i, 3840
  %conv.i = and i32 %ir_para.sroa.0.0.ph, 255
  %conv12.i = zext i8 %ir_para.sroa.8.0.ph to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 12
  %and14.i = and i32 %shl13.i, 61440
  %or7.i = or i32 %conv.i, %and14.i
  %or15.i = or i32 %or7.i, %and6.i
  %or31.i = or i32 %or15.i, 42270720
  %qs_offset = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 1
  %18 = call i32 @llvm.bswap.i32(i32 %or31.i)
  %19 = call i32 @llvm.bswap.i32(i32 %max_tx_rate.addr.0)
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.063, 1
  %20 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 6659, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %qs_offset to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %qs_offset, align 2
  %24 = trunc i32 %i.063 to i16
  %conv10 = add i16 %23, %24
  %25 = call i16 @llvm.bswap.i16(i16 %conv10)
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %18, ptr %3, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 4
  %30 = or i8 %29, 1
  store i8 %30, ptr %4, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %19, ptr %5, align 4
  %call16 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %do.end21

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %vport_id = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 11
  %34 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vport_id, align 2
  %conv22 = zext i16 %35 to i32
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %2, align 4
  %conv24 = zext i16 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %max_tx_rate.addr.0, i32 noundef %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %for.cond.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_tm_pfc_info_update(ptr nocapture noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %0 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %3)
  %cmp = icmp ugt i32 %3, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pfc_en.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %4 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %6 = ptrtoint ptr %fc_mode_last_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_mode_last_time.i, align 4
  %fc_mode.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %8 = ptrtoint ptr %fc_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fc_mode.i, align 8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %fc_mode3.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %9 = ptrtoint ptr %fc_mode3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_mode3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 4
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time7.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %11 = ptrtoint ptr %fc_mode_last_time7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fc_mode_last_time7.i, align 4
  %12 = ptrtoint ptr %fc_mode3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %fc_mode3.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %tm_info.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %13 = ptrtoint ptr %tm_info.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tm_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.if.else.i_crit_edge

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else
  %pfc_en.i3 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %15 = ptrtoint ptr %pfc_en.i3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfc_en.i3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i4 = icmp eq i8 %16, 0
  br i1 %tobool.not.i4, label %if.then.i6, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i6:                                       ; preds = %land.lhs.true.i
  %fc_mode_last_time.i5 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %17 = ptrtoint ptr %fc_mode_last_time.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_mode_last_time.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp3.i = icmp eq i32 %18, 4
  br i1 %cmp3.i, label %do.end.i, label %if.then.i6.if.end.i8_crit_edge

if.then.i6.if.end.i8_crit_edge:                   ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8

do.end.i:                                         ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.43) #10
  br label %if.end.i8

if.end.i8:                                        ; preds = %do.end.i, %if.then.i6.if.end.i8_crit_edge
  %21 = ptrtoint ptr %fc_mode_last_time.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fc_mode_last_time.i5, align 4
  %fc_mode.i7 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %23 = ptrtoint ptr %fc_mode.i7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fc_mode.i7, align 8
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %fc_mode9.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %24 = ptrtoint ptr %fc_mode9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fc_mode9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp10.not.i = icmp eq i32 %25, 4
  br i1 %cmp10.not.i, label %if.else.i.if.end_crit_edge, label %if.then12.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time15.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %26 = ptrtoint ptr %fc_mode_last_time15.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fc_mode_last_time15.i, align 4
  %27 = ptrtoint ptr %fc_mode9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %fc_mode9.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %if.else.i.if.end_crit_edge, %if.end.i8, %if.then4.i, %if.end.i.if.end_crit_edge, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_dwrr_cfg(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %desc.i27.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i4 = alloca %struct.hclge_desc, align 4
  %desc.i49.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sch_mode.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 32
  %0 = ptrtoint ptr %tx_sch_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_sch_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

for.cond.preheader.i:                             ; preds = %entry
  %num_pg.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %2 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_pg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp318.not.i = icmp eq i8 %3, 0
  br i1 %cmp318.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %dwrr2.i.i = getelementptr inbounds %struct.hclge_pg_weight_cmd, ptr %4, i32 0, i32 1
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %5 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_pg.i, align 1
  %conv2.i = zext i8 %6 to i32
  %cmp3.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp3.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %conv5.i = trunc i32 %i.019.i to i8
  %arrayidx.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 2, i32 %i.019.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  %9 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 2057, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5.i, ptr %4, align 4
  %11 = ptrtoint ptr %dwrr2.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %dwrr2.i.i, align 1
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %12 = ptrtoint ptr %tx_sch_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %tx_sch_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp.i = icmp eq i8 %.pr, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %if.end
  %vport1.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %13 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vport1.i.i, align 4
  %tm_info.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %15 = ptrtoint ptr %tm_info.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tm_info.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp58.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp58.not.i.i, label %if.then.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %17 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i, i32 0, i32 4
  %dwrr2.i.i.i = getelementptr inbounds %struct.hclge_priority_weight_cmd, ptr %17, i32 0, i32 1
  %hw.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %num_alloc_vport.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %18 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i49.i.i, i32 0, i32 4
  %dwrr2.i50.i.i = getelementptr inbounds %struct.hclge_qs_weight_cmd, ptr %18, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc23.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.059.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc24.i.i, %for.inc23.i.i.for.body.i.i_crit_edge ]
  %pgid.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %i.059.i.i, i32 2
  %19 = ptrtoint ptr %pgid.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pgid.i.i, align 2
  %idxprom.i.i = zext i8 %20 to i32
  %arrayidx7.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.i.i, i32 4, i32 %i.059.i.i
  %21 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = trunc i32 %i.059.i.i to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #7
  %23 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i, i32 noundef 2059, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8.i.i, ptr %17, align 4
  %25 = ptrtoint ptr %dwrr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %dwrr2.i.i.i, align 1
  %call.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond9.preheader.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond9.preheader.i.i:                          ; preds = %for.body.i.i
  %26 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_alloc_vport.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp1155.not.i.i = icmp eq i16 %27, 0
  br i1 %cmp1155.not.i.i, label %for.cond9.preheader.i.i.for.inc23.i.i_crit_edge, label %for.body13.lr.ph.i.i

for.cond9.preheader.i.i.for.inc23.i.i_crit_edge:  ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i.i

for.body13.lr.ph.i.i:                             ; preds = %for.cond9.preheader.i.i
  %28 = trunc i32 %i.059.i.i to i16
  br label %for.body13.i.i

for.cond9.i.i:                                    ; preds = %for.body13.i.i
  %inc.i.i = add nuw nsw i32 %k.056.i.i, 1
  %29 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_alloc_vport.i.i, align 2
  %conv10.i.i = zext i16 %30 to i32
  %cmp11.i.i = icmp ult i32 %inc.i.i, %conv10.i.i
  br i1 %cmp11.i.i, label %for.cond9.i.i.for.body13.i.i_crit_edge, label %for.cond9.i.i.for.inc23.i.i_crit_edge

for.cond9.i.i.for.inc23.i.i_crit_edge:            ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i.i

for.cond9.i.i.for.body13.i.i_crit_edge:           ; preds = %for.cond9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %for.cond9.i.i.for.body13.i.i_crit_edge, %for.body13.lr.ph.i.i
  %k.056.i.i = phi i32 [ 0, %for.body13.lr.ph.i.i ], [ %inc.i.i, %for.cond9.i.i.for.body13.i.i_crit_edge ]
  %qs_offset.i.i = getelementptr %struct.hclge_vport, ptr %14, i32 %k.056.i.i, i32 1
  %31 = ptrtoint ptr %qs_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %qs_offset.i.i, align 2
  %conv16.i.i = add i16 %32, %28
  %dwrr18.i.i = getelementptr %struct.hclge_vport, ptr %14, i32 %k.056.i.i, i32 3
  %33 = ptrtoint ptr %dwrr18.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dwrr18.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i49.i.i) #7
  %35 = call ptr @memset(ptr %desc.i49.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i49.i.i, i32 noundef 2058, i1 noundef zeroext false) #7
  %36 = call i16 @llvm.bswap.i16(i16 %conv16.i.i) #7
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %18, align 4
  %38 = ptrtoint ptr %dwrr2.i50.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %34, ptr %dwrr2.i50.i.i, align 2
  %call.i52.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i, ptr noundef nonnull %desc.i49.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i49.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i52.i.i, 0
  br i1 %tobool20.not.i.i, label %for.cond9.i.i, label %for.body13.i.i.cleanup_crit_edge

for.body13.i.i.cleanup_crit_edge:                 ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc23.i.i:                                    ; preds = %for.cond9.i.i.for.inc23.i.i_crit_edge, %for.cond9.preheader.i.i.for.inc23.i.i_crit_edge
  %inc24.i.i = add nuw nsw i32 %i.059.i.i, 1
  %39 = ptrtoint ptr %tm_info.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tm_info.i.i, align 8
  %conv.i.i = zext i8 %40 to i32
  %cmp.i.i = icmp ult i32 %inc24.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc23.i.i.for.body.i.i_crit_edge, label %for.inc23.i.i.if.end.i_crit_edge

for.inc23.i.i.if.end.i_crit_edge:                 ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.inc23.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc23.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %ae_dev.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %41 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ae_dev.i, align 4
  %flag.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flag.i, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i4) #7
  %46 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i4, i32 0, i32 4
  %47 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i4, i32 0, i32 4, i32 2
  %48 = call ptr @memset(ptr %desc.i.i4, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i4, i32 noundef 2115, i1 noundef zeroext false) #7
  %pgid.i27.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 0, i32 2
  %49 = ptrtoint ptr %pgid.i27.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pgid.i27.i, align 2
  %idxprom.i28.i = zext i8 %50 to i32
  %arrayidx4.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.i28.i, i32 4, i32 0
  %51 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.i.i, align 1
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %46, align 4
  %pgid.1.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 1, i32 2
  %54 = ptrtoint ptr %pgid.1.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pgid.1.i.i, align 2
  %idxprom.1.i.i = zext i8 %55 to i32
  %arrayidx4.1.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.1.i.i, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.1.i.i, align 1
  %arrayidx5.1.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx5.1.i.i, align 1
  %pgid.2.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 2, i32 2
  %59 = ptrtoint ptr %pgid.2.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pgid.2.i.i, align 2
  %idxprom.2.i.i = zext i8 %60 to i32
  %arrayidx4.2.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.2.i.i, i32 4, i32 2
  %61 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.2.i.i, align 1
  %arrayidx5.2.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx5.2.i.i, align 2
  %pgid.3.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 3, i32 2
  %64 = ptrtoint ptr %pgid.3.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pgid.3.i.i, align 2
  %idxprom.3.i.i = zext i8 %65 to i32
  %arrayidx4.3.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.3.i.i, i32 4, i32 3
  %66 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.3.i.i, align 1
  %arrayidx5.3.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx5.3.i.i, align 1
  %pgid.4.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 4, i32 2
  %69 = ptrtoint ptr %pgid.4.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pgid.4.i.i, align 2
  %idxprom.4.i.i = zext i8 %70 to i32
  %arrayidx4.4.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.4.i.i, i32 4, i32 4
  %71 = ptrtoint ptr %arrayidx4.4.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx4.4.i.i, align 1
  %arrayidx5.4.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i4, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx5.4.i.i, align 4
  %pgid.5.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 5, i32 2
  %74 = ptrtoint ptr %pgid.5.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pgid.5.i.i, align 2
  %idxprom.5.i.i = zext i8 %75 to i32
  %arrayidx4.5.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.5.i.i, i32 4, i32 5
  %76 = ptrtoint ptr %arrayidx4.5.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx4.5.i.i, align 1
  %arrayidx5.5.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx5.5.i.i, align 1
  %pgid.6.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 6, i32 2
  %79 = ptrtoint ptr %pgid.6.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pgid.6.i.i, align 2
  %idxprom.6.i.i = zext i8 %80 to i32
  %arrayidx4.6.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.6.i.i, i32 4, i32 6
  %81 = ptrtoint ptr %arrayidx4.6.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx4.6.i.i, align 1
  %arrayidx5.6.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 6
  %83 = ptrtoint ptr %arrayidx5.6.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx5.6.i.i, align 2
  %pgid.7.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 7, i32 2
  %84 = ptrtoint ptr %pgid.7.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pgid.7.i.i, align 2
  %idxprom.7.i.i = zext i8 %85 to i32
  %arrayidx4.7.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %idxprom.7.i.i, i32 4, i32 7
  %86 = ptrtoint ptr %arrayidx4.7.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx4.7.i.i, align 1
  %arrayidx5.7.i.i = getelementptr inbounds [8 x i8], ptr %46, i32 0, i32 7
  %88 = ptrtoint ptr %arrayidx5.7.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx5.7.i.i, align 1
  %89 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 14, ptr %47, align 4
  %hw.i.i6 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i.i7 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i6, ptr noundef nonnull %desc.i.i4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i7)
  %cmp7.i = icmp eq i32 %call.i.i7, -95
  br i1 %cmp7.i, label %do.end.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %fw_version.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 15
  %92 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fw_version.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %93) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %num_alloc_vport.i29.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %94 = ptrtoint ptr %num_alloc_vport.i29.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_alloc_vport.i29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp14.not.i.i = icmp eq i16 %95, 0
  br i1 %cmp14.not.i.i, label %if.else.i.cleanup_crit_edge, label %for.body.lr.ph.i31.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i31.i:                             ; preds = %if.else.i
  %vport1.i30.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %96 = ptrtoint ptr %vport1.i30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vport1.i30.i, align 4
  %98 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i, i32 0, i32 4
  %dwrr2.i.i.i.i = getelementptr inbounds %struct.hclge_priority_weight_cmd, ptr %98, i32 0, i32 1
  %99 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i27.i.i.i, i32 0, i32 4
  %dwrr2.i28.i.i.i = getelementptr inbounds %struct.hclge_qs_weight_cmd, ptr %99, i32 0, i32 1
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %if.end.i.i.for.body.i32.i_crit_edge, %for.body.lr.ph.i31.i
  %i.017.i.i = phi i32 [ 0, %for.body.lr.ph.i31.i ], [ %inc.i33.i, %if.end.i.i.for.body.i32.i_crit_edge ]
  %vport.015.i.i = phi ptr [ %97, %for.body.lr.ph.i31.i ], [ %incdec.ptr.i.i, %if.end.i.i.for.body.i32.i_crit_edge ]
  %back.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.015.i.i, i32 0, i32 12
  %100 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %back.i.i.i, align 4
  %vport_id.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.015.i.i, i32 0, i32 11
  %102 = ptrtoint ptr %vport_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %vport_id.i.i.i, align 2
  %conv.i.i.i = trunc i16 %103 to i8
  %dwrr.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.015.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %dwrr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dwrr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i) #7
  %106 = call ptr @memset(ptr %desc.i.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i, i32 noundef 2059, i1 noundef zeroext false) #7
  %107 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv.i.i.i, ptr %98, align 4
  %108 = ptrtoint ptr %dwrr2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %dwrr2.i.i.i.i, align 1
  %hw.i.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %101, i32 0, i32 2
  %call.i.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i.i, ptr noundef nonnull %desc.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.preheader.i.i.i, label %for.body.i32.i.cleanup_crit_edge

for.body.i32.i.cleanup_crit_edge:                 ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i.i.i:                         ; preds = %for.body.i32.i
  %num_tc.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.015.i.i, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %109 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_tc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp31.not.i.i.i = icmp eq i8 %110, 0
  br i1 %cmp31.not.i.i.i, label %for.cond.preheader.i.i.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.if.end.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %qs_offset.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.015.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %111 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_tc.i.i.i, align 4
  %113 = zext i8 %112 to i32
  %cmp.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %113
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.i.i.i.if.end.i.i_crit_edge

for.cond.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %114 = ptrtoint ptr %qs_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %qs_offset.i.i.i, align 2
  %116 = trunc i32 %indvars.iv.i.i.i to i16
  %conv6.i.i.i = add i16 %115, %116
  %arrayidx7.i.i.i = getelementptr %struct.hclge_dev, ptr %101, i32 0, i32 37, i32 4, i32 0, i32 4, i32 %indvars.iv.i.i.i
  %117 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx7.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i27.i.i.i) #7
  %119 = call ptr @memset(ptr %desc.i27.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i27.i.i.i, i32 noundef 2058, i1 noundef zeroext false) #7
  %120 = call i16 @llvm.bswap.i16(i16 %conv6.i.i.i) #7
  %121 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %99, align 4
  %122 = ptrtoint ptr %dwrr2.i28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %118, ptr %dwrr2.i28.i.i.i, align 2
  %call.i30.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i.i, ptr noundef nonnull %desc.i27.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i27.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i30.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.cleanup_crit_edge

for.body.i.i.i.cleanup_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %for.cond.i.i.i.if.end.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.hclge_vport, ptr %vport.015.i.i, i32 1
  %inc.i33.i = add nuw nsw i32 %i.017.i.i, 1
  %123 = ptrtoint ptr %num_alloc_vport.i29.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_alloc_vport.i29.i, align 2
  %conv.i34.i = zext i16 %124 to i32
  %cmp.i35.i = icmp ult i32 %inc.i33.i, %conv.i34.i
  br i1 %cmp.i35.i, label %if.end.i.i.for.body.i32.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.for.body.i32.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i32.i

cleanup:                                          ; preds = %if.end.i.i.cleanup_crit_edge, %for.body.i.i.i.cleanup_crit_edge, %for.body.i32.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %do.end.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body13.i.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ %call.i.i7, %if.end5.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ %call.i52.i.i, %for.body13.i.i.cleanup_crit_edge ], [ %call.i.i.i, %for.body.i.i.cleanup_crit_edge ], [ %call.i30.i.i.i, %for.body.i.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i.i.i, %for.body.i32.i.cleanup_crit_edge ], [ %call.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_schd_setup_hw(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %desc.i34.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i36.i.i = alloca %struct.hclge_desc, align 4
  %desc.i22.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i.i46 = alloca %struct.hclge_desc, align 4
  %desc.i.i.i47 = alloca %struct.hclge_desc, align 4
  %desc.i31.i.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i37.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i.i18 = alloca %struct.hclge_desc, align 4
  %desc.i43.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i19 = alloca %struct.hclge_desc, align 4
  %desc.i.i20 = alloca %struct.hclge_desc, align 4
  %desc.i.i33.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i.i = alloca %struct.hclge_desc, align 4
  %desc.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 1801, i1 noundef zeroext false) #7
  %tm_info.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %2 = ptrtoint ptr %tm_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tm_info.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp.not.i.i.i = icmp ult i8 %5, %3
  br i1 %cmp.not.i.i.i, label %for.inc.i.i, label %entry.hclge_up_to_tc_map.exit.thread.i_crit_edge

entry.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.i.1.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %3)
  %cmp.not.i.1.i.i = icmp ult i8 %7, %3
  br i1 %cmp.not.i.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 4
  %shl.i.1.i.i = shl i8 %7, 4
  %or.i.i.i = or i8 %shl.i.1.i.i, %5
  %or.i.1.i.i = or i8 %or.i.i.i, %9
  store i8 %or.i.1.i.i, ptr %0, align 4
  %arrayidx.i.2.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %3)
  %cmp.not.i.2.i.i = icmp ult i8 %11, %3
  br i1 %cmp.not.i.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.1.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.i.3.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %3)
  %cmp.not.i.3.i.i = icmp ult i8 %13, %3
  br i1 %cmp.not.i.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.2.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx7.i.2.i.i = getelementptr inbounds i8, ptr %0, i32 1
  %14 = ptrtoint ptr %arrayidx7.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i.2.i.i, align 1
  %shl.i.3.i.i = shl i8 %13, 4
  %or.i.2.i.i = or i8 %shl.i.3.i.i, %11
  %or.i.3.i.i = or i8 %or.i.2.i.i, %15
  store i8 %or.i.3.i.i, ptr %arrayidx7.i.2.i.i, align 1
  %arrayidx.i.4.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %3)
  %cmp.not.i.4.i.i = icmp ult i8 %17, %3
  br i1 %cmp.not.i.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.3.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.i.5.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 5
  %18 = ptrtoint ptr %arrayidx.i.5.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %3)
  %cmp.not.i.5.i.i = icmp ult i8 %19, %3
  br i1 %cmp.not.i.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.4.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx7.i.4.i.i = getelementptr inbounds i8, ptr %0, i32 2
  %20 = ptrtoint ptr %arrayidx7.i.4.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7.i.4.i.i, align 2
  %shl.i.5.i.i = shl i8 %19, 4
  %or.i.4.i.i = or i8 %shl.i.5.i.i, %17
  %or.i.5.i.i = or i8 %or.i.4.i.i, %21
  store i8 %or.i.5.i.i, ptr %arrayidx7.i.4.i.i, align 2
  %arrayidx.i.6.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %3)
  %cmp.not.i.6.i.i = icmp ult i8 %23, %3
  br i1 %cmp.not.i.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.5.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.i.7.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 7
  %24 = ptrtoint ptr %arrayidx.i.7.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %3)
  %cmp.not.i.7.i.i = icmp ult i8 %25, %3
  br i1 %cmp.not.i.7.i.i, label %hclge_up_to_tc_map.exit.i, label %for.inc.6.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge

for.inc.6.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_up_to_tc_map.exit.thread.i

hclge_up_to_tc_map.exit.thread.i:                 ; preds = %for.inc.6.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.5.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.4.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.3.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.2.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.1.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %for.inc.i.i.hclge_up_to_tc_map.exit.thread.i_crit_edge, %entry.hclge_up_to_tc_map.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  br label %cleanup

hclge_up_to_tc_map.exit.i:                        ; preds = %for.inc.6.i.i
  %arrayidx7.i.6.i.i = getelementptr inbounds i8, ptr %0, i32 3
  %26 = ptrtoint ptr %arrayidx7.i.6.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.i.6.i.i, align 1
  %shl.i.7.i.i = shl i8 %25, 4
  %or.i.6.i.i = or i8 %shl.i.7.i.i, %23
  %or.i.7.i.i = or i8 %or.i.6.i.i, %27
  store i8 %or.i.7.i.i, ptr %arrayidx7.i.6.i.i, align 1
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call2.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hclge_up_to_tc_map.exit.i.cleanup_crit_edge

hclge_up_to_tc_map.exit.i.cleanup_crit_edge:      ; preds = %hclge_up_to_tc_map.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %hclge_up_to_tc_map.exit.i
  %tx_sch_mode.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 32
  %28 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.not.i.i = icmp eq i8 %29, 1
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %num_pg.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %30 = ptrtoint ptr %num_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_pg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp318.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp318.not.i.i, label %for.cond.preheader.i.i.if.end4thread-pre-split.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end4thread-pre-split.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4thread-pre-split.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %32 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i, i32 0, i32 4
  %33 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i, i32 0, i32 4, i32 1
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %34 = ptrtoint ptr %num_pg.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_pg.i.i, align 1
  %conv2.i.i = zext i8 %35 to i32
  %cmp3.i.i = icmp ult i32 %inc.i.i, %conv2.i.i
  br i1 %cmp3.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end4thread-pre-split.i_crit_edge

for.cond.i.i.if.end4thread-pre-split.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4thread-pre-split.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %conv5.i.i = trunc i32 %i.019.i.i to i8
  %tc_bit_map.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %i.019.i.i, i32 2
  %36 = ptrtoint ptr %tc_bit_map.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tc_bit_map.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #7
  %38 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i, i32 noundef 2052, i1 noundef zeroext false) #7
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv5.i.i, ptr %32, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %33, align 4
  %call.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4thread-pre-split.i:                        ; preds = %for.cond.i.i.if.end4thread-pre-split.i_crit_edge, %for.cond.preheader.i.i.if.end4thread-pre-split.i_crit_edge
  %41 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr.i = load i8, ptr %tx_sch_mode.i.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4thread-pre-split.i, %if.end.i.if.end4.i_crit_edge
  %42 = phi i8 [ %.pr.i, %if.end4thread-pre-split.i ], [ %29, %if.end.i.if.end4.i_crit_edge ]
  %vport1.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %43 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vport1.i.i, align 4
  %45 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %if.end4.i.cleanup_crit_edge [
    i8 1, label %if.then.i.i
    i8 2, label %if.then7.i.i
  ]

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end4.i
  %num_alloc_vport.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %46 = ptrtoint ptr %num_alloc_vport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_alloc_vport.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp37.not.i.i.i = icmp eq i16 %47, 0
  br i1 %cmp37.not.i.i.i, label %if.then.i.i.if.end10.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i.i
  %48 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i, i32 0, i32 4
  %49 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i, i32 0, i32 4, i32 1
  %link_vld.i.i.i.i = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, ptr %48, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc16.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %for.inc16.i.i.i.for.body.i.i.i_crit_edge ]
  %num_tc.i.i.i = getelementptr %struct.hclge_vport, ptr %44, i32 %indvars.iv.i.i.i, i32 13, i32 5, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_tc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp735.not.i.i.i = icmp eq i8 %51, 0
  br i1 %cmp735.not.i.i.i, label %for.body.i.i.i.for.inc16.i.i.i_crit_edge, label %for.body9.lr.ph.i.i.i

for.body.i.i.i.for.inc16.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i.i.i

for.body9.lr.ph.i.i.i:                            ; preds = %for.body.i.i.i
  %qs_offset.i.i.i = getelementptr %struct.hclge_vport, ptr %44, i32 %indvars.iv.i.i.i, i32 1
  br label %for.body9.i.i.i

for.cond4.i.i.i:                                  ; preds = %for.body9.i.i.i
  %inc.i.i.i = add nuw nsw i16 %i.036.i.i.i, 1
  %52 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_tc.i.i.i, align 4
  %54 = zext i8 %53 to i16
  %cmp7.i.i.i = icmp ult i16 %inc.i.i.i, %54
  br i1 %cmp7.i.i.i, label %for.cond4.i.i.i.for.body9.i.i.i_crit_edge, label %for.cond4.i.i.i.for.inc16.i.i.i_crit_edge

for.cond4.i.i.i.for.inc16.i.i.i_crit_edge:        ; preds = %for.cond4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16.i.i.i

for.cond4.i.i.i.for.body9.i.i.i_crit_edge:        ; preds = %for.cond4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i.i.i

for.body9.i.i.i:                                  ; preds = %for.cond4.i.i.i.for.body9.i.i.i_crit_edge, %for.body9.lr.ph.i.i.i
  %i.036.i.i.i = phi i16 [ 0, %for.body9.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond4.i.i.i.for.body9.i.i.i_crit_edge ]
  %55 = ptrtoint ptr %qs_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %qs_offset.i.i.i, align 2
  %add.i.i.i = add i16 %56, %i.036.i.i.i
  %conv15.i.i.i = trunc i16 %i.036.i.i.i to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i) #7
  %57 = call ptr @memset(ptr %desc.i.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %58 = call i16 @llvm.bswap.i16(i16 %add.i.i.i) #7
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %48, align 4
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv15.i.i.i, ptr %49, align 4
  %61 = ptrtoint ptr %link_vld.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %link_vld.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond4.i.i.i, label %for.body9.i.i.i.cleanup_crit_edge

for.body9.i.i.i.cleanup_crit_edge:                ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc16.i.i.i:                                  ; preds = %for.cond4.i.i.i.for.inc16.i.i.i_crit_edge, %for.body.i.i.i.for.inc16.i.i.i_crit_edge
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %62 = ptrtoint ptr %num_alloc_vport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_alloc_vport.i.i.i, align 2
  %64 = zext i16 %63 to i32
  %cmp.i.i.i = icmp ult i32 %indvars.iv.next.i.i.i, %64
  br i1 %cmp.i.i.i, label %for.inc16.i.i.i.for.body.i.i.i_crit_edge, label %for.inc16.i.i.i.if.end10.i.i_crit_edge

for.inc16.i.i.i.if.end10.i.i_crit_edge:           ; preds = %for.inc16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.inc16.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.then7.i.i:                                     ; preds = %if.end4.i
  %num_alloc_vport.i35.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %65 = ptrtoint ptr %num_alloc_vport.i35.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_alloc_vport.i35.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp29.not.i.i.i = icmp eq i16 %66, 0
  br i1 %cmp29.not.i.i.i, label %if.then7.i.i.if.end10.i.i_crit_edge, label %for.cond4.preheader.lr.ph.i.i.i

if.then7.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.cond4.preheader.lr.ph.i.i.i:                  ; preds = %if.then7.i.i
  %67 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i33.i.i, i32 0, i32 4
  %68 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i33.i.i, i32 0, i32 4, i32 1
  %link_vld.i.i36.i.i = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, ptr %67, i32 0, i32 3
  br label %for.cond4.preheader.i.i.i

for.cond4.preheader.i.i.i:                        ; preds = %for.cond4.7.i.i.i.for.cond4.preheader.i.i.i_crit_edge, %for.cond4.preheader.lr.ph.i.i.i
  %indvars.iv.i38.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %indvars.iv.next.i43.i.i, %for.cond4.7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %qs_offset.i39.i.i = getelementptr %struct.hclge_vport, ptr %44, i32 %indvars.iv.i38.i.i, i32 1
  %conv12.i.i.i = trunc i32 %indvars.iv.i38.i.i to i8
  %69 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %qs_offset.i39.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %71 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %72 = call i16 @llvm.bswap.i16(i16 %70) #7
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %67, align 4
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %75 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.i40.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i.i)
  %tobool.not.i41.i.i = icmp eq i32 %call.i.i40.i.i, 0
  br i1 %tobool.not.i41.i.i, label %for.cond4.i42.i.i, label %for.cond4.preheader.i.i.i.cleanup_crit_edge

for.cond4.preheader.i.i.i.cleanup_crit_edge:      ; preds = %for.cond4.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.i42.i.i:                                ; preds = %for.cond4.preheader.i.i.i
  %76 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.1.i.i.i = add i16 %77, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %78 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %79 = call i16 @llvm.bswap.i16(i16 %add.1.i.i.i) #7
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %67, align 4
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %82 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.1.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %call.i.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.cond4.1.i.i.i, label %for.cond4.i42.i.i.cleanup_crit_edge

for.cond4.i42.i.i.cleanup_crit_edge:              ; preds = %for.cond4.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.1.i.i.i:                                ; preds = %for.cond4.i42.i.i
  %83 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.2.i.i.i = add i16 %84, 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %85 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %86 = call i16 @llvm.bswap.i16(i16 %add.2.i.i.i) #7
  %87 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %67, align 4
  %88 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %89 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.2.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %call.i.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.cond4.2.i.i.i, label %for.cond4.1.i.i.i.cleanup_crit_edge

for.cond4.1.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.2.i.i.i:                                ; preds = %for.cond4.1.i.i.i
  %90 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.3.i.i.i = add i16 %91, 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %92 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %93 = call i16 @llvm.bswap.i16(i16 %add.3.i.i.i) #7
  %94 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %67, align 4
  %95 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %96 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.3.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i.i)
  %tobool.not.3.i.i.i = icmp eq i32 %call.i.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %for.cond4.3.i.i.i, label %for.cond4.2.i.i.i.cleanup_crit_edge

for.cond4.2.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.3.i.i.i:                                ; preds = %for.cond4.2.i.i.i
  %97 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.4.i.i.i = add i16 %98, 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %99 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %100 = call i16 @llvm.bswap.i16(i16 %add.4.i.i.i) #7
  %101 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %67, align 4
  %102 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %103 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.4.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i.i.i)
  %tobool.not.4.i.i.i = icmp eq i32 %call.i.4.i.i.i, 0
  br i1 %tobool.not.4.i.i.i, label %for.cond4.4.i.i.i, label %for.cond4.3.i.i.i.cleanup_crit_edge

for.cond4.3.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.4.i.i.i:                                ; preds = %for.cond4.3.i.i.i
  %104 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.5.i.i.i = add i16 %105, 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %106 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %107 = call i16 @llvm.bswap.i16(i16 %add.5.i.i.i) #7
  %108 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %67, align 4
  %109 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %110 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.5.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i.i.i)
  %tobool.not.5.i.i.i = icmp eq i32 %call.i.5.i.i.i, 0
  br i1 %tobool.not.5.i.i.i, label %for.cond4.5.i.i.i, label %for.cond4.4.i.i.i.cleanup_crit_edge

for.cond4.4.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.5.i.i.i:                                ; preds = %for.cond4.4.i.i.i
  %111 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.6.i.i.i = add i16 %112, 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %113 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %114 = call i16 @llvm.bswap.i16(i16 %add.6.i.i.i) #7
  %115 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %67, align 4
  %116 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %117 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.6.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6.i.i.i)
  %tobool.not.6.i.i.i = icmp eq i32 %call.i.6.i.i.i, 0
  br i1 %tobool.not.6.i.i.i, label %for.cond4.6.i.i.i, label %for.cond4.5.i.i.i.cleanup_crit_edge

for.cond4.5.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.6.i.i.i:                                ; preds = %for.cond4.5.i.i.i
  %118 = ptrtoint ptr %qs_offset.i39.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %qs_offset.i39.i.i, align 2
  %add.7.i.i.i = add i16 %119, 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  %120 = call ptr @memset(ptr %desc.i.i33.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 2053, i1 noundef zeroext false) #7
  %121 = call i16 @llvm.bswap.i16(i16 %add.7.i.i.i) #7
  %122 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %67, align 4
  %123 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv12.i.i.i, ptr %68, align 4
  %124 = ptrtoint ptr %link_vld.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %link_vld.i.i36.i.i, align 1
  %call.i.7.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i33.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i33.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7.i.i.i)
  %tobool.not.7.i.i.i = icmp eq i32 %call.i.7.i.i.i, 0
  br i1 %tobool.not.7.i.i.i, label %for.cond4.7.i.i.i, label %for.cond4.6.i.i.i.cleanup_crit_edge

for.cond4.6.i.i.i.cleanup_crit_edge:              ; preds = %for.cond4.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond4.7.i.i.i:                                ; preds = %for.cond4.6.i.i.i
  %indvars.iv.next.i43.i.i = add nuw nsw i32 %indvars.iv.i38.i.i, 1
  %125 = ptrtoint ptr %num_alloc_vport.i35.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %num_alloc_vport.i35.i.i, align 2
  %127 = zext i16 %126 to i32
  %cmp.i44.i.i = icmp ult i32 %indvars.iv.next.i43.i.i, %127
  br i1 %cmp.i44.i.i, label %for.cond4.7.i.i.i.for.cond4.preheader.i.i.i_crit_edge, label %for.cond4.7.i.i.i.if.end10.i.i_crit_edge

for.cond4.7.i.i.i.if.end10.i.i_crit_edge:         ; preds = %for.cond4.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

for.cond4.7.i.i.i.for.cond4.preheader.i.i.i_crit_edge: ; preds = %for.cond4.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader.i.i.i

if.end10.i.i:                                     ; preds = %for.cond4.7.i.i.i.if.end10.i.i_crit_edge, %if.then7.i.i.if.end10.i.i_crit_edge, %for.inc16.i.i.i.if.end10.i.i_crit_edge, %if.then.i.i.if.end10.i.i_crit_edge
  %num_alloc_vport.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %128 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %num_alloc_vport.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp1453.not.i.i = icmp eq i16 %129, 0
  br i1 %cmp1453.not.i.i, label %if.end10.i.i.if.end_crit_edge, label %if.end10.i.i.for.body.i13.i_crit_edge

if.end10.i.i.for.body.i13.i_crit_edge:            ; preds = %if.end10.i.i
  br label %for.body.i13.i

if.end10.i.i.if.end_crit_edge:                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i13.i:                                   ; preds = %if.end19.i.i.for.body.i13.i_crit_edge, %if.end10.i.i.for.body.i13.i_crit_edge
  %i.055.i.i = phi i32 [ %inc.i14.i, %if.end19.i.i.for.body.i13.i_crit_edge ], [ 0, %if.end10.i.i.for.body.i13.i_crit_edge ]
  %vport.054.i.i = phi ptr [ %incdec.ptr.i.i, %if.end19.i.i.for.body.i13.i_crit_edge ], [ %44, %if.end10.i.i.for.body.i13.i_crit_edge ]
  %call16.i.i = call fastcc i32 @hclge_vport_q_to_qs_map(ptr noundef %hdev, ptr noundef %vport.054.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i.i, label %for.body.i13.i.cleanup_crit_edge

for.body.i13.i.cleanup_crit_edge:                 ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.i.i:                                     ; preds = %for.body.i13.i
  %incdec.ptr.i.i = getelementptr %struct.hclge_vport, ptr %vport.054.i.i, i32 1
  %inc.i14.i = add nuw nsw i32 %i.055.i.i, 1
  %130 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %num_alloc_vport.i.i, align 2
  %conv13.i.i = zext i16 %131 to i32
  %cmp14.i.i = icmp ult i32 %inc.i14.i, %conv13.i.i
  br i1 %cmp14.i.i, label %if.end19.i.i.for.body.i13.i_crit_edge, label %if.end19.i.i.if.end_crit_edge

if.end19.i.i.if.end_crit_edge:                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end19.i.i.for.body.i13.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i13.i

if.end:                                           ; preds = %if.end19.i.i.if.end_crit_edge, %if.end10.i.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i20) #7
  %132 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i20, i32 0, i32 4
  %133 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i20, i32 0, i32 4, i32 1
  %134 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i20, i32 0, i32 4, i32 2
  %speed.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1, i32 9
  %135 = call ptr @memset(ptr %desc.i.i20, i32 255, i32 32)
  %136 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %speed.i.i, align 4
  %ae_dev.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %138 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ae_dev.i.i, align 4
  %max_tm_rate.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %139, i32 0, i32 5, i32 2
  %140 = ptrtoint ptr %max_tm_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %max_tm_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %141)
  %cmp2.i.i.i = icmp ugt i32 %137, %141
  br i1 %cmp2.i.i.i, label %hclge_tm_port_shaper_cfg.exit.thread.i, label %if.end.i.i.i

hclge_tm_port_shaper_cfg.exit.thread.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i20) #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 21000, i32 %137)
  %cmp5.i.i.i = icmp eq i32 %137, 21000
  br i1 %cmp5.i.i.i, label %if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_port_shaper_cfg.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21000, i32 %137)
  %cmp8.i.i.i = icmp ult i32 %137, 21000
  br i1 %cmp8.i.i.i, label %while.cond.preheader.i.i.i, label %if.else.i.i.i.while.body27.i.i.i_crit_edge

if.else.i.i.i.while.body27.i.i.i_crit_edge:       ; preds = %if.else.i.i.i
  br label %while.body27.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.else.i.i.i
  %142 = add nsw i32 %137, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21000, i32 %142)
  %.not95.i.i.i = icmp ult i32 %142, 21000
  br i1 %.not95.i.i.i, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %ir_s_calc.096.i.i.i = phi i8 [ %inc.i.i.i21, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %inc.i.i.i21 = add i8 %ir_s_calc.096.i.i.i, 1
  %conv13.i.i.i = zext i8 %inc.i.i.i21 to i32
  %mul.i.i.i = shl i32 48, %conv13.i.i.i
  %div14.i.i.i = udiv i32 1008000, %mul.i.i.i
  %.not.i.i.i = icmp ult i32 %142, %div14.i.i.i
  br i1 %.not.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.i.while.end.i.i.i_crit_edge

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %ir_s_calc.0.lcssa.i.i.i = phi i8 [ 0, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i21, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %mul15.i.i.i = mul i32 %137, 48
  %conv16.i.i.i = zext i8 %ir_s_calc.0.lcssa.i.i.i to i32
  %mul18.i.i.i = shl i32 %mul15.i.i.i, %conv16.i.i.i
  %add19.i.i.i = add i32 %mul18.i.i.i, 4000
  %div20.i.i.i = udiv i32 %add19.i.i.i, 8000
  br label %hclge_tm_port_shaper_cfg.exit.i

while.body27.i.i.i:                               ; preds = %while.body27.i.i.i.while.body27.i.i.i_crit_edge, %if.else.i.i.i.while.body27.i.i.i_crit_edge
  %ir_u_calc.093.i.i.i = phi i8 [ %inc28.i.i.i, %while.body27.i.i.i.while.body27.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.while.body27.i.i.i_crit_edge ]
  %inc28.i.i.i = add i8 %ir_u_calc.093.i.i.i, 1
  %conv29.i.i.i = zext i8 %inc28.i.i.i to i32
  %mul31.i.i.i = shl i32 1008000, %conv29.i.i.i
  %add33.i.i.i = or i32 %mul31.i.i.i, 16
  %div34.i.i.i = udiv i32 %add33.i.i.i, 48
  %cmp25.i.i.i = icmp ult i32 %div34.i.i.i, %137
  br i1 %cmp25.i.i.i, label %while.body27.i.i.i.while.body27.i.i.i_crit_edge, label %while.end35.i.i.i

while.body27.i.i.i.while.body27.i.i.i_crit_edge:  ; preds = %while.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i.i.i

while.end35.i.i.i:                                ; preds = %while.body27.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i.i.i, i32 %137)
  %cmp36.i.i.i = icmp eq i32 %div34.i.i.i, %137
  br i1 %cmp36.i.i.i, label %while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge, label %if.else40.i.i.i

while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge: ; preds = %while.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_port_shaper_cfg.exit.i

if.else40.i.i.i:                                  ; preds = %while.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv41.i.i.i = zext i8 %ir_u_calc.093.i.i.i to i32
  %mul43.i.i.i = shl i32 8000, %conv41.i.i.i
  %mul44.i.i.i = mul i32 %137, 48
  %shr45.i.i.i = lshr exact i32 %mul43.i.i.i, 1
  %add46.i.i.i = add i32 %shr45.i.i.i, %mul44.i.i.i
  %div47.i.i.i = udiv i32 %add46.i.i.i, %mul43.i.i.i
  br label %hclge_tm_port_shaper_cfg.exit.i

hclge_tm_port_shaper_cfg.exit.i:                  ; preds = %if.else40.i.i.i, %while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge, %while.end.i.i.i, %if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge
  %ir_para.sroa.8.0.ph.i.i = phi i8 [ 0, %while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ], [ 0, %if.else40.i.i.i ], [ %ir_s_calc.0.lcssa.i.i.i, %while.end.i.i.i ], [ 0, %if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ]
  %ir_para.sroa.5.0.ph.i.i = phi i8 [ %inc28.i.i.i, %while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ], [ %ir_u_calc.093.i.i.i, %if.else40.i.i.i ], [ 0, %while.end.i.i.i ], [ 0, %if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ]
  %ir_para.sroa.0.0.ph.i.i = phi i32 [ 126, %while.end35.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ], [ %div47.i.i.i, %if.else40.i.i.i ], [ %div20.i.i.i, %while.end.i.i.i ], [ 126, %if.end.i.i.i.hclge_tm_port_shaper_cfg.exit.i_crit_edge ]
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i20, i32 noundef 2064, i1 noundef zeroext false) #7
  %conv.i.i.i = and i32 %ir_para.sroa.0.0.ph.i.i, 255
  %conv4.i.i.i = zext i8 %ir_para.sroa.5.0.ph.i.i to i32
  %shl5.i.i.i = shl nuw nsw i32 %conv4.i.i.i, 8
  %and6.i.i.i = and i32 %shl5.i.i.i, 3840
  %conv12.i.i.i23 = zext i8 %ir_para.sroa.8.0.ph.i.i to i32
  %shl13.i.i.i = shl nuw nsw i32 %conv12.i.i.i23, 12
  %and14.i.i.i = and i32 %shl13.i.i.i, 61440
  %or7.i.i.i = or i32 %conv.i.i.i, %and14.i.i.i
  %or15.i.i.i = or i32 %or7.i.i.i, %and6.i.i.i
  %or31.i.i.i = or i32 %or15.i.i.i, 42270720
  %143 = call i32 @llvm.bswap.i32(i32 %or31.i.i.i) #7
  %144 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %132, align 4
  %145 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %133, align 4
  %147 = or i8 %146, 1
  store i8 %147, ptr %133, align 4
  %148 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %speed.i.i, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149) #7
  %151 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %134, align 4
  %call10.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i20, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i24 = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i24, label %if.end.i27, label %hclge_tm_port_shaper_cfg.exit.i.cleanup_crit_edge

hclge_tm_port_shaper_cfg.exit.i.cleanup_crit_edge: ; preds = %hclge_tm_port_shaper_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i27:                                       ; preds = %hclge_tm_port_shaper_cfg.exit.i
  %152 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ae_dev.i.i, align 4
  %max_tm_rate1.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 5, i32 2
  %154 = ptrtoint ptr %max_tm_rate1.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %max_tm_rate1.i.i, align 4
  %156 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tx_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %157)
  %cmp.not.i.i26 = icmp eq i8 %157, 1
  br i1 %cmp.not.i.i26, label %for.cond.preheader.i.i29, label %if.end.i27.if.else.i.i_crit_edge

if.end.i27.if.else.i.i_crit_edge:                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

for.cond.preheader.i.i29:                         ; preds = %if.end.i27
  %num_pg.i.i28 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %158 = ptrtoint ptr %num_pg.i.i28 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %num_pg.i.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp463.not.i.i = icmp eq i8 %159, 0
  br i1 %cmp463.not.i.i, label %for.cond.preheader.i.i29.if.end4.i36_crit_edge, label %for.body.lr.ph.i.i30

for.cond.preheader.i.i29.if.end4.i36_crit_edge:   ; preds = %for.cond.preheader.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i36

for.body.lr.ph.i.i30:                             ; preds = %for.cond.preheader.i.i29
  %160 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i19, i32 0, i32 4
  %161 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i19, i32 0, i32 4, i32 1
  %162 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i19, i32 0, i32 4, i32 2
  %163 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i19, i32 0, i32 4, i32 3
  %164 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43.i.i, i32 0, i32 4
  %165 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43.i.i, i32 0, i32 4, i32 1
  %166 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43.i.i, i32 0, i32 4, i32 2
  %167 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i43.i.i, i32 0, i32 4, i32 3
  br label %for.body.i.i33

for.cond.i.i32:                                   ; preds = %cleanup.i.i
  %inc.i.i31 = add nuw nsw i32 %i.064.i.i, 1
  %168 = ptrtoint ptr %num_pg.i.i28 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %num_pg.i.i28, align 1
  %conv3.i.i = zext i8 %169 to i32
  %cmp4.i.i = icmp ult i32 %inc.i.i31, %conv3.i.i
  br i1 %cmp4.i.i, label %for.cond.i.i32.for.body.i.i33_crit_edge, label %for.cond.i.i32.if.end4.i36_crit_edge

for.cond.i.i32.if.end4.i36_crit_edge:             ; preds = %for.cond.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i36

for.cond.i.i32.for.body.i.i33_crit_edge:          ; preds = %for.cond.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i33

for.body.i.i33:                                   ; preds = %for.cond.i.i32.for.body.i.i33_crit_edge, %for.body.lr.ph.i.i30
  %i.064.i.i = phi i32 [ 0, %for.body.lr.ph.i.i30 ], [ %inc.i.i31, %for.cond.i.i32.for.body.i.i33_crit_edge ]
  %bw_limit.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %i.064.i.i, i32 3
  %170 = ptrtoint ptr %bw_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bw_limit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %155)
  %cmp2.i.i12.i = icmp ugt i32 %171, %155
  br i1 %cmp2.i.i12.i, label %for.body.i.i33.cleanup_crit_edge, label %if.end.i.i14.i

for.body.i.i33.cleanup_crit_edge:                 ; preds = %for.body.i.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i14.i:                                   ; preds = %for.body.i.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 5250, i32 %171)
  %cmp5.i.i13.i = icmp eq i32 %171, 5250
  br i1 %cmp5.i.i13.i, label %if.end.i.i14.i.if.end8.i.i_crit_edge, label %if.else.i.i16.i

if.end.i.i14.i.if.end8.i.i_crit_edge:             ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i16.i:                                  ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5250, i32 %171)
  %cmp8.i.i15.i = icmp ult i32 %171, 5250
  br i1 %cmp8.i.i15.i, label %while.cond.preheader.i.i18.i, label %if.else.i.i16.i.while.body27.i.i40.i_crit_edge

if.else.i.i16.i.while.body27.i.i40.i_crit_edge:   ; preds = %if.else.i.i16.i
  br label %while.body27.i.i40.i

while.cond.preheader.i.i18.i:                     ; preds = %if.else.i.i16.i
  %172 = add nsw i32 %171, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5250, i32 %172)
  %.not95.i.i17.i = icmp ult i32 %172, 5250
  br i1 %.not95.i.i17.i, label %while.cond.preheader.i.i18.i.while.body.i.i25.i_crit_edge, label %while.cond.preheader.i.i18.i.while.end.i.i32.i_crit_edge

while.cond.preheader.i.i18.i.while.end.i.i32.i_crit_edge: ; preds = %while.cond.preheader.i.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i32.i

while.cond.preheader.i.i18.i.while.body.i.i25.i_crit_edge: ; preds = %while.cond.preheader.i.i18.i
  br label %while.body.i.i25.i

while.body.i.i25.i:                               ; preds = %while.body.i.i25.i.while.body.i.i25.i_crit_edge, %while.cond.preheader.i.i18.i.while.body.i.i25.i_crit_edge
  %ir_s_calc.096.i.i19.i = phi i8 [ %inc.i.i20.i, %while.body.i.i25.i.while.body.i.i25.i_crit_edge ], [ 0, %while.cond.preheader.i.i18.i.while.body.i.i25.i_crit_edge ]
  %inc.i.i20.i = add i8 %ir_s_calc.096.i.i19.i, 1
  %conv13.i.i21.i = zext i8 %inc.i.i20.i to i32
  %mul.i.i22.i = shl i32 192, %conv13.i.i21.i
  %div14.i.i23.i = udiv i32 1008000, %mul.i.i22.i
  %.not.i.i24.i = icmp ult i32 %172, %div14.i.i23.i
  br i1 %.not.i.i24.i, label %while.body.i.i25.i.while.body.i.i25.i_crit_edge, label %while.body.i.i25.i.while.end.i.i32.i_crit_edge

while.body.i.i25.i.while.end.i.i32.i_crit_edge:   ; preds = %while.body.i.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i32.i

while.body.i.i25.i.while.body.i.i25.i_crit_edge:  ; preds = %while.body.i.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i25.i

while.end.i.i32.i:                                ; preds = %while.body.i.i25.i.while.end.i.i32.i_crit_edge, %while.cond.preheader.i.i18.i.while.end.i.i32.i_crit_edge
  %ir_s_calc.0.lcssa.i.i26.i = phi i8 [ 0, %while.cond.preheader.i.i18.i.while.end.i.i32.i_crit_edge ], [ %inc.i.i20.i, %while.body.i.i25.i.while.end.i.i32.i_crit_edge ]
  %mul15.i.i27.i = mul i32 %171, 192
  %conv16.i.i28.i = zext i8 %ir_s_calc.0.lcssa.i.i26.i to i32
  %mul18.i.i29.i = shl i32 %mul15.i.i27.i, %conv16.i.i28.i
  %add19.i.i30.i = add i32 %mul18.i.i29.i, 4000
  %div20.i.i31.i = udiv i32 %add19.i.i30.i, 8000
  br label %if.end8.i.i

while.body27.i.i40.i:                             ; preds = %while.body27.i.i40.i.while.body27.i.i40.i_crit_edge, %if.else.i.i16.i.while.body27.i.i40.i_crit_edge
  %ir_u_calc.093.i.i33.i = phi i8 [ %inc28.i.i34.i, %while.body27.i.i40.i.while.body27.i.i40.i_crit_edge ], [ 0, %if.else.i.i16.i.while.body27.i.i40.i_crit_edge ]
  %inc28.i.i34.i = add i8 %ir_u_calc.093.i.i33.i, 1
  %conv29.i.i35.i = zext i8 %inc28.i.i34.i to i32
  %mul31.i.i36.i = shl i32 1008000, %conv29.i.i35.i
  %add33.i.i37.i = or i32 %mul31.i.i36.i, 64
  %div34.i.i38.i = udiv i32 %add33.i.i37.i, 192
  %cmp25.i.i39.i = icmp ult i32 %div34.i.i38.i, %171
  br i1 %cmp25.i.i39.i, label %while.body27.i.i40.i.while.body27.i.i40.i_crit_edge, label %while.end35.i.i42.i

while.body27.i.i40.i.while.body27.i.i40.i_crit_edge: ; preds = %while.body27.i.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i.i40.i

while.end35.i.i42.i:                              ; preds = %while.body27.i.i40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i.i38.i, i32 %171)
  %cmp36.i.i41.i = icmp eq i32 %div34.i.i38.i, %171
  br i1 %cmp36.i.i41.i, label %while.end35.i.i42.i.if.end8.i.i_crit_edge, label %if.else40.i.i49.i

while.end35.i.i42.i.if.end8.i.i_crit_edge:        ; preds = %while.end35.i.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else40.i.i49.i:                                ; preds = %while.end35.i.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv41.i.i43.i = zext i8 %ir_u_calc.093.i.i33.i to i32
  %mul43.i.i44.i = shl i32 8000, %conv41.i.i43.i
  %mul44.i.i45.i = mul i32 %171, 192
  %shr45.i.i46.i = lshr exact i32 %mul43.i.i44.i, 1
  %add46.i.i47.i = add i32 %shr45.i.i46.i, %mul44.i.i45.i
  %div47.i.i48.i = udiv i32 %add46.i.i47.i, %mul43.i.i44.i
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else40.i.i49.i, %while.end35.i.i42.i.if.end8.i.i_crit_edge, %while.end.i.i32.i, %if.end.i.i14.i.if.end8.i.i_crit_edge
  %ir_para.sroa.8.1.ph.i.i = phi i8 [ 0, %while.end35.i.i42.i.if.end8.i.i_crit_edge ], [ 0, %if.else40.i.i49.i ], [ %ir_s_calc.0.lcssa.i.i26.i, %while.end.i.i32.i ], [ 0, %if.end.i.i14.i.if.end8.i.i_crit_edge ]
  %ir_para.sroa.5.1.ph.i.i = phi i8 [ %inc28.i.i34.i, %while.end35.i.i42.i.if.end8.i.i_crit_edge ], [ %ir_u_calc.093.i.i33.i, %if.else40.i.i49.i ], [ 0, %while.end.i.i32.i ], [ 0, %if.end.i.i14.i.if.end8.i.i_crit_edge ]
  %ir_para.sroa.0.1.ph.i.i = phi i32 [ 126, %while.end35.i.i42.i.if.end8.i.i_crit_edge ], [ %div47.i.i48.i, %if.else40.i.i49.i ], [ %div20.i.i31.i, %while.end.i.i32.i ], [ 126, %if.end.i.i14.i.if.end8.i.i_crit_edge ]
  %conv10.i.i = trunc i32 %i.064.i.i to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i19) #7
  %173 = call ptr @memset(ptr %desc.i.i.i19, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i19, i32 noundef 2062, i1 noundef zeroext false) #7
  %174 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv10.i.i, ptr %160, align 4
  %175 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 34050, ptr %161, align 4
  %176 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %162, align 4
  %178 = or i8 %177, 1
  store i8 %178, ptr %162, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %171) #7
  %180 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %163, align 4
  %call.i.i.i34 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i19, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i34)
  %tobool12.not.i.i = icmp eq i32 %call.i.i.i34, 0
  br i1 %tobool12.not.i.i, label %cleanup.i.i, label %if.end8.i.i.cleanup_crit_edge

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.i.i:                                      ; preds = %if.end8.i.i
  %conv.i.i50.i = and i32 %ir_para.sroa.0.1.ph.i.i, 255
  %conv4.i.i51.i = zext i8 %ir_para.sroa.5.1.ph.i.i to i32
  %shl5.i.i52.i = shl nuw nsw i32 %conv4.i.i51.i, 8
  %and6.i.i53.i = and i32 %shl5.i.i52.i, 3840
  %conv12.i.i54.i = zext i8 %ir_para.sroa.8.1.ph.i.i to i32
  %shl13.i.i55.i = shl nuw nsw i32 %conv12.i.i54.i, 12
  %and14.i.i56.i = and i32 %shl13.i.i55.i, 61440
  %or7.i.i57.i = or i32 %conv.i.i50.i, %and14.i.i56.i
  %or15.i.i58.i = or i32 %or7.i.i57.i, %and6.i.i53.i
  %or31.i.i59.i = or i32 %or15.i.i58.i, 42270720
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i43.i.i) #7
  %181 = call ptr @memset(ptr %desc.i43.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i43.i.i, i32 noundef 2063, i1 noundef zeroext false) #7
  %182 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv10.i.i, ptr %164, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %or31.i.i59.i) #7
  %184 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %165, align 4
  %185 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %166, align 4
  %187 = or i8 %186, 1
  store i8 %187, ptr %166, align 4
  %188 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %179, ptr %167, align 4
  %call.i45.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i43.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i43.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i45.i.i, 0
  br i1 %tobool18.not.i.i, label %for.cond.i.i32, label %cleanup.i.i.cleanup_crit_edge

cleanup.i.i.cleanup_crit_edge:                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i36:                                      ; preds = %for.cond.i.i32.if.end4.i36_crit_edge, %for.cond.preheader.i.i29.if.end4.i36_crit_edge
  %189 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %.pr.i35 = load i8, ptr %tx_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i35)
  %cmp.i.i = icmp eq i8 %.pr.i35, 1
  br i1 %cmp.i.i, label %if.then.i.i38, label %if.end4.i36.if.else.i.i_crit_edge

if.end4.i36.if.else.i.i_crit_edge:                ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i38:                                    ; preds = %if.end4.i36
  %190 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ae_dev.i.i, align 4
  %max_tm_rate1.i.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %191, i32 0, i32 5, i32 2
  %192 = ptrtoint ptr %max_tm_rate1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_tm_rate1.i.i.i, align 4
  %194 = ptrtoint ptr %tm_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %tm_info.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %cmp57.not.i.i.i = icmp eq i8 %195, 0
  br i1 %cmp57.not.i.i.i, label %if.then.i.i38.if.end4_crit_edge, label %for.body.lr.ph.i.i.i39

if.then.i.i38.if.end4_crit_edge:                  ; preds = %if.then.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.lr.ph.i.i.i39:                           ; preds = %if.then.i.i38
  %196 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i18, i32 0, i32 4
  %197 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i18, i32 0, i32 4, i32 1
  %198 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i18, i32 0, i32 4, i32 2
  %199 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i18, i32 0, i32 4, i32 3
  %200 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i37.i.i.i, i32 0, i32 4
  %201 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i37.i.i.i, i32 0, i32 4, i32 1
  %202 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i37.i.i.i, i32 0, i32 4, i32 2
  %203 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i37.i.i.i, i32 0, i32 4, i32 3
  br label %for.body.i.i.i41

for.cond.i.i.i:                                   ; preds = %cleanup.i.i.i
  %inc.i.i61.i = add nuw nsw i32 %i.058.i.i.i, 1
  %204 = ptrtoint ptr %tm_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %tm_info.i.i.i, align 8
  %conv.i.i62.i = zext i8 %205 to i32
  %cmp.i.i.i40 = icmp ult i32 %inc.i.i61.i, %conv.i.i62.i
  br i1 %cmp.i.i.i40, label %for.cond.i.i.i.for.body.i.i.i41_crit_edge, label %for.cond.i.i.i.if.end4_crit_edge

for.cond.i.i.i.if.end4_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.cond.i.i.i.for.body.i.i.i41_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i41

for.body.i.i.i41:                                 ; preds = %for.cond.i.i.i.for.body.i.i.i41_crit_edge, %for.body.lr.ph.i.i.i39
  %i.058.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i39 ], [ %inc.i.i61.i, %for.cond.i.i.i.for.body.i.i.i41_crit_edge ]
  %bw_limit.i.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %i.058.i.i.i, i32 3
  %206 = ptrtoint ptr %bw_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bw_limit.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %193)
  %cmp2.i.i.i.i = icmp ugt i32 %207, %193
  br i1 %cmp2.i.i.i.i, label %for.body.i.i.i41.cleanup_crit_edge, label %if.end.i.i.i.i

for.body.i.i.i41.cleanup_crit_edge:               ; preds = %for.body.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %207)
  %cmp5.i.i.i.i = icmp eq i32 %207, 656
  br i1 %cmp5.i.i.i.i, label %if.end.i.i.i.i.if.end.i.i63.i_crit_edge, label %if.else.i.i.i.i

if.end.i.i.i.i.if.end.i.i63.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i63.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %207)
  %cmp8.i.i.i.i = icmp ult i32 %207, 656
  br i1 %cmp8.i.i.i.i, label %while.cond.preheader.i.i.i.i, label %if.else.i.i.i.i.while.body27.i.i.i.i_crit_edge

if.else.i.i.i.i.while.body27.i.i.i.i_crit_edge:   ; preds = %if.else.i.i.i.i
  br label %while.body27.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.else.i.i.i.i
  %208 = add nsw i32 %207, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %208)
  %.not95.i.i.i.i = icmp ult i32 %208, 656
  br i1 %.not95.i.i.i.i, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i.i

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %ir_s_calc.096.i.i.i.i = phi i8 [ %inc.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %inc.i.i.i.i = add i8 %ir_s_calc.096.i.i.i.i, 1
  %conv13.i.i.i.i = zext i8 %inc.i.i.i.i to i32
  %mul.i.i.i.i = shl i32 1536, %conv13.i.i.i.i
  %div14.i.i.i.i = udiv i32 1008000, %mul.i.i.i.i
  %.not.i.i.i.i = icmp ult i32 %208, %div14.i.i.i.i
  br i1 %.not.i.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i.i

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge
  %ir_s_calc.0.lcssa.i.i.i.i = phi i8 [ 0, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %inc.i.i.i.i, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %mul15.i.i.i.i = mul i32 %207, 1536
  %conv16.i.i.i.i = zext i8 %ir_s_calc.0.lcssa.i.i.i.i to i32
  %mul18.i.i.i.i = shl i32 %mul15.i.i.i.i, %conv16.i.i.i.i
  %add19.i.i.i.i = add i32 %mul18.i.i.i.i, 4000
  %div20.i.i.i.i = udiv i32 %add19.i.i.i.i, 8000
  br label %if.end.i.i63.i

while.body27.i.i.i.i:                             ; preds = %while.body27.i.i.i.i.while.body27.i.i.i.i_crit_edge, %if.else.i.i.i.i.while.body27.i.i.i.i_crit_edge
  %ir_u_calc.093.i.i.i.i = phi i8 [ %inc28.i.i.i.i, %while.body27.i.i.i.i.while.body27.i.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.i.while.body27.i.i.i.i_crit_edge ]
  %inc28.i.i.i.i = add i8 %ir_u_calc.093.i.i.i.i, 1
  %conv29.i.i.i.i = zext i8 %inc28.i.i.i.i to i32
  %mul31.i.i.i.i = shl i32 1008000, %conv29.i.i.i.i
  %add33.i.i.i.i = add i32 %mul31.i.i.i.i, 768
  %div34.i.i.i.i = udiv i32 %add33.i.i.i.i, 1536
  %cmp25.i.i.i.i = icmp ult i32 %div34.i.i.i.i, %207
  br i1 %cmp25.i.i.i.i, label %while.body27.i.i.i.i.while.body27.i.i.i.i_crit_edge, label %while.end35.i.i.i.i

while.body27.i.i.i.i.while.body27.i.i.i.i_crit_edge: ; preds = %while.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i.i.i.i

while.end35.i.i.i.i:                              ; preds = %while.body27.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i.i.i.i, i32 %207)
  %cmp36.i.i.i.i = icmp eq i32 %div34.i.i.i.i, %207
  br i1 %cmp36.i.i.i.i, label %while.end35.i.i.i.i.if.end.i.i63.i_crit_edge, label %if.else40.i.i.i.i

while.end35.i.i.i.i.if.end.i.i63.i_crit_edge:     ; preds = %while.end35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i63.i

if.else40.i.i.i.i:                                ; preds = %while.end35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv41.i.i.i.i = zext i8 %ir_u_calc.093.i.i.i.i to i32
  %mul43.i.i.i.i = shl i32 8000, %conv41.i.i.i.i
  %mul44.i.i.i.i = mul i32 %207, 1536
  %shr45.i.i.i.i = lshr exact i32 %mul43.i.i.i.i, 1
  %add46.i.i.i.i = add i32 %shr45.i.i.i.i, %mul44.i.i.i.i
  %div47.i.i.i.i = udiv i32 %add46.i.i.i.i, %mul43.i.i.i.i
  br label %if.end.i.i63.i

if.end.i.i63.i:                                   ; preds = %if.else40.i.i.i.i, %while.end35.i.i.i.i.if.end.i.i63.i_crit_edge, %while.end.i.i.i.i, %if.end.i.i.i.i.if.end.i.i63.i_crit_edge
  %ir_para.sroa.8.1.ph.i.i.i = phi i8 [ 0, %while.end35.i.i.i.i.if.end.i.i63.i_crit_edge ], [ 0, %if.else40.i.i.i.i ], [ %ir_s_calc.0.lcssa.i.i.i.i, %while.end.i.i.i.i ], [ 0, %if.end.i.i.i.i.if.end.i.i63.i_crit_edge ]
  %ir_para.sroa.5.1.ph.i.i.i = phi i8 [ %inc28.i.i.i.i, %while.end35.i.i.i.i.if.end.i.i63.i_crit_edge ], [ %ir_u_calc.093.i.i.i.i, %if.else40.i.i.i.i ], [ 0, %while.end.i.i.i.i ], [ 0, %if.end.i.i.i.i.if.end.i.i63.i_crit_edge ]
  %ir_para.sroa.0.1.ph.i.i.i = phi i32 [ 126, %while.end35.i.i.i.i.if.end.i.i63.i_crit_edge ], [ %div47.i.i.i.i, %if.else40.i.i.i.i ], [ %div20.i.i.i.i, %while.end.i.i.i.i ], [ 126, %if.end.i.i.i.i.if.end.i.i63.i_crit_edge ]
  %conv5.i.i.i = trunc i32 %i.058.i.i.i to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i18) #7
  %209 = call ptr @memset(ptr %desc.i.i.i.i18, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i18, i32 noundef 2060, i1 noundef zeroext false) #7
  %210 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv5.i.i.i, ptr %196, align 4
  %211 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 34050, ptr %197, align 4
  %212 = ptrtoint ptr %198 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %198, align 4
  %214 = or i8 %213, 1
  store i8 %214, ptr %198, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %207) #7
  %216 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %199, align 4
  %call.i.i.i.i42 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i.i18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i42)
  %tobool7.not.i.i.i = icmp eq i32 %call.i.i.i.i42, 0
  br i1 %tobool7.not.i.i.i, label %cleanup.i.i.i, label %if.end.i.i63.i.cleanup_crit_edge

if.end.i.i63.i.cleanup_crit_edge:                 ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.i.i.i:                                    ; preds = %if.end.i.i63.i
  %conv.i.i.i.i = and i32 %ir_para.sroa.0.1.ph.i.i.i, 255
  %conv4.i.i.i.i = zext i8 %ir_para.sroa.5.1.ph.i.i.i to i32
  %shl5.i.i.i.i = shl nuw nsw i32 %conv4.i.i.i.i, 8
  %and6.i.i.i.i = and i32 %shl5.i.i.i.i, 3840
  %conv12.i.i.i.i = zext i8 %ir_para.sroa.8.1.ph.i.i.i to i32
  %shl13.i.i.i.i = shl nuw nsw i32 %conv12.i.i.i.i, 12
  %and14.i.i.i.i = and i32 %shl13.i.i.i.i, 61440
  %or7.i.i.i.i = or i32 %and14.i.i.i.i, %conv.i.i.i.i
  %or15.i.i.i.i = or i32 %or7.i.i.i.i, %and6.i.i.i.i
  %or31.i.i.i.i = or i32 %or15.i.i.i.i, 42270720
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i37.i.i.i) #7
  %217 = call ptr @memset(ptr %desc.i37.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i37.i.i.i, i32 noundef 2061, i1 noundef zeroext false) #7
  %218 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv5.i.i.i, ptr %200, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %or31.i.i.i.i) #7
  %220 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %201, align 4
  %221 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %202, align 4
  %223 = or i8 %222, 1
  store i8 %223, ptr %202, align 4
  %224 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %215, ptr %203, align 4
  %call.i39.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i37.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i37.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call.i39.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %for.cond.i.i.i, label %cleanup.i.i.i.cleanup_crit_edge

cleanup.i.i.i.cleanup_crit_edge:                  ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end4.i36.if.else.i.i_crit_edge, %if.end.i27.if.else.i.i_crit_edge
  %225 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %num_alloc_vport.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %226)
  %cmp50.not.i.i.i = icmp eq i16 %226, 0
  br i1 %cmp50.not.i.i.i, label %if.else.i.i.if.end4_crit_edge, label %for.body.lr.ph.i13.i.i

if.else.i.i.if.end4_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.lr.ph.i13.i.i:                           ; preds = %if.else.i.i
  %227 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vport1.i.i, align 4
  %229 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i.i, i32 0, i32 4
  %230 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i.i, i32 0, i32 4, i32 1
  %231 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i.i, i32 0, i32 4, i32 2
  %232 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i.i, i32 0, i32 4, i32 3
  %233 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i31.i.i.i.i, i32 0, i32 4
  %234 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i31.i.i.i.i, i32 0, i32 4, i32 1
  %235 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i31.i.i.i.i, i32 0, i32 4, i32 2
  %236 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i31.i.i.i.i, i32 0, i32 4, i32 3
  br label %for.body.i14.i.i

for.body.i14.i.i:                                 ; preds = %if.end6.i.i.i.for.body.i14.i.i_crit_edge, %for.body.lr.ph.i13.i.i
  %i.052.i.i.i = phi i32 [ 0, %for.body.lr.ph.i13.i.i ], [ %inc.i19.i.i, %if.end6.i.i.i.for.body.i14.i.i_crit_edge ]
  %vport.051.i.i.i = phi ptr [ %228, %for.body.lr.ph.i13.i.i ], [ %incdec.ptr.i.i.i, %if.end6.i.i.i.for.body.i14.i.i_crit_edge ]
  %back.i.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.051.i.i.i, i32 0, i32 12
  %237 = ptrtoint ptr %back.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %back.i.i.i.i, align 4
  %bw_limit.i.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.051.i.i.i, i32 0, i32 2
  %239 = ptrtoint ptr %bw_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %bw_limit.i.i.i.i, align 4
  %ae_dev.i.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %238, i32 0, i32 1
  %241 = ptrtoint ptr %ae_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ae_dev.i.i.i.i, align 4
  %max_tm_rate.i.i.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %242, i32 0, i32 5, i32 2
  %243 = ptrtoint ptr %max_tm_rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %max_tm_rate.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %244)
  %cmp2.i.i.i.i.i = icmp ugt i32 %240, %244
  br i1 %cmp2.i.i.i.i.i, label %for.body.i14.i.i.cleanup_crit_edge, label %if.end.i.i.i.i.i

for.body.i14.i.i.cleanup_crit_edge:               ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i.i.i:                                 ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %240)
  %cmp5.i.i.i.i.i = icmp eq i32 %240, 656
  br i1 %cmp5.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge, label %if.else.i.i.i.i.i

if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge:      ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i16.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %240)
  %cmp8.i.i.i.i.i = icmp ult i32 %240, 656
  br i1 %cmp8.i.i.i.i.i, label %while.cond.preheader.i.i.i.i.i, label %if.else.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge

if.else.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  br label %while.body27.i.i.i.i.i

while.cond.preheader.i.i.i.i.i:                   ; preds = %if.else.i.i.i.i.i
  %245 = add nsw i32 %240, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %245)
  %.not95.i.i.i.i.i = icmp ult i32 %245, 656
  br i1 %.not95.i.i.i.i.i, label %while.cond.preheader.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i.i
  br label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge
  %ir_s_calc.096.i.i.i.i.i = phi i8 [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %inc.i.i.i.i.i = add i8 %ir_s_calc.096.i.i.i.i.i, 1
  %conv13.i.i.i.i.i = zext i8 %inc.i.i.i.i.i to i32
  %mul.i.i.i.i.i = shl i32 1536, %conv13.i.i.i.i.i
  %div14.i.i.i.i.i = udiv i32 1008000, %mul.i.i.i.i.i
  %.not.i.i.i.i.i = icmp ult i32 %245, %div14.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, label %while.body.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge

while.body.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i.i.i.i

while.body.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i.i

while.end.i.i.i.i.i:                              ; preds = %while.body.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge
  %ir_s_calc.0.lcssa.i.i.i.i.i = phi i8 [ 0, %while.cond.preheader.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge ], [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i.while.end.i.i.i.i.i_crit_edge ]
  %mul15.i.i.i.i.i = mul i32 %240, 1536
  %conv16.i.i.i.i.i = zext i8 %ir_s_calc.0.lcssa.i.i.i.i.i to i32
  %mul18.i.i.i.i.i = shl i32 %mul15.i.i.i.i.i, %conv16.i.i.i.i.i
  %add19.i.i.i.i.i = add i32 %mul18.i.i.i.i.i, 4000
  %div20.i.i.i.i.i = udiv i32 %add19.i.i.i.i.i, 8000
  br label %if.end.i.i16.i.i

while.body27.i.i.i.i.i:                           ; preds = %while.body27.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge
  %ir_u_calc.093.i.i.i.i.i = phi i8 [ %inc28.i.i.i.i.i, %while.body27.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge ]
  %inc28.i.i.i.i.i = add i8 %ir_u_calc.093.i.i.i.i.i, 1
  %conv29.i.i.i.i.i = zext i8 %inc28.i.i.i.i.i to i32
  %mul31.i.i.i.i.i = shl i32 1008000, %conv29.i.i.i.i.i
  %add33.i.i.i.i.i = add i32 %mul31.i.i.i.i.i, 768
  %div34.i.i.i.i.i = udiv i32 %add33.i.i.i.i.i, 1536
  %cmp25.i.i.i.i.i = icmp ult i32 %div34.i.i.i.i.i, %240
  br i1 %cmp25.i.i.i.i.i, label %while.body27.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge, label %while.end35.i.i.i.i.i

while.body27.i.i.i.i.i.while.body27.i.i.i.i.i_crit_edge: ; preds = %while.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i.i.i.i.i

while.end35.i.i.i.i.i:                            ; preds = %while.body27.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div34.i.i.i.i.i, i32 %240)
  %cmp36.i.i.i.i.i = icmp eq i32 %div34.i.i.i.i.i, %240
  br i1 %cmp36.i.i.i.i.i, label %while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge, label %if.else40.i.i.i.i.i

while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge: ; preds = %while.end35.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i16.i.i

if.else40.i.i.i.i.i:                              ; preds = %while.end35.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv41.i.i.i.i.i = zext i8 %ir_u_calc.093.i.i.i.i.i to i32
  %mul43.i.i.i.i.i = shl i32 8000, %conv41.i.i.i.i.i
  %mul44.i.i.i.i.i = mul i32 %240, 1536
  %shr45.i.i.i.i.i = lshr exact i32 %mul43.i.i.i.i.i, 1
  %add46.i.i.i.i.i = add i32 %shr45.i.i.i.i.i, %mul44.i.i.i.i.i
  %div47.i.i.i.i.i = udiv i32 %add46.i.i.i.i.i, %mul43.i.i.i.i.i
  br label %if.end.i.i16.i.i

if.end.i.i16.i.i:                                 ; preds = %if.else40.i.i.i.i.i, %while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge, %while.end.i.i.i.i.i, %if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge
  %ir_para.sroa.8.0.ph.i.i.i.i = phi i8 [ 0, %while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ], [ 0, %if.else40.i.i.i.i.i ], [ %ir_s_calc.0.lcssa.i.i.i.i.i, %while.end.i.i.i.i.i ], [ 0, %if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ]
  %ir_para.sroa.5.0.ph.i.i.i.i = phi i8 [ %inc28.i.i.i.i.i, %while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ], [ %ir_u_calc.093.i.i.i.i.i, %if.else40.i.i.i.i.i ], [ 0, %while.end.i.i.i.i.i ], [ 0, %if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ]
  %ir_para.sroa.0.0.ph.i.i.i.i = phi i32 [ 126, %while.end35.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ], [ %div47.i.i.i.i.i, %if.else40.i.i.i.i.i ], [ %div20.i.i.i.i.i, %while.end.i.i.i.i.i ], [ 126, %if.end.i.i.i.i.i.if.end.i.i16.i.i_crit_edge ]
  %vport_id.i.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.051.i.i.i, i32 0, i32 11
  %246 = ptrtoint ptr %vport_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %vport_id.i.i.i.i, align 2
  %conv.i.i15.i.i = trunc i16 %247 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i.i) #7
  %248 = call ptr @memset(ptr %desc.i.i.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i.i, i32 noundef 2060, i1 noundef zeroext false) #7
  %249 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv.i.i15.i.i, ptr %229, align 4
  %250 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 34050, ptr %230, align 4
  %251 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %231, align 4
  %253 = or i8 %252, 1
  store i8 %253, ptr %231, align 4
  %254 = call i32 @llvm.bswap.i32(i32 %240) #7
  %255 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %232, align 4
  %hw.i.i.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %238, i32 0, i32 2
  %call.i.i.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i.i.i, ptr noundef nonnull %desc.i.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i, label %if.end.i.i16.i.i.cleanup_crit_edge

if.end.i.i16.i.i.cleanup_crit_edge:               ; preds = %if.end.i.i16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i: ; preds = %if.end.i.i16.i.i
  %conv.i.i.i.i.i = and i32 %ir_para.sroa.0.0.ph.i.i.i.i, 255
  %conv4.i.i.i.i.i = zext i8 %ir_para.sroa.5.0.ph.i.i.i.i to i32
  %shl5.i.i.i.i.i = shl nuw nsw i32 %conv4.i.i.i.i.i, 8
  %and6.i.i.i.i.i = and i32 %shl5.i.i.i.i.i, 3840
  %conv12.i.i.i.i.i = zext i8 %ir_para.sroa.8.0.ph.i.i.i.i to i32
  %shl13.i.i.i.i.i = shl nuw nsw i32 %conv12.i.i.i.i.i, 12
  %and14.i.i.i.i.i = and i32 %shl13.i.i.i.i.i, 61440
  %or7.i.i.i.i.i = or i32 %conv.i.i.i.i.i, %and14.i.i.i.i.i
  %or15.i.i.i.i.i = or i32 %or7.i.i.i.i.i, %and6.i.i.i.i.i
  %or31.i.i.i.i.i = or i32 %or15.i.i.i.i.i, 42270720
  %256 = ptrtoint ptr %vport_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %vport_id.i.i.i.i, align 2
  %conv9.i.i.i.i = trunc i16 %257 to i8
  %258 = ptrtoint ptr %bw_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %bw_limit.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i31.i.i.i.i) #7
  %260 = call ptr @memset(ptr %desc.i31.i.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i31.i.i.i.i, i32 noundef 2061, i1 noundef zeroext false) #7
  %261 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv9.i.i.i.i, ptr %233, align 4
  %262 = call i32 @llvm.bswap.i32(i32 %or31.i.i.i.i.i) #7
  %263 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %234, align 4
  %264 = ptrtoint ptr %235 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %235, align 4
  %266 = or i8 %265, 1
  store i8 %266, ptr %235, align 4
  %267 = call i32 @llvm.bswap.i32(i32 %259) #7
  %268 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %236, align 4
  %call.i33.i.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i.i.i.i, ptr noundef nonnull %desc.i31.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i31.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i.i.i)
  %tobool.not.i.i.i44 = icmp eq i32 %call.i33.i.i.i.i, 0
  br i1 %tobool.not.i.i.i44, label %if.end.i17.i.i, label %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i.cleanup_crit_edge

hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i.cleanup_crit_edge: ; preds = %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i17.i.i:                                   ; preds = %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i
  %269 = ptrtoint ptr %back.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %back.i.i.i.i, align 4
  %ae_dev.i17.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %ae_dev.i17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ae_dev.i17.i.i.i, align 4
  %max_tm_rate1.i.i.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %272, i32 0, i32 5, i32 2
  %273 = ptrtoint ptr %max_tm_rate1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %max_tm_rate1.i.i.i.i, align 4
  %num_tc.i.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.051.i.i.i, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %275 = ptrtoint ptr %num_tc.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %num_tc.i.i.i.i, align 4
  %conv.i18.i.i.i = zext i8 %276 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp17.not.i.i.i.i = icmp eq i8 %276, 0
  br i1 %cmp17.not.i.i.i.i, label %if.end.i17.i.i.if.end6.i.i.i_crit_edge, label %if.end.i17.i.i.for.body.i.i.i.i_crit_edge

if.end.i17.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i17.i.i
  br label %for.body.i.i.i.i

if.end.i17.i.i.if.end6.i.i.i_crit_edge:           ; preds = %if.end.i17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i17.i.i.for.body.i.i.i.i_crit_edge
  %i.018.i.i.i.i = phi i32 [ %inc.i.i18.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end.i17.i.i.for.body.i.i.i.i_crit_edge ]
  %bw_limit.i19.i.i.i = getelementptr %struct.hclge_dev, ptr %270, i32 0, i32 37, i32 5, i32 %i.018.i.i.i.i, i32 3
  %277 = ptrtoint ptr %bw_limit.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %bw_limit.i19.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %278, i32 %274)
  %cmp2.i.i20.i.i.i = icmp ugt i32 %278, %274
  br i1 %cmp2.i.i20.i.i.i, label %for.body.i.i.i.i.cleanup_crit_edge, label %if.end.i.i22.i.i.i

for.body.i.i.i.i.cleanup_crit_edge:               ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i22.i.i.i:                               ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %278)
  %cmp5.i.i21.i.i.i = icmp eq i32 %278, 656
  br i1 %cmp5.i.i21.i.i.i, label %if.end.i.i22.i.i.i.for.inc.i.i.i.i_crit_edge, label %if.else.i.i24.i.i.i

if.end.i.i22.i.i.i.for.inc.i.i.i.i_crit_edge:     ; preds = %if.end.i.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

if.else.i.i24.i.i.i:                              ; preds = %if.end.i.i22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %278)
  %cmp8.i.i23.i.i.i = icmp ult i32 %278, 656
  br i1 %cmp8.i.i23.i.i.i, label %while.cond.preheader.i.i26.i.i.i, label %if.else.i.i24.i.i.i.while.body27.i.i41.i.i.i_crit_edge

if.else.i.i24.i.i.i.while.body27.i.i41.i.i.i_crit_edge: ; preds = %if.else.i.i24.i.i.i
  br label %while.body27.i.i41.i.i.i

while.cond.preheader.i.i26.i.i.i:                 ; preds = %if.else.i.i24.i.i.i
  %279 = add nsw i32 %278, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 656, i32 %279)
  %.not95.i.i25.i.i.i = icmp ult i32 %279, 656
  br i1 %.not95.i.i25.i.i.i, label %while.cond.preheader.i.i26.i.i.i.while.body.i.i33.i.i.i_crit_edge, label %while.cond.preheader.i.i26.i.i.i.for.inc.i.i.i.i_crit_edge

while.cond.preheader.i.i26.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

while.cond.preheader.i.i26.i.i.i.while.body.i.i33.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i26.i.i.i
  br label %while.body.i.i33.i.i.i

while.body.i.i33.i.i.i:                           ; preds = %while.body.i.i33.i.i.i.while.body.i.i33.i.i.i_crit_edge, %while.cond.preheader.i.i26.i.i.i.while.body.i.i33.i.i.i_crit_edge
  %ir_s_calc.096.i.i27.i.i.i = phi i8 [ %inc.i.i28.i.i.i, %while.body.i.i33.i.i.i.while.body.i.i33.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i26.i.i.i.while.body.i.i33.i.i.i_crit_edge ]
  %inc.i.i28.i.i.i = add i8 %ir_s_calc.096.i.i27.i.i.i, 1
  %conv13.i.i29.i.i.i = zext i8 %inc.i.i28.i.i.i to i32
  %mul.i.i30.i.i.i = shl i32 1536, %conv13.i.i29.i.i.i
  %div14.i.i31.i.i.i = udiv i32 1008000, %mul.i.i30.i.i.i
  %.not.i.i32.i.i.i = icmp ult i32 %279, %div14.i.i31.i.i.i
  br i1 %.not.i.i32.i.i.i, label %while.body.i.i33.i.i.i.while.body.i.i33.i.i.i_crit_edge, label %while.body.i.i33.i.i.i.for.inc.i.i.i.i_crit_edge

while.body.i.i33.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %while.body.i.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

while.body.i.i33.i.i.i.while.body.i.i33.i.i.i_crit_edge: ; preds = %while.body.i.i33.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i33.i.i.i

while.body27.i.i41.i.i.i:                         ; preds = %while.body27.i.i41.i.i.i.while.body27.i.i41.i.i.i_crit_edge, %if.else.i.i24.i.i.i.while.body27.i.i41.i.i.i_crit_edge
  %ir_u_calc.093.i.i34.i.i.i = phi i8 [ %inc28.i.i35.i.i.i, %while.body27.i.i41.i.i.i.while.body27.i.i41.i.i.i_crit_edge ], [ 0, %if.else.i.i24.i.i.i.while.body27.i.i41.i.i.i_crit_edge ]
  %inc28.i.i35.i.i.i = add i8 %ir_u_calc.093.i.i34.i.i.i, 1
  %conv29.i.i36.i.i.i = zext i8 %inc28.i.i35.i.i.i to i32
  %mul31.i.i37.i.i.i = shl i32 1008000, %conv29.i.i36.i.i.i
  %add33.i.i38.i.i.i = add i32 %mul31.i.i37.i.i.i, 768
  %div34.i.i39.i.i.i = udiv i32 %add33.i.i38.i.i.i, 1536
  %cmp25.i.i40.i.i.i = icmp ult i32 %div34.i.i39.i.i.i, %278
  br i1 %cmp25.i.i40.i.i.i, label %while.body27.i.i41.i.i.i.while.body27.i.i41.i.i.i_crit_edge, label %while.body27.i.i41.i.i.i.for.inc.i.i.i.i_crit_edge

while.body27.i.i41.i.i.i.for.inc.i.i.i.i_crit_edge: ; preds = %while.body27.i.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

while.body27.i.i41.i.i.i.while.body27.i.i41.i.i.i_crit_edge: ; preds = %while.body27.i.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i.i41.i.i.i

for.inc.i.i.i.i:                                  ; preds = %while.body27.i.i41.i.i.i.for.inc.i.i.i.i_crit_edge, %while.body.i.i33.i.i.i.for.inc.i.i.i.i_crit_edge, %while.cond.preheader.i.i26.i.i.i.for.inc.i.i.i.i_crit_edge, %if.end.i.i22.i.i.i.for.inc.i.i.i.i_crit_edge
  %inc.i.i18.i.i = add nuw nsw i32 %i.018.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i18.i.i, %conv.i18.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.if.end6.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.end6.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %for.inc.i.i.i.i.if.end6.i.i.i_crit_edge, %if.end.i17.i.i.if.end6.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.hclge_vport, ptr %vport.051.i.i.i, i32 1
  %inc.i19.i.i = add nuw nsw i32 %i.052.i.i.i, 1
  %280 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %num_alloc_vport.i.i, align 2
  %conv.i20.i.i = zext i16 %281 to i32
  %cmp.i21.i.i = icmp ult i32 %inc.i19.i.i, %conv.i20.i.i
  br i1 %cmp.i21.i.i, label %if.end6.i.i.i.for.body.i14.i.i_crit_edge, label %if.end6.i.i.i.if.end4_crit_edge

if.end6.i.i.i.if.end4_crit_edge:                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end6.i.i.i.for.body.i14.i.i_crit_edge:         ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14.i.i

if.end4:                                          ; preds = %if.end6.i.i.i.if.end4_crit_edge, %if.else.i.i.if.end4_crit_edge, %for.cond.i.i.i.if.end4_crit_edge, %if.then.i.i38.if.end4_crit_edge
  %call5 = call i32 @hclge_tm_dwrr_cfg(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %282 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %tx_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %283)
  %cmp.i.i49 = icmp eq i8 %283, 2
  br i1 %cmp.i.i49, label %if.end8.if.else.i.i75_crit_edge, label %for.cond.preheader.i.i51

if.end8.if.else.i.i75_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i75

for.cond.preheader.i.i51:                         ; preds = %if.end8
  %num_pg.i.i50 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %284 = ptrtoint ptr %num_pg.i.i50 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %num_pg.i.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %cmp414.not.i.i = icmp eq i8 %285, 0
  br i1 %cmp414.not.i.i, label %for.cond.preheader.i.i51.if.end.i60_crit_edge, label %for.body.lr.ph.i.i52

for.cond.preheader.i.i51.if.end.i60_crit_edge:    ; preds = %for.cond.preheader.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i60

for.body.lr.ph.i.i52:                             ; preds = %for.cond.preheader.i.i51
  %286 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i47, i32 0, i32 4
  %287 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i47, i32 0, i32 4, i32 1
  br label %for.body.i.i58

for.cond.i.i54:                                   ; preds = %for.body.i.i58
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %288 = ptrtoint ptr %num_pg.i.i50 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %num_pg.i.i50, align 1
  %290 = zext i8 %289 to i32
  %cmp4.i.i53 = icmp ult i32 %indvars.iv.next.i.i, %290
  br i1 %cmp4.i.i53, label %for.cond.i.i54.for.body.i.i58_crit_edge, label %for.cond.i.i54.if.end.i60_crit_edge

for.cond.i.i54.if.end.i60_crit_edge:              ; preds = %for.cond.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i60

for.cond.i.i54.for.body.i.i58_crit_edge:          ; preds = %for.cond.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i58

for.body.i.i58:                                   ; preds = %for.cond.i.i54.for.body.i.i58_crit_edge, %for.body.lr.ph.i.i52
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i52 ], [ %indvars.iv.next.i.i, %for.cond.i.i54.for.body.i.i58_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i47) #7
  %291 = call ptr @memset(ptr %desc.i.i.i47, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i47, i32 noundef 2066, i1 noundef zeroext false) #7
  %pg_sch_mode.i.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %indvars.iv.i.i, i32 1
  %292 = ptrtoint ptr %pg_sch_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %pg_sch_mode.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %293)
  %cmp.i.i.i55 = icmp eq i8 %293, 1
  %..i.i.i = select i1 %cmp.i.i.i55, i32 16777216, i32 0
  %294 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %..i.i.i, ptr %287, align 4
  %295 = shl nuw i32 %indvars.iv.i.i, 24
  %296 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %286, align 4
  %call.i.i.i56 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i47, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call.i.i.i56, 0
  br i1 %tobool.not.i.i57, label %for.cond.i.i54, label %for.body.i.i58.cleanup_crit_edge

for.body.i.i58.cleanup_crit_edge:                 ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i60:                                       ; preds = %for.cond.i.i54.if.end.i60_crit_edge, %for.cond.preheader.i.i51.if.end.i60_crit_edge
  %297 = ptrtoint ptr %tx_sch_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %.pr.i59 = load i8, ptr %tx_sch_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i59)
  %cmp.i5.i = icmp eq i8 %.pr.i59, 1
  br i1 %cmp.i5.i, label %for.cond.preheader.i6.i, label %if.end.i60.if.else.i.i75_crit_edge

if.end.i60.if.else.i.i75_crit_edge:               ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i75

for.cond.preheader.i6.i:                          ; preds = %if.end.i60
  %298 = ptrtoint ptr %tm_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %tm_info.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %cmp569.not.i.i = icmp eq i8 %299, 0
  br i1 %cmp569.not.i.i, label %for.cond.preheader.i6.i.cleanup_crit_edge, label %for.body.lr.ph.i7.i

for.cond.preheader.i6.i.cleanup_crit_edge:        ; preds = %for.cond.preheader.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i7.i:                              ; preds = %for.cond.preheader.i6.i
  %300 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i46, i32 0, i32 4
  %301 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i46, i32 0, i32 4, i32 1
  %302 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i22.i.i.i, i32 0, i32 4
  %303 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i22.i.i.i, i32 0, i32 4, i32 1
  br label %for.body.i9.i

for.body.i9.i:                                    ; preds = %for.inc.i.i73.for.body.i9.i_crit_edge, %for.body.lr.ph.i7.i
  %indvars.iv.i8.i = phi i32 [ 0, %for.body.lr.ph.i7.i ], [ %indvars.iv.next.i11.i, %for.inc.i.i73.for.body.i9.i_crit_edge ]
  %304 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %vport1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i46) #7
  %306 = call ptr @memset(ptr %desc.i.i.i.i46, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i46, i32 noundef 2067, i1 noundef zeroext false) #7
  %tc_sch_mode.i.i.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %indvars.iv.i8.i, i32 1
  %307 = ptrtoint ptr %tc_sch_mode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %tc_sch_mode.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %308)
  %cmp.i.i.i.i = icmp eq i8 %308, 1
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 16777216, i32 0
  %309 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %..i.i.i.i, ptr %301, align 4
  %310 = shl nuw i32 %indvars.iv.i8.i, 24
  %311 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %300, align 4
  %call.i.i.i.i63 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i.i46, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i63)
  %tobool.not.i.i.i64 = icmp eq i32 %call.i.i.i.i63, 0
  br i1 %tobool.not.i.i.i64, label %for.cond.preheader.i.i.i, label %for.body.i9.i.cleanup_crit_edge

for.body.i9.i.cleanup_crit_edge:                  ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i.i.i:                         ; preds = %for.body.i9.i
  %312 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %num_alloc_vport.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %313)
  %cmp25.not.i.i.i = icmp eq i16 %313, 0
  br i1 %cmp25.not.i.i.i, label %for.cond.preheader.i.i.i.for.inc.i.i73_crit_edge, label %for.body.lr.ph.i.i.i65

for.cond.preheader.i.i.i.for.inc.i.i73_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i73

for.body.lr.ph.i.i.i65:                           ; preds = %for.cond.preheader.i.i.i
  %314 = trunc i32 %indvars.iv.i8.i to i16
  br label %for.body.i.i.i72

for.cond.i.i.i67:                                 ; preds = %for.body.i.i.i72
  %indvars.iv.next.i.i.i66 = add nuw nsw i32 %indvars.iv.i.i.i68, 1
  %315 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %num_alloc_vport.i.i, align 2
  %317 = zext i16 %316 to i32
  %cmp.i.i10.i = icmp ult i32 %indvars.iv.next.i.i.i66, %317
  br i1 %cmp.i.i10.i, label %for.cond.i.i.i67.for.body.i.i.i72_crit_edge, label %for.cond.i.i.i67.for.inc.i.i73_crit_edge

for.cond.i.i.i67.for.inc.i.i73_crit_edge:         ; preds = %for.cond.i.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i73

for.cond.i.i.i67.for.body.i.i.i72_crit_edge:      ; preds = %for.cond.i.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i72

for.body.i.i.i72:                                 ; preds = %for.cond.i.i.i67.for.body.i.i.i72_crit_edge, %for.body.lr.ph.i.i.i65
  %indvars.iv.i.i.i68 = phi i32 [ 0, %for.body.lr.ph.i.i.i65 ], [ %indvars.iv.next.i.i.i66, %for.cond.i.i.i67.for.body.i.i.i72_crit_edge ]
  %qs_offset.i.i.i69 = getelementptr %struct.hclge_vport, ptr %305, i32 %indvars.iv.i.i.i68, i32 1
  %318 = ptrtoint ptr %qs_offset.i.i.i69 to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %qs_offset.i.i.i69, align 2
  %add.i.i.i70 = add i16 %319, %314
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i22.i.i.i) #7
  %320 = call ptr @memset(ptr %desc.i22.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i22.i.i.i, i32 noundef 2068, i1 noundef zeroext false) #7
  %321 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 16777216, ptr %303, align 4
  %conv4.i.i.i.i71 = zext i16 %add.i.i.i70 to i32
  %322 = call i32 @llvm.bswap.i32(i32 %conv4.i.i.i.i71) #7
  %323 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %302, align 4
  %call.i24.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i22.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i22.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call.i24.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %for.cond.i.i.i67, label %for.body.i.i.i72.cleanup_crit_edge

for.body.i.i.i72.cleanup_crit_edge:               ; preds = %for.body.i.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.i73:                                    ; preds = %for.cond.i.i.i67.for.inc.i.i73_crit_edge, %for.cond.preheader.i.i.i.for.inc.i.i73_crit_edge
  %indvars.iv.next.i11.i = add nuw nsw i32 %indvars.iv.i8.i, 1
  %324 = ptrtoint ptr %tm_info.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %tm_info.i.i.i, align 8
  %326 = zext i8 %325 to i32
  %cmp5.i.i = icmp ult i32 %indvars.iv.next.i11.i, %326
  br i1 %cmp5.i.i, label %for.inc.i.i73.for.body.i9.i_crit_edge, label %for.inc.i.i73.cleanup_crit_edge

for.inc.i.i73.cleanup_crit_edge:                  ; preds = %for.inc.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.i73.for.body.i9.i_crit_edge:            ; preds = %for.inc.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i9.i

if.else.i.i75:                                    ; preds = %if.end.i60.if.else.i.i75_crit_edge, %if.end8.if.else.i.i75_crit_edge
  %327 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %num_alloc_vport.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %cmp1163.not.i.i = icmp eq i16 %328, 0
  br i1 %cmp1163.not.i.i, label %if.else.i.i75.cleanup_crit_edge, label %for.body13.lr.ph.i.i

if.else.i.i75.cleanup_crit_edge:                  ; preds = %if.else.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body13.lr.ph.i.i:                             ; preds = %if.else.i.i75
  %329 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %vport1.i.i, align 4
  %331 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i36.i.i, i32 0, i32 4
  %332 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i36.i.i, i32 0, i32 4, i32 1
  %333 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i34.i.i.i, i32 0, i32 4
  %334 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i34.i.i.i, i32 0, i32 4, i32 1
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %if.end17.i.i.for.body13.i.i_crit_edge, %for.body13.lr.ph.i.i
  %i.166.i.i = phi i8 [ 0, %for.body13.lr.ph.i.i ], [ %inc19.i.i, %if.end17.i.i.for.body13.i.i_crit_edge ]
  %vport.064.i.i = phi ptr [ %330, %for.body13.lr.ph.i.i ], [ %incdec.ptr.i.i81, %if.end17.i.i.for.body13.i.i_crit_edge ]
  %back.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.064.i.i, i32 0, i32 12
  %335 = ptrtoint ptr %back.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %back.i.i.i, align 4
  %vport_id.i.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.064.i.i, i32 0, i32 11
  %337 = ptrtoint ptr %vport_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %vport_id.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %338)
  %cmp.i37.i.i = icmp ugt i16 %338, 7
  br i1 %cmp.i37.i.i, label %for.body13.i.i.cleanup_crit_edge, label %if.end.i.i.i77

for.body13.i.i.cleanup_crit_edge:                 ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i77:                                   ; preds = %for.body13.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i36.i.i) #7
  %339 = call ptr @memset(ptr %desc.i.i36.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i36.i.i, i32 noundef 2067, i1 noundef zeroext false) #7
  %idxprom.i.i38.i.i = zext i16 %338 to i32
  %tc_sch_mode.i.i39.i.i = getelementptr %struct.hclge_dev, ptr %336, i32 0, i32 37, i32 5, i32 %idxprom.i.i38.i.i, i32 1
  %340 = ptrtoint ptr %tc_sch_mode.i.i39.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %tc_sch_mode.i.i39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %341)
  %cmp.i.i40.i.i = icmp eq i8 %341, 1
  %..i.i41.i.i = select i1 %cmp.i.i40.i.i, i32 16777216, i32 0
  %342 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %..i.i41.i.i, ptr %332, align 4
  %343 = shl nuw nsw i32 %idxprom.i.i38.i.i, 24
  %344 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %331, align 4
  %hw.i.i42.i.i = getelementptr inbounds %struct.hclge_dev, ptr %336, i32 0, i32 2
  %call.i.i43.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i42.i.i, ptr noundef nonnull %desc.i.i36.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i36.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i.i)
  %tobool.not.i44.i.i = icmp eq i32 %call.i.i43.i.i, 0
  br i1 %tobool.not.i44.i.i, label %for.cond.preheader.i45.i.i, label %if.end.i.i.i77.cleanup_crit_edge

if.end.i.i.i77.cleanup_crit_edge:                 ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i45.i.i:                       ; preds = %if.end.i.i.i77
  %num_tc.i.i.i78 = getelementptr inbounds %struct.hclge_vport, ptr %vport.064.i.i, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %345 = ptrtoint ptr %num_tc.i.i.i78 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %num_tc.i.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %cmp839.not.i.i.i = icmp eq i8 %346, 0
  br i1 %cmp839.not.i.i.i, label %for.cond.preheader.i45.i.i.if.end17.i.i_crit_edge, label %for.body.lr.ph.i47.i.i

for.cond.preheader.i45.i.i.if.end17.i.i_crit_edge: ; preds = %for.cond.preheader.i45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.body.lr.ph.i47.i.i:                           ; preds = %for.cond.preheader.i45.i.i
  %qs_offset.i46.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport.064.i.i, i32 0, i32 1
  br label %for.body.i52.i.i

for.cond.i49.i.i:                                 ; preds = %for.body.i52.i.i
  %indvars.iv.next.i48.i.i = add nuw nsw i32 %indvars.iv.i50.i.i, 1
  %347 = ptrtoint ptr %num_tc.i.i.i78 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %num_tc.i.i.i78, align 4
  %349 = zext i8 %348 to i32
  %cmp8.i.i.i79 = icmp ult i32 %indvars.iv.next.i48.i.i, %349
  br i1 %cmp8.i.i.i79, label %for.cond.i49.i.i.for.body.i52.i.i_crit_edge, label %for.cond.i49.i.i.if.end17.i.i_crit_edge

for.cond.i49.i.i.if.end17.i.i_crit_edge:          ; preds = %for.cond.i49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.cond.i49.i.i.for.body.i52.i.i_crit_edge:      ; preds = %for.cond.i49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i52.i.i

for.body.i52.i.i:                                 ; preds = %for.cond.i49.i.i.for.body.i52.i.i_crit_edge, %for.body.lr.ph.i47.i.i
  %indvars.iv.i50.i.i = phi i32 [ 0, %for.body.lr.ph.i47.i.i ], [ %indvars.iv.next.i48.i.i, %for.cond.i49.i.i.for.body.i52.i.i_crit_edge ]
  %tc_sch_mode.i.i.i = getelementptr %struct.hclge_dev, ptr %336, i32 0, i32 37, i32 5, i32 %indvars.iv.i50.i.i, i32 1
  %350 = ptrtoint ptr %tc_sch_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %tc_sch_mode.i.i.i, align 1
  %352 = ptrtoint ptr %qs_offset.i46.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %qs_offset.i46.i.i, align 2
  %354 = trunc i32 %indvars.iv.i50.i.i to i16
  %conv13.i.i.i80 = add i16 %353, %354
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i34.i.i.i) #7
  %355 = call ptr @memset(ptr %desc.i34.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i34.i.i.i, i32 noundef 2068, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %351)
  %cmp.i35.i.i.i = icmp eq i8 %351, 1
  %..i36.i.i.i = select i1 %cmp.i35.i.i.i, i32 16777216, i32 0
  %356 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %..i36.i.i.i, ptr %334, align 4
  %conv4.i.i51.i.i = zext i16 %conv13.i.i.i80 to i32
  %357 = call i32 @llvm.bswap.i32(i32 %conv4.i.i51.i.i) #7
  %358 = ptrtoint ptr %333 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %333, align 4
  %call.i38.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i42.i.i, ptr noundef nonnull %desc.i34.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i34.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call.i38.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %for.cond.i49.i.i, label %for.body.i52.i.i.cleanup_crit_edge

for.body.i52.i.i.cleanup_crit_edge:               ; preds = %for.body.i52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.i:                                     ; preds = %for.cond.i49.i.i.if.end17.i.i_crit_edge, %for.cond.preheader.i45.i.i.if.end17.i.i_crit_edge
  %incdec.ptr.i.i81 = getelementptr %struct.hclge_vport, ptr %vport.064.i.i, i32 1
  %inc19.i.i = add i8 %i.166.i.i, 1
  %359 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %num_alloc_vport.i.i, align 2
  %361 = zext i8 %inc19.i.i to i16
  %cmp11.i.i = icmp ugt i16 %360, %361
  br i1 %cmp11.i.i, label %if.end17.i.i.for.body13.i.i_crit_edge, label %if.end17.i.i.cleanup_crit_edge

if.end17.i.i.cleanup_crit_edge:                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i.i.for.body13.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i.i

cleanup:                                          ; preds = %if.end17.i.i.cleanup_crit_edge, %for.body.i52.i.i.cleanup_crit_edge, %if.end.i.i.i77.cleanup_crit_edge, %for.body13.i.i.cleanup_crit_edge, %if.else.i.i75.cleanup_crit_edge, %for.inc.i.i73.cleanup_crit_edge, %for.body.i.i.i72.cleanup_crit_edge, %for.body.i9.i.cleanup_crit_edge, %for.cond.preheader.i6.i.cleanup_crit_edge, %for.body.i.i58.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.body.i.i.i.i.cleanup_crit_edge, %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i.cleanup_crit_edge, %if.end.i.i16.i.i.cleanup_crit_edge, %for.body.i14.i.i.cleanup_crit_edge, %cleanup.i.i.i.cleanup_crit_edge, %if.end.i.i63.i.cleanup_crit_edge, %for.body.i.i.i41.cleanup_crit_edge, %cleanup.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %for.body.i.i33.cleanup_crit_edge, %hclge_tm_port_shaper_cfg.exit.i.cleanup_crit_edge, %hclge_tm_port_shaper_cfg.exit.thread.i, %for.body.i13.i.cleanup_crit_edge, %for.cond4.6.i.i.i.cleanup_crit_edge, %for.cond4.5.i.i.i.cleanup_crit_edge, %for.cond4.4.i.i.i.cleanup_crit_edge, %for.cond4.3.i.i.i.cleanup_crit_edge, %for.cond4.2.i.i.i.cleanup_crit_edge, %for.cond4.1.i.i.i.cleanup_crit_edge, %for.cond4.i42.i.i.cleanup_crit_edge, %for.cond4.preheader.i.i.i.cleanup_crit_edge, %for.body9.i.i.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %hclge_up_to_tc_map.exit.i.cleanup_crit_edge, %hclge_up_to_tc_map.exit.thread.i
  %retval.0 = phi i32 [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %for.cond.preheader.i6.i.cleanup_crit_edge ], [ 0, %if.else.i.i75.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %hclge_up_to_tc_map.exit.thread.i ], [ %call2.i.i, %hclge_up_to_tc_map.exit.i.cleanup_crit_edge ], [ -22, %hclge_tm_port_shaper_cfg.exit.thread.i ], [ %call10.i.i, %hclge_tm_port_shaper_cfg.exit.i.cleanup_crit_edge ], [ %call.i38.i.i.i, %for.body.i52.i.i.cleanup_crit_edge ], [ 0, %if.end17.i.i.cleanup_crit_edge ], [ -22, %for.body13.i.i.cleanup_crit_edge ], [ %call.i.i43.i.i, %if.end.i.i.i77.cleanup_crit_edge ], [ %call.i24.i.i.i, %for.body.i.i.i72.cleanup_crit_edge ], [ 0, %for.inc.i.i73.cleanup_crit_edge ], [ %call.i.i.i.i63, %for.body.i9.i.cleanup_crit_edge ], [ %call.i.i.i56, %for.body.i.i58.cleanup_crit_edge ], [ %call.i39.i.i.i, %cleanup.i.i.i.cleanup_crit_edge ], [ %call.i.i.i.i42, %if.end.i.i63.i.cleanup_crit_edge ], [ -22, %for.body.i.i.i41.cleanup_crit_edge ], [ -22, %for.body.i.i.i.i.cleanup_crit_edge ], [ -22, %for.body.i14.i.i.cleanup_crit_edge ], [ %call.i.i.i.i.i, %if.end.i.i16.i.i.cleanup_crit_edge ], [ %call.i33.i.i.i.i, %hclge_tm_pri_vnet_base_shaper_pri_cfg.exit.i.i.i.cleanup_crit_edge ], [ -22, %for.body.i.i33.cleanup_crit_edge ], [ %call.i.i.i34, %if.end8.i.i.cleanup_crit_edge ], [ %call.i45.i.i, %cleanup.i.i.cleanup_crit_edge ], [ %call16.i.i, %for.body.i13.i.cleanup_crit_edge ], [ %call.i.i.i.i, %for.body9.i.i.i.cleanup_crit_edge ], [ %call.i.i40.i.i, %for.cond4.preheader.i.i.i.cleanup_crit_edge ], [ %call.i.1.i.i.i, %for.cond4.i42.i.i.cleanup_crit_edge ], [ %call.i.2.i.i.i, %for.cond4.1.i.i.i.cleanup_crit_edge ], [ %call.i.3.i.i.i, %for.cond4.2.i.i.i.cleanup_crit_edge ], [ %call.i.4.i.i.i, %for.cond4.3.i.i.i.cleanup_crit_edge ], [ %call.i.5.i.i.i, %for.cond4.4.i.i.i.cleanup_crit_edge ], [ %call.i.6.i.i.i, %for.cond4.5.i.i.i.cleanup_crit_edge ], [ %call.i.7.i.i.i, %for.cond4.6.i.i.i.cleanup_crit_edge ], [ %call.i.i.i, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_pause_setup_hw(ptr noundef %hdev, i1 noundef zeroext %init) local_unnamed_addr #1 align 64 {
entry:
  %desc.i.i37 = alloca %struct.hclge_desc, align 4
  %desc.i.i34 = alloca %struct.hclge_desc, align 4
  %desc.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 1
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 2
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 4
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 5
  %5 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 1795, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %add.ptr.i.i.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 2, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %1, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %10, ptr %4, align 4
  %pause_trans_gap3.i.i = getelementptr inbounds %struct.hclge_cfg_pause_param_cmd, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %pause_trans_gap3.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %pause_trans_gap3.i.i, align 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %2, align 4
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fc_mode.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %16 = ptrtoint ptr %fc_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fc_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %18 = icmp ult i32 %17, 5
  br i1 %18, label %switch.lookup, label %if.end.hclge_mac_pause_setup_hw.exit_crit_edge

if.end.hclge_mac_pause_setup_hw.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_mac_pause_setup_hw.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.hclge_pause_setup_hw, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep41 = getelementptr inbounds [5 x i32], ptr @switch.table.hclge_pause_setup_hw.50, i32 0, i32 %17
  %20 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  br label %hclge_mac_pause_setup_hw.exit

hclge_mac_pause_setup_hw.exit:                    ; preds = %switch.lookup, %if.end.hclge_mac_pause_setup_hw.exit_crit_edge
  %tx_en.0.off0.i = phi i32 [ %switch.load, %switch.lookup ], [ 16777216, %if.end.hclge_mac_pause_setup_hw.exit_crit_edge ]
  %rx_en.0.off0.i = phi i32 [ %switch.load42, %switch.lookup ], [ 33554432, %if.end.hclge_mac_pause_setup_hw.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i34) #7
  %21 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i34, i32 0, i32 4
  %22 = call ptr @memset(ptr %desc.i.i34, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i34, i32 noundef 1793, i1 noundef zeroext false) #7
  %or.i.i = or i32 %rx_en.0.off0.i, %tx_en.0.off0.i
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %21, align 4
  %call.i.i36 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i34, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool2.not = icmp eq i32 %call.i.i36, 0
  br i1 %tobool2.not, label %if.end4, label %hclge_mac_pause_setup_hw.exit.cleanup_crit_edge

hclge_mac_pause_setup_hw.exit.cleanup_crit_edge:  ; preds = %hclge_mac_pause_setup_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %hclge_mac_pause_setup_hw.exit
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %24 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flag, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not = icmp eq i32 %28, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %29 = ptrtoint ptr %fc_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i = icmp eq i32 %30, 4
  %spec.store.select.i = select i1 %cmp.i, i8 3, i8 0
  %pfc_en.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %31 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pfc_en.i, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i37) #7
  %33 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i37, i32 0, i32 4
  %34 = call ptr @memset(ptr %desc.i.i37, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i37, i32 noundef 1794, i1 noundef zeroext false) #7
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.store.select.i, ptr %33, align 4
  %pri_en_bitmap.i.i = getelementptr inbounds %struct.hclge_pfc_en_cmd, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %pri_en_bitmap.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %32, ptr %pri_en_bitmap.i.i, align 1
  %call.i.i40 = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i37, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i40)
  %cmp = icmp eq i32 %call.i.i40, -95
  %or.cond = select i1 %init, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end, label %if.else

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %if.end19

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool11.not = icmp eq i32 %call.i.i40, 0
  br i1 %tobool11.not, label %if.else.if.end19_crit_edge, label %do.end15

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.9, i32 noundef %call.i.i40) #10
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %do.end
  %call20 = call fastcc i32 @hclge_tm_bp_setup(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end15, %if.end4.cleanup_crit_edge, %hclge_mac_pause_setup_hw.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ %call.i.i40, %do.end15 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i36, %hclge_mac_pause_setup_hw.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_tm_bp_setup(ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  %desc.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_info = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %0 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tm_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_tqps.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 16
  %num_alloc_vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %vport10.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4, i32 1
  %qs_group_id.i.i = getelementptr inbounds %struct.hclge_bp_to_qs_map_cmd, ptr %2, i32 0, i32 2
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %hclge_bp_setup_hw.exit
  %inc = add nuw nsw i32 %i.010, 1
  %4 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tm_info, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv2 = trunc i32 %i.010 to i8
  %6 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_tqps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %7)
  %cmp.i = icmp ugt i16 %7, 1024
  %spec.select.i = select i1 %cmp.i, i32 40, i32 32
  %spec.select52.i = select i1 %cmp.i, i16 2016, i16 992
  %8 = trunc i32 %i.010 to i16
  %conv12.i = and i16 %8, 255
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.end.i.for.cond5.preheader.i_crit_edge, %for.body
  %i.056.i = phi i32 [ 0, %for.body ], [ %inc34.i, %for.end.i.for.cond5.preheader.i_crit_edge ]
  %9 = ptrtoint ptr %num_alloc_vport.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_alloc_vport.i, align 2
  %conv6.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp753.not.i = icmp eq i16 %10, 0
  br i1 %cmp753.not.i, label %for.cond5.preheader.i.for.end.i_crit_edge, label %for.body9.lr.ph.i

for.cond5.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body9.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %11 = ptrtoint ptr %vport10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vport10.i, align 4
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %k.055.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc.i, %for.body9.i.for.body9.i_crit_edge ]
  %qs_bitmap.054.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %qs_bitmap.1.i, %for.body9.i.for.body9.i_crit_edge ]
  %qs_offset.i = getelementptr %struct.hclge_vport, ptr %12, i32 %k.055.i, i32 1
  %13 = ptrtoint ptr %qs_offset.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %qs_offset.i, align 2
  %add.i = add i16 %14, %conv12.i
  %and.i = and i16 %add.i, %spec.select52.i
  %15 = lshr exact i16 %and.i, 5
  %conv17.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056.i, i32 %conv17.i)
  %cmp23.i = icmp eq i32 %i.056.i, %conv17.i
  %16 = and i16 %add.i, 31
  %conv21.i = zext i16 %16 to i32
  %shl.i = shl nuw i32 1, %conv21.i
  %or.i = select i1 %cmp23.i, i32 %shl.i, i32 0
  %qs_bitmap.1.i = or i32 %or.i, %qs_bitmap.054.i
  %inc.i = add nuw nsw i32 %k.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv6.i
  br i1 %exitcond.not.i, label %for.body9.i.for.end.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.body9.i.for.end.i_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body9.i.for.end.i_crit_edge, %for.cond5.preheader.i.for.end.i_crit_edge
  %qs_bitmap.0.lcssa.i = phi i32 [ 0, %for.cond5.preheader.i.for.end.i_crit_edge ], [ %qs_bitmap.1.i, %for.body9.i.for.end.i_crit_edge ]
  %conv28.i = trunc i32 %i.056.i to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  %17 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 2069, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2, ptr %2, align 4
  %19 = ptrtoint ptr %qs_group_id.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv28.i, ptr %qs_group_id.i.i, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %qs_bitmap.0.lcssa.i) #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %3, align 4
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp ne i32 %call.i.i, 0
  %inc34.i = add nuw nsw i32 %i.056.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34.i, i32 %spec.select.i)
  %exitcond58.not.i = icmp eq i32 %inc34.i, %spec.select.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond58.not.i
  br i1 %or.cond.i, label %hclge_bp_setup_hw.exit, label %for.end.i.for.cond5.preheader.i_crit_edge

for.end.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond5.preheader.i

hclge_bp_setup_hw.exit:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.cond, label %hclge_bp_setup_hw.exit.cleanup_crit_edge

hclge_bp_setup_hw.exit.cleanup_crit_edge:         ; preds = %hclge_bp_setup_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %hclge_bp_setup_hw.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call.i.i, %hclge_bp_setup_hw.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_tm_prio_tc_info_update(ptr nocapture noundef %hdev, ptr nocapture noundef readonly %prio_tc) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  %num_alloc_vport = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %2 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prio_tc, align 1
  %arrayidx3 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx3, align 1
  %5 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_alloc_vport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp526.not = icmp eq i16 %6, 0
  br i1 %cmp526.not, label %for.inc12.thread, label %entry.for.body7_crit_edge

entry.for.body7_crit_edge:                        ; preds = %entry
  br label %for.body7

for.inc12.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.130 = getelementptr i8, ptr %prio_tc, i32 1
  %7 = ptrtoint ptr %arrayidx.130 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.130, align 1
  %arrayidx3.131 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx3.131 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3.131, align 1
  br label %for.inc12.1thread-pre-split

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %entry.for.body7_crit_edge
  %k.027 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %entry.for.body7_crit_edge ]
  %10 = ptrtoint ptr %prio_tc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prio_tc, align 1
  %tc_info = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027, i32 13, i32 5, i32 0, i32 7
  %12 = ptrtoint ptr %tc_info to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tc_info, align 1
  %inc = add nuw nsw i32 %k.027, 1
  %13 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_alloc_vport, align 2
  %conv = zext i16 %14 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.inc12

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.inc12:                                        ; preds = %for.body7
  %arrayidx.1 = getelementptr i8, ptr %prio_tc, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx3.1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp526.not.1 = icmp eq i16 %14, 0
  br i1 %cmp526.not.1, label %for.inc12.for.inc12.1thread-pre-split_crit_edge, label %for.inc12.for.body7.1_crit_edge

for.inc12.for.body7.1_crit_edge:                  ; preds = %for.inc12
  br label %for.body7.1

for.inc12.for.inc12.1thread-pre-split_crit_edge:  ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1thread-pre-split

for.body7.1:                                      ; preds = %for.body7.1.for.body7.1_crit_edge, %for.inc12.for.body7.1_crit_edge
  %k.027.1 = phi i32 [ %inc.1, %for.body7.1.for.body7.1_crit_edge ], [ 0, %for.inc12.for.body7.1_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %arrayidx11.1 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.1, i32 13, i32 5, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx11.1, align 1
  %inc.1 = add nuw nsw i32 %k.027.1, 1
  %21 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_alloc_vport, align 2
  %conv.1 = zext i16 %22 to i32
  %cmp5.1 = icmp ult i32 %inc.1, %conv.1
  br i1 %cmp5.1, label %for.body7.1.for.body7.1_crit_edge, label %for.body7.1.for.inc12.1_crit_edge

for.body7.1.for.inc12.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.1

for.body7.1.for.body7.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.1

for.inc12.1thread-pre-split:                      ; preds = %for.inc12.for.inc12.1thread-pre-split_crit_edge, %for.inc12.thread
  %23 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.1

for.inc12.1:                                      ; preds = %for.inc12.1thread-pre-split, %for.body7.1.for.inc12.1_crit_edge
  %24 = phi i16 [ %.pr, %for.inc12.1thread-pre-split ], [ %22, %for.body7.1.for.inc12.1_crit_edge ]
  %arrayidx.2 = getelementptr i8, ptr %prio_tc, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %arrayidx3.2 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx3.2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp526.not.2 = icmp eq i16 %24, 0
  br i1 %cmp526.not.2, label %for.inc12.2thread-pre-split, label %for.inc12.1.for.body7.2_crit_edge

for.inc12.1.for.body7.2_crit_edge:                ; preds = %for.inc12.1
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.body7.2.for.body7.2_crit_edge, %for.inc12.1.for.body7.2_crit_edge
  %k.027.2 = phi i32 [ %inc.2, %for.body7.2.for.body7.2_crit_edge ], [ 0, %for.inc12.1.for.body7.2_crit_edge ]
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2, align 1
  %arrayidx11.2 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.2, i32 13, i32 5, i32 0, i32 7, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx11.2, align 1
  %inc.2 = add nuw nsw i32 %k.027.2, 1
  %31 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_alloc_vport, align 2
  %conv.2 = zext i16 %32 to i32
  %cmp5.2 = icmp ult i32 %inc.2, %conv.2
  br i1 %cmp5.2, label %for.body7.2.for.body7.2_crit_edge, label %for.body7.2.for.inc12.2_crit_edge

for.body7.2.for.inc12.2_crit_edge:                ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.2

for.body7.2.for.body7.2_crit_edge:                ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.2

for.inc12.2thread-pre-split:                      ; preds = %for.inc12.1
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %33)
  %.pr33 = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.2

for.inc12.2:                                      ; preds = %for.inc12.2thread-pre-split, %for.body7.2.for.inc12.2_crit_edge
  %34 = phi i16 [ %.pr33, %for.inc12.2thread-pre-split ], [ %32, %for.body7.2.for.inc12.2_crit_edge ]
  %arrayidx.3 = getelementptr i8, ptr %prio_tc, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx3.3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp526.not.3 = icmp eq i16 %34, 0
  br i1 %cmp526.not.3, label %for.inc12.3thread-pre-split, label %for.inc12.2.for.body7.3_crit_edge

for.inc12.2.for.body7.3_crit_edge:                ; preds = %for.inc12.2
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.body7.3.for.body7.3_crit_edge, %for.inc12.2.for.body7.3_crit_edge
  %k.027.3 = phi i32 [ %inc.3, %for.body7.3.for.body7.3_crit_edge ], [ 0, %for.inc12.2.for.body7.3_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.3, align 1
  %arrayidx11.3 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.3, i32 13, i32 5, i32 0, i32 7, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx11.3, align 1
  %inc.3 = add nuw nsw i32 %k.027.3, 1
  %41 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_alloc_vport, align 2
  %conv.3 = zext i16 %42 to i32
  %cmp5.3 = icmp ult i32 %inc.3, %conv.3
  br i1 %cmp5.3, label %for.body7.3.for.body7.3_crit_edge, label %for.body7.3.for.inc12.3_crit_edge

for.body7.3.for.inc12.3_crit_edge:                ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.3

for.body7.3.for.body7.3_crit_edge:                ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.3

for.inc12.3thread-pre-split:                      ; preds = %for.inc12.2
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %43)
  %.pr34 = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.3

for.inc12.3:                                      ; preds = %for.inc12.3thread-pre-split, %for.body7.3.for.inc12.3_crit_edge
  %44 = phi i16 [ %.pr34, %for.inc12.3thread-pre-split ], [ %42, %for.body7.3.for.inc12.3_crit_edge ]
  %arrayidx.4 = getelementptr i8, ptr %prio_tc, i32 4
  %45 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4, align 1
  %arrayidx3.4 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 4
  %47 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx3.4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp526.not.4 = icmp eq i16 %44, 0
  br i1 %cmp526.not.4, label %for.inc12.4thread-pre-split, label %for.inc12.3.for.body7.4_crit_edge

for.inc12.3.for.body7.4_crit_edge:                ; preds = %for.inc12.3
  br label %for.body7.4

for.body7.4:                                      ; preds = %for.body7.4.for.body7.4_crit_edge, %for.inc12.3.for.body7.4_crit_edge
  %k.027.4 = phi i32 [ %inc.4, %for.body7.4.for.body7.4_crit_edge ], [ 0, %for.inc12.3.for.body7.4_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.4, align 1
  %arrayidx11.4 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.4, i32 13, i32 5, i32 0, i32 7, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx11.4, align 1
  %inc.4 = add nuw nsw i32 %k.027.4, 1
  %51 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_alloc_vport, align 2
  %conv.4 = zext i16 %52 to i32
  %cmp5.4 = icmp ult i32 %inc.4, %conv.4
  br i1 %cmp5.4, label %for.body7.4.for.body7.4_crit_edge, label %for.body7.4.for.inc12.4_crit_edge

for.body7.4.for.inc12.4_crit_edge:                ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.4

for.body7.4.for.body7.4_crit_edge:                ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.4

for.inc12.4thread-pre-split:                      ; preds = %for.inc12.3
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %53)
  %.pr35 = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.4

for.inc12.4:                                      ; preds = %for.inc12.4thread-pre-split, %for.body7.4.for.inc12.4_crit_edge
  %54 = phi i16 [ %.pr35, %for.inc12.4thread-pre-split ], [ %52, %for.body7.4.for.inc12.4_crit_edge ]
  %arrayidx.5 = getelementptr i8, ptr %prio_tc, i32 5
  %55 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.5, align 1
  %arrayidx3.5 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 5
  %57 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx3.5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp526.not.5 = icmp eq i16 %54, 0
  br i1 %cmp526.not.5, label %for.inc12.5thread-pre-split, label %for.inc12.4.for.body7.5_crit_edge

for.inc12.4.for.body7.5_crit_edge:                ; preds = %for.inc12.4
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.body7.5.for.body7.5_crit_edge, %for.inc12.4.for.body7.5_crit_edge
  %k.027.5 = phi i32 [ %inc.5, %for.body7.5.for.body7.5_crit_edge ], [ 0, %for.inc12.4.for.body7.5_crit_edge ]
  %58 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.5, align 1
  %arrayidx11.5 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.5, i32 13, i32 5, i32 0, i32 7, i32 0, i32 5
  %60 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx11.5, align 1
  %inc.5 = add nuw nsw i32 %k.027.5, 1
  %61 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_alloc_vport, align 2
  %conv.5 = zext i16 %62 to i32
  %cmp5.5 = icmp ult i32 %inc.5, %conv.5
  br i1 %cmp5.5, label %for.body7.5.for.body7.5_crit_edge, label %for.body7.5.for.inc12.5_crit_edge

for.body7.5.for.inc12.5_crit_edge:                ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.5

for.body7.5.for.body7.5_crit_edge:                ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.5

for.inc12.5thread-pre-split:                      ; preds = %for.inc12.4
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %63)
  %.pr36 = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.5

for.inc12.5:                                      ; preds = %for.inc12.5thread-pre-split, %for.body7.5.for.inc12.5_crit_edge
  %64 = phi i16 [ %.pr36, %for.inc12.5thread-pre-split ], [ %62, %for.body7.5.for.inc12.5_crit_edge ]
  %arrayidx.6 = getelementptr i8, ptr %prio_tc, i32 6
  %65 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.6, align 1
  %arrayidx3.6 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 6
  %67 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx3.6, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp526.not.6 = icmp eq i16 %64, 0
  br i1 %cmp526.not.6, label %for.inc12.6thread-pre-split, label %for.inc12.5.for.body7.6_crit_edge

for.inc12.5.for.body7.6_crit_edge:                ; preds = %for.inc12.5
  br label %for.body7.6

for.body7.6:                                      ; preds = %for.body7.6.for.body7.6_crit_edge, %for.inc12.5.for.body7.6_crit_edge
  %k.027.6 = phi i32 [ %inc.6, %for.body7.6.for.body7.6_crit_edge ], [ 0, %for.inc12.5.for.body7.6_crit_edge ]
  %68 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.6, align 1
  %arrayidx11.6 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.6, i32 13, i32 5, i32 0, i32 7, i32 0, i32 6
  %70 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx11.6, align 1
  %inc.6 = add nuw nsw i32 %k.027.6, 1
  %71 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %num_alloc_vport, align 2
  %conv.6 = zext i16 %72 to i32
  %cmp5.6 = icmp ult i32 %inc.6, %conv.6
  br i1 %cmp5.6, label %for.body7.6.for.body7.6_crit_edge, label %for.body7.6.for.inc12.6_crit_edge

for.body7.6.for.inc12.6_crit_edge:                ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.6

for.body7.6.for.body7.6_crit_edge:                ; preds = %for.body7.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.6

for.inc12.6thread-pre-split:                      ; preds = %for.inc12.5
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %73)
  %.pr37 = load i16, ptr %num_alloc_vport, align 2
  br label %for.inc12.6

for.inc12.6:                                      ; preds = %for.inc12.6thread-pre-split, %for.body7.6.for.inc12.6_crit_edge
  %74 = phi i16 [ %.pr37, %for.inc12.6thread-pre-split ], [ %72, %for.body7.6.for.inc12.6_crit_edge ]
  %arrayidx.7 = getelementptr i8, ptr %prio_tc, i32 7
  %75 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.7, align 1
  %arrayidx3.7 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 7
  %77 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx3.7, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp526.not.7 = icmp eq i16 %74, 0
  br i1 %cmp526.not.7, label %for.inc12.6.for.inc12.7_crit_edge, label %for.inc12.6.for.body7.7_crit_edge

for.inc12.6.for.body7.7_crit_edge:                ; preds = %for.inc12.6
  br label %for.body7.7

for.inc12.6.for.inc12.7_crit_edge:                ; preds = %for.inc12.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.7

for.body7.7:                                      ; preds = %for.body7.7.for.body7.7_crit_edge, %for.inc12.6.for.body7.7_crit_edge
  %k.027.7 = phi i32 [ %inc.7, %for.body7.7.for.body7.7_crit_edge ], [ 0, %for.inc12.6.for.body7.7_crit_edge ]
  %78 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.7, align 1
  %arrayidx11.7 = getelementptr %struct.hclge_vport, ptr %1, i32 %k.027.7, i32 13, i32 5, i32 0, i32 7, i32 0, i32 7
  %80 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx11.7, align 1
  %inc.7 = add nuw nsw i32 %k.027.7, 1
  %81 = ptrtoint ptr %num_alloc_vport to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_alloc_vport, align 2
  %conv.7 = zext i16 %82 to i32
  %cmp5.7 = icmp ult i32 %inc.7, %conv.7
  br i1 %cmp5.7, label %for.body7.7.for.body7.7_crit_edge, label %for.body7.7.for.inc12.7_crit_edge

for.body7.7.for.inc12.7_crit_edge:                ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc12.7

for.body7.7.for.body7.7_crit_edge:                ; preds = %for.body7.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.7

for.inc12.7:                                      ; preds = %for.body7.7.for.inc12.7_crit_edge, %for.inc12.6.for.inc12.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_tm_schd_info_update(ptr noundef %hdev, i8 noundef zeroext %num_tc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_info = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %0 = ptrtoint ptr %tm_info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %num_tc, ptr %tm_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_tc)
  %cmp19.not = icmp eq i8 %num_tc, 0
  br i1 %cmp19.not, label %entry.if.then_crit_edge, label %for.body.preheader

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %num_tc to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %bit_map.020 = phi i8 [ 0, %for.body.preheader ], [ %conv8, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %indvars.iv
  %1 = trunc i32 %shl to i8
  %conv8 = or i8 %bit_map.020, %1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8)
  %tobool.not = icmp eq i8 %conv8, 0
  br i1 %tobool.not, label %for.end.if.then_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %tm_info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tm_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %bit_map.1 = phi i8 [ %conv8, %for.end.if.end_crit_edge ], [ 1, %if.then ]
  %hw_tc_map = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 29
  %3 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bit_map.1, ptr %hw_tc_map, align 2
  tail call fastcc void @hclge_tm_schd_info_init(ptr noundef %hdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_tm_schd_info_init(ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pg.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %0 = ptrtoint ptr %num_pg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_pg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp81.not.i = icmp eq i8 %1, 0
  br i1 %cmp81.not.i, label %entry.hclge_tm_pg_info_init.exit_crit_edge, label %if.end.peel.i

entry.hclge_tm_pg_info_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_pg_info_init.exit

if.end.peel.i:                                    ; preds = %entry
  %tm_info.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %ae_dev.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev.i, align 4
  %max_tm_rate.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 5, i32 2
  %wide.trip.count.i = zext i8 %1 to i32
  %uglygep83.peel.i = getelementptr i8, ptr %hdev, i32 1352
  %arrayidx.peel.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 100, ptr %arrayidx.peel.i, align 1
  %arrayidx8.peel.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0
  %5 = ptrtoint ptr %arrayidx8.peel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx8.peel.i, align 8
  %pg_sch_mode.peel.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %pg_sch_mode.peel.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pg_sch_mode.peel.i, align 1
  %7 = ptrtoint ptr %max_tm_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_tm_rate.i, align 4
  %bw_limit.peel.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 3
  %9 = ptrtoint ptr %bw_limit.peel.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bw_limit.peel.i, align 4
  %hw_tc_map.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 29
  %10 = ptrtoint ptr %hw_tc_map.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hw_tc_map.i, align 2
  %tc_bit_map.peel.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %tc_bit_map.peel.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tc_bit_map.peel.i, align 2
  %13 = ptrtoint ptr %tm_info.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tm_info.i, align 8
  %conv26.peel.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp2777.not.peel.i = icmp eq i8 %14, 0
  br i1 %cmp2777.not.peel.i, label %if.end.peel.i.for.body38.preheader.peel.i_crit_edge, label %for.cond35.preheader.peel.i

if.end.peel.i.for.body38.preheader.peel.i_crit_edge: ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38.preheader.peel.i

for.cond35.preheader.peel.i:                      ; preds = %if.end.peel.i
  %15 = call ptr @memset(ptr %uglygep83.peel.i, i32 100, i32 %conv26.peel.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %phi.cmp.i = icmp ult i8 %14, 8
  br i1 %phi.cmp.i, label %for.cond35.preheader.peel.i.for.body38.preheader.peel.i_crit_edge, label %for.cond35.preheader.peel.i.cleanup.peel.i_crit_edge

for.cond35.preheader.peel.i.cleanup.peel.i_crit_edge: ; preds = %for.cond35.preheader.peel.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.peel.i

for.cond35.preheader.peel.i.for.body38.preheader.peel.i_crit_edge: ; preds = %for.cond35.preheader.peel.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38.preheader.peel.i

for.body38.preheader.peel.i:                      ; preds = %for.cond35.preheader.peel.i.for.body38.preheader.peel.i_crit_edge, %if.end.peel.i.for.body38.preheader.peel.i_crit_edge
  %uglygep84.peel.i = getelementptr i8, ptr %uglygep83.peel.i, i32 %conv26.peel.i
  %16 = sub nsw i32 8, %conv26.peel.i
  %17 = call ptr @memset(ptr %uglygep84.peel.i, i32 0, i32 %16)
  br label %cleanup.peel.i

cleanup.peel.i:                                   ; preds = %for.body38.preheader.peel.i, %for.cond35.preheader.peel.i.cleanup.peel.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %exitcond.peel.not.i = icmp eq i8 %1, 1
  br i1 %exitcond.peel.not.i, label %cleanup.peel.i.hclge_tm_pg_info_init.exit_crit_edge, label %cleanup.peel.i.cleanup.i_crit_edge

cleanup.peel.i.cleanup.i_crit_edge:               ; preds = %cleanup.peel.i
  br label %cleanup.i

cleanup.peel.i.hclge_tm_pg_info_init.exit_crit_edge: ; preds = %cleanup.peel.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_pg_info_init.exit

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %cleanup.peel.i.cleanup.i_crit_edge
  %indvar.i = phi i32 [ %indvar.next.i, %cleanup.i.cleanup.i_crit_edge ], [ 1, %cleanup.peel.i.cleanup.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 2, i32 %indvar.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx8.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %indvar.i
  %19 = trunc i32 %indvar.i to i8
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx8.i, align 8
  %pg_sch_mode.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %indvar.i, i32 1
  %21 = ptrtoint ptr %pg_sch_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %pg_sch_mode.i, align 1
  %22 = ptrtoint ptr %max_tm_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_tm_rate.i, align 4
  %bw_limit.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 %indvar.i, i32 3
  %24 = ptrtoint ptr %bw_limit.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bw_limit.i, align 4
  %indvar.next.i = add nuw nsw i32 %indvar.i, 1
  %exitcond.not.i = icmp eq i32 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cleanup.i.hclge_tm_pg_info_init.exit_crit_edge, label %cleanup.i.cleanup.i_crit_edge, !llvm.loop !129

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i.hclge_tm_pg_info_init.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_pg_info_init.exit

hclge_tm_pg_info_init.exit:                       ; preds = %cleanup.i.hclge_tm_pg_info_init.exit_crit_edge, %cleanup.peel.i.hclge_tm_pg_info_init.exit_crit_edge, %entry.hclge_tm_pg_info_init.exit_crit_edge
  %tm_info.i4 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %25 = ptrtoint ptr %tm_info.i4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tm_info.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp56.not.i = icmp eq i8 %26, 0
  br i1 %cmp56.not.i, label %hclge_tm_tc_info_init.exit.thread, label %for.body.lr.ph.i

hclge_tm_tc_info_init.exit.thread:                ; preds = %hclge_tm_pg_info_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34.i13 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx34.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx34.i13, align 1
  %arrayidx34.1.i16 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx34.1.i16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx34.1.i16, align 1
  br label %.thread

for.body.lr.ph.i:                                 ; preds = %hclge_tm_pg_info_init.exit
  %bw_limit.i5 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 4, i32 0, i32 3
  %29 = ptrtoint ptr %bw_limit.i5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bw_limit.i5, align 4
  %wide.trip.count.i6 = zext i8 %26 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i7 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %indvars.iv.i
  %31 = trunc i32 %indvars.iv.i to i8
  %32 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx.i7, align 8
  %tc_sch_mode.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %indvars.iv.i, i32 1
  %33 = ptrtoint ptr %tc_sch_mode.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %tc_sch_mode.i, align 1
  %pgid.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %indvars.iv.i, i32 2
  %34 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %pgid.i, align 2
  %bw_limit18.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 5, i32 %indvars.iv.i, i32 3
  %35 = ptrtoint ptr %bw_limit18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %bw_limit18.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i8 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i6
  br i1 %exitcond.not.i8, label %hclge_tm_tc_info_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

hclge_tm_tc_info_init.exit:                       ; preds = %for.body.i
  %arrayidx34.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 0
  %36 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp28.not.1.i = icmp ugt i8 %26, 1
  %spec.select.1.i = zext i1 %cmp28.not.1.i to i8
  %arrayidx34.1.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 1
  %37 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select.1.i, ptr %arrayidx34.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp28.not.2.i = icmp ugt i8 %26, 2
  br i1 %cmp28.not.2.i, label %39, label %hclge_tm_tc_info_init.exit..thread_crit_edge

hclge_tm_tc_info_init.exit..thread_crit_edge:     ; preds = %hclge_tm_tc_info_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

.thread:                                          ; preds = %hclge_tm_tc_info_init.exit..thread_crit_edge, %hclge_tm_tc_info_init.exit.thread
  %arrayidx34.2.i20 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx34.2.i20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx34.2.i20, align 1
  br label %.thread24

39:                                               ; preds = %hclge_tm_tc_info_init.exit
  %arrayidx34.2.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %arrayidx34.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp28.not.3.i.not = icmp eq i8 %26, 3
  br i1 %cmp28.not.3.i.not, label %..thread24_crit_edge, label %42

..thread24_crit_edge:                             ; preds = %39
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread24

.thread24:                                        ; preds = %..thread24_crit_edge, %.thread
  %arrayidx34.3.i26 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx34.3.i26 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx34.3.i26, align 1
  br label %.thread30

42:                                               ; preds = %39
  %arrayidx34.3.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %arrayidx34.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp28.not.4.i = icmp ugt i8 %26, 4
  br i1 %cmp28.not.4.i, label %45, label %..thread30_crit_edge

..thread30_crit_edge:                             ; preds = %42
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread30

.thread30:                                        ; preds = %..thread30_crit_edge, %.thread24
  %arrayidx34.4.i32 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 4
  %44 = ptrtoint ptr %arrayidx34.4.i32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx34.4.i32, align 1
  br label %.thread36

45:                                               ; preds = %42
  %arrayidx34.4.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 4
  %46 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %arrayidx34.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %cmp28.not.5.i.not = icmp eq i8 %26, 5
  br i1 %cmp28.not.5.i.not, label %..thread36_crit_edge, label %48

..thread36_crit_edge:                             ; preds = %45
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread36

.thread36:                                        ; preds = %..thread36_crit_edge, %.thread30
  %arrayidx34.5.i38 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 5
  %47 = ptrtoint ptr %arrayidx34.5.i38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx34.5.i38, align 1
  br label %.thread42

48:                                               ; preds = %45
  %arrayidx34.5.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 5
  %49 = ptrtoint ptr %arrayidx34.5.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %arrayidx34.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %cmp28.not.6.i = icmp ugt i8 %26, 6
  br i1 %cmp28.not.6.i, label %51, label %..thread42_crit_edge

..thread42_crit_edge:                             ; preds = %48
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread42

.thread42:                                        ; preds = %..thread42_crit_edge, %.thread36
  %arrayidx34.6.i44 = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 6
  %50 = ptrtoint ptr %arrayidx34.6.i44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx34.6.i44, align 1
  br label %53

51:                                               ; preds = %48
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34.6.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 6
  %52 = ptrtoint ptr %arrayidx34.6.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 6, ptr %arrayidx34.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp28.not.7.i.not = icmp eq i8 %26, 7
  %spec.select = select i1 %cmp28.not.7.i.not, i8 0, i8 7
  br label %53

53:                                               ; preds = %51, %.thread42
  %54 = phi i8 [ 0, %.thread42 ], [ %spec.select, %51 ]
  %arrayidx34.7.i = getelementptr %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 3, i32 7
  %55 = ptrtoint ptr %arrayidx34.7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx34.7.i, align 1
  %num_alloc_vport.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %56 = ptrtoint ptr %num_alloc_vport.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_alloc_vport.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp7.not.i = icmp eq i16 %57, 0
  br i1 %cmp7.not.i, label %.hclge_tm_vport_info_update.exit_crit_edge, label %for.body.preheader.i

.hclge_tm_vport_info_update.exit_crit_edge:       ; preds = %53
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_vport_info_update.exit

for.body.preheader.i:                             ; preds = %53
  %vport1.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %58 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vport1.i, align 4
  br label %for.body.i9

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %for.body.preheader.i
  %i.09.i = phi i32 [ %inc.i, %for.body.i9.for.body.i9_crit_edge ], [ 0, %for.body.preheader.i ]
  %vport.08.i = phi ptr [ %incdec.ptr.i, %for.body.i9.for.body.i9_crit_edge ], [ %59, %for.body.preheader.i ]
  tail call fastcc void @hclge_tm_vport_tc_info_update(ptr noundef %vport.08.i) #7
  %incdec.ptr.i = getelementptr %struct.hclge_vport, ptr %vport.08.i, i32 1
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %60 = ptrtoint ptr %num_alloc_vport.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_alloc_vport.i, align 2
  %conv.i = zext i16 %61 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i9.for.body.i9_crit_edge, label %for.body.i9.hclge_tm_vport_info_update.exit_crit_edge

for.body.i9.hclge_tm_vport_info_update.exit_crit_edge: ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_vport_info_update.exit

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i9

hclge_tm_vport_info_update.exit:                  ; preds = %for.body.i9.hclge_tm_vport_info_update.exit_crit_edge, %.hclge_tm_vport_info_update.exit_crit_edge
  %ae_dev.i10 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %62 = ptrtoint ptr %ae_dev.i10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ae_dev.i10, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %65)
  %cmp.i11 = icmp ugt i32 %65, 47
  br i1 %cmp.i11, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %hclge_tm_vport_info_update.exit
  %pfc_en.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %66 = ptrtoint ptr %pfc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pfc_en.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %68 = ptrtoint ptr %fc_mode_last_time.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fc_mode_last_time.i.i, align 4
  %fc_mode.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %70 = ptrtoint ptr %fc_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %fc_mode.i.i, align 8
  br label %hclge_tm_pfc_info_update.exit

if.end.i.i:                                       ; preds = %if.then.i
  %fc_mode3.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %71 = ptrtoint ptr %fc_mode3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fc_mode3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.not.i.i = icmp eq i32 %72, 4
  br i1 %cmp.not.i.i, label %if.end.i.i.hclge_tm_pfc_info_update.exit_crit_edge, label %if.then4.i.i

if.end.i.i.hclge_tm_pfc_info_update.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_pfc_info_update.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time7.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %73 = ptrtoint ptr %fc_mode_last_time7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fc_mode_last_time7.i.i, align 4
  %74 = ptrtoint ptr %fc_mode3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %fc_mode3.i.i, align 8
  br label %hclge_tm_pfc_info_update.exit

if.else.i:                                        ; preds = %hclge_tm_vport_info_update.exit
  %75 = ptrtoint ptr %tm_info.i4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tm_info.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp.i.i = icmp eq i8 %76, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.i.if.else.i.i_crit_edge

if.else.i.if.else.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %pfc_en.i3.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %77 = ptrtoint ptr %pfc_en.i3.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pfc_en.i3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i4.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i4.i, label %if.then.i6.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i
  %fc_mode_last_time.i5.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %79 = ptrtoint ptr %fc_mode_last_time.i5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fc_mode_last_time.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp3.i.i = icmp eq i32 %80, 4
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.then.i6.i.if.end.i8.i_crit_edge

if.then.i6.i.if.end.i8.i_crit_edge:               ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8.i

do.end.i.i:                                       ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.43) #10
  br label %if.end.i8.i

if.end.i8.i:                                      ; preds = %do.end.i.i, %if.then.i6.i.if.end.i8.i_crit_edge
  %83 = ptrtoint ptr %fc_mode_last_time.i5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fc_mode_last_time.i5.i, align 4
  %fc_mode.i7.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %85 = ptrtoint ptr %fc_mode.i7.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %fc_mode.i7.i, align 8
  br label %hclge_tm_pfc_info_update.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.else.i.if.else.i.i_crit_edge
  %fc_mode9.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %86 = ptrtoint ptr %fc_mode9.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fc_mode9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp10.not.i.i = icmp eq i32 %87, 4
  br i1 %cmp10.not.i.i, label %if.else.i.i.hclge_tm_pfc_info_update.exit_crit_edge, label %if.then12.i.i

if.else.i.i.hclge_tm_pfc_info_update.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_pfc_info_update.exit

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fc_mode_last_time15.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %88 = ptrtoint ptr %fc_mode_last_time15.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %fc_mode_last_time15.i.i, align 4
  %89 = ptrtoint ptr %fc_mode9.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %fc_mode9.i.i, align 8
  br label %hclge_tm_pfc_info_update.exit

hclge_tm_pfc_info_update.exit:                    ; preds = %if.then12.i.i, %if.else.i.i.hclge_tm_pfc_info_update.exit_crit_edge, %if.end.i8.i, %if.then4.i.i, %if.end.i.i.hclge_tm_pfc_info_update.exit_crit_edge, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_init_hw(ptr noundef %hdev, i1 noundef zeroext %init) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_sch_mode = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 32
  %0 = ptrtoint ptr %tx_sch_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_sch_mode, align 1
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @hclge_tm_schd_setup_hw(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @hclge_pause_setup_hw(ptr noundef %hdev, i1 noundef zeroext %init)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call9, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_schd_init(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_mode = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 6
  %0 = ptrtoint ptr %fc_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %fc_mode, align 8
  %fc_mode_last_time = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 30
  %1 = ptrtoint ptr %fc_mode_last_time to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %fc_mode_last_time, align 4
  %tx_sch_mode = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 32
  %2 = ptrtoint ptr %tx_sch_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_sch_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_pg = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %num_pg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_pg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6.not = icmp eq i8 %5, 1
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @hclge_tm_schd_info_init(ptr noundef %hdev)
  %6 = ptrtoint ptr %tx_sch_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_sch_mode, align 1
  %.off.i = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @hclge_tm_schd_setup_hw(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @hclge_pause_setup_hw(ptr noundef %hdev, i1 noundef zeroext true) #7
  br label %return

return:                                           ; preds = %if.end7.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.return_crit_edge ], [ -524, %if.end.return_crit_edge ], [ %call.i, %if.end.i.return_crit_edge ], [ %call9.i, %if.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_vport_map_update(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 4
  tail call fastcc void @hclge_tm_vport_tc_info_update(ptr noundef %1)
  %call = tail call fastcc i32 @hclge_vport_q_to_qs_map(ptr noundef %hdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tm_info = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37
  %2 = ptrtoint ptr %tm_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tm_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %pfc_en = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 37, i32 8
  %4 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call fastcc i32 @hclge_tm_bp_setup(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_tm_vport_tc_info_update(ptr noundef %vport) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %vport_id.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 11
  %2 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vport_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i16 %3, 7
  %vf_rss_size_max.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 20
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport, align 8
  %tm_info.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %tm_info.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tm_info.i, align 8
  %conv5.i = zext i16 %5 to i32
  %conv6.i = zext i8 %7 to i32
  %8 = tail call i32 @llvm.umin.i32(i32 %conv5.i, i32 %conv6.i) #7
  %conv10.i = trunc i32 %8 to i8
  %pf_rss_size_max.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 21
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ %conv10.i, %if.else.i ], [ 1, %if.then.i ]
  %sub.sink.i = phi i16 [ 0, %if.else.i ], [ %sub.i, %if.then.i ]
  %vport_max_rss_size.0.in.i = phi ptr [ %pf_rss_size_max.i, %if.else.i ], [ %vf_rss_size_max.i, %if.then.i ]
  %9 = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink.i, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %sub.sink.i, ptr %11, align 2
  %13 = ptrtoint ptr %vport_max_rss_size.0.in.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %vport_max_rss_size.0.i = load i16, ptr %vport_max_rss_size.0.in.i, align 2
  %mqprio_active.i.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %mqprio_active.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mqprio_active.i.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %hw_tc_map.i.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %hw_tc_map.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hw_tc_map.i.i, align 2
  %conv5.i.i = zext i8 %17 to i32
  %and.i.i = and i32 %conv5.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %for.cond.preheader.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.cond.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vport, align 8
  %conv2.i.i = zext i8 %.sink.i to i16
  %div.i.i = udiv i16 %19, %conv2.i.i
  br label %hclge_vport_get_max_rss_size.exit.i

lor.lhs.false.i.i:                                ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink.i)
  %cmp9.not.not.i.i = icmp eq i8 %.sink.i, 0
  br i1 %cmp9.not.not.i.i, label %lor.lhs.false.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge, label %if.end12.i.i

lor.lhs.false.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_vport_get_max_rss_size.exit.i

if.end12.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i, %for.cond.preheader.i.i.for.inc.i.i_crit_edge
  %max_rss_size.1.i.i = phi i16 [ 0, %for.cond.preheader.i.i.for.inc.i.i_crit_edge ], [ %21, %if.end12.i.i ]
  %and.1.i.i = and i32 %conv5.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool6.not.1.i.i = icmp ne i32 %and.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.sink.i)
  %cmp9.not.1.i.i = icmp ugt i8 %.sink.i, 1
  %or.cond = select i1 %tobool6.not.1.i.i, i1 %cmp9.not.1.i.i, i1 false
  br i1 %or.cond, label %if.end12.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.end12.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.1.i.i, align 2
  %24 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.i.i, i16 %23) #7
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end12.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %max_rss_size.1.1.i.i = phi i16 [ %max_rss_size.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %24, %if.end12.1.i.i ]
  %and.2.i.i = and i32 %conv5.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool6.not.2.i.i = icmp ne i32 %and.2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.sink.i)
  %cmp9.not.2.i.i = icmp ugt i8 %.sink.i, 2
  %or.cond76 = select i1 %tobool6.not.2.i.i, i1 %cmp9.not.2.i.i, i1 false
  br i1 %or.cond76, label %if.end12.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.end12.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.2.i.i, align 2
  %27 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.1.i.i, i16 %26) #7
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end12.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %max_rss_size.1.2.i.i = phi i16 [ %max_rss_size.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %27, %if.end12.2.i.i ]
  %and.3.i.i = and i32 %conv5.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool6.not.3.i.i = icmp ne i32 %and.3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.sink.i)
  %cmp9.not.3.i.i = icmp ugt i8 %.sink.i, 3
  %or.cond77 = select i1 %tobool6.not.3.i.i, i1 %cmp9.not.3.i.i, i1 false
  br i1 %or.cond77, label %if.end12.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

if.end12.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.3.i.i, align 2
  %30 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.2.i.i, i16 %29) #7
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end12.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %max_rss_size.1.3.i.i = phi i16 [ %max_rss_size.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ], [ %30, %if.end12.3.i.i ]
  %and.4.i.i = and i32 %conv5.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool6.not.4.i.i = icmp ne i32 %and.4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.sink.i)
  %cmp9.not.4.i.i = icmp ugt i8 %.sink.i, 4
  %or.cond78 = select i1 %tobool6.not.4.i.i, i1 %cmp9.not.4.i.i, i1 false
  br i1 %or.cond78, label %if.end12.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i.i

if.end12.4.i.i:                                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 4
  %31 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.4.i.i, align 2
  %33 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.3.i.i, i16 %32) #7
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end12.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %max_rss_size.1.4.i.i = phi i16 [ %max_rss_size.1.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ], [ %33, %if.end12.4.i.i ]
  %and.5.i.i = and i32 %conv5.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool6.not.5.i.i = icmp ne i32 %and.5.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.sink.i)
  %cmp9.not.5.i.i = icmp ugt i8 %.sink.i, 5
  %or.cond79 = select i1 %tobool6.not.5.i.i, i1 %cmp9.not.5.i.i, i1 false
  br i1 %or.cond79, label %if.end12.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i.i

if.end12.5.i.i:                                   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 5
  %34 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.5.i.i, align 2
  %36 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.4.i.i, i16 %35) #7
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.end12.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %max_rss_size.1.5.i.i = phi i16 [ %max_rss_size.1.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ], [ %36, %if.end12.5.i.i ]
  %and.6.i.i = and i32 %conv5.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool6.not.6.i.i = icmp ne i32 %and.6.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.sink.i)
  %cmp9.not.6.i.i = icmp ugt i8 %.sink.i, 6
  %or.cond80 = select i1 %tobool6.not.6.i.i, i1 %cmp9.not.6.i.i, i1 false
  br i1 %or.cond80, label %if.end12.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i.i

if.end12.6.i.i:                                   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.6.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 6
  %37 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.6.i.i, align 2
  %39 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.5.i.i, i16 %38) #7
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.end12.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %max_rss_size.1.6.i.i = phi i16 [ %max_rss_size.1.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ], [ %39, %if.end12.6.i.i ]
  %and.7.i.i = and i32 %conv5.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool6.not.7.i.i = icmp ne i32 %and.7.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %.sink.i)
  %cmp9.not.7.i.i = icmp ugt i8 %.sink.i, 7
  %or.cond81 = select i1 %tobool6.not.7.i.i, i1 %cmp9.not.7.i.i, i1 false
  br i1 %or.cond81, label %if.end12.7.i.i, label %for.inc.6.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge

for.inc.6.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_vport_get_max_rss_size.exit.i

if.end12.7.i.i:                                   ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.7.i.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 7
  %40 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.7.i.i, align 2
  %42 = tail call i16 @llvm.umax.i16(i16 %max_rss_size.1.6.i.i, i16 %41) #7
  br label %hclge_vport_get_max_rss_size.exit.i

hclge_vport_get_max_rss_size.exit.i:              ; preds = %if.end12.7.i.i, %for.inc.6.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge, %lor.lhs.false.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i16 [ %div.i.i, %if.then.i.i ], [ %max_rss_size.1.6.i.i, %for.inc.6.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge ], [ %42, %if.end12.7.i.i ], [ 0, %lor.lhs.false.i.i.hclge_vport_get_max_rss_size.exit.i_crit_edge ]
  %43 = tail call i16 @llvm.umin.i16(i16 %vport_max_rss_size.0.i, i16 %retval.0.i.i) #7
  %req_rss_size.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 2
  %44 = ptrtoint ptr %req_rss_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %req_rss_size.i, align 2
  %rss_size.i = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rss_size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp28.not.i = icmp eq i16 %45, %47
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool32.not.i = icmp eq i16 %45, 0
  %or.cond.i = or i1 %tobool32.not.i, %cmp28.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %43)
  %cmp37.not.i = icmp ugt i16 %45, %43
  %or.cond94.i = select i1 %or.cond.i, i1 true, i1 %cmp37.not.i
  br i1 %or.cond94.i, label %if.else46.i, label %do.end.i

do.end.i:                                         ; preds = %hclge_vport_get_max_rss_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv27.i = zext i16 %47 to i32
  %conv26.i = zext i16 %45 to i32
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %conv27.i, i32 noundef %conv26.i) #10
  %50 = ptrtoint ptr %req_rss_size.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %req_rss_size.i, align 2
  br label %if.end63.sink.split.i

if.else46.i:                                      ; preds = %hclge_vport_get_max_rss_size.exit.i
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %43)
  %cmp50.i = icmp ugt i16 %47, %43
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %43)
  %cmp58.i = icmp ult i16 %47, %43
  %or.cond95.i = select i1 %tobool32.not.i, i1 %cmp58.i, i1 false
  %or.cond96.i = select i1 %cmp50.i, i1 true, i1 %or.cond95.i
  br i1 %or.cond96.i, label %if.else46.i.if.end63.sink.split.i_crit_edge, label %if.else46.i.hclge_tm_update_kinfo_rss_size.exit_crit_edge

if.else46.i.hclge_tm_update_kinfo_rss_size.exit_crit_edge: ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_tm_update_kinfo_rss_size.exit

if.else46.i.if.end63.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.sink.split.i

if.end63.sink.split.i:                            ; preds = %if.else46.i.if.end63.sink.split.i_crit_edge, %do.end.i
  %.sink97.i = phi i16 [ %51, %do.end.i ], [ %43, %if.else46.i.if.end63.sink.split.i_crit_edge ]
  %52 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink97.i, ptr %rss_size.i, align 4
  br label %hclge_tm_update_kinfo_rss_size.exit

hclge_tm_update_kinfo_rss_size.exit:              ; preds = %if.end63.sink.split.i, %if.else46.i.hclge_tm_update_kinfo_rss_size.exit_crit_edge
  %53 = ptrtoint ptr %mqprio_active.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mqprio_active.i.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i65 = icmp eq i8 %54, 0
  br i1 %tobool.not.i65, label %if.then.i69, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %hclge_tm_update_kinfo_rss_size.exit
  %55 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %back, align 4
  %hw_tc_map.i = getelementptr inbounds %struct.hclge_dev, ptr %56, i32 0, i32 29
  %57 = ptrtoint ptr %hw_tc_map.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hw_tc_map.i, align 2
  %conv5.i67 = zext i8 %58 to i32
  %and.i = and i32 %conv5.i67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i69:                                      ; preds = %hclge_tm_update_kinfo_rss_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %rss_size.i, align 4
  %61 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %9, align 2
  %conv2.i = zext i8 %62 to i16
  %mul.i = mul i16 %60, %conv2.i
  br label %hclge_vport_get_tqp_num.exit

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp9.not.i = icmp eq i8 %64, 0
  br i1 %cmp9.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then11.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 0
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i, align 2
  %conv12.i = zext i16 %66 to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %sum.1.i = phi i32 [ %conv12.i, %if.then11.i ], [ 0, %land.lhs.true.i.for.inc.i_crit_edge ], [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %and.1.i = and i32 %conv5.i67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool6.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool6.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp9.1.i = icmp ugt i8 %68, 1
  br i1 %cmp9.1.i, label %if.then11.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then11.1.i:                                    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 1
  %69 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.1.i, align 2
  %conv12.1.i = zext i16 %70 to i32
  %add.1.i = add nuw nsw i32 %sum.1.i, %conv12.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then11.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %sum.1.1.i = phi i32 [ %add.1.i, %if.then11.1.i ], [ %sum.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge ], [ %sum.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %and.2.i = and i32 %conv5.i67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool6.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool6.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp9.2.i = icmp ugt i8 %72, 2
  br i1 %cmp9.2.i, label %if.then11.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then11.2.i:                                    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 2
  %73 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.2.i, align 2
  %conv12.2.i = zext i16 %74 to i32
  %add.2.i = add nuw nsw i32 %sum.1.1.i, %conv12.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then11.2.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %sum.1.2.i = phi i32 [ %add.2.i, %if.then11.2.i ], [ %sum.1.1.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge ], [ %sum.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %and.3.i = and i32 %conv5.i67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool6.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool6.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %75 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp9.3.i = icmp ugt i8 %76, 3
  br i1 %cmp9.3.i, label %if.then11.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then11.3.i:                                    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 3
  %77 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.3.i, align 2
  %conv12.3.i = zext i16 %78 to i32
  %add.3.i = add nuw nsw i32 %sum.1.2.i, %conv12.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then11.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %sum.1.3.i = phi i32 [ %add.3.i, %if.then11.3.i ], [ %sum.1.2.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge ], [ %sum.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %and.4.i = and i32 %conv5.i67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool6.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool6.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %80)
  %cmp9.4.i = icmp ugt i8 %80, 4
  br i1 %cmp9.4.i, label %if.then11.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then11.4.i:                                    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 4
  %81 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.4.i, align 2
  %conv12.4.i = zext i16 %82 to i32
  %add.4.i = add nuw nsw i32 %sum.1.3.i, %conv12.4.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then11.4.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %sum.1.4.i = phi i32 [ %add.4.i, %if.then11.4.i ], [ %sum.1.3.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge ], [ %sum.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %and.5.i = and i32 %conv5.i67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool6.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool6.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %84)
  %cmp9.5.i = icmp ugt i8 %84, 5
  br i1 %cmp9.5.i, label %if.then11.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

if.then11.5.i:                                    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 5
  %85 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.5.i, align 2
  %conv12.5.i = zext i16 %86 to i32
  %add.5.i = add nuw nsw i32 %sum.1.4.i, %conv12.5.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then11.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %sum.1.5.i = phi i32 [ %add.5.i, %if.then11.5.i ], [ %sum.1.4.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge ], [ %sum.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %and.6.i = and i32 %conv5.i67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool6.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool6.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %88)
  %cmp9.6.i = icmp ugt i8 %88, 6
  br i1 %cmp9.6.i, label %if.then11.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

if.then11.6.i:                                    ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.6.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 6
  %89 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.6.i, align 2
  %conv12.6.i = zext i16 %90 to i32
  %add.6.i = add nuw nsw i32 %sum.1.5.i, %conv12.6.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then11.6.i, %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %sum.1.6.i = phi i32 [ %add.6.i, %if.then11.6.i ], [ %sum.1.5.i, %land.lhs.true.6.i.for.inc.6.i_crit_edge ], [ %sum.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %and.7.i = and i32 %conv5.i67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool6.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool6.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %91 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %92)
  %cmp9.7.i = icmp ugt i8 %92, 7
  br i1 %cmp9.7.i, label %if.then11.7.i, label %land.lhs.true.7.i.for.inc.7.i_crit_edge

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7.i

if.then11.7.i:                                    ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.7.i = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 7
  %93 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.7.i, align 2
  %conv12.7.i = zext i16 %94 to i32
  %add.7.i = add nuw nsw i32 %sum.1.6.i, %conv12.7.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then11.7.i, %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %sum.1.7.i = phi i32 [ %add.7.i, %if.then11.7.i ], [ %sum.1.6.i, %land.lhs.true.7.i.for.inc.7.i_crit_edge ], [ %sum.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  %conv14.i = trunc i32 %sum.1.7.i to i16
  br label %hclge_vport_get_tqp_num.exit

hclge_vport_get_tqp_num.exit:                     ; preds = %for.inc.7.i, %if.then.i69
  %retval.0.i = phi i16 [ %conv14.i, %for.inc.7.i ], [ %mul.i, %if.then.i69 ]
  %num_tqps = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 8
  %95 = ptrtoint ptr %num_tqps to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %retval.0.i, ptr %num_tqps, align 2
  %dwrr = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 3
  %96 = ptrtoint ptr %dwrr to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 100, ptr %dwrr, align 8
  %bw_limit = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 4, i32 0, i32 3
  %97 = ptrtoint ptr %bw_limit to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bw_limit, align 4
  %bw_limit1 = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 2
  %99 = ptrtoint ptr %bw_limit1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %bw_limit1, align 4
  %100 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rss_size.i, align 4
  %conv = zext i16 %101 to i32
  %rss_size2 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 87, i32 4
  %102 = ptrtoint ptr %rss_size2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv, ptr %rss_size2, align 4
  %tc_info = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7
  %103 = ptrtoint ptr %mqprio_active.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mqprio_active.i.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not = icmp eq i8 %104, 0
  br i1 %tobool.not, label %for.cond.preheader, label %hclge_vport_get_tqp_num.exit.cleanup_crit_edge

hclge_vport_get_tqp_num.exit.cleanup_crit_edge:   ; preds = %hclge_vport_get_tqp_num.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %hclge_vport_get_tqp_num.exit
  %hw_tc_map = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 29
  %105 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %hw_tc_map, align 2
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool7.not = icmp eq i8 %107, 0
  br i1 %tobool7.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %108 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp11.not = icmp eq i8 %109, 0
  br i1 %cmp11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %rss_size.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %.sink = phi i16 [ %111, %if.then13 ], [ 1, %land.lhs.true.for.inc_crit_edge ], [ 1, %for.cond.preheader.for.inc_crit_edge ]
  %arrayidx19 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 0
  %112 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %arrayidx19, align 2
  %arrayidx23 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 0
  %113 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %.sink, ptr %arrayidx23, align 2
  %114 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hw_tc_map, align 2
  %116 = and i8 %115, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool7.not.1 = icmp eq i8 %116, 0
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp11.1 = icmp ugt i8 %118, 1
  br i1 %cmp11.1, label %if.then13.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then13.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %rss_size.i, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %.sink118 = phi i16 [ %120, %if.then13.1 ], [ 0, %land.lhs.true.1.for.inc.1_crit_edge ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %.sink117 = phi i16 [ %120, %if.then13.1 ], [ 1, %land.lhs.true.1.for.inc.1_crit_edge ], [ 1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx27.1 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 1
  %121 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %.sink118, ptr %arrayidx27.1, align 2
  %arrayidx31.1 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 1
  %122 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %.sink117, ptr %arrayidx31.1, align 2
  %123 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %hw_tc_map, align 2
  %125 = and i8 %124, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool7.not.2 = icmp eq i8 %125, 0
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp11.2 = icmp ugt i8 %127, 2
  br i1 %cmp11.2, label %if.then13.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then13.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %rss_size.i, align 4
  %conv17.2 = shl i16 %129, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then13.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %.sink120 = phi i16 [ %conv17.2, %if.then13.2 ], [ 0, %land.lhs.true.2.for.inc.2_crit_edge ], [ 0, %for.inc.1.for.inc.2_crit_edge ]
  %.sink119 = phi i16 [ %129, %if.then13.2 ], [ 1, %land.lhs.true.2.for.inc.2_crit_edge ], [ 1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx27.2 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 2
  %130 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %.sink120, ptr %arrayidx27.2, align 2
  %arrayidx31.2 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 2
  %131 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %.sink119, ptr %arrayidx31.2, align 2
  %132 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %hw_tc_map, align 2
  %134 = and i8 %133, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool7.not.3 = icmp eq i8 %134, 0
  br i1 %tobool7.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %135 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %136)
  %cmp11.3 = icmp ugt i8 %136, 3
  br i1 %cmp11.3, label %if.then13.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then13.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %rss_size.i, align 4
  %conv17.3 = mul i16 %138, 3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then13.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %.sink122 = phi i16 [ %conv17.3, %if.then13.3 ], [ 0, %land.lhs.true.3.for.inc.3_crit_edge ], [ 0, %for.inc.2.for.inc.3_crit_edge ]
  %.sink121 = phi i16 [ %138, %if.then13.3 ], [ 1, %land.lhs.true.3.for.inc.3_crit_edge ], [ 1, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx27.3 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 3
  %139 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %.sink122, ptr %arrayidx27.3, align 2
  %arrayidx31.3 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 3
  %140 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %.sink121, ptr %arrayidx31.3, align 2
  %141 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hw_tc_map, align 2
  %143 = and i8 %142, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool7.not.4 = icmp eq i8 %143, 0
  br i1 %tobool7.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %144 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %145)
  %cmp11.4 = icmp ugt i8 %145, 4
  br i1 %cmp11.4, label %if.then13.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then13.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %rss_size.i, align 4
  %conv17.4 = shl i16 %147, 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then13.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %.sink124 = phi i16 [ %conv17.4, %if.then13.4 ], [ 0, %land.lhs.true.4.for.inc.4_crit_edge ], [ 0, %for.inc.3.for.inc.4_crit_edge ]
  %.sink123 = phi i16 [ %147, %if.then13.4 ], [ 1, %land.lhs.true.4.for.inc.4_crit_edge ], [ 1, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx27.4 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 4
  %148 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %.sink124, ptr %arrayidx27.4, align 2
  %arrayidx31.4 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 4
  %149 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %.sink123, ptr %arrayidx31.4, align 2
  %150 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %hw_tc_map, align 2
  %152 = and i8 %151, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool7.not.5 = icmp eq i8 %152, 0
  br i1 %tobool7.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %153 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %154)
  %cmp11.5 = icmp ugt i8 %154, 5
  br i1 %cmp11.5, label %if.then13.5, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then13.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %rss_size.i, align 4
  %conv17.5 = mul i16 %156, 5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then13.5, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %.sink126 = phi i16 [ %conv17.5, %if.then13.5 ], [ 0, %land.lhs.true.5.for.inc.5_crit_edge ], [ 0, %for.inc.4.for.inc.5_crit_edge ]
  %.sink125 = phi i16 [ %156, %if.then13.5 ], [ 1, %land.lhs.true.5.for.inc.5_crit_edge ], [ 1, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx27.5 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 5
  %157 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %.sink126, ptr %arrayidx27.5, align 2
  %arrayidx31.5 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 5
  %158 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %.sink125, ptr %arrayidx31.5, align 2
  %159 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %hw_tc_map, align 2
  %161 = and i8 %160, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool7.not.6 = icmp eq i8 %161, 0
  br i1 %tobool7.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %162 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %163)
  %cmp11.6 = icmp ugt i8 %163, 6
  br i1 %cmp11.6, label %if.then13.6, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then13.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %rss_size.i, align 4
  %conv17.6 = mul i16 %165, 6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then13.6, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %.sink128 = phi i16 [ %conv17.6, %if.then13.6 ], [ 0, %land.lhs.true.6.for.inc.6_crit_edge ], [ 0, %for.inc.5.for.inc.6_crit_edge ]
  %.sink127 = phi i16 [ %165, %if.then13.6 ], [ 1, %land.lhs.true.6.for.inc.6_crit_edge ], [ 1, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx27.6 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 6
  %166 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %.sink128, ptr %arrayidx27.6, align 2
  %arrayidx31.6 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 6
  %167 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %.sink127, ptr %arrayidx31.6, align 2
  %168 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %hw_tc_map, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %169)
  %tobool7.not.7 = icmp sgt i8 %169, -1
  br i1 %tobool7.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %170 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %171)
  %cmp11.7 = icmp ugt i8 %171, 7
  br i1 %cmp11.7, label %if.then13.7, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then13.7:                                      ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %rss_size.i, align 4
  %conv17.7 = mul i16 %173, 7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then13.7, %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %.sink130 = phi i16 [ %conv17.7, %if.then13.7 ], [ 0, %land.lhs.true.7.for.inc.7_crit_edge ], [ 0, %for.inc.6.for.inc.7_crit_edge ]
  %.sink129 = phi i16 [ %173, %if.then13.7 ], [ 1, %land.lhs.true.7.for.inc.7_crit_edge ], [ 1, %for.inc.6.for.inc.7_crit_edge ]
  %arrayidx27.7 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 7
  %174 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %.sink130, ptr %arrayidx27.7, align 2
  %arrayidx31.7 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 7
  %175 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %.sink129, ptr %arrayidx31.7, align 2
  %prio_tc35 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 37, i32 3
  %176 = ptrtoint ptr %prio_tc35 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 8)
  %177 = load i64, ptr %prio_tc35, align 2
  %178 = ptrtoint ptr %tc_info to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 %177, ptr %tc_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %hclge_vport_get_tqp_num.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_vport_q_to_qs_map(ptr noundef %hdev, ptr nocapture noundef readonly %vport) unnamed_addr #1 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tqp2 = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 9
  %0 = ptrtoint ptr %tqp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tqp2, align 4
  %num_tc = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp42.not = icmp eq i8 %3, 0
  br i1 %cmp42.not, label %entry.cleanup20_crit_edge, label %for.cond4.preheader.lr.ph

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.cond4.preheader.lr.ph:                        ; preds = %entry
  %qs_offset = getelementptr inbounds %struct.hclge_vport, ptr %vport, i32 0, i32 1
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc17.for.cond4.preheader_crit_edge, %for.cond4.preheader.lr.ph
  %i.043 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc18, %for.inc17.for.cond4.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 1, i32 %i.043
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp639.not = icmp eq i16 %7, 0
  br i1 %cmp639.not, label %for.cond4.preheader.for.inc17_crit_edge, label %for.body8.lr.ph

for.cond4.preheader.for.inc17_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

for.body8.lr.ph:                                  ; preds = %for.cond4.preheader
  %arrayidx9 = getelementptr %struct.hclge_vport, ptr %vport, i32 0, i32 13, i32 5, i32 0, i32 7, i32 2, i32 %i.043
  %8 = trunc i32 %i.043 to i16
  br label %for.body8

for.cond4:                                        ; preds = %for.body8
  %inc = add nuw nsw i32 %j.040, 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %10 to i32
  %cmp6 = icmp ult i32 %inc, %conv5
  br i1 %cmp6, label %for.cond4.for.body8_crit_edge, label %for.cond4.for.inc17_crit_edge

for.cond4.for.inc17_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

for.cond4.for.body8_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.body8:                                        ; preds = %for.cond4.for.body8_crit_edge, %for.body8.lr.ph
  %j.040 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.cond4.for.body8_crit_edge ]
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %12 to i32
  %add = add nuw i32 %j.040, %conv10
  %arrayidx11 = getelementptr ptr, ptr %1, i32 %add
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %index.i = getelementptr i8, ptr %14, i32 44
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index.i, align 8
  %17 = ptrtoint ptr %qs_offset to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %qs_offset, align 2
  %conv15 = add i16 %18, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %19 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 2054, i1 noundef zeroext false) #7
  %20 = call i16 @llvm.bswap.i16(i16 %16) #7
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %4, align 4
  %22 = and i16 %conv15, 1023
  %23 = shl i16 %conv15, 1
  %24 = and i16 %23, -2048
  %or2136.i = or i16 %22, %24
  %25 = or i16 %or2136.i, 1024
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %5, align 4
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond4, label %for.body8.cleanup20_crit_edge

for.body8.cleanup20_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.inc17:                                        ; preds = %for.cond4.for.inc17_crit_edge, %for.cond4.preheader.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %i.043, 1
  %28 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_tc, align 2
  %conv = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc18, %conv
  br i1 %cmp, label %for.inc17.for.cond4.preheader_crit_edge, label %for.inc17.cleanup20_crit_edge

for.inc17.cleanup20_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.inc17.for.cond4.preheader_crit_edge:          ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader

cleanup20:                                        ; preds = %for.inc17.cleanup20_crit_edge, %for.body8.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.3 = phi i32 [ 0, %entry.cleanup20_crit_edge ], [ %call.i, %for.body8.cleanup20_crit_edge ], [ 0, %for.inc17.cleanup20_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_qset_num(ptr noundef %hdev, ptr nocapture noundef writeonly %qset_num) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %5)
  %cmp = icmp ult i32 %5, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_num_vf(ptr noundef %7) #7
  %8 = trunc i32 %call to i16
  %conv = add i16 %8, 8
  %9 = ptrtoint ptr %qset_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %qset_num, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2070, i1 noundef zeroext true) #7
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call1 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call1) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %qset_num to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %qset_num, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %do.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pri_num(ptr noundef %hdev, ptr nocapture noundef writeonly %pri_num) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %5)
  %cmp = icmp ult i32 %5, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pri_num to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %pri_num, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2070, i1 noundef zeroext true) #7
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call) #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pri_num3 = getelementptr inbounds %struct.hclge_tm_nodes_cmd, ptr %0, i32 0, i32 5
  %9 = ptrtoint ptr %pri_num3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pri_num3, align 1
  %11 = ptrtoint ptr %pri_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %pri_num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %do.end ], [ 0, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_qset_map_pri(ptr noundef %hdev, i16 noundef zeroext %qset_id, ptr nocapture noundef writeonly %priority, ptr nocapture noundef writeonly %link_vld) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2053, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %qset_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %priority, align 1
  %link_vld2 = getelementptr inbounds %struct.hclge_qs_to_pri_link_cmd, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %link_vld2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %link_vld2, align 1
  %12 = ptrtoint ptr %link_vld to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %link_vld, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_qset_sch_mode(ptr noundef %hdev, i16 noundef zeroext %qset_id, ptr nocapture noundef writeonly %mode) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2068, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %qset_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_qset_weight(ptr noundef %hdev, i16 noundef zeroext %qset_id, ptr nocapture noundef writeonly %weight) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2058, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %qset_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dwrr = getelementptr inbounds %struct.hclge_qs_weight_cmd, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %dwrr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dwrr, align 2
  %8 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %weight, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_qset_shaper(ptr noundef %hdev, i16 noundef zeroext %qset_id, ptr nocapture noundef writeonly %para) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 6659, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %qset_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv = zext i16 %qset_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %7 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %conv1 = trunc i32 %11 to i8
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 1
  %12 = ptrtoint ptr %ir_b to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %ir_b, align 4
  %and2 = lshr i32 %11, 8
  %13 = trunc i32 %and2 to i8
  %conv4 = and i8 %13, 15
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 2
  %14 = ptrtoint ptr %ir_u to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %ir_u, align 1
  %and5 = lshr i32 %11, 12
  %15 = trunc i32 %and5 to i8
  %conv7 = and i8 %15, 15
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 3
  %16 = ptrtoint ptr %ir_s to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv7, ptr %ir_s, align 2
  %and8 = lshr i32 %11, 16
  %17 = trunc i32 %and8 to i8
  %conv10 = and i8 %17, 31
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 4
  %18 = ptrtoint ptr %bs_b to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %bs_b, align 1
  %and11 = lshr i32 %11, 21
  %19 = trunc i32 %and11 to i8
  %conv13 = and i8 %19, 31
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 5
  %20 = ptrtoint ptr %bs_s to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %bs_s, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 4
  %flag14 = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 6
  %23 = ptrtoint ptr %flag14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %flag14, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %para, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pri_sch_mode(ptr noundef %hdev, i8 noundef zeroext %pri_id, ptr nocapture noundef writeonly %mode) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2067, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pri_id, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pri_weight(ptr noundef %hdev, i8 noundef zeroext %pri_id, ptr nocapture noundef writeonly %weight) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2059, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pri_id, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dwrr = getelementptr inbounds %struct.hclge_priority_weight_cmd, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %dwrr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dwrr, align 1
  %7 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %weight, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pri_shaper(ptr noundef %hdev, i8 noundef zeroext %pri_id, i32 noundef %cmd, ptr nocapture noundef writeonly %para) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %3 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2060, i32 %3)
  %switch = icmp eq i32 %3, 2060
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef %cmd, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %pri_id, ptr %5, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %cmd, i32 noundef %call) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %conv = trunc i32 %11 to i8
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 1
  %12 = ptrtoint ptr %ir_b to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %ir_b, align 4
  %and5 = lshr i32 %11, 8
  %13 = trunc i32 %and5 to i8
  %conv7 = and i8 %13, 15
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 2
  %14 = ptrtoint ptr %ir_u to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %ir_u, align 1
  %and8 = lshr i32 %11, 12
  %15 = trunc i32 %and8 to i8
  %conv10 = and i8 %15, 15
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 3
  %16 = ptrtoint ptr %ir_s to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %ir_s, align 2
  %and11 = lshr i32 %11, 16
  %17 = trunc i32 %and11 to i8
  %conv13 = and i8 %17, 31
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 4
  %18 = ptrtoint ptr %bs_b to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %bs_b, align 1
  %and14 = lshr i32 %11, 21
  %19 = trunc i32 %and14 to i8
  %conv16 = and i8 %19, 31
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 5
  %20 = ptrtoint ptr %bs_s to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %bs_s, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %flag17 = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 6
  %23 = ptrtoint ptr %flag17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %flag17, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %para, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_q_to_qs_map(ptr noundef %hdev, i16 noundef zeroext %q_id, ptr nocapture noundef writeonly %qset_id) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2054, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %q_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = and i16 %9, 1023
  %11 = lshr i16 %9, 1
  %12 = and i16 %11, 31744
  %or2544 = or i16 %12, %10
  %13 = ptrtoint ptr %qset_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or2544, ptr %qset_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_q_to_tc(ptr noundef %hdev, i16 noundef zeroext %q_id, ptr nocapture noundef writeonly %tc_id) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2820, i1 noundef zeroext true) #7
  %2 = call i16 @llvm.bswap.i16(i16 %q_id)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %9 = and i8 %8, 7
  %10 = ptrtoint ptr %tc_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tc_id, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pg_to_pri_map(ptr noundef %hdev, i8 noundef zeroext %pg_id, ptr nocapture noundef writeonly %pri_bit_map) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2052, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pg_id, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = ptrtoint ptr %pri_bit_map to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %pri_bit_map, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pg_weight(ptr noundef %hdev, i8 noundef zeroext %pg_id, ptr nocapture noundef writeonly %weight) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2057, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pg_id, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dwrr = getelementptr inbounds %struct.hclge_pg_weight_cmd, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %dwrr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dwrr, align 1
  %7 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %weight, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pg_sch_mode(ptr noundef %hdev, i8 noundef zeroext %pg_id, ptr nocapture noundef writeonly %mode) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2066, i1 noundef zeroext true) #7
  %conv = zext i8 %pg_id to i32
  %2 = shl nuw i32 %conv, 24
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %0, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = lshr i32 %8, 24
  %conv3 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_pg_shaper(ptr noundef %hdev, i8 noundef zeroext %pg_id, i32 noundef %cmd, ptr nocapture noundef writeonly %para) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %3 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2062, i32 %3)
  %switch = icmp eq i32 %3, 2062
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef %cmd, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %pg_id, ptr %5, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %cmd, i32 noundef %call) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %conv = trunc i32 %11 to i8
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 1
  %12 = ptrtoint ptr %ir_b to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %ir_b, align 4
  %and5 = lshr i32 %11, 8
  %13 = trunc i32 %and5 to i8
  %conv7 = and i8 %13, 15
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 2
  %14 = ptrtoint ptr %ir_u to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %ir_u, align 1
  %and8 = lshr i32 %11, 12
  %15 = trunc i32 %and8 to i8
  %conv10 = and i8 %15, 15
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 3
  %16 = ptrtoint ptr %ir_s to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %ir_s, align 2
  %and11 = lshr i32 %11, 16
  %17 = trunc i32 %and11 to i8
  %conv13 = and i8 %17, 31
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 4
  %18 = ptrtoint ptr %bs_b to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv13, ptr %bs_b, align 1
  %and14 = lshr i32 %11, 21
  %19 = trunc i32 %and14 to i8
  %conv16 = and i8 %19, 31
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 5
  %20 = ptrtoint ptr %bs_s to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %bs_s, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4
  %flag17 = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 6
  %23 = ptrtoint ptr %flag17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %flag17, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %para, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_tm_get_port_shaper(ptr noundef %hdev, ptr nocapture noundef writeonly %para) local_unnamed_addr #1 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2064, i1 noundef zeroext true) #7
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %conv = trunc i32 %8 to i8
  %ir_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 1
  %9 = ptrtoint ptr %ir_b to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ir_b, align 4
  %and1 = lshr i32 %8, 8
  %10 = trunc i32 %and1 to i8
  %conv3 = and i8 %10, 15
  %ir_u = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 2
  %11 = ptrtoint ptr %ir_u to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %ir_u, align 1
  %and4 = lshr i32 %8, 12
  %12 = trunc i32 %and4 to i8
  %conv6 = and i8 %12, 15
  %ir_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 3
  %13 = ptrtoint ptr %ir_s to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %ir_s, align 2
  %and7 = lshr i32 %8, 16
  %14 = trunc i32 %and7 to i8
  %conv9 = and i8 %14, 31
  %bs_b = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 4
  %15 = ptrtoint ptr %bs_b to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %bs_b, align 1
  %and10 = lshr i32 %8, 21
  %16 = trunc i32 %and10 to i8
  %conv12 = and i8 %16, 31
  %bs_s = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 5
  %17 = ptrtoint ptr %bs_s to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %bs_s, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 4
  %flag13 = getelementptr inbounds %struct.hclge_tm_shaper_para, ptr %para, i32 0, i32 6
  %20 = ptrtoint ptr %flag13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %flag13, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %para, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 583, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclge_tm_qs_shaper_cfg._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclge_tm_qs_shaper_cfg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1538, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hclge_pause_setup_hw._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hclge_pause_setup_hw._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1540, i32 3}
!16 = !{ptr @hclge_pause_setup_hw._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hclge_pause_setup_hw._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1650, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hclge_tm_get_qset_num._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hclge_tm_get_qset_num._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1674, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hclge_tm_get_pri_num._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hclge_tm_get_pri_num._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1696, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hclge_tm_get_qset_map_pri._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @hclge_tm_get_qset_map_pri._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1717, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hclge_tm_get_qset_sch_mode._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @hclge_tm_get_qset_sch_mode._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1737, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hclge_tm_get_qset_weight._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hclge_tm_get_qset_weight._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1759, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hclge_tm_get_qset_shaper._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hclge_tm_get_qset_shaper._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1787, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hclge_tm_get_pri_sch_mode._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hclge_tm_get_pri_sch_mode._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1807, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hclge_tm_get_pri_weight._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hclge_tm_get_pri_weight._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1834, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hclge_tm_get_pri_shaper._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hclge_tm_get_pri_shaper._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1864, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hclge_tm_get_q_to_qs_map._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @hclge_tm_get_q_to_qs_map._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1902, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hclge_tm_get_q_to_tc._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hclge_tm_get_q_to_tc._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1923, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hclge_tm_get_pg_to_pri_map._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hclge_tm_get_pg_to_pri_map._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1943, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hclge_tm_get_pg_weight._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @hclge_tm_get_pg_weight._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1961, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hclge_tm_get_pg_sch_mode._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @hclge_tm_get_pg_sch_mode._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1988, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hclge_tm_get_pg_shaper._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @hclge_tm_get_pg_shaper._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 2016, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hclge_tm_get_port_shaper._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hclge_tm_get_port_shaper._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"hclge_pfc_tx_stats_offset", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 116, i32 18}
!100 = distinct !{null, !101, !"hclge_pfc_rx_stats_offset", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 127, i32 18}
!102 = distinct !{null, !103, !"tick_array", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 48, i32 19}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 764, i32 4}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hclge_update_fc_mode_by_dcb_flag._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @hclge_update_fc_mode_by_dcb_flag._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 1227, i32 4}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @hclge_tm_pri_dwrr_cfg._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @hclge_tm_pri_dwrr_cfg._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_tm.c", i32 662, i32 3}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @hclge_tm_update_kinfo_rss_size._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @hclge_tm_update_kinfo_rss_size._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = !{i8 0, i8 2}
