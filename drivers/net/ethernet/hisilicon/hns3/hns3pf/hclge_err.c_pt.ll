; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hclge_hw_error = type { i32, ptr, i32 }
%struct.hclge_hw_module_id = type { i32, ptr }
%struct.hclge_hw_type_id = type { i32, ptr }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
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
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hclge_query_ppu_pf_other_int_dfx_cmd = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8] }
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
%struct.hclge_sum_err_info = type { i8, i8, [2 x i8] }
%struct.hclge_mod_err_info = type { i8, i8, [2 x i8] }
%struct.hclge_type_reg_err_info = type { i8, i8, [2 x i8], [256 x i32] }

@hclge_config_rocee_ras_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed(%d) to config ROCEE RAS interrupt\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_config_rocee_ras_interrupt\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_config_rocee_ras_interrupt._entry_ptr = internal global ptr @hclge_config_rocee_ras_interrupt._entry, section ".printk_index", align 4
@hclge_handle_hw_ras_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't recover - RAS error reported during dev init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_handle_hw_ras_error\00", [38 x i8] zeroinitializer }, align 32
@hclge_handle_hw_ras_error._entry_ptr = internal global ptr @hclge_handle_hw_ras_error._entry, section ".printk_index", align 4
@hclge_handle_hw_ras_error._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 2380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HNS Non-Fatal RAS error(status=0x%x) identified\0A\00", [47 x i8] zeroinitializer }, align 32
@hclge_handle_hw_ras_error._entry_ptr.9 = internal global ptr @hclge_handle_hw_ras_error._entry.7, section ".printk_index", align 4
@hclge_handle_hw_ras_error._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 2387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ROCEE Non-Fatal RAS error identified\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_handle_hw_ras_error._entry_ptr.12 = internal global ptr @hclge_handle_hw_ras_error._entry.10, section ".printk_index", align 4
@hclge_handle_hw_msix_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 2645, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to handle msix error during dev init\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_handle_hw_msix_error\00", [37 x i8] zeroinitializer }, align 32
@hclge_handle_hw_msix_error._entry_ptr = internal global ptr @hclge_handle_hw_msix_error._entry, section ".printk_index", align 4
@hclge_handle_mac_tnl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 2664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to query mac tnl int, ret = %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclge_handle_mac_tnl\00", [43 x i8] zeroinitializer }, align 32
@hclge_handle_mac_tnl._entry_ptr = internal global ptr @hclge_handle_mac_tnl._entry, section ".printk_index", align 4
@hclge_handle_mac_tnl._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 2681, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to clear mac tnl int, ret = %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@hclge_handle_mac_tnl._entry_ptr.19 = internal global ptr @hclge_handle_mac_tnl._entry.17, section ".printk_index", align 4
@hclge_handle_all_hns_hw_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 2715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fail(%d) to clear mpf msix int during init\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_handle_all_hns_hw_errors\00", [33 x i8] zeroinitializer }, align 32
@hclge_handle_all_hns_hw_errors._entry_ptr = internal global ptr @hclge_handle_all_hns_hw_errors._entry, section ".printk_index", align 4
@hclge_handle_all_hns_hw_errors._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 2724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail(%d) to clear pf msix int during init\0A\00", [53 x i8] zeroinitializer }, align 32
@hclge_handle_all_hns_hw_errors._entry_ptr.24 = internal global ptr @hclge_handle_all_hns_hw_errors._entry.22, section ".printk_index", align 4
@hclge_handle_all_hns_hw_errors._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 2730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HNS hw error(RAS) identified during init\0A\00", [54 x i8] zeroinitializer }, align 32
@hclge_handle_all_hns_hw_errors._entry_ptr.27 = internal global ptr @hclge_handle_all_hns_hw_errors._entry.25, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed(%d) to query ROCEE RAS INT SRC\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hclge_log_and_clear_rocee_ras_error\00", [60 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 2205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ROCEE RAS AXI rresp error\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr.32 = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry.30, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 2208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ROCEE RAS AXI bresp error\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr.35 = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry.33, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 2220, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ROCEE RAS 2bit ECC error\0A\00", [38 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr.38 = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry.36, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 2231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed(%d) to process ovf error\0A\00", [63 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr.41 = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry.39, section ".printk_index", align 4
@hclge_log_and_clear_rocee_ras_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 2241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed(%d) to clear ROCEE RAS error\0A\00", [59 x i8] zeroinitializer }, align 32
@hclge_log_and_clear_rocee_ras_error._entry_ptr.44 = internal global ptr @hclge_log_and_clear_rocee_ras_error._entry.42, section ".printk_index", align 4
@hclge_cmd_query_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"query error cmd failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclge_cmd_query_error\00", [42 x i8] zeroinitializer }, align 32
@hclge_cmd_query_error._entry_ptr = internal global ptr @hclge_cmd_query_error._entry, section ".printk_index", align 4
@hclge_log_rocee_axi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 2095, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed(%d) to query ROCEE AXI error sts\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_log_rocee_axi_error\00", [38 x i8] zeroinitializer }, align 32
@hclge_log_rocee_axi_error._entry_ptr = internal global ptr @hclge_log_rocee_axi_error._entry, section ".printk_index", align 4
@hclge_log_rocee_axi_error._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 2102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AXI1: %08X %08X %08X %08X %08X %08X\0A\00", [59 x i8] zeroinitializer }, align 32
@hclge_log_rocee_axi_error._entry_ptr.51 = internal global ptr @hclge_log_rocee_axi_error._entry.49, section ".printk_index", align 4
@hclge_log_rocee_axi_error._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 2106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AXI2: %08X %08X %08X %08X %08X %08X\0A\00", [59 x i8] zeroinitializer }, align 32
@hclge_log_rocee_axi_error._entry_ptr.54 = internal global ptr @hclge_log_rocee_axi_error._entry.52, section ".printk_index", align 4
@hclge_log_rocee_axi_error._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 2109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AXI3: %08X %08X %08X %08X\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_log_rocee_axi_error._entry_ptr.57 = internal global ptr @hclge_log_rocee_axi_error._entry.55, section ".printk_index", align 4
@hclge_log_rocee_ecc_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed(%d) to query ROCEE ECC error sts\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_log_rocee_ecc_error\00", [38 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ecc_error._entry_ptr = internal global ptr @hclge_log_rocee_ecc_error._entry, section ".printk_index", align 4
@hclge_log_rocee_ecc_error._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 2131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ECC1: %08X %08X %08X %08X %08X %08X\0A\00", [59 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ecc_error._entry_ptr.62 = internal global ptr @hclge_log_rocee_ecc_error._entry.60, section ".printk_index", align 4
@hclge_log_rocee_ecc_error._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 2133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ECC2: %08X %08X %08X\0A\00", [42 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ecc_error._entry_ptr.65 = internal global ptr @hclge_log_rocee_ecc_error._entry.63, section ".printk_index", align 4
@hclge_log_rocee_ovf_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 2148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed(%d) to query ROCEE OVF error sts\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_log_rocee_ovf_error\00", [38 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ovf_error._entry_ptr = internal global ptr @hclge_log_rocee_ovf_error._entry, section ".printk_index", align 4
@hclge_log_rocee_ovf_error._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 2164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s [error status=0x%x] found\0A\00", [34 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ovf_error._entry_ptr.70 = internal global ptr @hclge_log_rocee_ovf_error._entry.68, section ".printk_index", align 4
@hclge_log_rocee_ovf_error._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 2173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ROCEE TSP OVF [error status=0x%x] found\0A\00", [55 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ovf_error._entry_ptr.73 = internal global ptr @hclge_log_rocee_ovf_error._entry.71, section ".printk_index", align 4
@hclge_log_rocee_ovf_error._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 2178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ROCEE SCC OVF [error status=0x%x] found\0A\00", [55 x i8] zeroinitializer }, align 32
@hclge_log_rocee_ovf_error._entry_ptr.76 = internal global ptr @hclge_log_rocee_ovf_error._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rocee qmm ovf: sgid invalid err\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rocee qmm ovf: sgid ovf err\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rocee qmm ovf: smac invalid err\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rocee qmm ovf: smac ovf err\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rocee qmm ovf: cqc invalid err\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: cqc ovf err\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rocee qmm ovf: cqc hopnum err\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: cqc ba0 err\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rocee qmm ovf: srqc invalid err\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rocee qmm ovf: srqc ovf err\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rocee qmm ovf: srqc hopnum err\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rocee qmm ovf: srqc ba0 err\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rocee qmm ovf: mpt invalid err\00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: mpt ovf err\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rocee qmm ovf: mpt hopnum err\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: mpt ba0 err\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rocee qmm ovf: qpc invalid err\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: qpc ovf err\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rocee qmm ovf: qpc hopnum err\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rocee qmm ovf: qpc ba0 err\00", [37 x i8] zeroinitializer }, align 32
@hclge_config_igu_egu_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fail(%d) to configure IGU common interrupts\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hclge_config_igu_egu_hw_err_int\00", [32 x i8] zeroinitializer }, align 32
@hclge_config_igu_egu_hw_err_int._entry_ptr = internal global ptr @hclge_config_igu_egu_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_igu_egu_hw_err_int._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 1483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fail(%d) to configure IGU-EGU TNL interrupts\0A\00", [50 x i8] zeroinitializer }, align 32
@hclge_config_igu_egu_hw_err_int._entry_ptr.108 = internal global ptr @hclge_config_igu_egu_hw_err_int._entry.106, section ".printk_index", align 4
@hclge_config_ncsi_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fail(%d) to configure  NCSI error interrupts\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hclge_config_ncsi_hw_err_int\00", [35 x i8] zeroinitializer }, align 32
@hclge_config_ncsi_hw_err_int._entry_ptr = internal global ptr @hclge_config_ncsi_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_ppp_error_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fail(%d) to configure PPP error intr\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hclge_config_ppp_error_interrupt\00", [63 x i8] zeroinitializer }, align 32
@hclge_config_ppp_error_interrupt._entry_ptr = internal global ptr @hclge_config_ppp_error_interrupt._entry, section ".printk_index", align 4
@hclge_config_ssu_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"fail(%d) to configure SSU ECC error interrupt\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_config_ssu_hw_err_int\00", [36 x i8] zeroinitializer }, align 32
@hclge_config_ssu_hw_err_int._entry_ptr = internal global ptr @hclge_config_ssu_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_ssu_hw_err_int._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 1765, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fail(%d) to configure SSU COMMON error intr\0A\00", [51 x i8] zeroinitializer }, align 32
@hclge_config_ssu_hw_err_int._entry_ptr.117 = internal global ptr @hclge_config_ssu_hw_err_int._entry.115, section ".printk_index", align 4
@hclge_config_ppu_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fail(%d) to configure PPU MPF ECC error intr\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_config_ppu_hw_err_int\00", [36 x i8] zeroinitializer }, align 32
@hclge_config_ppu_hw_err_int._entry_ptr = internal global ptr @hclge_config_ppu_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_ppu_hw_err_int._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 1701, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fail(%d) to configure PPU MPF other intr\0A\00", [54 x i8] zeroinitializer }, align 32
@hclge_config_ppu_hw_err_int._entry_ptr.122 = internal global ptr @hclge_config_ppu_hw_err_int._entry.120, section ".printk_index", align 4
@hclge_config_ppu_hw_err_int._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 1709, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"fail(%d) to configure PPU PF error interrupts\0A\00", [49 x i8] zeroinitializer }, align 32
@hclge_config_ppu_hw_err_int._entry_ptr.125 = internal global ptr @hclge_config_ppu_hw_err_int._entry.123, section ".printk_index", align 4
@hclge_config_ppu_error_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid cmd to configure PPU error interrupts\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hclge_config_ppu_error_interrupts\00", [62 x i8] zeroinitializer }, align 32
@hclge_config_ppu_error_interrupts._entry_ptr = internal global ptr @hclge_config_ppu_error_interrupts._entry, section ".printk_index", align 4
@hclge_config_tm_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail(%d) to configure TM SCH errors\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_config_tm_hw_err_int\00", [37 x i8] zeroinitializer }, align 32
@hclge_config_tm_hw_err_int._entry_ptr = internal global ptr @hclge_config_tm_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_tm_hw_err_int._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fail(%d) to configure TM QCN mem errors\0A\00", [55 x i8] zeroinitializer }, align 32
@hclge_config_tm_hw_err_int._entry_ptr.132 = internal global ptr @hclge_config_tm_hw_err_int._entry.130, section ".printk_index", align 4
@hclge_config_common_hw_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fail(%d) to configure common err interrupts\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclge_config_common_hw_err_int\00", [33 x i8] zeroinitializer }, align 32
@hclge_config_common_hw_err_int._entry_ptr = internal global ptr @hclge_config_common_hw_err_int._entry, section ".printk_index", align 4
@hclge_config_mac_err_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fail(%d) to configure MAC COMMON error intr\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_config_mac_err_int\00", [39 x i8] zeroinitializer }, align 32
@hclge_config_mac_err_int._entry_ptr = internal global ptr @hclge_config_mac_err_int._entry, section ".printk_index", align 4
@hclge_handle_mpf_ras_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"query all mpf ras int cmd failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_handle_mpf_ras_error\00", [37 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry_ptr = internal global ptr @hclge_handle_mpf_ras_error._entry, section ".printk_index", align 4
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IMP_TCM_ECC_INT_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMDQ_MEM_ECC_INT_STS\00", [43 x i8] zeroinitializer }, align 32
@hclge_cmdq_nic_mem_ecc_int = internal constant { [17 x %struct.hclge_hw_error], [52 x i8] } { [17 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 2, ptr @.str.178, i32 8 }, %struct.hclge_hw_error { i32 8, ptr @.str.179, i32 8 }, %struct.hclge_hw_error { i32 32, ptr @.str.180, i32 8 }, %struct.hclge_hw_error { i32 128, ptr @.str.181, i32 8 }, %struct.hclge_hw_error { i32 512, ptr @.str.182, i32 8 }, %struct.hclge_hw_error { i32 2048, ptr @.str.183, i32 8 }, %struct.hclge_hw_error { i32 8192, ptr @.str.184, i32 8 }, %struct.hclge_hw_error { i32 32768, ptr @.str.185, i32 8 }, %struct.hclge_hw_error { i32 131072, ptr @.str.186, i32 8 }, %struct.hclge_hw_error { i32 524288, ptr @.str.187, i32 8 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.188, i32 8 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.189, i32 8 }, %struct.hclge_hw_error { i32 33554432, ptr @.str.190, i32 8 }, %struct.hclge_hw_error { i32 134217728, ptr @.str.191, i32 8 }, %struct.hclge_hw_error { i32 536870912, ptr @.str.192, i32 8 }, %struct.hclge_hw_error { i32 -2147483648, ptr @.str.193, i32 8 }, %struct.hclge_hw_error zeroinitializer], [52 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.138, ptr @.str.2, i32 1857, ptr @.str.143, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imp_rd_data_poison_err found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry_ptr.144 = internal global ptr @hclge_handle_mpf_ras_error._entry.141, section ".printk_index", align 4
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TQP_INT_ECC_INT_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSIX_ECC_INT_STS\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SSU_ECC_MULTI_BIT_INT_0\00", [40 x i8] zeroinitializer }, align 32
@hclge_ssu_mem_ecc_err_int = internal constant { [33 x %struct.hclge_hw_error], [116 x i8] } { [33 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.202, i32 6 }, %struct.hclge_hw_error { i32 2, ptr @.str.203, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.204, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.205, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.206, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.207, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.208, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.209, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.210, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.211, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.212, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.213, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.214, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.215, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.216, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.217, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.218, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.219, i32 6 }, %struct.hclge_hw_error { i32 262144, ptr @.str.220, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.221, i32 6 }, %struct.hclge_hw_error { i32 1048576, ptr @.str.222, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.223, i32 6 }, %struct.hclge_hw_error { i32 4194304, ptr @.str.224, i32 6 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.225, i32 6 }, %struct.hclge_hw_error { i32 16777216, ptr @.str.226, i32 6 }, %struct.hclge_hw_error { i32 33554432, ptr @.str.227, i32 6 }, %struct.hclge_hw_error { i32 67108864, ptr @.str.228, i32 6 }, %struct.hclge_hw_error { i32 134217728, ptr @.str.229, i32 6 }, %struct.hclge_hw_error { i32 268435456, ptr @.str.230, i32 6 }, %struct.hclge_hw_error { i32 536870912, ptr @.str.231, i32 6 }, %struct.hclge_hw_error { i32 1073741824, ptr @.str.232, i32 6 }, %struct.hclge_hw_error { i32 -2147483648, ptr @.str.233, i32 6 }, %struct.hclge_hw_error zeroinitializer], [116 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.138, ptr @.str.2, i32 1882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"SSU_ECC_MULTI_BIT_INT_1 ssu_mem32_ecc_mbit_err found [error status=0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry_ptr.150 = internal global ptr @hclge_handle_mpf_ras_error._entry.148, section ".printk_index", align 4
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SSU_COMMON_ERR_INT\00", [45 x i8] zeroinitializer }, align 32
@hclge_ssu_com_err_int = internal constant { [11 x %struct.hclge_hw_error], [60 x i8] } { [11 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.234, i32 8 }, %struct.hclge_hw_error { i32 2, ptr @.str.235, i32 8 }, %struct.hclge_hw_error { i32 4, ptr @.str.236, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.237, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.238, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.239, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.240, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.241, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.242, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.243, i32 6 }, %struct.hclge_hw_error zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IGU_INT_STS\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PPP_MPF_ABNORMAL_INT_ST1\00", [39 x i8] zeroinitializer }, align 32
@hclge_ppp_mpf_abnormal_int_st1 = internal constant { [32 x %struct.hclge_hw_error], [96 x i8] } { [32 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.246, i32 6 }, %struct.hclge_hw_error { i32 2, ptr @.str.247, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.248, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.249, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.250, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.251, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.252, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.253, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.254, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.255, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.256, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.257, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.258, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.259, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.260, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.261, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.262, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.263, i32 6 }, %struct.hclge_hw_error { i32 262144, ptr @.str.264, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.265, i32 6 }, %struct.hclge_hw_error { i32 1048576, ptr @.str.266, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.267, i32 6 }, %struct.hclge_hw_error { i32 4194304, ptr @.str.268, i32 6 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.269, i32 6 }, %struct.hclge_hw_error { i32 16777216, ptr @.str.270, i32 6 }, %struct.hclge_hw_error { i32 33554432, ptr @.str.271, i32 6 }, %struct.hclge_hw_error { i32 67108864, ptr @.str.272, i32 6 }, %struct.hclge_hw_error { i32 134217728, ptr @.str.273, i32 6 }, %struct.hclge_hw_error { i32 268435456, ptr @.str.274, i32 6 }, %struct.hclge_hw_error { i32 536870912, ptr @.str.275, i32 6 }, %struct.hclge_hw_error { i32 1073741824, ptr @.str.276, i32 6 }, %struct.hclge_hw_error zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PPP_MPF_ABNORMAL_INT_ST3\00", [39 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.138, ptr @.str.2, i32 1919, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PPU_MPF_ABNORMAL_INT_ST1 rpu_rx_pkt_ecc_mbit_err found\0A\00", [40 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry_ptr.157 = internal global ptr @hclge_handle_mpf_ras_error._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PPU_MPF_ABNORMAL_INT_ST2\00", [39 x i8] zeroinitializer }, align 32
@hclge_ppu_mpf_abnormal_int_st2 = internal constant { [20 x %struct.hclge_hw_error], [48 x i8] } { [20 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 8192, ptr @.str.283, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.284, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.285, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.286, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.287, i32 6 }, %struct.hclge_hw_error { i32 262144, ptr @.str.288, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.289, i32 6 }, %struct.hclge_hw_error { i32 1048576, ptr @.str.290, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.291, i32 6 }, %struct.hclge_hw_error { i32 4194304, ptr @.str.292, i32 6 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.293, i32 6 }, %struct.hclge_hw_error { i32 16777216, ptr @.str.294, i32 6 }, %struct.hclge_hw_error { i32 33554432, ptr @.str.295, i32 6 }, %struct.hclge_hw_error { i32 67108864, ptr @.str.296, i32 6 }, %struct.hclge_hw_error { i32 134217728, ptr @.str.297, i32 6 }, %struct.hclge_hw_error { i32 268435456, ptr @.str.298, i32 6 }, %struct.hclge_hw_error { i32 536870912, ptr @.str.299, i32 8 }, %struct.hclge_hw_error { i32 1073741824, ptr @.str.300, i32 8 }, %struct.hclge_hw_error { i32 -2147483648, ptr @.str.301, i32 6 }, %struct.hclge_hw_error zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PPU_MPF_ABNORMAL_INT_ST3\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TM_SCH_RINT\00", [20 x i8] zeroinitializer }, align 32
@hclge_tm_sch_rint = internal constant { [32 x %struct.hclge_hw_error], [96 x i8] } { [32 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 2, ptr @.str.306, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.307, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.308, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.309, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.310, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.311, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.312, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.313, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.314, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.315, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.316, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.317, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.318, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.319, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.320, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.321, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.322, i32 6 }, %struct.hclge_hw_error { i32 262144, ptr @.str.323, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.324, i32 6 }, %struct.hclge_hw_error { i32 1048576, ptr @.str.325, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.326, i32 6 }, %struct.hclge_hw_error { i32 4194304, ptr @.str.327, i32 6 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.328, i32 6 }, %struct.hclge_hw_error { i32 16777216, ptr @.str.329, i32 6 }, %struct.hclge_hw_error { i32 33554432, ptr @.str.330, i32 6 }, %struct.hclge_hw_error { i32 67108864, ptr @.str.331, i32 6 }, %struct.hclge_hw_error { i32 134217728, ptr @.str.332, i32 6 }, %struct.hclge_hw_error { i32 268435456, ptr @.str.333, i32 6 }, %struct.hclge_hw_error { i32 536870912, ptr @.str.334, i32 6 }, %struct.hclge_hw_error { i32 1073741824, ptr @.str.335, i32 6 }, %struct.hclge_hw_error { i32 -2147483648, ptr @.str.336, i32 6 }, %struct.hclge_hw_error zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QCN_FIFO_RINT\00", [18 x i8] zeroinitializer }, align 32
@hclge_qcn_fifo_rint = internal constant { [19 x %struct.hclge_hw_error], [60 x i8] } { [19 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.337, i32 6 }, %struct.hclge_hw_error { i32 2, ptr @.str.338, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.339, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.340, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.341, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.342, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.343, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.344, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.345, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.346, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.347, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.348, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.349, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.350, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.351, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.352, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.353, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.354, i32 6 }, %struct.hclge_hw_error zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QCN_ECC_RINT\00", [19 x i8] zeroinitializer }, align 32
@hclge_qcn_ecc_rint = internal constant { [12 x %struct.hclge_hw_error], [48 x i8] } { [12 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 2, ptr @.str.355, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.356, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.357, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.358, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.359, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.360, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.361, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.362, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.363, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.364, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.365, i32 6 }, %struct.hclge_hw_error zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NCSI_ECC_INT_RPT\00", [47 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.138, ptr @.str.2, i32 1969, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clear all mpf ras int cmd failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_ras_error._entry_ptr.166 = internal global ptr @hclge_handle_mpf_ras_error._entry.164, section ".printk_index", align 4
@hclge_log_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s %s found [error status=0x%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hclge_log_error\00", [16 x i8] zeroinitializer }, align 32
@hclge_log_error._entry_ptr = internal global ptr @hclge_log_error._entry, section ".printk_index", align 4
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imp_itcm0_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imp_itcm1_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imp_itcm2_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imp_itcm3_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imp_dtcm0_mem0_ecc_mbit_err\00", [36 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imp_dtcm0_mem1_ecc_mbit_err\00", [36 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imp_dtcm1_mem0_ecc_mbit_err\00", [36 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imp_dtcm1_mem1_ecc_mbit_err\00", [36 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imp_itcm4_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmdq_nic_rx_depth_ecc_mbit_err\00", [33 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmdq_nic_tx_depth_ecc_mbit_err\00", [33 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_rx_tail_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_tx_tail_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_rx_head_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_tx_head_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_rx_addr_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cmdq_nic_tx_addr_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmdq_rocee_rx_depth_ecc_mbit_err\00", [63 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmdq_rocee_tx_depth_ecc_mbit_err\00", [63 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_rx_tail_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_tx_tail_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_rx_head_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_tx_head_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_rx_addr_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmdq_rocee_tx_addr_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tqp_int_cfg_even_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tqp_int_cfg_odd_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tqp_int_ctrl_even_ecc_mbit_err\00", [33 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tqp_int_ctrl_odd_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx_que_scan_int_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx_que_scan_int_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msix_nic_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msix_rocee_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem0_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem1_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem2_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem3_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem4_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem5_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem6_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem7_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem8_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssu_mem9_ecc_mbit_err\00", [42 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem10_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem11_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem12_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem13_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem14_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem15_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem16_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem17_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem18_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem19_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem20_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem21_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem22_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem23_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem24_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem25_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem26_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem27_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem28_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem29_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem30_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssu_mem31_ecc_mbit_err\00", [41 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buf_sum_err\00", [20 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppp_mb_num_err\00", [17 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppp_mbid_err\00", [19 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppp_rlt_mac_err\00", [16 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppp_rlt_host_err\00", [47 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cks_edit_position_err\00", [42 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cks_edit_condition_err\00", [41 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vlan_edit_condition_err\00", [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vlan_num_ot_err\00", [16 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vlan_num_in_err\00", [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igu_rx_buf0_ecc_mbit_err\00", [39 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igu_rx_buf1_ecc_mbit_err\00", [39 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vf_vlan_ad_mem_ecc_mbit_err\00", [36 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"umv_mcast_group_mem_ecc_mbit_err\00", [63 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"umv_key_mem0_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"umv_key_mem1_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"umv_key_mem2_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"umv_key_mem3_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"umv_ad_mem_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rss_tc_mode_mem_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem0_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem1_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem2_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem3_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem4_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem5_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem6_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem7_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem8_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rss_idt_mem9_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem10_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem11_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem12_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem13_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem14_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rss_idt_mem15_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port_vlan_mem_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mcast_linear_table_mem_ecc_mbit_err\00", [60 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mcast_result_mem_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"flow_director_ad_mem0_ecc_mbit_err\00", [61 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"flow_director_ad_mem1_ecc_mbit_err\00", [61 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx_vlan_tag_memory_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tx_UP_mapping_config_mem_ecc_mbit_err\00", [58 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hfs_fifo_mem_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rslt_descr_fifo_mem_ecc_mbit_err\00", [63 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx_vlan_tag_mem_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FD_CN0_memory_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FD_CN1_memory_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GRO_AD_memory_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rpu_rx_pkt_bit32_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rpu_rx_pkt_bit33_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rpu_rx_pkt_bit34_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rpu_rx_pkt_bit35_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcb_tx_ring_ecc_mbit_err\00", [39 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcb_rx_ring_ecc_mbit_err\00", [39 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcb_tx_fbd_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcb_rx_ebd_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcb_tso_info_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcb_tx_int_info_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcb_rx_int_info_ecc_mbit_err\00", [35 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tpu_tx_pkt_0_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tpu_tx_pkt_1_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rd_bus_err\00", [21 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wr_bus_err\00", [21 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_search_miss\00", [16 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_q_search_miss\00", [47 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ooo_ecc_err_detect\00", [45 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ooo_ecc_err_multpl\00", [45 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gro_bd_ecc_mbit_err\00", [44 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gro_context_ecc_mbit_err\00", [39 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_stash_cfg_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axi_rd_fbd_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm_sch_ecc_mbit_err\00", [44 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_port_shap_sub_fifo_wr_err\00", [63 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_port_shap_sub_fifo_rd_err\00", [63 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tm_sch_pg_pshap_sub_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tm_sch_pg_pshap_sub_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tm_sch_pg_cshap_sub_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tm_sch_pg_cshap_sub_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_pri_pshap_sub_fifo_wr_err\00", [63 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_pri_pshap_sub_fifo_rd_err\00", [63 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_pri_cshap_sub_fifo_wr_err\00", [63 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tm_sch_pri_cshap_sub_fifo_rd_err\00", [63 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_port_shap_offset_fifo_wr_err\00", [60 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_port_shap_offset_fifo_rd_err\00", [60 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tm_sch_pg_pshap_offset_fifo_wr_err\00", [61 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tm_sch_pg_pshap_offset_fifo_rd_err\00", [61 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tm_sch_pg_cshap_offset_fifo_wr_err\00", [61 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tm_sch_pg_cshap_offset_fifo_rd_err\00", [61 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_pri_pshap_offset_fifo_wr_err\00", [60 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_pri_pshap_offset_fifo_rd_err\00", [60 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_pri_cshap_offset_fifo_wr_err\00", [60 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tm_sch_pri_cshap_offset_fifo_rd_err\00", [60 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm_sch_rq_fifo_wr_err\00", [42 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm_sch_rq_fifo_rd_err\00", [42 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm_sch_nq_fifo_wr_err\00", [42 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm_sch_nq_fifo_rd_err\00", [42 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tm_sch_roce_up_fifo_wr_err\00", [37 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tm_sch_roce_up_fifo_rd_err\00", [37 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tm_sch_rcb_byte_fifo_wr_err\00", [36 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tm_sch_rcb_byte_fifo_rd_err\00", [36 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tm_sch_ssu_byte_fifo_wr_err\00", [36 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tm_sch_ssu_byte_fifo_rd_err\00", [36 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp0_sch_fifo_rd_err\00", [35 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp0_sch_fifo_wr_err\00", [35 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp1_sch_fifo_rd_err\00", [35 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp1_sch_fifo_wr_err\00", [35 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp2_sch_fifo_rd_err\00", [35 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp2_sch_fifo_wr_err\00", [35 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp3_sch_fifo_rd_err\00", [35 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcn_shap_gp3_sch_fifo_wr_err\00", [35 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp0_offset_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp0_offset_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp1_offset_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp1_offset_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp2_offset_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp2_offset_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp3_offset_fifo_rd_err\00", [32 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_shap_gp3_offset_fifo_wr_err\00", [32 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_byte_info_fifo_rd_err\00", [38 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_byte_info_fifo_wr_err\00", [38 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_byte_mem_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_time_mem_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcn_fb_mem_ecc_mbit_err\00", [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_link_mem_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcn_rate_mem_ecc_mbit_err\00", [38 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcn_tmplt_mem_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcn_shap_cfg_mem_ecc_mbit_err\00", [34 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_gp0_barrel_mem_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_gp1_barrel_mem_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_gp2_barrel_mem_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcn_gp3_barral_mem_ecc_mbit_err\00", [32 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ncsi_tx_ecc_mbit_err\00", [43 x i8] zeroinitializer }, align 32
@hclge_handle_pf_ras_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.368, ptr @.str.2, i32 1997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"query all pf ras int cmd failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_handle_pf_ras_error\00", [38 x i8] zeroinitializer }, align 32
@hclge_handle_pf_ras_error._entry_ptr = internal global ptr @hclge_handle_pf_ras_error._entry, section ".printk_index", align 4
@.str.369 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SSU_PORT_BASED_ERR_INT\00", [41 x i8] zeroinitializer }, align 32
@hclge_ssu_port_based_err_int = internal constant { [14 x %struct.hclge_hw_error], [56 x i8] } { [14 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.377, i32 5 }, %struct.hclge_hw_error { i32 2, ptr @.str.378, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.379, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.380, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.381, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.382, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.383, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.384, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.385, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.386, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.387, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.388, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.389, i32 6 }, %struct.hclge_hw_error zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSU_FIFO_OVERFLOW_INT\00", [42 x i8] zeroinitializer }, align 32
@hclge_ssu_fifo_overflow_int = internal constant { [25 x %struct.hclge_hw_error], [84 x i8] } { [25 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.390, i32 6 }, %struct.hclge_hw_error { i32 2, ptr @.str.391, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.392, i32 6 }, %struct.hclge_hw_error { i32 8, ptr @.str.393, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.394, i32 6 }, %struct.hclge_hw_error { i32 32, ptr @.str.395, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.396, i32 6 }, %struct.hclge_hw_error { i32 128, ptr @.str.397, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.398, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.399, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.400, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.401, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.402, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.403, i32 6 }, %struct.hclge_hw_error { i32 16384, ptr @.str.404, i32 6 }, %struct.hclge_hw_error { i32 32768, ptr @.str.405, i32 6 }, %struct.hclge_hw_error { i32 65536, ptr @.str.406, i32 6 }, %struct.hclge_hw_error { i32 131072, ptr @.str.407, i32 6 }, %struct.hclge_hw_error { i32 262144, ptr @.str.408, i32 6 }, %struct.hclge_hw_error { i32 524288, ptr @.str.409, i32 6 }, %struct.hclge_hw_error { i32 1048576, ptr @.str.410, i32 6 }, %struct.hclge_hw_error { i32 2097152, ptr @.str.411, i32 6 }, %struct.hclge_hw_error { i32 4194304, ptr @.str.412, i32 6 }, %struct.hclge_hw_error { i32 8388608, ptr @.str.413, i32 6 }, %struct.hclge_hw_error zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SSU_ETS_TCG_INT\00", [16 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IGU_EGU_TNL_INT_STS\00", [44 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PPU_PF_ABNORMAL_INT_ST0\00", [40 x i8] zeroinitializer }, align 32
@hclge_handle_pf_ras_error._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.368, ptr @.str.2, i32 2042, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clear all pf ras int cmd failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_handle_pf_ras_error._entry_ptr.376 = internal global ptr @hclge_handle_pf_ras_error._entry.374, section ".printk_index", align 4
@.str.377 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"roc_pkt_without_key_port\00", [39 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tpu_pkt_without_key_port\00", [39 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igu_pkt_without_key_port\00", [39 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"roc_eof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tpu_eof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igu_eof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"roc_sof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tpu_sof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igu_sof_mis_match_port\00", [41 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ets_rd_int_rx_port\00", [45 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ets_wr_int_rx_port\00", [45 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ets_rd_int_tx_port\00", [45 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ets_wr_int_tx_port\00", [45 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ig_mac_inf_int\00", [17 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ig_host_inf_int\00", [16 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ig_roc_buf_int\00", [17 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ig_host_data_fifo_int\00", [42 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ig_host_key_fifo_int\00", [43 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_qcn_fifo_int\00", [16 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_qcn_fifo_int\00", [16 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_pf_rd_fifo_int\00", [46 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_pf_rd_fifo_int\00", [46 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qm_eof_fifo_int\00", [16 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb_rlt_fifo_int\00", [16 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dup_uncopy_fifo_int\00", [44 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dup_cnt_rd_fifo_int\00", [44 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dup_cnt_drop_fifo_int\00", [42 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dup_cnt_wrb_fifo_int\00", [43 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_cmd_fifo_int\00", [46 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_cmd_fifo_int\00", [47 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"host_cmd_bitmap_empty_int\00", [38 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mac_cmd_bitmap_empty_int\00", [39 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dup_bitmap_empty_int\00", [43 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_queue_bitmap_empty_int\00", [37 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bank2_bitmap_empty_int\00", [41 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bank1_bitmap_empty_int\00", [41 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bank0_bitmap_empty_int\00", [41 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ets_rd_int_rx_tcg\00", [46 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ets_wr_int_rx_tcg\00", [46 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ets_rd_int_tx_tcg\00", [46 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ets_wr_int_tx_tcg\00", [46 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_buf_overflow\00", [16 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_stp_fifo_overflow\00", [43 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx_stp_fifo_underflow\00", [42 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_buf_overflow\00", [16 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_buf_underrun\00", [16 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_stp_buf_overflow\00", [44 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tso_mss_cmp_min_err\00", [44 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tso_mss_cmp_max_err\00", [44 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx_rd_fbd_poison\00", [47 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_rd_ebd_poison\00", [47 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buf_wait_timeout\00", [47 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_msix_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.430, ptr @.str.431, ptr @.str.2, i32 2512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"query all mpf msix int cmd failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_handle_mpf_msix_error\00", [36 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_msix_error._entry_ptr = internal global ptr @hclge_handle_mpf_msix_error._entry, section ".printk_index", align 4
@.str.432 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MAC_AFIFO_TNL_INT_R\00", [44 x i8] zeroinitializer }, align 32
@hclge_mac_afifo_tnl_int = internal constant { [15 x %struct.hclge_hw_error], [44 x i8] } { [15 x %struct.hclge_hw_error] [%struct.hclge_hw_error { i32 1, ptr @.str.439, i32 8 }, %struct.hclge_hw_error { i32 2, ptr @.str.440, i32 6 }, %struct.hclge_hw_error { i32 4, ptr @.str.441, i32 8 }, %struct.hclge_hw_error { i32 8, ptr @.str.442, i32 6 }, %struct.hclge_hw_error { i32 16, ptr @.str.443, i32 8 }, %struct.hclge_hw_error { i32 32, ptr @.str.444, i32 6 }, %struct.hclge_hw_error { i32 64, ptr @.str.445, i32 8 }, %struct.hclge_hw_error { i32 128, ptr @.str.446, i32 6 }, %struct.hclge_hw_error { i32 256, ptr @.str.447, i32 6 }, %struct.hclge_hw_error { i32 512, ptr @.str.448, i32 6 }, %struct.hclge_hw_error { i32 1024, ptr @.str.449, i32 6 }, %struct.hclge_hw_error { i32 2048, ptr @.str.450, i32 6 }, %struct.hclge_hw_error { i32 4096, ptr @.str.451, i32 6 }, %struct.hclge_hw_error { i32 8192, ptr @.str.452, i32 6 }, %struct.hclge_hw_error zeroinitializer], [44 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_msix_error._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.434, ptr @.str.431, ptr @.str.2, i32 2530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"PPU_MPF_ABNORMAL_INT_ST2 rx_q_search_miss found [dfx status=0x%x\0A]\00", [61 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_msix_error._entry_ptr.435 = internal global ptr @hclge_handle_mpf_msix_error._entry.433, section ".printk_index", align 4
@hclge_handle_mpf_msix_error._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.437, ptr @.str.431, ptr @.str.2, i32 2535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clear all mpf msix int cmd failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@hclge_handle_mpf_msix_error._entry_ptr.438 = internal global ptr @hclge_handle_mpf_msix_error._entry.436, section ".printk_index", align 4
@.str.439 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_cge_afifo_ecc_1bit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_cge_afifo_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_lge_afifo_ecc_1bit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_lge_afifo_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cge_igu_afifo_ecc_1bit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cge_igu_afifo_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lge_igu_afifo_ecc_1bit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lge_igu_afifo_ecc_mbit_err\00", [37 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cge_igu_afifo_overflow_err\00", [37 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lge_igu_afifo_overflow_err\00", [37 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_cge_afifo_underrun_err\00", [37 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"egu_lge_afifo_underrun_err\00", [37 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"egu_ge_afifo_underrun_err\00", [38 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ge_igu_afifo_overflow_err\00", [38 x i8] zeroinitializer }, align 32
@hclge_handle_pf_msix_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.454, ptr @.str.2, i32 2564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"query all pf msix int cmd failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_handle_pf_msix_error\00", [37 x i8] zeroinitializer }, align 32
@hclge_handle_pf_msix_error._entry_ptr = internal global ptr @hclge_handle_pf_msix_error._entry, section ".printk_index", align 4
@.str.455 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PPP_PF_ABNORMAL_INT_ST0\00", [40 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PPU_PF_ABNORMAL_INT_ST\00", [41 x i8] zeroinitializer }, align 32
@hclge_handle_pf_msix_error._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.458, ptr @.str.454, ptr @.str.2, i32 2598, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clear all pf msix int cmd failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@hclge_handle_pf_msix_error._entry_ptr.459 = internal global ptr @hclge_handle_pf_msix_error._entry.457, section ".printk_index", align 4
@.str.460 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"low_water_line_err_port\00", [40 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_vlan_tag_err\00", [16 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rss_list_tc_unassigned_queue_err\00", [63 x i8] zeroinitializer }, align 32
@hclge_handle_over_8bd_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.464, ptr @.str.465, ptr @.str.2, i32 2460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail(%d) to query over_8bd_no_fe info\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_handle_over_8bd_err\00", [38 x i8] zeroinitializer }, align 32
@hclge_handle_over_8bd_err._entry_ptr = internal global ptr @hclge_handle_over_8bd_err._entry, section ".printk_index", align 4
@hclge_handle_over_8bd_err._entry.466 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.467, ptr @.str.465, ptr @.str.2, i32 2465, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"PPU_PF_ABNORMAL_INT_ST over_8bd_no_fe found, vport(%u), queue_id(%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_handle_over_8bd_err._entry_ptr.468 = internal global ptr @hclge_handle_over_8bd_err._entry.466, section ".printk_index", align 4
@hclge_handle_over_8bd_err._entry.469 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.470, ptr @.str.465, ptr @.str.2, i32 2469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid vport(%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@hclge_handle_over_8bd_err._entry_ptr.471 = internal global ptr @hclge_handle_over_8bd_err._entry.469, section ".printk_index", align 4
@hclge_handle_over_8bd_err._entry.472 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.473, ptr @.str.465, ptr @.str.2, i32 2483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inform reset to vport(%u) failed %d!\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_handle_over_8bd_err._entry_ptr.474 = internal global ptr @hclge_handle_over_8bd_err._entry.472, section ".printk_index", align 4
@hclge_query_bd_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.475, ptr @.str.476, ptr @.str.2, i32 1801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fail(%d) to query msix int status bd num\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclge_query_bd_num\00", [45 x i8] zeroinitializer }, align 32
@hclge_query_bd_num._entry_ptr = internal global ptr @hclge_query_bd_num._entry, section ".printk_index", align 4
@hclge_query_bd_num._entry.477 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.478, ptr @.str.476, ptr @.str.2, i32 1809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid bd num: mpf(%u), pf(%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@hclge_query_bd_num._entry_ptr.479 = internal global ptr @hclge_query_bd_num._entry.477, section ".printk_index", align 4
@hclge_query_all_err_bd_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.480, ptr @.str.481, ptr @.str.2, i32 2861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to query error bd_num, ret = %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_query_all_err_bd_num\00", [37 x i8] zeroinitializer }, align 32
@hclge_query_all_err_bd_num._entry_ptr = internal global ptr @hclge_query_all_err_bd_num._entry, section ".printk_index", align 4
@hclge_query_all_err_bd_num._entry.482 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.483, ptr @.str.481, ptr @.str.2, i32 2867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"The value of bd_num is 0!\0A\00", [37 x i8] zeroinitializer }, align 32
@hclge_query_all_err_bd_num._entry_ptr.484 = internal global ptr @hclge_query_all_err_bd_num._entry.482, section ".printk_index", align 4
@hclge_query_all_err_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.485, ptr @.str.486, ptr @.str.2, i32 2883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to query error info, ret = %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_query_all_err_info\00", [39 x i8] zeroinitializer }, align 32
@hclge_query_all_err_info._entry_ptr = internal global ptr @hclge_query_all_err_info._entry, section ".printk_index", align 4
@hclge_handle_error_module_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.487, ptr @.str.488, ptr @.str.2, i32 2828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"The offset(%u) exceeds buf's size(%u).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclge_handle_error_module_log\00", [34 x i8] zeroinitializer }, align 32
@hclge_handle_error_module_log._entry_ptr = internal global ptr @hclge_handle_error_module_log._entry, section ".printk_index", align 4
@hclge_handle_error_module_log._entry.489 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.490, ptr @.str.488, ptr @.str.2, i32 2838, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The offset(%u) exceeds buf size(%u).\0A\00", [58 x i8] zeroinitializer }, align 32
@hclge_handle_error_module_log._entry_ptr.491 = internal global ptr @hclge_handle_error_module_log._entry.489, section ".printk_index", align 4
@hclge_hw_module_id_st = internal constant { [26 x %struct.hclge_hw_module_id], [48 x i8] } { [26 x %struct.hclge_hw_module_id] [%struct.hclge_hw_module_id { i32 0, ptr @.str.505 }, %struct.hclge_hw_module_id { i32 1, ptr @.str.506 }, %struct.hclge_hw_module_id { i32 2, ptr @.str.507 }, %struct.hclge_hw_module_id { i32 3, ptr @.str.508 }, %struct.hclge_hw_module_id { i32 4, ptr @.str.509 }, %struct.hclge_hw_module_id { i32 5, ptr @.str.510 }, %struct.hclge_hw_module_id { i32 6, ptr @.str.511 }, %struct.hclge_hw_module_id { i32 7, ptr @.str.512 }, %struct.hclge_hw_module_id { i32 8, ptr @.str.513 }, %struct.hclge_hw_module_id { i32 9, ptr @.str.514 }, %struct.hclge_hw_module_id { i32 10, ptr @.str.515 }, %struct.hclge_hw_module_id { i32 11, ptr @.str.516 }, %struct.hclge_hw_module_id { i32 12, ptr @.str.517 }, %struct.hclge_hw_module_id { i32 13, ptr @.str.518 }, %struct.hclge_hw_module_id { i32 14, ptr @.str.519 }, %struct.hclge_hw_module_id { i32 15, ptr @.str.520 }, %struct.hclge_hw_module_id { i32 40, ptr @.str.521 }, %struct.hclge_hw_module_id { i32 41, ptr @.str.522 }, %struct.hclge_hw_module_id { i32 42, ptr @.str.523 }, %struct.hclge_hw_module_id { i32 43, ptr @.str.524 }, %struct.hclge_hw_module_id { i32 44, ptr @.str.525 }, %struct.hclge_hw_module_id { i32 45, ptr @.str.526 }, %struct.hclge_hw_module_id { i32 46, ptr @.str.527 }, %struct.hclge_hw_module_id { i32 47, ptr @.str.528 }, %struct.hclge_hw_module_id { i32 48, ptr @.str.529 }, %struct.hclge_hw_module_id { i32 49, ptr @.str.530 }], [48 x i8] zeroinitializer }, align 32
@hclge_hw_type_id_st = internal constant { [18 x %struct.hclge_hw_type_id], [48 x i8] } { [18 x %struct.hclge_hw_type_id] [%struct.hclge_hw_type_id { i32 0, ptr @.str.531 }, %struct.hclge_hw_type_id { i32 1, ptr @.str.532 }, %struct.hclge_hw_type_id { i32 2, ptr @.str.533 }, %struct.hclge_hw_type_id { i32 3, ptr @.str.534 }, %struct.hclge_hw_type_id { i32 4, ptr @.str.535 }, %struct.hclge_hw_type_id { i32 5, ptr @.str.536 }, %struct.hclge_hw_type_id { i32 6, ptr @.str.537 }, %struct.hclge_hw_type_id { i32 7, ptr @.str.538 }, %struct.hclge_hw_type_id { i32 8, ptr @.str.539 }, %struct.hclge_hw_type_id { i32 9, ptr @.str.540 }, %struct.hclge_hw_type_id { i32 10, ptr @.str.541 }, %struct.hclge_hw_type_id { i32 11, ptr @.str.542 }, %struct.hclge_hw_type_id { i32 12, ptr @.str.543 }, %struct.hclge_hw_type_id { i32 13, ptr @.str.544 }, %struct.hclge_hw_type_id { i32 14, ptr @.str.545 }, %struct.hclge_hw_type_id { i32 40, ptr @.str.546 }, %struct.hclge_hw_type_id { i32 41, ptr @.str.547 }, %struct.hclge_hw_type_id { i32 42, ptr @.str.548 }], [48 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.492, ptr @.str.493, ptr @.str.2, i32 2798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found %s %s, is %s error.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hclge_handle_error_type_reg_log\00", [32 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry_ptr = internal global ptr @hclge_handle_error_type_reg_log._entry, section ".printk_index", align 4
@.str.494 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ras\00", [28 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msix\00", [27 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry.496 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.497, ptr @.str.493, ptr @.str.2, i32 2801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unknown module[%u] or type[%u].\0A\00", [63 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry_ptr.498 = internal global ptr @hclge_handle_error_type_reg_log._entry.496, section ".printk_index", align 4
@hclge_handle_error_type_reg_log._entry.499 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.500, ptr @.str.493, ptr @.str.2, i32 2803, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_value:\0A\00", [20 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry_ptr.501 = internal global ptr @hclge_handle_error_type_reg_log._entry.499, section ".printk_index", align 4
@hclge_handle_error_type_reg_log._entry.502 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.503, ptr @.str.493, ptr @.str.2, i32 2805, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@hclge_handle_error_type_reg_log._entry_ptr.504 = internal global ptr @hclge_handle_error_type_reg_log._entry.502, section ".printk_index", align 4
@.str.505 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODULE_NONE\00", [20 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MODULE_BIOS_COMMON\00", [45 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODULE_GE\00", [22 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MODULE_IGU_EGU\00", [17 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODULE_LGE\00", [21 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODULE_NCSI\00", [20 x i8] zeroinitializer }, align 32
@.str.511 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODULE_PPP\00", [21 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODULE_QCN\00", [21 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MODULE_RCB_RX\00", [18 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODULE_RTC\00", [21 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODULE_SSU\00", [21 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODULE_TM\00", [22 x i8] zeroinitializer }, align 32
@.str.517 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MODULE_RCB_TX\00", [18 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MODULE_TXDMA\00", [19 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MODULE_MASTER\00", [18 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MODULE_HIMAC\00", [19 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_TOP\00", [47 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MODULE_ROCEE_TIMER\00", [45 x i8] zeroinitializer }, align 32
@.str.523 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_MDB\00", [47 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_TSP\00", [47 x i8] zeroinitializer }, align 32
@.str.525 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_TRP\00", [47 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_SCC\00", [47 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MODULE_ROCEE_CAEP\00", [46 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MODULE_ROCEE_GEN_AC\00", [44 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODULE_ROCEE_QMM\00", [47 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MODULE_ROCEE_LSAN\00", [46 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"none_error\00", [21 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fifo_error\00", [21 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memory_error\00", [19 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poison_error\00", [19 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msix_ecc_error\00", [17 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tqp_int_ecc_error\00", [46 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pf_abnormal_int_error\00", [42 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mpf_abnormal_int_error\00", [41 x i8] zeroinitializer }, align 32
@.str.539 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"common_error\00", [19 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_error\00", [21 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ets_error\00", [22 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ncsi_error\00", [21 x i8] zeroinitializer }, align 32
@.str.543 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"glb_error\00", [22 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_error\00", [21 x i8] zeroinitializer }, align 32
@.str.545 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ptp_error\00", [22 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rocee_normal_error\00", [45 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rocee_ovf_error\00", [16 x i8] zeroinitializer }, align 32
@.str.548 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rocee_bus_error\00", [16 x i8] zeroinitializer }, align 32
@switch.table.hclge_log_and_clear_rocee_ras_error = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.77, ptr @.str.77, ptr @.str.77, ptr @.str.77, ptr @.str.78, ptr @.str.77, ptr @.str.77, ptr @.str.77, ptr @.str.79, ptr @.str.77, ptr @.str.77, ptr @.str.77, ptr @.str.80, ptr @.str.77, ptr @.str.77, ptr @.str.77, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.549 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.550 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.551 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.552 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.553 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.554 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.555 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.556 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.557 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.558 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.559 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.560 = internal global [27 x i64] [i64 25, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49]
@__sancov_gen_cov_switch_values.561 = internal global [19 x i64] [i64 17, i64 7, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 40, i64 41, i64 42]
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2272, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2364, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2378, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2387, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2644, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2664, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2680, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2714, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2723, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2730, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2197, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2205, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2208, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2220, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2231, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2241, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1379, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2095, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2099, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2103, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2107, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2124, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2128, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2132, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2148, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2162, i32 5 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2172, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2177, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1136, i32 10 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1139, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1142, i32 10 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1145, i32 10 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1148, i32 10 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1151, i32 10 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1154, i32 10 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1157, i32 10 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1160, i32 10 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1163, i32 10 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1166, i32 10 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1169, i32 10 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1172, i32 10 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1175, i32 10 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1178, i32 10 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1181, i32 10 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1184, i32 10 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1187, i32 10 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1190, i32 10 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1193, i32 10 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1469, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1482, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1447, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1536, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1736, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1764, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1692, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1701, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1708, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1675, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1569, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1583, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1425, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1604, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1839, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1846, i32 24 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1852, i32 24 }
@___asan_gen_.955 = private unnamed_addr constant [27 x i8] c"hclge_cmdq_nic_mem_ecc_int\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 48, i32 36 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1857, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1861, i32 24 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1867, i32 24 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1875, i32 24 }
@___asan_gen_.976 = private unnamed_addr constant [26 x i8] c"hclge_ssu_mem_ecc_err_int\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 897, i32 36 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1881, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1888, i32 24 }
@___asan_gen_.988 = private unnamed_addr constant [22 x i8] c"hclge_ssu_com_err_int\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 844, i32 36 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1896, i32 24 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1904, i32 24 }
@___asan_gen_.997 = private unnamed_addr constant [31 x i8] c"hclge_ppp_mpf_abnormal_int_st1\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 216, i32 36 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1910, i32 24 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1918, i32 3 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1925, i32 24 }
@___asan_gen_.1012 = private unnamed_addr constant [31 x i8] c"hclge_ppu_mpf_abnormal_int_st2\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 710, i32 36 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1931, i32 24 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1939, i32 24 }
@___asan_gen_.1021 = private unnamed_addr constant [18 x i8] c"hclge_tm_sch_rint\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 390, i32 36 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1947, i32 24 }
@___asan_gen_.1027 = private unnamed_addr constant [20 x i8] c"hclge_qcn_fifo_rint\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 520, i32 36 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1953, i32 24 }
@___asan_gen_.1033 = private unnamed_addr constant [19 x i8] c"hclge_qcn_ecc_rint\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 598, i32 36 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1961, i32 24 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1969, i32 3 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1345, i32 4 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 9, i32 10 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 13, i32 10 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 17, i32 10 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 21, i32 10 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 25, i32 10 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 29, i32 10 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 33, i32 10 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 37, i32 10 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 41, i32 10 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 51, i32 10 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 55, i32 10 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 59, i32 10 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 63, i32 10 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 67, i32 10 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 71, i32 10 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 75, i32 10 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 79, i32 10 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 83, i32 10 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 87, i32 10 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 91, i32 10 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 95, i32 10 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 99, i32 10 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 103, i32 10 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 107, i32 10 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 111, i32 10 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 121, i32 10 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 125, i32 10 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 129, i32 10 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 133, i32 10 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 137, i32 10 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 141, i32 10 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 151, i32 10 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 155, i32 10 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 898, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 899, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 900, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 901, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 902, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 903, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 904, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 905, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 906, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 907, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 908, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 909, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 910, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 911, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 912, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 913, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 914, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 915, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 916, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 917, i32 2 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 918, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 919, i32 2 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 920, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 921, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 922, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 923, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 924, i32 2 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 925, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 926, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 927, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 928, i32 2 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 929, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 847, i32 10 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 851, i32 10 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 855, i32 10 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 859, i32 10 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 863, i32 10 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 867, i32 10 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 871, i32 10 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 875, i32 10 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 879, i32 10 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 883, i32 10 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 165, i32 10 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 169, i32 10 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 219, i32 10 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 223, i32 10 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 227, i32 10 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 231, i32 10 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 235, i32 10 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 239, i32 10 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 243, i32 10 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 247, i32 10 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 251, i32 10 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 255, i32 10 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 259, i32 10 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 263, i32 10 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 267, i32 10 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 271, i32 10 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 275, i32 10 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 279, i32 10 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 283, i32 10 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 287, i32 10 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 291, i32 10 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 295, i32 10 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 299, i32 10 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 303, i32 10 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 307, i32 10 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 311, i32 10 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 315, i32 10 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 319, i32 10 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 323, i32 10 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 327, i32 10 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 331, i32 10 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 335, i32 10 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 339, i32 10 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 363, i32 10 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 367, i32 10 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 371, i32 10 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 375, i32 10 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 379, i32 10 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 383, i32 10 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 713, i32 10 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 717, i32 10 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 721, i32 10 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 725, i32 10 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 729, i32 10 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 733, i32 10 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 737, i32 10 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 741, i32 10 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 745, i32 10 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 749, i32 10 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 753, i32 10 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 757, i32 10 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 761, i32 10 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 765, i32 10 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 769, i32 10 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 773, i32 10 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 777, i32 10 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 781, i32 10 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 785, i32 10 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 795, i32 10 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 799, i32 10 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 803, i32 10 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 807, i32 10 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 393, i32 10 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 397, i32 10 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 401, i32 10 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 405, i32 10 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 409, i32 10 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 413, i32 10 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 417, i32 10 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 421, i32 10 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 425, i32 10 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 429, i32 10 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 433, i32 10 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 437, i32 10 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 441, i32 10 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 445, i32 10 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 449, i32 10 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 453, i32 10 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 457, i32 10 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 461, i32 10 }
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 465, i32 10 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 469, i32 10 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 473, i32 10 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 477, i32 10 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 481, i32 10 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 485, i32 10 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 489, i32 10 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 493, i32 10 }
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 497, i32 10 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 501, i32 10 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 505, i32 10 }
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 509, i32 10 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 513, i32 10 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 523, i32 10 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 527, i32 10 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 531, i32 10 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 535, i32 10 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 539, i32 10 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 543, i32 10 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 547, i32 10 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 551, i32 10 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 555, i32 10 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 559, i32 10 }
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 563, i32 10 }
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 567, i32 10 }
@___asan_gen_.1596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 571, i32 10 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 575, i32 10 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 579, i32 10 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 583, i32 10 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 587, i32 10 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 591, i32 10 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 601, i32 10 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 605, i32 10 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 609, i32 10 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 613, i32 10 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 617, i32 10 }
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 621, i32 10 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 625, i32 10 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 629, i32 10 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 633, i32 10 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 637, i32 10 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 641, i32 10 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 209, i32 10 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1997, i32 3 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2004, i32 24 }
@___asan_gen_.1660 = private unnamed_addr constant [29 x i8] c"hclge_ssu_port_based_err_int\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 933, i32 36 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2010, i32 24 }
@___asan_gen_.1666 = private unnamed_addr constant [28 x i8] c"hclge_ssu_fifo_overflow_int\00", align 1
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 991, i32 36 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2016, i32 24 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2024, i32 24 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2032, i32 24 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2042, i32 3 }
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 936, i32 10 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 940, i32 10 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 944, i32 10 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 948, i32 10 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 952, i32 10 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 956, i32 10 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 960, i32 10 }
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 964, i32 10 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 968, i32 10 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 972, i32 10 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 976, i32 10 }
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 980, i32 10 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 984, i32 10 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 994, i32 10 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 998, i32 10 }
@___asan_gen_.1731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1002, i32 10 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1006, i32 10 }
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1010, i32 10 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1014, i32 10 }
@___asan_gen_.1743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1018, i32 10 }
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1022, i32 10 }
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1026, i32 10 }
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1030, i32 10 }
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1034, i32 10 }
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1038, i32 10 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1042, i32 10 }
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1046, i32 10 }
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1050, i32 10 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1054, i32 10 }
@___asan_gen_.1773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1058, i32 10 }
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1062, i32 10 }
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1066, i32 10 }
@___asan_gen_.1782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1070, i32 10 }
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1074, i32 10 }
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1078, i32 10 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1082, i32 10 }
@___asan_gen_.1794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1086, i32 10 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1096, i32 10 }
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1100, i32 10 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1104, i32 10 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1108, i32 10 }
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 179, i32 10 }
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 183, i32 10 }
@___asan_gen_.1815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 187, i32 10 }
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 191, i32 10 }
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 195, i32 10 }
@___asan_gen_.1824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 199, i32 10 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 821, i32 10 }
@___asan_gen_.1830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 825, i32 10 }
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 829, i32 10 }
@___asan_gen_.1836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 833, i32 10 }
@___asan_gen_.1839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 837, i32 10 }
@___asan_gen_.1848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2512, i32 3 }
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2520, i32 24 }
@___asan_gen_.1852 = private unnamed_addr constant [24 x i8] c"hclge_mac_afifo_tnl_int\00", align 1
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 648, i32 36 }
@___asan_gen_.1860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2529, i32 3 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2535, i32 3 }
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 651, i32 10 }
@___asan_gen_.1872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 655, i32 10 }
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 659, i32 10 }
@___asan_gen_.1878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 663, i32 10 }
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 667, i32 10 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 671, i32 10 }
@___asan_gen_.1887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 675, i32 10 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 679, i32 10 }
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 683, i32 10 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 687, i32 10 }
@___asan_gen_.1899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 691, i32 10 }
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 695, i32 10 }
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 699, i32 10 }
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 703, i32 10 }
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2564, i32 3 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2579, i32 24 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2587, i32 24 }
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2598, i32 3 }
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1122, i32 10 }
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 349, i32 10 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 353, i32 10 }
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2459, i32 3 }
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2464, i32 2 }
@___asan_gen_.1959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2469, i32 4 }
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2482, i32 4 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1800, i32 3 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1808, i32 3 }
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2861, i32 3 }
@___asan_gen_.1995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2867, i32 3 }
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2883, i32 3 }
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2827, i32 4 }
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2836, i32 5 }
@___asan_gen_.2020 = private unnamed_addr constant [22 x i8] c"hclge_hw_module_id_st\00", align 1
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1199, i32 40 }
@___asan_gen_.2023 = private unnamed_addr constant [20 x i8] c"hclge_hw_type_id_st\00", align 1
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1281, i32 38 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2794, i32 3 }
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2800, i32 3 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2803, i32 2 }
@___asan_gen_.2053 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 2805, i32 3 }
@___asan_gen_.2061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1202, i32 10 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1205, i32 10 }
@___asan_gen_.2067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1208, i32 10 }
@___asan_gen_.2070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1211, i32 10 }
@___asan_gen_.2073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1214, i32 10 }
@___asan_gen_.2076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1217, i32 10 }
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1220, i32 10 }
@___asan_gen_.2082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1223, i32 10 }
@___asan_gen_.2085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1226, i32 10 }
@___asan_gen_.2088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1229, i32 10 }
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1232, i32 10 }
@___asan_gen_.2094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1235, i32 10 }
@___asan_gen_.2097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1238, i32 10 }
@___asan_gen_.2100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1241, i32 10 }
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1244, i32 10 }
@___asan_gen_.2106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1247, i32 10 }
@___asan_gen_.2109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1250, i32 10 }
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1253, i32 10 }
@___asan_gen_.2115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1256, i32 10 }
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1259, i32 10 }
@___asan_gen_.2121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1262, i32 10 }
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1265, i32 10 }
@___asan_gen_.2127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1268, i32 10 }
@___asan_gen_.2130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1271, i32 10 }
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1274, i32 10 }
@___asan_gen_.2136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1277, i32 10 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1284, i32 10 }
@___asan_gen_.2142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1287, i32 10 }
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1290, i32 10 }
@___asan_gen_.2148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1293, i32 10 }
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1296, i32 10 }
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1299, i32 10 }
@___asan_gen_.2157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1302, i32 10 }
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1305, i32 10 }
@___asan_gen_.2163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1308, i32 10 }
@___asan_gen_.2166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1311, i32 10 }
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1314, i32 10 }
@___asan_gen_.2172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1317, i32 10 }
@___asan_gen_.2175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1320, i32 10 }
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1323, i32 10 }
@___asan_gen_.2181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1326, i32 10 }
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1329, i32 10 }
@___asan_gen_.2187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1332, i32 10 }
@___asan_gen_.2188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2189 = private constant [58 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c\00", align 1
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2189, i32 1335, i32 10 }
@___asan_gen_.2191 = private unnamed_addr constant [49 x i8] c"switch.table.hclge_log_and_clear_rocee_ras_error\00", align 1
@llvm.compiler.used = appending global [614 x ptr] [ptr @hclge_cmd_query_error._entry, ptr @hclge_cmd_query_error._entry_ptr, ptr @hclge_config_common_hw_err_int._entry, ptr @hclge_config_common_hw_err_int._entry_ptr, ptr @hclge_config_igu_egu_hw_err_int._entry, ptr @hclge_config_igu_egu_hw_err_int._entry.106, ptr @hclge_config_igu_egu_hw_err_int._entry_ptr, ptr @hclge_config_igu_egu_hw_err_int._entry_ptr.108, ptr @hclge_config_mac_err_int._entry, ptr @hclge_config_mac_err_int._entry_ptr, ptr @hclge_config_ncsi_hw_err_int._entry, ptr @hclge_config_ncsi_hw_err_int._entry_ptr, ptr @hclge_config_ppp_error_interrupt._entry, ptr @hclge_config_ppp_error_interrupt._entry_ptr, ptr @hclge_config_ppu_error_interrupts._entry, ptr @hclge_config_ppu_error_interrupts._entry_ptr, ptr @hclge_config_ppu_hw_err_int._entry, ptr @hclge_config_ppu_hw_err_int._entry.120, ptr @hclge_config_ppu_hw_err_int._entry.123, ptr @hclge_config_ppu_hw_err_int._entry_ptr, ptr @hclge_config_ppu_hw_err_int._entry_ptr.122, ptr @hclge_config_ppu_hw_err_int._entry_ptr.125, ptr @hclge_config_rocee_ras_interrupt._entry, ptr @hclge_config_rocee_ras_interrupt._entry_ptr, ptr @hclge_config_ssu_hw_err_int._entry, ptr @hclge_config_ssu_hw_err_int._entry.115, ptr @hclge_config_ssu_hw_err_int._entry_ptr, ptr @hclge_config_ssu_hw_err_int._entry_ptr.117, ptr @hclge_config_tm_hw_err_int._entry, ptr @hclge_config_tm_hw_err_int._entry.130, ptr @hclge_config_tm_hw_err_int._entry_ptr, ptr @hclge_config_tm_hw_err_int._entry_ptr.132, ptr @hclge_handle_all_hns_hw_errors._entry, ptr @hclge_handle_all_hns_hw_errors._entry.22, ptr @hclge_handle_all_hns_hw_errors._entry.25, ptr @hclge_handle_all_hns_hw_errors._entry_ptr, ptr @hclge_handle_all_hns_hw_errors._entry_ptr.24, ptr @hclge_handle_all_hns_hw_errors._entry_ptr.27, ptr @hclge_handle_error_module_log._entry, ptr @hclge_handle_error_module_log._entry.489, ptr @hclge_handle_error_module_log._entry_ptr, ptr @hclge_handle_error_module_log._entry_ptr.491, ptr @hclge_handle_error_type_reg_log._entry, ptr @hclge_handle_error_type_reg_log._entry.496, ptr @hclge_handle_error_type_reg_log._entry.499, ptr @hclge_handle_error_type_reg_log._entry.502, ptr @hclge_handle_error_type_reg_log._entry_ptr, ptr @hclge_handle_error_type_reg_log._entry_ptr.498, ptr @hclge_handle_error_type_reg_log._entry_ptr.501, ptr @hclge_handle_error_type_reg_log._entry_ptr.504, ptr @hclge_handle_hw_msix_error._entry, ptr @hclge_handle_hw_msix_error._entry_ptr, ptr @hclge_handle_hw_ras_error._entry, ptr @hclge_handle_hw_ras_error._entry.10, ptr @hclge_handle_hw_ras_error._entry.7, ptr @hclge_handle_hw_ras_error._entry_ptr, ptr @hclge_handle_hw_ras_error._entry_ptr.12, ptr @hclge_handle_hw_ras_error._entry_ptr.9, ptr @hclge_handle_mac_tnl._entry, ptr @hclge_handle_mac_tnl._entry.17, ptr @hclge_handle_mac_tnl._entry_ptr, ptr @hclge_handle_mac_tnl._entry_ptr.19, ptr @hclge_handle_mpf_msix_error._entry, ptr @hclge_handle_mpf_msix_error._entry.433, ptr @hclge_handle_mpf_msix_error._entry.436, ptr @hclge_handle_mpf_msix_error._entry_ptr, ptr @hclge_handle_mpf_msix_error._entry_ptr.435, ptr @hclge_handle_mpf_msix_error._entry_ptr.438, ptr @hclge_handle_mpf_ras_error._entry, ptr @hclge_handle_mpf_ras_error._entry.141, ptr @hclge_handle_mpf_ras_error._entry.148, ptr @hclge_handle_mpf_ras_error._entry.155, ptr @hclge_handle_mpf_ras_error._entry.164, ptr @hclge_handle_mpf_ras_error._entry_ptr, ptr @hclge_handle_mpf_ras_error._entry_ptr.144, ptr @hclge_handle_mpf_ras_error._entry_ptr.150, ptr @hclge_handle_mpf_ras_error._entry_ptr.157, ptr @hclge_handle_mpf_ras_error._entry_ptr.166, ptr @hclge_handle_over_8bd_err._entry, ptr @hclge_handle_over_8bd_err._entry.466, ptr @hclge_handle_over_8bd_err._entry.469, ptr @hclge_handle_over_8bd_err._entry.472, ptr @hclge_handle_over_8bd_err._entry_ptr, ptr @hclge_handle_over_8bd_err._entry_ptr.468, ptr @hclge_handle_over_8bd_err._entry_ptr.471, ptr @hclge_handle_over_8bd_err._entry_ptr.474, ptr @hclge_handle_pf_msix_error._entry, ptr @hclge_handle_pf_msix_error._entry.457, ptr @hclge_handle_pf_msix_error._entry_ptr, ptr @hclge_handle_pf_msix_error._entry_ptr.459, ptr @hclge_handle_pf_ras_error._entry, ptr @hclge_handle_pf_ras_error._entry.374, ptr @hclge_handle_pf_ras_error._entry_ptr, ptr @hclge_handle_pf_ras_error._entry_ptr.376, ptr @hclge_log_and_clear_rocee_ras_error._entry, ptr @hclge_log_and_clear_rocee_ras_error._entry.30, ptr @hclge_log_and_clear_rocee_ras_error._entry.33, ptr @hclge_log_and_clear_rocee_ras_error._entry.36, ptr @hclge_log_and_clear_rocee_ras_error._entry.39, ptr @hclge_log_and_clear_rocee_ras_error._entry.42, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.32, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.35, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.38, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.41, ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.44, ptr @hclge_log_error._entry, ptr @hclge_log_error._entry_ptr, ptr @hclge_log_rocee_axi_error._entry, ptr @hclge_log_rocee_axi_error._entry.49, ptr @hclge_log_rocee_axi_error._entry.52, ptr @hclge_log_rocee_axi_error._entry.55, ptr @hclge_log_rocee_axi_error._entry_ptr, ptr @hclge_log_rocee_axi_error._entry_ptr.51, ptr @hclge_log_rocee_axi_error._entry_ptr.54, ptr @hclge_log_rocee_axi_error._entry_ptr.57, ptr @hclge_log_rocee_ecc_error._entry, ptr @hclge_log_rocee_ecc_error._entry.60, ptr @hclge_log_rocee_ecc_error._entry.63, ptr @hclge_log_rocee_ecc_error._entry_ptr, ptr @hclge_log_rocee_ecc_error._entry_ptr.62, ptr @hclge_log_rocee_ecc_error._entry_ptr.65, ptr @hclge_log_rocee_ovf_error._entry, ptr @hclge_log_rocee_ovf_error._entry.68, ptr @hclge_log_rocee_ovf_error._entry.71, ptr @hclge_log_rocee_ovf_error._entry.74, ptr @hclge_log_rocee_ovf_error._entry_ptr, ptr @hclge_log_rocee_ovf_error._entry_ptr.70, ptr @hclge_log_rocee_ovf_error._entry_ptr.73, ptr @hclge_log_rocee_ovf_error._entry_ptr.76, ptr @hclge_query_all_err_bd_num._entry, ptr @hclge_query_all_err_bd_num._entry.482, ptr @hclge_query_all_err_bd_num._entry_ptr, ptr @hclge_query_all_err_bd_num._entry_ptr.484, ptr @hclge_query_all_err_info._entry, ptr @hclge_query_all_err_info._entry_ptr, ptr @hclge_query_bd_num._entry, ptr @hclge_query_bd_num._entry.477, ptr @hclge_query_bd_num._entry_ptr, ptr @hclge_query_bd_num._entry_ptr.479, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @hclge_cmdq_nic_mem_ecc_int, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @hclge_ssu_mem_ecc_err_int, ptr @.str.149, ptr @.str.151, ptr @hclge_ssu_com_err_int, ptr @.str.152, ptr @.str.153, ptr @hclge_ppp_mpf_abnormal_int_st1, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @hclge_ppu_mpf_abnormal_int_st2, ptr @.str.159, ptr @.str.160, ptr @hclge_tm_sch_rint, ptr @.str.161, ptr @hclge_qcn_fifo_rint, ptr @.str.162, ptr @hclge_qcn_ecc_rint, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @hclge_ssu_port_based_err_int, ptr @.str.370, ptr @hclge_ssu_fifo_overflow_int, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.375, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @hclge_mac_afifo_tnl_int, ptr @.str.434, ptr @.str.437, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453, ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.458, ptr @.str.460, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.467, ptr @.str.470, ptr @.str.473, ptr @.str.475, ptr @.str.476, ptr @.str.478, ptr @.str.480, ptr @.str.481, ptr @.str.483, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.490, ptr @hclge_hw_module_id_st, ptr @hclge_hw_type_id_st, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.497, ptr @.str.500, ptr @.str.503, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.542, ptr @.str.543, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @.str.547, ptr @.str.548, ptr @switch.table.hclge_log_and_clear_rocee_ras_error], section "llvm.metadata"
@0 = internal global [544 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_rocee_ras_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_hw_ras_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_hw_ras_error._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_hw_ras_error._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_hw_msix_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mac_tnl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mac_tnl._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_all_hns_hw_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_all_hns_hw_errors._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_all_hns_hw_errors._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_and_clear_rocee_ras_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_cmd_query_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_axi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_axi_error._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_axi_error._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_axi_error._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ecc_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ecc_error._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ecc_error._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ovf_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ovf_error._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ovf_error._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_rocee_ovf_error._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_igu_egu_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_igu_egu_hw_err_int._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ncsi_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ppp_error_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ssu_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ssu_hw_err_int._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ppu_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ppu_hw_err_int._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ppu_hw_err_int._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_ppu_error_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_tm_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_tm_hw_err_int._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_common_hw_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_config_mac_err_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_ras_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_cmdq_nic_mem_ecc_int to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_ras_error._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ssu_mem_ecc_err_int to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_ras_error._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ssu_com_err_int to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ppp_mpf_abnormal_int_st1 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_ras_error._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ppu_mpf_abnormal_int_st2 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_tm_sch_rint to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_qcn_fifo_rint to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_qcn_ecc_rint to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_ras_error._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_log_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_pf_ras_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ssu_port_based_err_int to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ssu_fifo_overflow_int to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_pf_ras_error._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_msix_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_mac_afifo_tnl_int to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_msix_error._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_mpf_msix_error._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_pf_msix_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_pf_msix_error._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_over_8bd_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_over_8bd_err._entry.466 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_over_8bd_err._entry.469 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_over_8bd_err._entry.472 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_query_bd_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_query_bd_num._entry.477 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_query_all_err_bd_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_query_all_err_bd_num._entry.482 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_query_all_err_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_module_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_module_log._entry.489 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_hw_module_id_st to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_hw_type_id_st to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_type_reg_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_type_reg_log._entry.496 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_type_reg_log._entry.499 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_handle_error_type_reg_log._entry.502 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.543 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.548 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hclge_log_and_clear_rocee_ras_error to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2191 to i32), i32 ptrtoint (ptr @___asan_gen_.2189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_config_mac_tnl_int(ptr noundef %hdev, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 785, i1 noundef zeroext false) #6
  %. = select i1 %en, i32 -16580608, i32 0
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %., ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -16580608, ptr %1, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_config_rocee_ras_interrupt(ptr noundef %hdev, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %6 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %7 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp = icmp ult i32 %10, 33
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 5504, i1 noundef zeroext false) #6
  br i1 %en, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 251658240, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %3, align 4
  %call = call fastcc i32 @hclge_log_and_clear_rocee_ras_error(ptr noundef %hdev)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 251658240, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777216, ptr %5, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call12 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %call12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call12, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_log_and_clear_rocee_ras_error(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %desc.i90 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i86 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i = alloca [3 x %struct.hclge_desc], align 4
  %desc = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc) #6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 5505, i1 noundef zeroext true) #6
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %call.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end24_crit_edge, label %if.then5

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then5:                                         ; preds = %if.end
  %and6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end12_crit_edge, label %do.end11

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.then5.if.end12_crit_edge
  %and13 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %do.end18

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end12.if.end19_crit_edge
  call void @hclge_report_hw_error(ptr noundef %hdev, i32 noundef 3) #6
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 8
  %dev1.i82 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %desc.i) #6
  %8 = call ptr @memset(ptr %desc.i, i32 255, i32 96)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 5510, i1 noundef zeroext true) #6
  %arrayidx2.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx2.i, i32 noundef 5510, i1 noundef zeroext true) #6
  %arrayidx3.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx3.i, i32 noundef 5510, i1 noundef zeroext true) #6
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 1
  %9 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flag.i, align 2
  %11 = or i16 %10, 1024
  store i16 %11, ptr %flag.i, align 2
  %flag7.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flag7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag7.i, align 2
  %14 = or i16 %13, 1024
  store i16 %14, ptr %flag7.i, align 2
  %call.i84 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i, label %hclge_log_rocee_axi_error.exit.thread, label %hclge_log_rocee_axi_error.exit

hclge_log_rocee_axi_error.exit.thread:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #6
  %arrayidx19.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #6
  %arrayidx22.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #6
  %arrayidx25.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  %arrayidx28.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx28.i, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #6
  %arrayidx31.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx31.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i82, ptr noundef nonnull @.str.50, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32) #9
  %data36.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %data36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data36.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #6
  %arrayidx40.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx40.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #6
  %arrayidx43.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx43.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #6
  %arrayidx46.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 3
  %42 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx46.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %arrayidx49.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 4
  %45 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx49.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #6
  %arrayidx52.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx52.i, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i82, ptr noundef nonnull @.str.53, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50) #9
  %data57.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %data57.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data57.i, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #6
  %arrayidx61.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2, i32 4, i32 1
  %54 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx61.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #6
  %arrayidx64.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2, i32 4, i32 2
  %57 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx64.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #6
  %arrayidx67.i = getelementptr inbounds [3 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2, i32 4, i32 3
  %60 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx67.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i82, ptr noundef nonnull @.str.56, i32 noundef %53, i32 noundef %56, i32 noundef %59, i32 noundef %62) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %desc.i) #6
  br label %if.end24

hclge_log_rocee_axi_error.exit:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i82, ptr noundef nonnull @.str.47, i32 noundef %call.i84) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %desc.i) #6
  br label %cleanup

if.end24:                                         ; preds = %hclge_log_rocee_axi_error.exit.thread, %if.end.if.end24_crit_edge
  %reset_type.0 = phi i32 [ 8, %if.end.if.end24_crit_edge ], [ 5, %hclge_log_rocee_axi_error.exit.thread ]
  %and25 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %do.end30

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end30:                                         ; preds = %if.end24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37) #9
  %63 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hdev, align 8
  %dev1.i87 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i86) #6
  %65 = call ptr @memset(ptr %desc.i86, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i86, i32 noundef 5509, i1 noundef zeroext true) #6
  %flag3.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 1
  %66 = ptrtoint ptr %flag3.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flag3.i.i, align 2
  %or19.i.i = or i16 %67, 1024
  store i16 %or19.i.i, ptr %flag3.i.i, align 2
  %arrayidx6.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx6.i.i, i32 noundef 5509, i1 noundef zeroext true) #6
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i86, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i.i, label %hclge_log_rocee_ecc_error.exit.thread, label %hclge_log_rocee_ecc_error.exit

hclge_log_rocee_ecc_error.exit.thread:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  %data.i89 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4
  %68 = ptrtoint ptr %data.i89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data.i89, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #6
  %arrayidx9.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx9.i, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #6
  %arrayidx12.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx12.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #6
  %arrayidx15.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx15.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #6
  %arrayidx18.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4, i32 4
  %80 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx18.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #6
  %arrayidx21.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i86, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx21.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i87, ptr noundef nonnull @.str.61, i32 noundef %70, i32 noundef %73, i32 noundef %76, i32 noundef %79, i32 noundef %82, i32 noundef %85) #9
  %data26.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i86, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %data26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data26.i, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #6
  %arrayidx30.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i86, i32 0, i32 1, i32 4, i32 1
  %89 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx30.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #6
  %arrayidx33.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i86, i32 0, i32 1, i32 4, i32 2
  %92 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx33.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i87, ptr noundef nonnull @.str.64, i32 noundef %88, i32 noundef %91, i32 noundef %94) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i86) #6
  br label %if.end35

hclge_log_rocee_ecc_error.exit:                   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i87, ptr noundef nonnull @.str.45, i32 noundef %call.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i87, ptr noundef nonnull @.str.58, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i86) #6
  br label %cleanup

if.end35:                                         ; preds = %hclge_log_rocee_ecc_error.exit.thread, %if.end24.if.end35_crit_edge
  %reset_type.1 = phi i32 [ %reset_type.0, %if.end24.if.end35_crit_edge ], [ 6, %hclge_log_rocee_ecc_error.exit.thread ]
  %and36 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end46_crit_edge, label %if.then38

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then38:                                        ; preds = %if.end35
  %95 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hdev, align 8
  %dev1.i91 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i90) #6
  %97 = call ptr @memset(ptr %desc.i90, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i90, i32 noundef 5508, i1 noundef zeroext true) #6
  %call.i.i93 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i90, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool8.not.i.i94 = icmp eq i32 %call.i.i93, 0
  br i1 %tobool8.not.i.i94, label %if.end.i, label %do.end44

if.end.i:                                         ; preds = %if.then38
  %data.i96 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i90, i32 0, i32 4
  %98 = ptrtoint ptr %data.i96 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data.i96, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99) #6
  %and.i = and i32 %100, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end20.i_crit_edge, label %if.then5.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then5.i:                                       ; preds = %if.end.i
  %and9.i = and i32 %100, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and9.i)
  %101 = icmp ult i32 %and9.i, 32
  br i1 %101, label %switch.hole_check, label %if.then5.i.if.end20.i_crit_edge

if.then5.i.if.end20.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

switch.hole_check:                                ; preds = %if.then5.i
  %switch.shifted = lshr i32 -61167, %and9.i
  %102 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %switch.lobit.not = icmp eq i32 %102, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end20.i_crit_edge, label %switch.lookup

switch.hole_check.if.end20.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [32 x ptr], ptr @switch.table.hclge_log_and_clear_rocee_ras_error, i32 0, i32 %and9.i
  %103 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %103)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i91, ptr noundef nonnull @.str.69, ptr noundef nonnull %switch.load, i32 noundef %100) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %switch.lookup, %switch.hole_check.if.end20.i_crit_edge, %if.then5.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %arrayidx23.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i90, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx23.i, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105) #6
  %and24.i = and i32 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end20.i.if.end33.i_crit_edge, label %do.end29.i

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

do.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i91, ptr noundef nonnull @.str.72, i32 noundef %106) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end29.i, %if.end20.i.if.end33.i_crit_edge
  %arrayidx36.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i90, i32 0, i32 4, i32 2
  %107 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx36.i, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #6
  %and37.i = and i32 %109, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end33.i.hclge_log_rocee_ovf_error.exit.thread_crit_edge, label %do.end42.i

if.end33.i.hclge_log_rocee_ovf_error.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_log_rocee_ovf_error.exit.thread

do.end42.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i91, ptr noundef nonnull @.str.75, i32 noundef %109) #9
  br label %hclge_log_rocee_ovf_error.exit.thread

hclge_log_rocee_ovf_error.exit.thread:            ; preds = %do.end42.i, %if.end33.i.hclge_log_rocee_ovf_error.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i90) #6
  br label %if.end46

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i91, ptr noundef nonnull @.str.45, i32 noundef %call.i.i93) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i91, ptr noundef nonnull @.str.66, i32 noundef %call.i.i93) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i90) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call.i.i93) #9
  br label %cleanup

if.end46:                                         ; preds = %hclge_log_rocee_ovf_error.exit.thread, %if.end35.if.end46_crit_edge
  call void @hclge_comm_cmd_reuse_desc(ptr noundef nonnull %desc, i1 noundef zeroext false) #6
  %call49 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %do.end54

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %call49) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.end46.cleanup_crit_edge, %do.end44, %hclge_log_rocee_ecc_error.exit, %hclge_log_rocee_axi_error.exit, %do.end
  %retval.0 = phi i32 [ 6, %do.end ], [ 6, %do.end44 ], [ 6, %do.end54 ], [ 6, %hclge_log_rocee_axi_error.exit ], [ 6, %hclge_log_rocee_ecc_error.exit ], [ %reset_type.1, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_config_nic_hw_error(ptr noundef %hdev, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
if.then:
  %base.addr.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %2 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i, i32 132608
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %4 = and i32 %3, -1073741825
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %masksel.i = select i1 %state, i32 64, i32 0
  %reg_val.0.i = or i32 %5, %masksel.i
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1107
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0.i) #6
  %add.ptr.i8.i = getelementptr i8, ptr %7, i32 132608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %8) #6, !srcloc !1108
  %call = tail call fastcc i32 @hclge_config_igu_egu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.1, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.1:                                        ; preds = %if.then
  %call.1 = tail call fastcc i32 @hclge_config_ppp_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool5.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool5.not.1, label %if.then.2, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.2:                                        ; preds = %if.then.1
  %call.2 = tail call fastcc i32 @hclge_config_ssu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool5.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool5.not.2, label %if.then.3, label %if.then.2.cleanup_crit_edge

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.3:                                        ; preds = %if.then.2
  %call.3 = tail call fastcc i32 @hclge_config_ppu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool5.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool5.not.3, label %if.then.4, label %if.then.3.cleanup_crit_edge

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.4:                                        ; preds = %if.then.3
  %call.4 = tail call fastcc i32 @hclge_config_tm_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool5.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool5.not.4, label %if.then.5, label %if.then.4.cleanup_crit_edge

if.then.4.cleanup_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.5:                                        ; preds = %if.then.4
  %call.5 = tail call fastcc i32 @hclge_config_common_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool5.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool5.not.5, label %if.then.6, label %if.then.5.cleanup_crit_edge

if.then.5.cleanup_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.6:                                        ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #8
  %call.6 = tail call fastcc i32 @hclge_config_mac_err_int(ptr noundef %hdev, i1 noundef zeroext %state) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.6, %if.then.5.cleanup_crit_edge, %if.then.4.cleanup_crit_edge, %if.then.3.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call.1, %if.then.1.cleanup_crit_edge ], [ %call.2, %if.then.2.cleanup_crit_edge ], [ %call.3, %if.then.3.cleanup_crit_edge ], [ %call.4, %if.then.4.cleanup_crit_edge ], [ %call.5, %if.then.5.cleanup_crit_edge ], [ %call.6, %if.then.6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_handle_hw_ras_error(ptr noundef %ae_dev) local_unnamed_addr #0 align 64 {
entry:
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %state = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %9 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 133888
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !1105
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %and5 = and i32 %11, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %12 = and i32 %11, 50396928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end.out_crit_edge, label %if.then7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then7:                                         ; preds = %if.end
  %and = and i32 %11, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %hw_err_reset_req = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 4
  %14 = ptrtoint ptr %hw_err_reset_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hw_err_reset_req, align 4
  br i1 %tobool4.not, label %if.then7.if.end16_crit_edge, label %do.end14

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %11) #9
  tail call fastcc void @hclge_handle_all_ras_errors(ptr noundef %1)
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.then7.if.end16_crit_edge
  %ae_dev17 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %ae_dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ae_dev17, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %18)
  %cmp = icmp ult i32 %18, 33
  %or.cond44 = select i1 %cmp, i1 true, i1 %tobool6.not
  br i1 %or.cond44, label %if.end16.if.end24_crit_edge, label %do.end23

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end23:                                         ; preds = %if.end16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %state.i = getelementptr inbounds %struct.hclge_dev, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end23.if.end24_crit_edge

do.end23.if.end24_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i:                                         ; preds = %do.end23
  %call1.i = tail call fastcc i32 @hclge_log_and_clear_rocee_ras_error(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 8
  br i1 %cmp.not.i, label %if.end.i.if.end24_crit_edge, label %if.then2.i

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %call1.i, ptr noundef %hw_err_reset_req) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then2.i, %if.end.i.if.end24_crit_edge, %do.end23.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %24 = ptrtoint ptr %hw_err_reset_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_err_reset_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end24.out_crit_edge, %if.end.out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 5, %out ], [ 1, %do.end ], [ 3, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_handle_all_ras_errors(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %desc_bd.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %2 = call ptr @memset(ptr %desc_bd.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc_bd.i, i32 noundef 5392, i1 noundef zeroext true) #6
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc_bd.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.475, i32 noundef %call.i) #9
  br label %hclge_query_bd_num.exit.thread

if.end4.i:                                        ; preds = %entry
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i, i32 0, i32 4, i32 1
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp.i = icmp ult i32 %7, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp7.i = icmp ult i32 %10, 4
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.478, i32 noundef %7, i32 noundef %10) #9
  br label %hclge_query_bd_num.exit.thread

hclge_query_bd_num.exit.thread:                   ; preds = %do.end11.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %11 = call i32 @llvm.umax.i32(i32 %7, i32 %10)
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 32) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !1109

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end4

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i
  %ae_dev1.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %15 = ptrtoint ptr %ae_dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ae_dev1.i, align 4
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i, i32 noundef 5393, i1 noundef zeroext true) #6
  %call.i2 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %call8.i.i, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i3

do.end.i3:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.137, i32 noundef %call.i2) #9
  br label %if.then7

if.end.i:                                         ; preds = %if.end4
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  %21 = call i32 @llvm.bswap.i32(i32 %20) #6
  %and.i.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then7.i.if.end7.i.i4_crit_edge, label %do.end.i.i

if.then7.i.if.end7.i.i4_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i4

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.169, i32 noundef %21) #9
  br label %if.end7.i.i4

if.end7.i.i4:                                     ; preds = %do.end.i.i, %if.then7.i.if.end7.i.i4_crit_edge
  %and.i.1.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool1.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool1.not.i.1.i, label %if.end7.i.i4.if.end7.i.1.i_crit_edge, label %do.end.i.1.i

if.end7.i.i4.if.end7.i.1.i_crit_edge:             ; preds = %if.end7.i.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.1.i

do.end.i.1.i:                                     ; preds = %if.end7.i.i4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.170, i32 noundef %21) #9
  br label %if.end7.i.1.i

if.end7.i.1.i:                                    ; preds = %do.end.i.1.i, %if.end7.i.i4.if.end7.i.1.i_crit_edge
  %and.i.2.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i)
  %tobool1.not.i.2.i = icmp eq i32 %and.i.2.i, 0
  br i1 %tobool1.not.i.2.i, label %if.end7.i.1.i.if.end7.i.2.i_crit_edge, label %do.end.i.2.i

if.end7.i.1.i.if.end7.i.2.i_crit_edge:            ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.2.i

do.end.i.2.i:                                     ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.171, i32 noundef %21) #9
  br label %if.end7.i.2.i

if.end7.i.2.i:                                    ; preds = %do.end.i.2.i, %if.end7.i.1.i.if.end7.i.2.i_crit_edge
  %and.i.3.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i)
  %tobool1.not.i.3.i = icmp eq i32 %and.i.3.i, 0
  br i1 %tobool1.not.i.3.i, label %if.end7.i.2.i.if.end7.i.3.i_crit_edge, label %do.end.i.3.i

if.end7.i.2.i.if.end7.i.3.i_crit_edge:            ; preds = %if.end7.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.3.i

do.end.i.3.i:                                     ; preds = %if.end7.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.172, i32 noundef %21) #9
  br label %if.end7.i.3.i

if.end7.i.3.i:                                    ; preds = %do.end.i.3.i, %if.end7.i.2.i.if.end7.i.3.i_crit_edge
  %and.i.4.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i)
  %tobool1.not.i.4.i = icmp eq i32 %and.i.4.i, 0
  br i1 %tobool1.not.i.4.i, label %if.end7.i.3.i.if.end7.i.4.i_crit_edge, label %do.end.i.4.i

if.end7.i.3.i.if.end7.i.4.i_crit_edge:            ; preds = %if.end7.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.4.i

do.end.i.4.i:                                     ; preds = %if.end7.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.173, i32 noundef %21) #9
  br label %if.end7.i.4.i

if.end7.i.4.i:                                    ; preds = %do.end.i.4.i, %if.end7.i.3.i.if.end7.i.4.i_crit_edge
  %and.i.5.i = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5.i)
  %tobool1.not.i.5.i = icmp eq i32 %and.i.5.i, 0
  br i1 %tobool1.not.i.5.i, label %if.end7.i.4.i.if.end7.i.5.i_crit_edge, label %do.end.i.5.i

if.end7.i.4.i.if.end7.i.5.i_crit_edge:            ; preds = %if.end7.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.5.i

do.end.i.5.i:                                     ; preds = %if.end7.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.174, i32 noundef %21) #9
  br label %if.end7.i.5.i

if.end7.i.5.i:                                    ; preds = %do.end.i.5.i, %if.end7.i.4.i.if.end7.i.5.i_crit_edge
  %and.i.6.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6.i)
  %tobool1.not.i.6.i = icmp eq i32 %and.i.6.i, 0
  br i1 %tobool1.not.i.6.i, label %if.end7.i.5.i.if.end7.i.6.i_crit_edge, label %do.end.i.6.i

if.end7.i.5.i.if.end7.i.6.i_crit_edge:            ; preds = %if.end7.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.6.i

do.end.i.6.i:                                     ; preds = %if.end7.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.175, i32 noundef %21) #9
  br label %if.end7.i.6.i

if.end7.i.6.i:                                    ; preds = %do.end.i.6.i, %if.end7.i.5.i.if.end7.i.6.i_crit_edge
  %and.i.7.i = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7.i)
  %tobool1.not.i.7.i = icmp eq i32 %and.i.7.i, 0
  br i1 %tobool1.not.i.7.i, label %if.end7.i.6.i.if.end7.i.7.i_crit_edge, label %do.end.i.7.i

if.end7.i.6.i.if.end7.i.7.i_crit_edge:            ; preds = %if.end7.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.7.i

do.end.i.7.i:                                     ; preds = %if.end7.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.176, i32 noundef %21) #9
  br label %if.end7.i.7.i

if.end7.i.7.i:                                    ; preds = %do.end.i.7.i, %if.end7.i.6.i.if.end7.i.7.i_crit_edge
  %and.i.8.i = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8.i)
  %tobool1.not.i.8.i = icmp eq i32 %and.i.8.i, 0
  br i1 %tobool1.not.i.8.i, label %if.end7.i.7.i.if.end8.i_crit_edge, label %do.end.i.8.i

if.end7.i.7.i.if.end8.i_crit_edge:                ; preds = %if.end7.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.end.i.8.i:                                     ; preds = %if.end7.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.177, i32 noundef %21) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i.8.i, %if.end7.i.7.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %arrayidx11.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not.i = icmp eq i32 %23, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.then13.i

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end8.i
  %24 = call i32 @llvm.bswap.i32(i32 %23) #6
  %hw_err_reset_req14.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i247.i

while.body.i247.i:                                ; preds = %if.end7.i254.i.while.body.i247.i_crit_edge, %if.then13.i
  %25 = phi ptr [ %32, %if.end7.i254.i.while.body.i247.i_crit_edge ], [ @.str.178, %if.then13.i ]
  %err.addr.018.i244.i = phi ptr [ %incdec.ptr.i251.i, %if.end7.i254.i.while.body.i247.i_crit_edge ], [ @hclge_cmdq_nic_mem_ecc_int, %if.then13.i ]
  %26 = ptrtoint ptr %err.addr.018.i244.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err.addr.018.i244.i, align 4
  %and.i245.i = and i32 %27, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245.i)
  %tobool1.not.i246.i = icmp eq i32 %and.i245.i, 0
  br i1 %tobool1.not.i246.i, label %while.body.i247.i.if.end7.i254.i_crit_edge, label %do.end.i249.i

while.body.i247.i.if.end7.i254.i_crit_edge:       ; preds = %while.body.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i254.i

do.end.i249.i:                                    ; preds = %while.body.i247.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.140, ptr noundef nonnull %25, i32 noundef %24) #9
  %reset_level.i248.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i244.i, i32 0, i32 2
  %28 = ptrtoint ptr %reset_level.i248.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_level.i248.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.then5.i250.i [
    i32 0, label %do.end.i249.i.if.end7.i254.i_crit_edge
    i32 8, label %do.end.i249.i.if.end7.i254.i_crit_edge46
  ]

do.end.i249.i.if.end7.i254.i_crit_edge46:         ; preds = %do.end.i249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i254.i

do.end.i249.i.if.end7.i254.i_crit_edge:           ; preds = %do.end.i249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i254.i

if.then5.i250.i:                                  ; preds = %do.end.i249.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %29, ptr noundef %hw_err_reset_req14.i) #6
  br label %if.end7.i254.i

if.end7.i254.i:                                   ; preds = %if.then5.i250.i, %do.end.i249.i.if.end7.i254.i_crit_edge, %do.end.i249.i.if.end7.i254.i_crit_edge46, %while.body.i247.i.if.end7.i254.i_crit_edge
  %incdec.ptr.i251.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i244.i, i32 1
  %msg.i252.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i244.i, i32 1, i32 1
  %31 = ptrtoint ptr %msg.i252.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg.i252.i, align 4
  %tobool.not.i253.i = icmp eq ptr %32, null
  br i1 %tobool.not.i253.i, label %if.end7.i254.i.if.end15.i_crit_edge, label %if.end7.i254.i.while.body.i247.i_crit_edge

if.end7.i254.i.while.body.i247.i_crit_edge:       ; preds = %if.end7.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i247.i

if.end7.i254.i.if.end15.i_crit_edge:              ; preds = %if.end7.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end7.i254.i.if.end15.i_crit_edge, %if.end8.i.if.end15.i_crit_edge
  %arrayidx18.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx18.i, align 16
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool19.not.i = icmp eq i32 %35, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end24.i_crit_edge, label %do.end23.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.142) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end23.i, %if.end15.i.if.end24.i_crit_edge
  %arrayidx27.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not.i = icmp eq i32 %37, 0
  br i1 %tobool28.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then29.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end24.i
  %38 = call i32 @llvm.bswap.i32(i32 %37) #6
  %and.i257.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.i)
  %tobool1.not.i258.i = icmp eq i32 %and.i257.i, 0
  br i1 %tobool1.not.i258.i, label %if.then29.i.if.end7.i266.i_crit_edge, label %do.end.i261.i

if.then29.i.if.end7.i266.i_crit_edge:             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i266.i

do.end.i261.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.194, i32 noundef %38) #9
  br label %if.end7.i266.i

if.end7.i266.i:                                   ; preds = %do.end.i261.i, %if.then29.i.if.end7.i266.i_crit_edge
  %and.i257.1.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.1.i)
  %tobool1.not.i258.1.i = icmp eq i32 %and.i257.1.i, 0
  br i1 %tobool1.not.i258.1.i, label %if.end7.i266.i.if.end7.i266.1.i_crit_edge, label %do.end.i261.1.i

if.end7.i266.i.if.end7.i266.1.i_crit_edge:        ; preds = %if.end7.i266.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i266.1.i

do.end.i261.1.i:                                  ; preds = %if.end7.i266.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.195, i32 noundef %38) #9
  br label %if.end7.i266.1.i

if.end7.i266.1.i:                                 ; preds = %do.end.i261.1.i, %if.end7.i266.i.if.end7.i266.1.i_crit_edge
  %and.i257.2.i = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.2.i)
  %tobool1.not.i258.2.i = icmp eq i32 %and.i257.2.i, 0
  br i1 %tobool1.not.i258.2.i, label %if.end7.i266.1.i.if.end7.i266.2.i_crit_edge, label %do.end.i261.2.i

if.end7.i266.1.i.if.end7.i266.2.i_crit_edge:      ; preds = %if.end7.i266.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i266.2.i

do.end.i261.2.i:                                  ; preds = %if.end7.i266.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.196, i32 noundef %38) #9
  br label %if.end7.i266.2.i

if.end7.i266.2.i:                                 ; preds = %do.end.i261.2.i, %if.end7.i266.1.i.if.end7.i266.2.i_crit_edge
  %and.i257.3.i = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.3.i)
  %tobool1.not.i258.3.i = icmp eq i32 %and.i257.3.i, 0
  br i1 %tobool1.not.i258.3.i, label %if.end7.i266.2.i.if.end7.i266.3.i_crit_edge, label %do.end.i261.3.i

if.end7.i266.2.i.if.end7.i266.3.i_crit_edge:      ; preds = %if.end7.i266.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i266.3.i

do.end.i261.3.i:                                  ; preds = %if.end7.i266.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.197, i32 noundef %38) #9
  br label %if.end7.i266.3.i

if.end7.i266.3.i:                                 ; preds = %do.end.i261.3.i, %if.end7.i266.2.i.if.end7.i266.3.i_crit_edge
  %and.i257.4.i = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.4.i)
  %tobool1.not.i258.4.i = icmp eq i32 %and.i257.4.i, 0
  br i1 %tobool1.not.i258.4.i, label %if.end7.i266.3.i.if.end7.i266.4.i_crit_edge, label %do.end.i261.4.i

if.end7.i266.3.i.if.end7.i266.4.i_crit_edge:      ; preds = %if.end7.i266.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i266.4.i

do.end.i261.4.i:                                  ; preds = %if.end7.i266.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.198, i32 noundef %38) #9
  br label %if.end7.i266.4.i

if.end7.i266.4.i:                                 ; preds = %do.end.i261.4.i, %if.end7.i266.3.i.if.end7.i266.4.i_crit_edge
  %and.i257.5.i = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257.5.i)
  %tobool1.not.i258.5.i = icmp eq i32 %and.i257.5.i, 0
  br i1 %tobool1.not.i258.5.i, label %if.end7.i266.4.i.if.end31.i_crit_edge, label %do.end.i261.5.i

if.end7.i266.4.i.if.end31.i_crit_edge:            ; preds = %if.end7.i266.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

do.end.i261.5.i:                                  ; preds = %if.end7.i266.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.199, i32 noundef %38) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i261.5.i, %if.end7.i266.4.i.if.end31.i_crit_edge, %if.end24.i.if.end31.i_crit_edge
  %arrayidx34.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not.i = icmp eq i32 %40, 0
  br i1 %tobool35.not.i, label %if.end31.i.if.end38.i_crit_edge, label %if.then36.i

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end31.i
  %41 = call i32 @llvm.bswap.i32(i32 %40) #6
  %and.i269.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.i)
  %tobool1.not.i270.i = icmp eq i32 %and.i269.i, 0
  br i1 %tobool1.not.i270.i, label %if.then36.i.if.end7.i278.i_crit_edge, label %do.end.i273.i

if.then36.i.if.end7.i278.i_crit_edge:             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i278.i

do.end.i273.i:                                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.200, i32 noundef %41) #9
  br label %if.end7.i278.i

if.end7.i278.i:                                   ; preds = %do.end.i273.i, %if.then36.i.if.end7.i278.i_crit_edge
  %and.i269.1.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.1.i)
  %tobool1.not.i270.1.i = icmp eq i32 %and.i269.1.i, 0
  br i1 %tobool1.not.i270.1.i, label %if.end7.i278.i.if.end38.i_crit_edge, label %do.end.i273.1.i

if.end7.i278.i.if.end38.i_crit_edge:              ; preds = %if.end7.i278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

do.end.i273.1.i:                                  ; preds = %if.end7.i278.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.201, i32 noundef %41) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end.i273.1.i, %if.end7.i278.i.if.end38.i_crit_edge, %if.end31.i.if.end38.i_crit_edge
  %add.ptr.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 2, i32 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not.i = icmp eq i32 %43, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.then41.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end38.i
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %hw_err_reset_req42.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i283.i

while.body.i283.i:                                ; preds = %if.end7.i290.i.while.body.i283.i_crit_edge, %if.then41.i
  %45 = phi ptr [ %52, %if.end7.i290.i.while.body.i283.i_crit_edge ], [ @.str.202, %if.then41.i ]
  %err.addr.018.i280.i = phi ptr [ %incdec.ptr.i287.i, %if.end7.i290.i.while.body.i283.i_crit_edge ], [ @hclge_ssu_mem_ecc_err_int, %if.then41.i ]
  %46 = ptrtoint ptr %err.addr.018.i280.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err.addr.018.i280.i, align 4
  %and.i281.i = and i32 %47, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281.i)
  %tobool1.not.i282.i = icmp eq i32 %and.i281.i, 0
  br i1 %tobool1.not.i282.i, label %while.body.i283.i.if.end7.i290.i_crit_edge, label %do.end.i285.i

while.body.i283.i.if.end7.i290.i_crit_edge:       ; preds = %while.body.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i290.i

do.end.i285.i:                                    ; preds = %while.body.i283.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.147, ptr noundef nonnull %45, i32 noundef %44) #9
  %reset_level.i284.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i280.i, i32 0, i32 2
  %48 = ptrtoint ptr %reset_level.i284.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reset_level.i284.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.549)
  switch i32 %49, label %if.then5.i286.i [
    i32 0, label %do.end.i285.i.if.end7.i290.i_crit_edge
    i32 8, label %do.end.i285.i.if.end7.i290.i_crit_edge47
  ]

do.end.i285.i.if.end7.i290.i_crit_edge47:         ; preds = %do.end.i285.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i290.i

do.end.i285.i.if.end7.i290.i_crit_edge:           ; preds = %do.end.i285.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i290.i

if.then5.i286.i:                                  ; preds = %do.end.i285.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %49, ptr noundef %hw_err_reset_req42.i) #6
  br label %if.end7.i290.i

if.end7.i290.i:                                   ; preds = %if.then5.i286.i, %do.end.i285.i.if.end7.i290.i_crit_edge, %do.end.i285.i.if.end7.i290.i_crit_edge47, %while.body.i283.i.if.end7.i290.i_crit_edge
  %incdec.ptr.i287.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i280.i, i32 1
  %msg.i288.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i280.i, i32 1, i32 1
  %51 = ptrtoint ptr %msg.i288.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msg.i288.i, align 4
  %tobool.not.i289.i = icmp eq ptr %52, null
  br i1 %tobool.not.i289.i, label %if.end7.i290.i.if.end43.i_crit_edge, label %if.end7.i290.i.while.body.i283.i_crit_edge

if.end7.i290.i.while.body.i283.i_crit_edge:       ; preds = %if.end7.i290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i283.i

if.end7.i290.i.if.end43.i_crit_edge:              ; preds = %if.end7.i290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end7.i290.i.if.end43.i_crit_edge, %if.end38.i.if.end43.i_crit_edge
  %add.ptr44.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 2, i32 4, i32 1
  %53 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr44.i, align 4
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool46.not.i = icmp eq i32 %55, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end52.i_crit_edge, label %do.end50.i

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

do.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.149, i32 noundef 1) #9
  %hw_err_reset_req51.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req51.i) #6
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end50.i, %if.end43.i.if.end52.i_crit_edge
  %add.ptr53.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 2, i32 4, i32 2
  %56 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr53.i, align 16
  %58 = and i32 %57, -16580608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool55.not.i = icmp eq i32 %58, 0
  br i1 %tobool55.not.i, label %if.end52.i.if.end58.i_crit_edge, label %if.then56.i

if.end52.i.if.end58.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end52.i
  %59 = call i32 @llvm.bswap.i32(i32 %58) #6
  %hw_err_reset_req57.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i295.i

while.body.i295.i:                                ; preds = %if.end7.i302.i.while.body.i295.i_crit_edge, %if.then56.i
  %60 = phi ptr [ %67, %if.end7.i302.i.while.body.i295.i_crit_edge ], [ @.str.234, %if.then56.i ]
  %err.addr.018.i292.i = phi ptr [ %incdec.ptr.i299.i, %if.end7.i302.i.while.body.i295.i_crit_edge ], [ @hclge_ssu_com_err_int, %if.then56.i ]
  %61 = ptrtoint ptr %err.addr.018.i292.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %err.addr.018.i292.i, align 4
  %and.i293.i = and i32 %62, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293.i)
  %tobool1.not.i294.i = icmp eq i32 %and.i293.i, 0
  br i1 %tobool1.not.i294.i, label %while.body.i295.i.if.end7.i302.i_crit_edge, label %do.end.i297.i

while.body.i295.i.if.end7.i302.i_crit_edge:       ; preds = %while.body.i295.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i302.i

do.end.i297.i:                                    ; preds = %while.body.i295.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.151, ptr noundef nonnull %60, i32 noundef %59) #9
  %reset_level.i296.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i292.i, i32 0, i32 2
  %63 = ptrtoint ptr %reset_level.i296.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_level.i296.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.550)
  switch i32 %64, label %if.then5.i298.i [
    i32 0, label %do.end.i297.i.if.end7.i302.i_crit_edge
    i32 8, label %do.end.i297.i.if.end7.i302.i_crit_edge48
  ]

do.end.i297.i.if.end7.i302.i_crit_edge48:         ; preds = %do.end.i297.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i302.i

do.end.i297.i.if.end7.i302.i_crit_edge:           ; preds = %do.end.i297.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i302.i

if.then5.i298.i:                                  ; preds = %do.end.i297.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %64, ptr noundef %hw_err_reset_req57.i) #6
  br label %if.end7.i302.i

if.end7.i302.i:                                   ; preds = %if.then5.i298.i, %do.end.i297.i.if.end7.i302.i_crit_edge, %do.end.i297.i.if.end7.i302.i_crit_edge48, %while.body.i295.i.if.end7.i302.i_crit_edge
  %incdec.ptr.i299.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i292.i, i32 1
  %msg.i300.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i292.i, i32 1, i32 1
  %66 = ptrtoint ptr %msg.i300.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %msg.i300.i, align 4
  %tobool.not.i301.i = icmp eq ptr %67, null
  br i1 %tobool.not.i301.i, label %if.end7.i302.i.if.end58.i_crit_edge, label %if.end7.i302.i.while.body.i295.i_crit_edge

if.end7.i302.i.while.body.i295.i_crit_edge:       ; preds = %if.end7.i302.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i295.i

if.end7.i302.i.if.end58.i_crit_edge:              ; preds = %if.end7.i302.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end7.i302.i.if.end58.i_crit_edge, %if.end52.i.if.end58.i_crit_edge
  %arrayidx59.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 3
  %68 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx59.i, align 32
  %70 = lshr i32 %69, 24
  %and60.i = and i32 %70, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end64.i_crit_edge, label %if.then62.i

if.end58.i.if.end64.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.end58.i
  %hw_err_reset_req63.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  %71 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool1.not.i306.i = icmp eq i32 %71, 0
  br i1 %tobool1.not.i306.i, label %if.then62.i.if.end7.i314.i_crit_edge, label %if.then5.i310.i

if.then62.i.if.end7.i314.i_crit_edge:             ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i314.i

if.then5.i310.i:                                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.244, i32 noundef %and60.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req63.i) #6
  br label %if.end7.i314.i

if.end7.i314.i:                                   ; preds = %if.then5.i310.i, %if.then62.i.if.end7.i314.i_crit_edge
  %72 = and i32 %69, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not.i306.1.i = icmp eq i32 %72, 0
  br i1 %tobool1.not.i306.1.i, label %if.end7.i314.i.if.end64.i_crit_edge, label %if.then5.i310.1.i

if.end7.i314.i.if.end64.i_crit_edge:              ; preds = %if.end7.i314.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then5.i310.1.i:                                ; preds = %if.end7.i314.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.245, i32 noundef %and60.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req63.i) #6
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then5.i310.1.i, %if.end7.i314.i.if.end64.i_crit_edge, %if.end58.i.if.end64.i_crit_edge
  %add.ptr66.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 4, i32 2
  %73 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool67.not.i = icmp eq i32 %74, 0
  br i1 %tobool67.not.i, label %if.end64.i.if.end70.i_crit_edge, label %if.then68.i

if.end64.i.if.end70.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.end64.i
  %75 = call i32 @llvm.bswap.i32(i32 %74) #6
  %hw_err_reset_req69.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i319.i

while.body.i319.i:                                ; preds = %if.end7.i326.i.while.body.i319.i_crit_edge, %if.then68.i
  %76 = phi ptr [ %83, %if.end7.i326.i.while.body.i319.i_crit_edge ], [ @.str.246, %if.then68.i ]
  %err.addr.018.i316.i = phi ptr [ %incdec.ptr.i323.i, %if.end7.i326.i.while.body.i319.i_crit_edge ], [ @hclge_ppp_mpf_abnormal_int_st1, %if.then68.i ]
  %77 = ptrtoint ptr %err.addr.018.i316.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %err.addr.018.i316.i, align 4
  %and.i317.i = and i32 %78, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317.i)
  %tobool1.not.i318.i = icmp eq i32 %and.i317.i, 0
  br i1 %tobool1.not.i318.i, label %while.body.i319.i.if.end7.i326.i_crit_edge, label %do.end.i321.i

while.body.i319.i.if.end7.i326.i_crit_edge:       ; preds = %while.body.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i326.i

do.end.i321.i:                                    ; preds = %while.body.i319.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.153, ptr noundef nonnull %76, i32 noundef %75) #9
  %reset_level.i320.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i316.i, i32 0, i32 2
  %79 = ptrtoint ptr %reset_level.i320.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reset_level.i320.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.551)
  switch i32 %80, label %if.then5.i322.i [
    i32 0, label %do.end.i321.i.if.end7.i326.i_crit_edge
    i32 8, label %do.end.i321.i.if.end7.i326.i_crit_edge49
  ]

do.end.i321.i.if.end7.i326.i_crit_edge49:         ; preds = %do.end.i321.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i326.i

do.end.i321.i.if.end7.i326.i_crit_edge:           ; preds = %do.end.i321.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i326.i

if.then5.i322.i:                                  ; preds = %do.end.i321.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %80, ptr noundef %hw_err_reset_req69.i) #6
  br label %if.end7.i326.i

if.end7.i326.i:                                   ; preds = %if.then5.i322.i, %do.end.i321.i.if.end7.i326.i_crit_edge, %do.end.i321.i.if.end7.i326.i_crit_edge49, %while.body.i319.i.if.end7.i326.i_crit_edge
  %incdec.ptr.i323.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i316.i, i32 1
  %msg.i324.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i316.i, i32 1, i32 1
  %82 = ptrtoint ptr %msg.i324.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg.i324.i, align 4
  %tobool.not.i325.i = icmp eq ptr %83, null
  br i1 %tobool.not.i325.i, label %if.end7.i326.i.if.end70.i_crit_edge, label %if.end7.i326.i.while.body.i319.i_crit_edge

if.end7.i326.i.while.body.i319.i_crit_edge:       ; preds = %if.end7.i326.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i319.i

if.end7.i326.i.if.end70.i_crit_edge:              ; preds = %if.end7.i326.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end7.i326.i.if.end70.i_crit_edge, %if.end64.i.if.end70.i_crit_edge
  %add.ptr71.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 4, i32 4, i32 1
  %84 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr71.i, align 4
  %86 = lshr i32 %85, 24
  %and72.i = and i32 %86, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end76.i_crit_edge, label %if.then74.i

if.end70.i.if.end76.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then74.i:                                      ; preds = %if.end70.i
  %hw_err_reset_req75.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  %87 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i330.i = icmp eq i32 %87, 0
  br i1 %tobool1.not.i330.i, label %if.then74.i.if.end7.i338.i_crit_edge, label %if.then5.i334.i

if.then74.i.if.end7.i338.i_crit_edge:             ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i338.i

if.then5.i334.i:                                  ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.277, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end7.i338.i

if.end7.i338.i:                                   ; preds = %if.then5.i334.i, %if.then74.i.if.end7.i338.i_crit_edge
  %88 = and i32 %85, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool1.not.i330.1.i = icmp eq i32 %88, 0
  br i1 %tobool1.not.i330.1.i, label %if.end7.i338.i.if.end7.i338.1.i_crit_edge, label %if.then5.i334.1.i

if.end7.i338.i.if.end7.i338.1.i_crit_edge:        ; preds = %if.end7.i338.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i338.1.i

if.then5.i334.1.i:                                ; preds = %if.end7.i338.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.278, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end7.i338.1.i

if.end7.i338.1.i:                                 ; preds = %if.then5.i334.1.i, %if.end7.i338.i.if.end7.i338.1.i_crit_edge
  %89 = and i32 %85, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool1.not.i330.2.i = icmp eq i32 %89, 0
  br i1 %tobool1.not.i330.2.i, label %if.end7.i338.1.i.if.end7.i338.2.i_crit_edge, label %if.then5.i334.2.i

if.end7.i338.1.i.if.end7.i338.2.i_crit_edge:      ; preds = %if.end7.i338.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i338.2.i

if.then5.i334.2.i:                                ; preds = %if.end7.i338.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.279, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end7.i338.2.i

if.end7.i338.2.i:                                 ; preds = %if.then5.i334.2.i, %if.end7.i338.1.i.if.end7.i338.2.i_crit_edge
  %90 = and i32 %85, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool1.not.i330.3.i = icmp eq i32 %90, 0
  br i1 %tobool1.not.i330.3.i, label %if.end7.i338.2.i.if.end7.i338.3.i_crit_edge, label %if.then5.i334.3.i

if.end7.i338.2.i.if.end7.i338.3.i_crit_edge:      ; preds = %if.end7.i338.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i338.3.i

if.then5.i334.3.i:                                ; preds = %if.end7.i338.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.280, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end7.i338.3.i

if.end7.i338.3.i:                                 ; preds = %if.then5.i334.3.i, %if.end7.i338.2.i.if.end7.i338.3.i_crit_edge
  %91 = and i32 %85, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool1.not.i330.4.i = icmp eq i32 %91, 0
  br i1 %tobool1.not.i330.4.i, label %if.end7.i338.3.i.if.end7.i338.4.i_crit_edge, label %if.then5.i334.4.i

if.end7.i338.3.i.if.end7.i338.4.i_crit_edge:      ; preds = %if.end7.i338.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i338.4.i

if.then5.i334.4.i:                                ; preds = %if.end7.i338.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.281, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end7.i338.4.i

if.end7.i338.4.i:                                 ; preds = %if.then5.i334.4.i, %if.end7.i338.3.i.if.end7.i338.4.i_crit_edge
  %92 = and i32 %85, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool1.not.i330.5.i = icmp eq i32 %92, 0
  br i1 %tobool1.not.i330.5.i, label %if.end7.i338.4.i.if.end76.i_crit_edge, label %if.then5.i334.5.i

if.end7.i338.4.i.if.end76.i_crit_edge:            ; preds = %if.end7.i338.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then5.i334.5.i:                                ; preds = %if.end7.i338.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.282, i32 noundef %and72.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req75.i) #6
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then5.i334.5.i, %if.end7.i338.4.i.if.end76.i_crit_edge, %if.end70.i.if.end76.i_crit_edge
  %add.ptr78.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 5, i32 2
  %93 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool79.not.i = icmp eq i32 %94, 0
  br i1 %tobool79.not.i, label %if.end76.i.if.end85.i_crit_edge, label %do.end83.i

if.end76.i.if.end85.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.i

do.end83.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.156) #9
  %hw_err_reset_req84.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req84.i) #6
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end83.i, %if.end76.i.if.end85.i_crit_edge
  %add.ptr86.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 5, i32 4
  %95 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr86.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool87.not.i = icmp eq i32 %96, 0
  br i1 %tobool87.not.i, label %if.end85.i.if.end90.i_crit_edge, label %if.then88.i

if.end85.i.if.end90.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then88.i:                                      ; preds = %if.end85.i
  %97 = call i32 @llvm.bswap.i32(i32 %96) #6
  %hw_err_reset_req89.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i343.i

while.body.i343.i:                                ; preds = %if.end7.i350.i.while.body.i343.i_crit_edge, %if.then88.i
  %98 = phi ptr [ %105, %if.end7.i350.i.while.body.i343.i_crit_edge ], [ @.str.283, %if.then88.i ]
  %err.addr.018.i340.i = phi ptr [ %incdec.ptr.i347.i, %if.end7.i350.i.while.body.i343.i_crit_edge ], [ @hclge_ppu_mpf_abnormal_int_st2, %if.then88.i ]
  %99 = ptrtoint ptr %err.addr.018.i340.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %err.addr.018.i340.i, align 4
  %and.i341.i = and i32 %100, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i341.i)
  %tobool1.not.i342.i = icmp eq i32 %and.i341.i, 0
  br i1 %tobool1.not.i342.i, label %while.body.i343.i.if.end7.i350.i_crit_edge, label %do.end.i345.i

while.body.i343.i.if.end7.i350.i_crit_edge:       ; preds = %while.body.i343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i350.i

do.end.i345.i:                                    ; preds = %while.body.i343.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.158, ptr noundef nonnull %98, i32 noundef %97) #9
  %reset_level.i344.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i340.i, i32 0, i32 2
  %101 = ptrtoint ptr %reset_level.i344.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reset_level.i344.i, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.552)
  switch i32 %102, label %if.then5.i346.i [
    i32 0, label %do.end.i345.i.if.end7.i350.i_crit_edge
    i32 8, label %do.end.i345.i.if.end7.i350.i_crit_edge50
  ]

do.end.i345.i.if.end7.i350.i_crit_edge50:         ; preds = %do.end.i345.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i350.i

do.end.i345.i.if.end7.i350.i_crit_edge:           ; preds = %do.end.i345.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i350.i

if.then5.i346.i:                                  ; preds = %do.end.i345.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %102, ptr noundef %hw_err_reset_req89.i) #6
  br label %if.end7.i350.i

if.end7.i350.i:                                   ; preds = %if.then5.i346.i, %do.end.i345.i.if.end7.i350.i_crit_edge, %do.end.i345.i.if.end7.i350.i_crit_edge50, %while.body.i343.i.if.end7.i350.i_crit_edge
  %incdec.ptr.i347.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i340.i, i32 1
  %msg.i348.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i340.i, i32 1, i32 1
  %104 = ptrtoint ptr %msg.i348.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %msg.i348.i, align 4
  %tobool.not.i349.i = icmp eq ptr %105, null
  br i1 %tobool.not.i349.i, label %if.end7.i350.i.if.end90.i_crit_edge, label %if.end7.i350.i.while.body.i343.i_crit_edge

if.end7.i350.i.while.body.i343.i_crit_edge:       ; preds = %if.end7.i350.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i343.i

if.end7.i350.i.if.end90.i_crit_edge:              ; preds = %if.end7.i350.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end7.i350.i.if.end90.i_crit_edge, %if.end85.i.if.end90.i_crit_edge
  %add.ptr91.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 5, i32 4, i32 1
  %106 = ptrtoint ptr %add.ptr91.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %107)
  %tobool93.not.i = icmp ult i32 %107, 16777216
  br i1 %tobool93.not.i, label %if.end90.i.if.end96.i_crit_edge, label %if.then94.i

if.end90.i.if.end96.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then94.i:                                      ; preds = %if.end90.i
  %108 = lshr i32 %107, 24
  %hw_err_reset_req95.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  %109 = and i32 %107, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool1.not.i354.i = icmp eq i32 %109, 0
  br i1 %tobool1.not.i354.i, label %if.then94.i.if.end7.i362.i_crit_edge, label %if.then5.i358.i

if.then94.i.if.end7.i362.i_crit_edge:             ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i362.i

if.then5.i358.i:                                  ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.302, i32 noundef %108) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req95.i) #6
  br label %if.end7.i362.i

if.end7.i362.i:                                   ; preds = %if.then5.i358.i, %if.then94.i.if.end7.i362.i_crit_edge
  %110 = and i32 %107, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool1.not.i354.1.i = icmp eq i32 %110, 0
  br i1 %tobool1.not.i354.1.i, label %if.end7.i362.i.if.end7.i362.1.i_crit_edge, label %if.then5.i358.1.i

if.end7.i362.i.if.end7.i362.1.i_crit_edge:        ; preds = %if.end7.i362.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i362.1.i

if.then5.i358.1.i:                                ; preds = %if.end7.i362.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.303, i32 noundef %108) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req95.i) #6
  br label %if.end7.i362.1.i

if.end7.i362.1.i:                                 ; preds = %if.then5.i358.1.i, %if.end7.i362.i.if.end7.i362.1.i_crit_edge
  %111 = and i32 %107, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool1.not.i354.2.i = icmp eq i32 %111, 0
  br i1 %tobool1.not.i354.2.i, label %if.end7.i362.1.i.if.end7.i362.2.i_crit_edge, label %if.then5.i358.2.i

if.end7.i362.1.i.if.end7.i362.2.i_crit_edge:      ; preds = %if.end7.i362.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i362.2.i

if.then5.i358.2.i:                                ; preds = %if.end7.i362.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.304, i32 noundef %108) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req95.i) #6
  br label %if.end7.i362.2.i

if.end7.i362.2.i:                                 ; preds = %if.then5.i358.2.i, %if.end7.i362.1.i.if.end7.i362.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %tobool1.not.i354.3.i = icmp sgt i32 %107, -1
  br i1 %tobool1.not.i354.3.i, label %if.end7.i362.2.i.if.end96.i_crit_edge, label %if.then5.i358.3.i

if.end7.i362.2.i.if.end96.i_crit_edge:            ; preds = %if.end7.i362.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then5.i358.3.i:                                ; preds = %if.end7.i362.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.305, i32 noundef %108) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req95.i) #6
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then5.i358.3.i, %if.end7.i362.2.i.if.end96.i_crit_edge, %if.end90.i.if.end96.i_crit_edge
  %arrayidx97.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 6
  %112 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx97.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool98.not.i = icmp eq i32 %113, 0
  br i1 %tobool98.not.i, label %if.end96.i.if.end101.i_crit_edge, label %if.then99.i

if.end96.i.if.end101.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.then99.i:                                      ; preds = %if.end96.i
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  %hw_err_reset_req100.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i367.i

while.body.i367.i:                                ; preds = %if.end7.i374.i.while.body.i367.i_crit_edge, %if.then99.i
  %115 = phi ptr [ %122, %if.end7.i374.i.while.body.i367.i_crit_edge ], [ @.str.306, %if.then99.i ]
  %err.addr.018.i364.i = phi ptr [ %incdec.ptr.i371.i, %if.end7.i374.i.while.body.i367.i_crit_edge ], [ @hclge_tm_sch_rint, %if.then99.i ]
  %116 = ptrtoint ptr %err.addr.018.i364.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %err.addr.018.i364.i, align 4
  %and.i365.i = and i32 %117, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i365.i)
  %tobool1.not.i366.i = icmp eq i32 %and.i365.i, 0
  br i1 %tobool1.not.i366.i, label %while.body.i367.i.if.end7.i374.i_crit_edge, label %do.end.i369.i

while.body.i367.i.if.end7.i374.i_crit_edge:       ; preds = %while.body.i367.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i374.i

do.end.i369.i:                                    ; preds = %while.body.i367.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.160, ptr noundef nonnull %115, i32 noundef %114) #9
  %reset_level.i368.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i364.i, i32 0, i32 2
  %118 = ptrtoint ptr %reset_level.i368.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %reset_level.i368.i, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.553)
  switch i32 %119, label %if.then5.i370.i [
    i32 0, label %do.end.i369.i.if.end7.i374.i_crit_edge
    i32 8, label %do.end.i369.i.if.end7.i374.i_crit_edge51
  ]

do.end.i369.i.if.end7.i374.i_crit_edge51:         ; preds = %do.end.i369.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i374.i

do.end.i369.i.if.end7.i374.i_crit_edge:           ; preds = %do.end.i369.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i374.i

if.then5.i370.i:                                  ; preds = %do.end.i369.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %119, ptr noundef %hw_err_reset_req100.i) #6
  br label %if.end7.i374.i

if.end7.i374.i:                                   ; preds = %if.then5.i370.i, %do.end.i369.i.if.end7.i374.i_crit_edge, %do.end.i369.i.if.end7.i374.i_crit_edge51, %while.body.i367.i.if.end7.i374.i_crit_edge
  %incdec.ptr.i371.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i364.i, i32 1
  %msg.i372.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i364.i, i32 1, i32 1
  %121 = ptrtoint ptr %msg.i372.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %msg.i372.i, align 4
  %tobool.not.i373.i = icmp eq ptr %122, null
  br i1 %tobool.not.i373.i, label %if.end7.i374.i.if.end101.i_crit_edge, label %if.end7.i374.i.while.body.i367.i_crit_edge

if.end7.i374.i.while.body.i367.i_crit_edge:       ; preds = %if.end7.i374.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i367.i

if.end7.i374.i.if.end101.i_crit_edge:             ; preds = %if.end7.i374.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end7.i374.i.if.end101.i_crit_edge, %if.end96.i.if.end101.i_crit_edge
  %arrayidx102.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 7
  %123 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx102.i, align 32
  %125 = and i32 %124, -64768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool104.not.i = icmp eq i32 %125, 0
  br i1 %tobool104.not.i, label %if.end101.i.if.end107.i_crit_edge, label %if.then105.i

if.end101.i.if.end107.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i

if.then105.i:                                     ; preds = %if.end101.i
  %126 = call i32 @llvm.bswap.i32(i32 %125) #6
  %hw_err_reset_req106.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i379.i

while.body.i379.i:                                ; preds = %if.end7.i386.i.while.body.i379.i_crit_edge, %if.then105.i
  %127 = phi ptr [ %134, %if.end7.i386.i.while.body.i379.i_crit_edge ], [ @.str.337, %if.then105.i ]
  %err.addr.018.i376.i = phi ptr [ %incdec.ptr.i383.i, %if.end7.i386.i.while.body.i379.i_crit_edge ], [ @hclge_qcn_fifo_rint, %if.then105.i ]
  %128 = ptrtoint ptr %err.addr.018.i376.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %err.addr.018.i376.i, align 4
  %and.i377.i = and i32 %129, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i377.i)
  %tobool1.not.i378.i = icmp eq i32 %and.i377.i, 0
  br i1 %tobool1.not.i378.i, label %while.body.i379.i.if.end7.i386.i_crit_edge, label %do.end.i381.i

while.body.i379.i.if.end7.i386.i_crit_edge:       ; preds = %while.body.i379.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i386.i

do.end.i381.i:                                    ; preds = %while.body.i379.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.161, ptr noundef nonnull %127, i32 noundef %126) #9
  %reset_level.i380.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i376.i, i32 0, i32 2
  %130 = ptrtoint ptr %reset_level.i380.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %reset_level.i380.i, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.554)
  switch i32 %131, label %if.then5.i382.i [
    i32 0, label %do.end.i381.i.if.end7.i386.i_crit_edge
    i32 8, label %do.end.i381.i.if.end7.i386.i_crit_edge52
  ]

do.end.i381.i.if.end7.i386.i_crit_edge52:         ; preds = %do.end.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i386.i

do.end.i381.i.if.end7.i386.i_crit_edge:           ; preds = %do.end.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i386.i

if.then5.i382.i:                                  ; preds = %do.end.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %131, ptr noundef %hw_err_reset_req106.i) #6
  br label %if.end7.i386.i

if.end7.i386.i:                                   ; preds = %if.then5.i382.i, %do.end.i381.i.if.end7.i386.i_crit_edge, %do.end.i381.i.if.end7.i386.i_crit_edge52, %while.body.i379.i.if.end7.i386.i_crit_edge
  %incdec.ptr.i383.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i376.i, i32 1
  %msg.i384.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i376.i, i32 1, i32 1
  %133 = ptrtoint ptr %msg.i384.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %msg.i384.i, align 4
  %tobool.not.i385.i = icmp eq ptr %134, null
  br i1 %tobool.not.i385.i, label %if.end7.i386.i.if.end107.i_crit_edge, label %if.end7.i386.i.while.body.i379.i_crit_edge

if.end7.i386.i.while.body.i379.i_crit_edge:       ; preds = %if.end7.i386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i379.i

if.end7.i386.i.if.end107.i_crit_edge:             ; preds = %if.end7.i386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end7.i386.i.if.end107.i_crit_edge, %if.end101.i.if.end107.i_crit_edge
  %add.ptr108.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 7, i32 2
  %135 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr108.i, align 4
  %137 = and i32 %136, -49408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool110.not.i = icmp eq i32 %137, 0
  br i1 %tobool110.not.i, label %if.end107.i.if.end113.i_crit_edge, label %if.then111.i

if.end107.i.if.end113.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.then111.i:                                     ; preds = %if.end107.i
  %138 = call i32 @llvm.bswap.i32(i32 %137) #6
  %hw_err_reset_req112.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 4
  br label %while.body.i391.i

while.body.i391.i:                                ; preds = %if.end7.i398.i.while.body.i391.i_crit_edge, %if.then111.i
  %139 = phi ptr [ %146, %if.end7.i398.i.while.body.i391.i_crit_edge ], [ @.str.355, %if.then111.i ]
  %err.addr.018.i388.i = phi ptr [ %incdec.ptr.i395.i, %if.end7.i398.i.while.body.i391.i_crit_edge ], [ @hclge_qcn_ecc_rint, %if.then111.i ]
  %140 = ptrtoint ptr %err.addr.018.i388.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %err.addr.018.i388.i, align 4
  %and.i389.i = and i32 %141, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i389.i)
  %tobool1.not.i390.i = icmp eq i32 %and.i389.i, 0
  br i1 %tobool1.not.i390.i, label %while.body.i391.i.if.end7.i398.i_crit_edge, label %do.end.i393.i

while.body.i391.i.if.end7.i398.i_crit_edge:       ; preds = %while.body.i391.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i398.i

do.end.i393.i:                                    ; preds = %while.body.i391.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.162, ptr noundef nonnull %139, i32 noundef %138) #9
  %reset_level.i392.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i388.i, i32 0, i32 2
  %142 = ptrtoint ptr %reset_level.i392.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %reset_level.i392.i, align 4
  %144 = zext i32 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.555)
  switch i32 %143, label %if.then5.i394.i [
    i32 0, label %do.end.i393.i.if.end7.i398.i_crit_edge
    i32 8, label %do.end.i393.i.if.end7.i398.i_crit_edge53
  ]

do.end.i393.i.if.end7.i398.i_crit_edge53:         ; preds = %do.end.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i398.i

do.end.i393.i.if.end7.i398.i_crit_edge:           ; preds = %do.end.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i398.i

if.then5.i394.i:                                  ; preds = %do.end.i393.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %143, ptr noundef %hw_err_reset_req112.i) #6
  br label %if.end7.i398.i

if.end7.i398.i:                                   ; preds = %if.then5.i394.i, %do.end.i393.i.if.end7.i398.i_crit_edge, %do.end.i393.i.if.end7.i398.i_crit_edge53, %while.body.i391.i.if.end7.i398.i_crit_edge
  %incdec.ptr.i395.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i388.i, i32 1
  %msg.i396.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i388.i, i32 1, i32 1
  %145 = ptrtoint ptr %msg.i396.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %msg.i396.i, align 4
  %tobool.not.i397.i = icmp eq ptr %146, null
  br i1 %tobool.not.i397.i, label %if.end7.i398.i.if.end113.i_crit_edge, label %if.end7.i398.i.while.body.i391.i_crit_edge

if.end7.i398.i.while.body.i391.i_crit_edge:       ; preds = %if.end7.i398.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i391.i

if.end7.i398.i.if.end113.i_crit_edge:             ; preds = %if.end7.i398.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end7.i398.i.if.end113.i_crit_edge, %if.end107.i.if.end113.i_crit_edge
  %arrayidx114.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 9
  %147 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx114.i, align 32
  %149 = lshr i32 %148, 24
  %and115.i = and i32 %149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  %150 = and i32 %148, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool1.not.i402.i = icmp eq i32 %150, 0
  %or.cond.i5 = select i1 %tobool116.not.i, i1 true, i1 %tobool1.not.i402.i
  br i1 %or.cond.i5, label %if.end113.i.if.end119.i_crit_edge, label %do.end.i405.i

if.end113.i.if.end119.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

do.end.i405.i:                                    ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.366, i32 noundef %and115.i) #9
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end.i405.i, %if.end113.i.if.end119.i_crit_edge
  call void @hclge_comm_cmd_reuse_desc(ptr noundef nonnull %call8.i.i, i1 noundef zeroext false) #6
  %call123.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %call8.i.i, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end8, label %do.end128.i

do.end128.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.165, i32 noundef %call123.i) #9
  br label %if.then7

if.then7:                                         ; preds = %do.end128.i, %do.end.i3
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end119.i
  %mul = shl i32 %11, 5
  %151 = call ptr @memset(ptr %call8.i.i, i32 0, i32 %mul)
  %152 = ptrtoint ptr %ae_dev1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ae_dev1.i, align 4
  %154 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hdev, align 8
  %dev2.i8 = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i, i32 noundef 5394, i1 noundef zeroext true) #6
  %call.i10 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %call8.i.i, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i15, label %do.end.i12

do.end.i12:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.367, i32 noundef %call.i10) #9
  br label %hclge_handle_pf_ras_error.exit

if.end.i15:                                       ; preds = %if.end8
  %156 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool6.not.i14 = icmp eq i32 %157, 0
  br i1 %tobool6.not.i14, label %if.end.i15.if.end8.i24_crit_edge, label %if.then7.i16

if.end.i15.if.end8.i24_crit_edge:                 ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i24

if.then7.i16:                                     ; preds = %if.end.i15
  %158 = call i32 @llvm.bswap.i32(i32 %157) #6
  %hw_err_reset_req.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end7.i.i21.while.body.i.i_crit_edge, %if.then7.i16
  %159 = phi ptr [ %166, %if.end7.i.i21.while.body.i.i_crit_edge ], [ @.str.377, %if.then7.i16 ]
  %err.addr.018.i.i = phi ptr [ %incdec.ptr.i.i, %if.end7.i.i21.while.body.i.i_crit_edge ], [ @hclge_ssu_port_based_err_int, %if.then7.i16 ]
  %160 = ptrtoint ptr %err.addr.018.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %err.addr.018.i.i, align 4
  %and.i.i17 = and i32 %161, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool1.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool1.not.i.i18, label %while.body.i.i.if.end7.i.i21_crit_edge, label %do.end.i.i19

while.body.i.i.if.end7.i.i21_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i21

do.end.i.i19:                                     ; preds = %while.body.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.369, ptr noundef nonnull %159, i32 noundef %158) #9
  %reset_level.i.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i.i, i32 0, i32 2
  %162 = ptrtoint ptr %reset_level.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %reset_level.i.i, align 4
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.556)
  switch i32 %163, label %if.then5.i.i20 [
    i32 0, label %do.end.i.i19.if.end7.i.i21_crit_edge
    i32 8, label %do.end.i.i19.if.end7.i.i21_crit_edge54
  ]

do.end.i.i19.if.end7.i.i21_crit_edge54:           ; preds = %do.end.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i21

do.end.i.i19.if.end7.i.i21_crit_edge:             ; preds = %do.end.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i21

if.then5.i.i20:                                   ; preds = %do.end.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %163, ptr noundef %hw_err_reset_req.i) #6
  br label %if.end7.i.i21

if.end7.i.i21:                                    ; preds = %if.then5.i.i20, %do.end.i.i19.if.end7.i.i21_crit_edge, %do.end.i.i19.if.end7.i.i21_crit_edge54, %while.body.i.i.if.end7.i.i21_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i.i, i32 1
  %msg.i.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i.i, i32 1, i32 1
  %165 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %msg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %166, null
  br i1 %tobool.not.i.i, label %if.end7.i.i21.if.end8.i24_crit_edge, label %if.end7.i.i21.while.body.i.i_crit_edge

if.end7.i.i21.while.body.i.i_crit_edge:           ; preds = %if.end7.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end7.i.i21.if.end8.i24_crit_edge:              ; preds = %if.end7.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i24

if.end8.i24:                                      ; preds = %if.end7.i.i21.if.end8.i24_crit_edge, %if.end.i15.if.end8.i24_crit_edge
  %167 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool12.not.i23 = icmp eq i32 %168, 0
  br i1 %tobool12.not.i23, label %if.end8.i24.if.end15.i29_crit_edge, label %if.then13.i26

if.end8.i24.if.end15.i29_crit_edge:               ; preds = %if.end8.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i29

if.then13.i26:                                    ; preds = %if.end8.i24
  %169 = call i32 @llvm.bswap.i32(i32 %168) #6
  %hw_err_reset_req14.i25 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 4
  br label %while.body.i91.i

while.body.i91.i:                                 ; preds = %if.end7.i98.i.while.body.i91.i_crit_edge, %if.then13.i26
  %170 = phi ptr [ %177, %if.end7.i98.i.while.body.i91.i_crit_edge ], [ @.str.390, %if.then13.i26 ]
  %err.addr.018.i88.i = phi ptr [ %incdec.ptr.i95.i, %if.end7.i98.i.while.body.i91.i_crit_edge ], [ @hclge_ssu_fifo_overflow_int, %if.then13.i26 ]
  %171 = ptrtoint ptr %err.addr.018.i88.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %err.addr.018.i88.i, align 4
  %and.i89.i = and i32 %172, %169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i)
  %tobool1.not.i90.i = icmp eq i32 %and.i89.i, 0
  br i1 %tobool1.not.i90.i, label %while.body.i91.i.if.end7.i98.i_crit_edge, label %do.end.i93.i

while.body.i91.i.if.end7.i98.i_crit_edge:         ; preds = %while.body.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i98.i

do.end.i93.i:                                     ; preds = %while.body.i91.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.370, ptr noundef nonnull %170, i32 noundef %169) #9
  %reset_level.i92.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i88.i, i32 0, i32 2
  %173 = ptrtoint ptr %reset_level.i92.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reset_level.i92.i, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.557)
  switch i32 %174, label %if.then5.i94.i [
    i32 0, label %do.end.i93.i.if.end7.i98.i_crit_edge
    i32 8, label %do.end.i93.i.if.end7.i98.i_crit_edge55
  ]

do.end.i93.i.if.end7.i98.i_crit_edge55:           ; preds = %do.end.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i98.i

do.end.i93.i.if.end7.i98.i_crit_edge:             ; preds = %do.end.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i98.i

if.then5.i94.i:                                   ; preds = %do.end.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %174, ptr noundef %hw_err_reset_req14.i25) #6
  br label %if.end7.i98.i

if.end7.i98.i:                                    ; preds = %if.then5.i94.i, %do.end.i93.i.if.end7.i98.i_crit_edge, %do.end.i93.i.if.end7.i98.i_crit_edge55, %while.body.i91.i.if.end7.i98.i_crit_edge
  %incdec.ptr.i95.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i88.i, i32 1
  %msg.i96.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i88.i, i32 1, i32 1
  %176 = ptrtoint ptr %msg.i96.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %msg.i96.i, align 4
  %tobool.not.i97.i = icmp eq ptr %177, null
  br i1 %tobool.not.i97.i, label %if.end7.i98.i.if.end15.i29_crit_edge, label %if.end7.i98.i.while.body.i91.i_crit_edge

if.end7.i98.i.while.body.i91.i_crit_edge:         ; preds = %if.end7.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i91.i

if.end7.i98.i.if.end15.i29_crit_edge:             ; preds = %if.end7.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i29

if.end15.i29:                                     ; preds = %if.end7.i98.i.if.end15.i29_crit_edge, %if.end8.i24.if.end15.i29_crit_edge
  %178 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx18.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool19.not.i28 = icmp eq i32 %179, 0
  br i1 %tobool19.not.i28, label %if.end15.i29.if.end22.i_crit_edge, label %if.then20.i

if.end15.i29.if.end22.i_crit_edge:                ; preds = %if.end15.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end15.i29
  %180 = call i32 @llvm.bswap.i32(i32 %179) #6
  %hw_err_reset_req21.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 4
  %and.i101.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101.i)
  %tobool1.not.i102.i = icmp eq i32 %and.i101.i, 0
  br i1 %tobool1.not.i102.i, label %if.then20.i.if.end7.i110.i_crit_edge, label %if.then5.i106.i

if.then20.i.if.end7.i110.i_crit_edge:             ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i110.i

if.then5.i106.i:                                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.414, i32 noundef %180) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req21.i) #6
  br label %if.end7.i110.i

if.end7.i110.i:                                   ; preds = %if.then5.i106.i, %if.then20.i.if.end7.i110.i_crit_edge
  %and.i101.1.i = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101.1.i)
  %tobool1.not.i102.1.i = icmp eq i32 %and.i101.1.i, 0
  br i1 %tobool1.not.i102.1.i, label %if.end7.i110.i.if.end7.i110.1.i_crit_edge, label %if.then5.i106.1.i

if.end7.i110.i.if.end7.i110.1.i_crit_edge:        ; preds = %if.end7.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i110.1.i

if.then5.i106.1.i:                                ; preds = %if.end7.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.415, i32 noundef %180) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req21.i) #6
  br label %if.end7.i110.1.i

if.end7.i110.1.i:                                 ; preds = %if.then5.i106.1.i, %if.end7.i110.i.if.end7.i110.1.i_crit_edge
  %and.i101.2.i = and i32 %180, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101.2.i)
  %tobool1.not.i102.2.i = icmp eq i32 %and.i101.2.i, 0
  br i1 %tobool1.not.i102.2.i, label %if.end7.i110.1.i.if.end7.i110.2.i_crit_edge, label %if.then5.i106.2.i

if.end7.i110.1.i.if.end7.i110.2.i_crit_edge:      ; preds = %if.end7.i110.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i110.2.i

if.then5.i106.2.i:                                ; preds = %if.end7.i110.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.416, i32 noundef %180) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req21.i) #6
  br label %if.end7.i110.2.i

if.end7.i110.2.i:                                 ; preds = %if.then5.i106.2.i, %if.end7.i110.1.i.if.end7.i110.2.i_crit_edge
  %and.i101.3.i = and i32 %180, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101.3.i)
  %tobool1.not.i102.3.i = icmp eq i32 %and.i101.3.i, 0
  br i1 %tobool1.not.i102.3.i, label %if.end7.i110.2.i.if.end22.i_crit_edge, label %if.then5.i106.3.i

if.end7.i110.2.i.if.end22.i_crit_edge:            ; preds = %if.end7.i110.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then5.i106.3.i:                                ; preds = %if.end7.i110.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.417, i32 noundef %180) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req21.i) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then5.i106.3.i, %if.end7.i110.2.i.if.end22.i_crit_edge, %if.end15.i29.if.end22.i_crit_edge
  %arrayidx23.i = getelementptr %struct.hclge_desc, ptr %call8.i.i, i32 1
  %181 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx23.i, align 32
  %183 = lshr i32 %182, 24
  %and.i = and i32 %183, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then25.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  %hw_err_reset_req26.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 4
  %184 = and i32 %182, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool1.not.i114.i = icmp eq i32 %184, 0
  br i1 %tobool1.not.i114.i, label %if.then25.i.if.end7.i122.i_crit_edge, label %if.then5.i118.i

if.then25.i.if.end7.i122.i_crit_edge:             ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122.i

if.then5.i118.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.418, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end7.i122.i

if.end7.i122.i:                                   ; preds = %if.then5.i118.i, %if.then25.i.if.end7.i122.i_crit_edge
  %185 = and i32 %182, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool1.not.i114.1.i = icmp eq i32 %185, 0
  br i1 %tobool1.not.i114.1.i, label %if.end7.i122.i.if.end7.i122.1.i_crit_edge, label %if.then5.i118.1.i

if.end7.i122.i.if.end7.i122.1.i_crit_edge:        ; preds = %if.end7.i122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122.1.i

if.then5.i118.1.i:                                ; preds = %if.end7.i122.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.419, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end7.i122.1.i

if.end7.i122.1.i:                                 ; preds = %if.then5.i118.1.i, %if.end7.i122.i.if.end7.i122.1.i_crit_edge
  %186 = and i32 %182, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool1.not.i114.2.i = icmp eq i32 %186, 0
  br i1 %tobool1.not.i114.2.i, label %if.end7.i122.1.i.if.end7.i122.2.i_crit_edge, label %if.then5.i118.2.i

if.end7.i122.1.i.if.end7.i122.2.i_crit_edge:      ; preds = %if.end7.i122.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122.2.i

if.then5.i118.2.i:                                ; preds = %if.end7.i122.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.420, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end7.i122.2.i

if.end7.i122.2.i:                                 ; preds = %if.then5.i118.2.i, %if.end7.i122.1.i.if.end7.i122.2.i_crit_edge
  %187 = and i32 %182, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool1.not.i114.3.i = icmp eq i32 %187, 0
  br i1 %tobool1.not.i114.3.i, label %if.end7.i122.2.i.if.end7.i122.3.i_crit_edge, label %if.then5.i118.3.i

if.end7.i122.2.i.if.end7.i122.3.i_crit_edge:      ; preds = %if.end7.i122.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122.3.i

if.then5.i118.3.i:                                ; preds = %if.end7.i122.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.421, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end7.i122.3.i

if.end7.i122.3.i:                                 ; preds = %if.then5.i118.3.i, %if.end7.i122.2.i.if.end7.i122.3.i_crit_edge
  %188 = and i32 %182, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool1.not.i114.4.i = icmp eq i32 %188, 0
  br i1 %tobool1.not.i114.4.i, label %if.end7.i122.3.i.if.end7.i122.4.i_crit_edge, label %if.then5.i118.4.i

if.end7.i122.3.i.if.end7.i122.4.i_crit_edge:      ; preds = %if.end7.i122.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i122.4.i

if.then5.i118.4.i:                                ; preds = %if.end7.i122.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.422, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end7.i122.4.i

if.end7.i122.4.i:                                 ; preds = %if.then5.i118.4.i, %if.end7.i122.3.i.if.end7.i122.4.i_crit_edge
  %189 = and i32 %182, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool1.not.i114.5.i = icmp eq i32 %189, 0
  br i1 %tobool1.not.i114.5.i, label %if.end7.i122.4.i.if.end27.i_crit_edge, label %if.then5.i118.5.i

if.end7.i122.4.i.if.end27.i_crit_edge:            ; preds = %if.end7.i122.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then5.i118.5.i:                                ; preds = %if.end7.i122.4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.423, i32 noundef %and.i) #9
  call void @_set_bit(i32 noundef 6, ptr noundef %hw_err_reset_req26.i) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then5.i118.5.i, %if.end7.i122.4.i.if.end27.i_crit_edge, %if.end22.i.if.end27.i_crit_edge
  %190 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx59.i, align 32
  %192 = lshr i32 %191, 24
  %and29.i = and i32 %192, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.end7.i134.2.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.end7.i134.2.i:                                 ; preds = %if.end27.i
  %hw_err_reset_req32.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %153, i32 0, i32 4
  %193 = and i32 %191, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool1.not.i126.3.i = icmp eq i32 %193, 0
  br i1 %tobool1.not.i126.3.i, label %if.end7.i134.2.i.if.end7.i134.3.i_crit_edge, label %if.then5.i130.3.i

if.end7.i134.2.i.if.end7.i134.3.i_crit_edge:      ; preds = %if.end7.i134.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i134.3.i

if.then5.i130.3.i:                                ; preds = %if.end7.i134.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.427, i32 noundef %and29.i) #9
  call void @_set_bit(i32 noundef 5, ptr noundef %hw_err_reset_req32.i) #6
  br label %if.end7.i134.3.i

if.end7.i134.3.i:                                 ; preds = %if.then5.i130.3.i, %if.end7.i134.2.i.if.end7.i134.3.i_crit_edge
  %194 = and i32 %191, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool1.not.i126.4.i = icmp eq i32 %194, 0
  br i1 %tobool1.not.i126.4.i, label %if.end7.i134.3.i.if.end7.i134.5.i_crit_edge, label %if.then5.i130.4.i

if.end7.i134.3.i.if.end7.i134.5.i_crit_edge:      ; preds = %if.end7.i134.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i134.5.i

if.then5.i130.4.i:                                ; preds = %if.end7.i134.3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.428, i32 noundef %and29.i) #9
  call void @_set_bit(i32 noundef 5, ptr noundef %hw_err_reset_req32.i) #6
  br label %if.end7.i134.5.i

if.end7.i134.5.i:                                 ; preds = %if.then5.i130.4.i, %if.end7.i134.3.i.if.end7.i134.5.i_crit_edge
  call void @hclge_report_hw_error(ptr noundef %hdev, i32 noundef 0) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end7.i134.5.i, %if.end27.i.if.end33.i_crit_edge
  call void @hclge_comm_cmd_reuse_desc(ptr noundef nonnull %call8.i.i, i1 noundef zeroext false) #6
  %call37.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %call8.i.i, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end33.i.hclge_handle_pf_ras_error.exit_crit_edge, label %do.end42.i

if.end33.i.hclge_handle_pf_ras_error.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_handle_pf_ras_error.exit

do.end42.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i8, ptr noundef nonnull @.str.375, i32 noundef %call37.i) #9
  br label %hclge_handle_pf_ras_error.exit

hclge_handle_pf_ras_error.exit:                   ; preds = %do.end42.i, %if.end33.i.hclge_handle_pf_ras_error.exit_crit_edge, %do.end.i12
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hclge_handle_pf_ras_error.exit, %if.then7, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hclge_query_bd_num.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_handle_hw_msix_error(ptr noundef %hdev, ptr noundef %reset_requests) local_unnamed_addr #0 align 64 {
entry:
  %desc.i.i.i.i = alloca %struct.hclge_desc, align 4
  %desc_bd.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_bd.i.i) #6
  %5 = call ptr @memset(ptr %desc_bd.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc_bd.i.i, i32 noundef 5395, i1 noundef zeroext true) #6
  %hw.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc_bd.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.475, i32 noundef %call.i.i) #9
  br label %hclge_query_bd_num.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i.i, i32 0, i32 4, i32 1
  %7 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp.i.i = icmp ult i32 %10, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp7.i.i = icmp ult i32 %13, 4
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp7.i.i
  br i1 %or.cond.i.i, label %do.end11.i.i, label %if.end.i

do.end11.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.478, i32 noundef %10, i32 noundef %13) #9
  br label %hclge_query_bd_num.exit.thread.i

hclge_query_bd_num.exit.thread.i:                 ; preds = %do.end11.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end11.i.i ], [ %call.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i.i) #6
  %14 = call i32 @llvm.umax.i32(i32 %10, i32 %13) #6
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 32) #6
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end.i.cleanup_crit_edge, label %if.end7.i.i.i, !prof !1109

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end.i
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #10
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end4.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end7.i.i.i
  %18 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev, align 8
  %dev1.i33.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i.i, i32 noundef 5396, i1 noundef zeroext true) #6
  %call.i35.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool.not.i.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i36.i

do.end.i36.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i33.i, ptr noundef nonnull @.str.430, i32 noundef %call.i35.i) #9
  br label %msi_error.i

if.end.i.i:                                       ; preds = %if.end4.i
  %arrayidx3.i.i = getelementptr %struct.hclge_desc, ptr %call8.i.i.i, i32 1
  %20 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %22 = call i32 @llvm.bswap.i32(i32 %21) #6
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end7.i.i38.i.while.body.i.i.i_crit_edge, %if.then5.i.i
  %23 = phi ptr [ %30, %if.end7.i.i38.i.while.body.i.i.i_crit_edge ], [ @.str.439, %if.then5.i.i ]
  %err.addr.018.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end7.i.i38.i.while.body.i.i.i_crit_edge ], [ @hclge_mac_afifo_tnl_int, %if.then5.i.i ]
  %24 = ptrtoint ptr %err.addr.018.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err.addr.018.i.i.i, align 4
  %and.i.i.i = and i32 %25, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.if.end7.i.i38.i_crit_edge, label %do.end.i.i.i

while.body.i.i.i.if.end7.i.i38.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i38.i

do.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i33.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.432, ptr noundef nonnull %23, i32 noundef %22) #9
  %reset_level.i.i.i = getelementptr inbounds %struct.hclge_hw_error, ptr %err.addr.018.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %reset_level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset_level.i.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.558)
  switch i32 %27, label %if.then5.i.i37.i [
    i32 0, label %do.end.i.i.i.if.end7.i.i38.i_crit_edge
    i32 8, label %do.end.i.i.i.if.end7.i.i38.i_crit_edge5
  ]

do.end.i.i.i.if.end7.i.i38.i_crit_edge5:          ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i38.i

do.end.i.i.i.if.end7.i.i38.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i38.i

if.then5.i.i37.i:                                 ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %27, ptr noundef %reset_requests) #6
  br label %if.end7.i.i38.i

if.end7.i.i38.i:                                  ; preds = %if.then5.i.i37.i, %do.end.i.i.i.if.end7.i.i38.i_crit_edge, %do.end.i.i.i.if.end7.i.i38.i_crit_edge5, %while.body.i.i.i.if.end7.i.i38.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i.i.i, i32 1
  %msg.i.i.i = getelementptr %struct.hclge_hw_error, ptr %err.addr.018.i.i.i, i32 1, i32 1
  %29 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msg.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end7.i.i38.i.if.end6.i.i_crit_edge, label %if.end7.i.i38.i.while.body.i.i.i_crit_edge

if.end7.i.i38.i.while.body.i.i.i_crit_edge:       ; preds = %if.end7.i.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

if.end7.i.i38.i.if.end6.i.i_crit_edge:            ; preds = %if.end7.i.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end7.i.i38.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %add.ptr.i.i = getelementptr %struct.hclge_desc, ptr %call8.i.i.i, i32 5, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i, align 8
  %33 = shl i32 %32, 24
  %and.i.i = and i32 %33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end13.i.i_crit_edge, label %do.end12.i.i

if.end6.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

do.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i33.i, ptr noundef nonnull @.str.434, i32 noundef %and.i.i) #9
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.end12.i.i, %if.end6.i.i.if.end13.i.i_crit_edge
  %34 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 5141, ptr %call8.i.i.i, align 128
  %flag.i.i.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4352, ptr %flag.i.i.i, align 2
  %call.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end8.i, label %do.end19.i.i

do.end19.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i33.i, ptr noundef nonnull @.str.437, i32 noundef %call.i.i.i) #9
  br label %msi_error.i

if.end8.i:                                        ; preds = %if.end13.i.i
  %mul.i = shl i32 %14, 5
  %36 = call ptr @memset(ptr %call8.i.i.i, i32 0, i32 %mul.i)
  %37 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdev, align 8
  %dev1.i40.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call8.i.i.i, i32 noundef 5397, i1 noundef zeroext true) #6
  %call.i42.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool.not.i43.i, label %if.end.i45.i, label %do.end.i44.i

do.end.i44.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.453, i32 noundef %call.i42.i) #9
  br label %msi_error.i

if.end.i45.i:                                     ; preds = %if.end8.i
  %data.i.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.i.i, align 8
  %41 = and i32 %40, -8716288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool5.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool5.not.i.i, label %if.end.i45.i.if.end7.i.i_crit_edge, label %if.then6.i.i

if.end.i45.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i45.i
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  %and.i.i46.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46.i)
  %tobool1.not.i.i47.i = icmp eq i32 %and.i.i46.i, 0
  br i1 %tobool1.not.i.i47.i, label %if.then6.i.i.if.end7.i.i49.i_crit_edge, label %if.then5.i.i48.i

if.then6.i.i.if.end7.i.i49.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i49.i

if.then5.i.i48.i:                                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.369, ptr noundef nonnull @.str.377, i32 noundef %42) #9
  call void @_set_bit(i32 noundef 5, ptr noundef %reset_requests) #6
  br label %if.end7.i.i49.i

if.end7.i.i49.i:                                  ; preds = %if.then5.i.i48.i, %if.then6.i.i.if.end7.i.i49.i_crit_edge
  %and.i.1.i.i = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i.i)
  %tobool1.not.i.1.i.i = icmp eq i32 %and.i.1.i.i, 0
  br i1 %tobool1.not.i.1.i.i, label %if.end7.i.i49.i.if.end7.i.i_crit_edge, label %do.end.i.1.i.i

if.end7.i.i49.i.if.end7.i.i_crit_edge:            ; preds = %if.end7.i.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

do.end.i.1.i.i:                                   ; preds = %if.end7.i.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.369, ptr noundef nonnull @.str.460, i32 noundef %42) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end.i.1.i.i, %if.end7.i.i49.i.if.end7.i.i_crit_edge, %if.end.i45.i.if.end7.i.i_crit_edge
  %arrayidx8.i.i = getelementptr %struct.hclge_desc, ptr %call8.i.i.i, i32 2
  %43 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx8.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool9.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end7.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  %and.i61.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i.i)
  %tobool1.not.i62.i.i = icmp eq i32 %and.i61.i.i, 0
  br i1 %tobool1.not.i62.i.i, label %if.then10.i.i.if.end7.i70.i.i_crit_edge, label %do.end.i65.i.i

if.then10.i.i.if.end7.i70.i.i_crit_edge:          ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i70.i.i

do.end.i65.i.i:                                   ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.462, i32 noundef %45) #9
  br label %if.end7.i70.i.i

if.end7.i70.i.i:                                  ; preds = %do.end.i65.i.i, %if.then10.i.i.if.end7.i70.i.i_crit_edge
  %and.i61.1.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.1.i.i)
  %tobool1.not.i62.1.i.i = icmp eq i32 %and.i61.1.i.i, 0
  br i1 %tobool1.not.i62.1.i.i, label %if.end7.i70.i.i.if.end11.i.i_crit_edge, label %do.end.i65.1.i.i

if.end7.i70.i.i.if.end11.i.i_crit_edge:           ; preds = %if.end7.i70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

do.end.i65.1.i.i:                                 ; preds = %if.end7.i70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.463, i32 noundef %45) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end.i65.1.i.i, %if.end7.i70.i.i.if.end11.i.i_crit_edge, %if.end7.i.i.if.end11.i.i_crit_edge
  %arrayidx12.i.i = getelementptr %struct.hclge_desc, ptr %call8.i.i.i, i32 3
  %46 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12.i.i, align 32
  %48 = lshr i32 %47, 24
  %and13.i.i = and i32 %48, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end16.i.i_crit_edge, label %if.end7.i82.i.i

if.end11.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.end7.i82.i.i:                                  ; preds = %if.end11.i.i
  %49 = and i32 %47, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.not.i74.1.i.i = icmp eq i32 %49, 0
  br i1 %tobool1.not.i74.1.i.i, label %if.end7.i82.i.i.if.end7.i82.1.i.i_crit_edge, label %do.end.i77.1.i.i

if.end7.i82.i.i.if.end7.i82.1.i.i_crit_edge:      ; preds = %if.end7.i82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i82.1.i.i

do.end.i77.1.i.i:                                 ; preds = %if.end7.i82.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.456, ptr noundef nonnull @.str.425, i32 noundef %and13.i.i) #9
  br label %if.end7.i82.1.i.i

if.end7.i82.1.i.i:                                ; preds = %do.end.i77.1.i.i, %if.end7.i82.i.i.if.end7.i82.1.i.i_crit_edge
  %50 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i74.2.i.i = icmp eq i32 %50, 0
  br i1 %tobool1.not.i74.2.i.i, label %if.end7.i82.1.i.i.if.end7.i82.4.i.i_crit_edge, label %do.end.i77.2.i.i

if.end7.i82.1.i.i.if.end7.i82.4.i.i_crit_edge:    ; preds = %if.end7.i82.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i82.4.i.i

do.end.i77.2.i.i:                                 ; preds = %if.end7.i82.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.456, ptr noundef nonnull @.str.426, i32 noundef %and13.i.i) #9
  br label %if.end7.i82.4.i.i

if.end7.i82.4.i.i:                                ; preds = %do.end.i77.2.i.i, %if.end7.i82.1.i.i.if.end7.i82.4.i.i_crit_edge
  %51 = and i32 %47, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool1.not.i74.5.i.i = icmp eq i32 %51, 0
  br i1 %tobool1.not.i74.5.i.i, label %if.end7.i82.4.i.i.if.end16.i.i_crit_edge, label %do.end.i77.5.i.i

if.end7.i82.4.i.i.if.end16.i.i_crit_edge:         ; preds = %if.end7.i82.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

do.end.i77.5.i.i:                                 ; preds = %if.end7.i82.4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.456, ptr noundef nonnull @.str.429, i32 noundef %and13.i.i) #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end.i77.5.i.i, %if.end7.i82.4.i.i.if.end16.i.i_crit_edge, %if.end11.i.i.if.end16.i.i_crit_edge
  %52 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx12.i.i, align 32
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool18.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end20.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %55 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hdev, align 8
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i.i) #6
  %57 = call ptr @memset(ptr %desc.i.i.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i.i, i32 noundef 2890, i1 noundef zeroext true) #6
  %call.i.i.i.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.end4.i.i.i, label %do.end.i84.i.i

do.end.i84.i.i:                                   ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.464, i32 noundef %call.i.i.i.i) #9
  br label %if.end20.i.i

do.end4.i.i.i:                                    ; preds = %if.then19.i.i
  %58 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i.i, i32 0, i32 4
  %over_8bd_no_fe_vf_id.i.i.i.i = getelementptr inbounds %struct.hclge_query_ppu_pf_other_int_dfx_cmd, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %over_8bd_no_fe_vf_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %over_8bd_no_fe_vf_id.i.i.i.i, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %60) #6
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %58, align 4
  %64 = call i16 @llvm.bswap.i16(i16 %63) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i.i) #6
  %conv.i.i.i = zext i16 %61 to i32
  %conv5.i.i.i = zext i16 %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.467, i32 noundef %conv.i.i.i, i32 noundef %conv5.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool6.not.i.i.i = icmp eq i16 %60, 0
  br i1 %tobool6.not.i.i.i, label %if.else.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %do.end4.i.i.i
  %num_alloc_vport.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 24
  %65 = ptrtoint ptr %num_alloc_vport.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_alloc_vport.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %66)
  %cmp.not.i.i.i = icmp ult i16 %61, %66
  br i1 %cmp.not.i.i.i, label %if.end16.i.i.i, label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.470, i32 noundef %conv.i.i.i) #9
  br label %if.end20.i.i

if.end16.i.i.i:                                   ; preds = %if.then7.i.i.i
  %67 = ptrtoint ptr %reset_requests to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reset_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp17.not.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp17.not.i.i.i, label %if.end20.i.i.i, label %if.end16.i.i.i.if.end20.i.i_crit_edge

if.end16.i.i.i.if.end20.i.i_crit_edge:            ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.end20.i.i.i:                                   ; preds = %if.end16.i.i.i
  %vport.i.i.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 52
  %69 = ptrtoint ptr %vport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vport.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.hclge_vport, ptr %70, i32 %conv.i.i.i
  %call21.i.i.i = call i32 @hclge_inform_reset_assert_to_vf(ptr noundef %arrayidx.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %call21.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %if.end20.i.i.i.if.end20.i.i_crit_edge, label %do.end26.i.i.i

if.end20.i.i.i.if.end20.i.i_crit_edge:            ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

do.end26.i.i.i:                                   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.473, i32 noundef %conv.i.i.i, i32 noundef %call21.i.i.i) #9
  br label %if.end20.i.i

if.else.i.i.i:                                    ; preds = %do.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 5, ptr noundef %reset_requests) #6
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i.i, %do.end26.i.i.i, %if.end20.i.i.i.if.end20.i.i_crit_edge, %if.end16.i.i.i.if.end20.i.i_crit_edge, %do.end14.i.i.i, %do.end.i84.i.i, %if.end16.i.i.if.end20.i.i_crit_edge
  %71 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 5397, ptr %call8.i.i.i, align 128
  %72 = ptrtoint ptr %flag.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 4352, ptr %flag.i.i.i, align 2
  %call.i.i51.i = call i32 @hclge_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %tobool22.not.i.i = icmp eq i32 %call.i.i51.i, 0
  br i1 %tobool22.not.i.i, label %if.end12.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i40.i, ptr noundef nonnull @.str.458, i32 noundef %call.i.i51.i) #9
  br label %msi_error.i

if.end12.i:                                       ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 @hclge_handle_mac_tnl(ptr noundef %hdev) #6
  br label %msi_error.i

msi_error.i:                                      ; preds = %if.end12.i, %do.end26.i.i, %do.end.i44.i, %do.end19.i.i, %do.end.i36.i
  %ret.0.i = phi i32 [ %call13.i, %if.end12.i ], [ %call.i.i.i, %do.end19.i.i ], [ %call.i35.i, %do.end.i36.i ], [ %call.i.i51.i, %do.end26.i.i ], [ %call.i42.i, %do.end.i44.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %msi_error.i, %if.end7.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %hclge_query_bd_num.exit.thread.i, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ %ret.0.i, %msi_error.i ], [ %retval.0.i.ph.i, %hclge_query_bd_num.exit.thread.i ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_handle_mac_tnl(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 784, i1 noundef zeroext true) #6
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call.i = call i64 @sched_clock() #6
  %mac_tnl_log = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83
  %6 = ptrtoint ptr %mac_tnl_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_tnl_log, align 8
  %out = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub = sub i32 %7, %9
  %mask = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp.not = icmp ugt i32 %sub, %11
  br i1 %cmp.not, label %if.then3.if.end24_crit_edge, label %if.then12

if.then3.if.end24_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call i32 @llvm.bswap.i32(i32 %5)
  %buf = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 83, i32 1
  %and = and i32 %11, %7
  %arrayidx15 = getelementptr %struct.hclge_mac_tnl_stats, ptr %buf, i32 %and
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %arrayidx15, align 8
  %__val.sroa.5.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx15, i32 8
  %14 = ptrtoint ptr %__val.sroa.5.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %__val.sroa.5.0.arrayidx15.sroa_idx, align 8
  %__val.sroa.6.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx15, i32 12
  %15 = ptrtoint ptr %__val.sroa.6.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %__val.sroa.6.0.arrayidx15.sroa_idx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !1110
  %16 = ptrtoint ptr %mac_tnl_log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_tnl_log, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %mac_tnl_log, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.then3.if.end24_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #6
  %18 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %19 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 786, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -16580608, ptr %18, align 4
  %call.i60 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool27.not = icmp eq i32 %call.i60, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %do.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call.i60) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i60, %do.end31 ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_handle_all_hns_hw_errors(ptr nocapture noundef %ae_dev) local_unnamed_addr #0 align 64 {
entry:
  %desc_bd.i = alloca %struct.hclge_desc, align 4
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %hw_err_reset_req = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 4
  %4 = ptrtoint ptr %hw_err_reset_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hw_err_reset_req, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %7 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 133888
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %11 = call ptr @memset(ptr %desc_bd.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc_bd.i, i32 noundef 5395, i1 noundef zeroext true) #6
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc_bd.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.475, i32 noundef %call.i) #9
  br label %hclge_query_bd_num.exit.thread

if.end4.i:                                        ; preds = %entry
  %12 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i, i32 0, i32 4, i32 1
  %13 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp.i = icmp ult i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp7.i = icmp ult i32 %19, 4
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %do.end11.i, label %if.end

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.478, i32 noundef %16, i32 noundef %19) #9
  br label %hclge_query_bd_num.exit.thread

hclge_query_bd_num.exit.thread:                   ; preds = %do.end11.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %20 = call i32 @llvm.umax.i32(i32 %16, i32 %19)
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 32) #6
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !1109

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  %data = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 4
  %mul = shl i32 %16, 5
  %sub = add i32 %mul, -8
  %24 = call ptr @memset(ptr %data, i32 255, i32 %sub)
  %25 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5141, ptr %call8.i.i, align 128
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %call8.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4352, ptr %flag.i, align 2
  %call.i60 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %call8.i.i, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool10.not = icmp eq i32 %call.i60, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i60) #9
  br label %msi_error

if.end12:                                         ; preds = %if.end7
  %mul16 = shl i32 %19, 5
  %sub17 = add i32 %mul16, -8
  %27 = call ptr @memset(ptr %data, i32 255, i32 %sub17)
  %28 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 5397, ptr %call8.i.i, align 128
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4352, ptr %flag.i, align 2
  %call.i63 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %call8.i.i, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool19.not = icmp eq i32 %call.i63, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call.i63) #9
  br label %msi_error

if.end24:                                         ; preds = %if.end12
  %30 = and i32 %8, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool25.not, label %if.end24.msi_error_crit_edge, label %do.end29

if.end24.msi_error_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %msi_error

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  call fastcc void @hclge_handle_all_ras_errors(ptr noundef %1)
  br label %msi_error

msi_error:                                        ; preds = %do.end29, %if.end24.msi_error_crit_edge, %do.end23, %do.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %msi_error, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hclge_query_bd_num.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hclge_find_error_source(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  %base.addr.i9 = alloca ptr, align 4
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %2 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 133120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %4 = and i32 %3, 16711936
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i9)
  %7 = ptrtoint ptr %base.addr.i9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %base.addr.i9, align 4
  %base.addr.i9.0.base.addr.i9.0.base.addr.0.base.addr.0.base.addr.0..i10 = load volatile ptr, ptr %base.addr.i9, align 4
  %add.ptr.i11 = getelementptr i8, ptr %base.addr.i9.0.base.addr.i9.0.base.addr.0.base.addr.0.base.addr.0..i10, i32 133888
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %9 = and i32 %8, 16711683
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7 = icmp ne i32 %9, 0
  %10 = select i1 %tobool.not, i1 true, i1 %tobool7
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_handle_occurred_error(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  %base.addr.i9.i = alloca ptr, align 4
  %base.addr.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %6 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i, i32 133120
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %8 = and i32 %7, 16711936
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i9.i)
  %11 = ptrtoint ptr %base.addr.i9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %base.addr.i9.i, align 4
  %base.addr.i9.i.0.base.addr.i9.i.0.base.addr.i9.0.base.addr.i9.0.base.addr.0.base.addr.0.base.addr.0..i10.i = load volatile ptr, ptr %base.addr.i9.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %base.addr.i9.i.0.base.addr.i9.i.0.base.addr.i9.0.base.addr.i9.0.base.addr.0.base.addr.0.base.addr.0..i10.i, i32 133888
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #6, !srcloc !1105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp ne i32 %8, 0
  %13 = and i32 %12, 16711683
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.i = icmp ne i32 %13, 0
  %14 = select i1 %tobool.not.i, i1 true, i1 %tobool7.i
  br i1 %14, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @hclge_handle_error_info_log(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_handle_error_info_log(ptr noundef %ae_dev) local_unnamed_addr #0 align 64 {
entry:
  %desc_bd.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %4 = call ptr @memset(ptr %desc_bd.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc_bd.i, i32 noundef 5398, i1 noundef zeroext true) #6
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc_bd.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.480, i32 noundef %call.i) #9
  br label %hclge_query_all_err_bd_num.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc_bd.i, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.483) #9
  br label %hclge_query_all_err_bd_num.exit.thread

hclge_query_all_err_bd_num.exit.thread:           ; preds = %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end6.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc_bd.i) #6
  %mul = shl i32 %8, 5
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %call9.i.i, i32 noundef 5399, i1 noundef zeroext true) #6
  %call.i43 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %call9.i.i, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end8, label %hclge_query_all_err_info.exit

hclge_query_all_err_info.exit:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev1.i45 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i45, ptr noundef nonnull @.str.485, i32 noundef %call.i43) #9
  br label %err_desc

if.end8:                                          ; preds = %if.end4
  %sub = add i32 %mul, -8
  %div41 = lshr exact i32 %sub, 2
  %call9.i.i72 = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #10
  %tobool11.not118 = icmp eq ptr %call9.i.i72, null
  br i1 %tobool11.not118, label %if.end8.err_desc_crit_edge, label %if.end8.i.i101

if.end8.err_desc_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_desc

if.end8.i.i101:                                   ; preds = %if.end8
  %call9.i.i100 = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #10
  %tobool15.not = icmp eq ptr %call9.i.i100, null
  br i1 %tobool15.not, label %if.end8.i.i101.err_buf_alloc_crit_edge, label %if.end17

if.end8.i.i101.err_buf_alloc_crit_edge:           ; preds = %if.end8.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_buf_alloc

if.end17:                                         ; preds = %if.end8.i.i101
  %data = getelementptr inbounds %struct.hclge_desc, ptr %call9.i.i, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %call9.i.i72, ptr %data, i32 %sub)
  %umax = call i32 @llvm.umax.i32(i32 %div41, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17
  %i.0126 = phi i32 [ 0, %if.end17 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %call9.i.i72, i32 %i.0126
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx20 = getelementptr i32, ptr %call9.i.i100, i32 %i.0126
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx20, align 4
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev1.i104 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %call9.i.i100 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call9.i.i100, align 128
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.559)
  switch i8 %21, label %if.then.i [
    i8 0, label %for.end.if.end.i105_crit_edge
    i8 8, label %for.end.if.end.i105_crit_edge148
  ]

for.end.if.end.i105_crit_edge148:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i105

for.end.if.end.i105_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i105

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %21 to i32
  %hw_err_reset_req.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 4
  call void @_set_bit(i32 noundef %conv.i, ptr noundef %hw_err_reset_req.i) #6
  br label %if.end.i105

if.end.i105:                                      ; preds = %if.then.i, %for.end.if.end.i105_crit_edge, %for.end.if.end.i105_crit_edge148
  %mod_num7.i = getelementptr inbounds %struct.hclge_sum_err_info, ptr %call9.i.i100, i32 0, i32 1
  %23 = ptrtoint ptr %mod_num7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mod_num7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.not67.i = icmp eq i8 %24, 0
  br i1 %tobool8.not67.i, label %if.end.i105.hclge_handle_error_module_log.exit_crit_edge, label %if.end.i105.while.body.i_crit_edge

if.end.i105.while.body.i_crit_edge:               ; preds = %if.end.i105
  br label %while.body.i

if.end.i105.hclge_handle_error_module_log.exit_crit_edge: ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_handle_error_module_log.exit

while.cond.loopexit.i:                            ; preds = %hclge_handle_error_type_reg_log.exit.i.while.cond.loopexit.i_crit_edge, %if.end12.i.while.cond.loopexit.i_crit_edge
  %offset.1.lcssa.i = phi i32 [ %inc13.i, %if.end12.i.while.cond.loopexit.i_crit_edge ], [ %add.i, %hclge_handle_error_type_reg_log.exit.i.while.cond.loopexit.i_crit_edge ]
  %tobool8.not.i = icmp eq i8 %dec69.i, 0
  br i1 %tobool8.not.i, label %while.cond.loopexit.i.hclge_handle_error_module_log.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.loopexit.i.hclge_handle_error_module_log.exit_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_handle_error_module_log.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.end.i105.while.body.i_crit_edge
  %dec69.in.i = phi i8 [ %dec69.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %24, %if.end.i105.while.body.i_crit_edge ]
  %offset.068.i = phi i32 [ %offset.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ 1, %if.end.i105.while.body.i_crit_edge ]
  %dec69.i = add i8 %dec69.in.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.068.i, i32 %div41)
  %cmp9.not.i = icmp ult i32 %offset.068.i, %div41
  br i1 %cmp9.not.i, label %if.end12.i, label %do.end.i106

do.end.i106:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.487, i32 noundef %offset.068.i, i32 noundef %div41) #9
  br label %hclge_handle_error_module_log.exit

if.end12.i:                                       ; preds = %while.body.i
  %inc13.i = add nuw i32 %offset.068.i, 1
  %arrayidx14.i = getelementptr i32, ptr %call9.i.i100, i32 %offset.068.i
  %err_num15.i = getelementptr inbounds %struct.hclge_mod_err_info, ptr %arrayidx14.i, i32 0, i32 1
  %25 = ptrtoint ptr %err_num15.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %err_num15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1863.not.i = icmp eq i8 %26, 0
  br i1 %cmp1863.not.i, label %if.end12.i.while.cond.loopexit.i_crit_edge, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  br label %for.body.i

if.end12.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit.i

for.body.i:                                       ; preds = %hclge_handle_error_type_reg_log.exit.i.for.body.i_crit_edge, %if.end12.i.for.body.i_crit_edge
  %offset.165.i = phi i32 [ %add.i, %hclge_handle_error_type_reg_log.exit.i.for.body.i_crit_edge ], [ %inc13.i, %if.end12.i.for.body.i_crit_edge ]
  %i.064.i = phi i8 [ %inc30.i, %hclge_handle_error_type_reg_log.exit.i.for.body.i_crit_edge ], [ 0, %if.end12.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.165.i, i32 %div41)
  %cmp20.not.i = icmp ult i32 %offset.165.i, %div41
  br i1 %cmp20.not.i, label %if.end26.i, label %do.end25.i

do.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.490, i32 noundef %offset.165.i, i32 noundef %div41) #9
  br label %hclge_handle_error_module_log.exit

if.end26.i:                                       ; preds = %for.body.i
  %inc27.i = add nuw i32 %offset.165.i, 1
  %arrayidx28.i = getelementptr i32, ptr %call9.i.i100, i32 %offset.165.i
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx14.i, align 4
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx28.i, align 4
  %and.i.i = and i8 %30, 127
  %conv10.i.i = zext i8 %28 to i32
  %31 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.560)
  switch i8 %28, label %if.end26.i.for.end.i.i_crit_edge [
    i8 49, label %for.end.fold.split122.i.i
    i8 1, label %for.end.fold.split.i.i
    i8 2, label %for.end.fold.split99.i.i
    i8 3, label %for.end.fold.split100.i.i
    i8 4, label %for.end.fold.split101.i.i
    i8 5, label %for.end.fold.split102.i.i
    i8 6, label %for.end.fold.split103.i.i
    i8 7, label %for.end.fold.split104.i.i
    i8 8, label %for.end.fold.split105.i.i
    i8 9, label %for.end.fold.split106.i.i
    i8 10, label %for.end.fold.split107.i.i
    i8 11, label %for.end.fold.split108.i.i
    i8 12, label %for.end.fold.split109.i.i
    i8 13, label %for.end.fold.split110.i.i
    i8 14, label %for.end.fold.split111.i.i
    i8 15, label %for.end.fold.split112.i.i
    i8 40, label %for.end.fold.split113.i.i
    i8 41, label %for.end.fold.split114.i.i
    i8 42, label %for.end.fold.split115.i.i
    i8 43, label %for.end.fold.split116.i.i
    i8 44, label %for.end.fold.split117.i.i
    i8 45, label %for.end.fold.split118.i.i
    i8 46, label %for.end.fold.split119.i.i
    i8 47, label %for.end.fold.split120.i.i
    i8 48, label %for.end.fold.split121.i.i
  ]

if.end26.i.for.end.i.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split.i.i:                           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split99.i.i:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split100.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split101.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split102.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split103.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split104.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split105.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split106.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split107.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split108.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split109.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split110.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split111.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split112.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split113.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split114.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split115.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split116.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split117.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split118.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split119.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split120.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split121.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.fold.split122.i.i:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.fold.split122.i.i, %for.end.fold.split121.i.i, %for.end.fold.split120.i.i, %for.end.fold.split119.i.i, %for.end.fold.split118.i.i, %for.end.fold.split117.i.i, %for.end.fold.split116.i.i, %for.end.fold.split115.i.i, %for.end.fold.split114.i.i, %for.end.fold.split113.i.i, %for.end.fold.split112.i.i, %for.end.fold.split111.i.i, %for.end.fold.split110.i.i, %for.end.fold.split109.i.i, %for.end.fold.split108.i.i, %for.end.fold.split107.i.i, %for.end.fold.split106.i.i, %for.end.fold.split105.i.i, %for.end.fold.split104.i.i, %for.end.fold.split103.i.i, %for.end.fold.split102.i.i, %for.end.fold.split101.i.i, %for.end.fold.split100.i.i, %for.end.fold.split99.i.i, %for.end.fold.split.i.i, %if.end26.i.for.end.i.i_crit_edge
  %cmp31.not.i.i = phi i1 [ false, %for.end.fold.split.i.i ], [ false, %for.end.fold.split99.i.i ], [ false, %for.end.fold.split100.i.i ], [ false, %for.end.fold.split101.i.i ], [ false, %for.end.fold.split102.i.i ], [ false, %for.end.fold.split103.i.i ], [ false, %for.end.fold.split104.i.i ], [ false, %for.end.fold.split105.i.i ], [ false, %for.end.fold.split106.i.i ], [ false, %for.end.fold.split107.i.i ], [ false, %for.end.fold.split108.i.i ], [ false, %for.end.fold.split109.i.i ], [ false, %for.end.fold.split110.i.i ], [ false, %for.end.fold.split111.i.i ], [ false, %for.end.fold.split112.i.i ], [ false, %for.end.fold.split113.i.i ], [ false, %for.end.fold.split114.i.i ], [ false, %for.end.fold.split115.i.i ], [ false, %for.end.fold.split116.i.i ], [ false, %for.end.fold.split117.i.i ], [ false, %for.end.fold.split118.i.i ], [ false, %for.end.fold.split119.i.i ], [ false, %for.end.fold.split120.i.i ], [ false, %for.end.fold.split121.i.i ], [ false, %for.end.fold.split122.i.i ], [ true, %if.end26.i.for.end.i.i_crit_edge ]
  %index_module.0.i.i = phi i32 [ 1, %for.end.fold.split.i.i ], [ 2, %for.end.fold.split99.i.i ], [ 3, %for.end.fold.split100.i.i ], [ 4, %for.end.fold.split101.i.i ], [ 5, %for.end.fold.split102.i.i ], [ 6, %for.end.fold.split103.i.i ], [ 7, %for.end.fold.split104.i.i ], [ 8, %for.end.fold.split105.i.i ], [ 9, %for.end.fold.split106.i.i ], [ 10, %for.end.fold.split107.i.i ], [ 11, %for.end.fold.split108.i.i ], [ 12, %for.end.fold.split109.i.i ], [ 13, %for.end.fold.split110.i.i ], [ 14, %for.end.fold.split111.i.i ], [ 15, %for.end.fold.split112.i.i ], [ 16, %for.end.fold.split113.i.i ], [ 17, %for.end.fold.split114.i.i ], [ 18, %for.end.fold.split115.i.i ], [ 19, %for.end.fold.split116.i.i ], [ 20, %for.end.fold.split117.i.i ], [ 21, %for.end.fold.split118.i.i ], [ 22, %for.end.fold.split119.i.i ], [ 23, %for.end.fold.split120.i.i ], [ 24, %for.end.fold.split121.i.i ], [ 25, %for.end.fold.split122.i.i ], [ 0, %if.end26.i.for.end.i.i_crit_edge ]
  %conv19.i.i = zext i8 %and.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i.i)
  %cmp23.i.i = icmp eq i8 %and.i.i, 0
  br i1 %cmp23.i.i, label %for.end.i.i.do.end45.i.i_crit_edge, label %for.inc27.i.i

for.end.i.i.do.end45.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

for.inc27.i.i:                                    ; preds = %for.end.i.i
  %trunc.i.i = trunc i8 %30 to i7
  %32 = zext i7 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.561)
  switch i7 %trunc.i.i, label %for.inc27.i.i.do.end45.i.i_crit_edge [
    i7 1, label %for.inc27.i.i.for.end29.i.i_crit_edge
    i7 2, label %for.end29.fold.split.i.i
    i7 3, label %for.end29.fold.split123.i.i
    i7 4, label %for.end29.fold.split124.i.i
    i7 5, label %for.end29.fold.split125.i.i
    i7 6, label %for.end29.fold.split126.i.i
    i7 7, label %for.end29.fold.split127.i.i
    i7 8, label %for.end29.fold.split128.i.i
    i7 9, label %for.end29.fold.split129.i.i
    i7 10, label %for.end29.fold.split130.i.i
    i7 11, label %for.end29.fold.split131.i.i
    i7 12, label %for.end29.fold.split132.i.i
    i7 13, label %for.end29.fold.split133.i.i
    i7 14, label %for.end29.fold.split134.i.i
    i7 40, label %for.end29.fold.split135.i.i
    i7 41, label %for.end29.fold.split136.i.i
    i7 42, label %for.end29.fold.split137.i.i
  ]

for.inc27.i.i.for.end29.i.i_crit_edge:            ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.inc27.i.i.do.end45.i.i_crit_edge:             ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

for.end29.fold.split.i.i:                         ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split123.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split124.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split125.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split126.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split127.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split128.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split129.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split130.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split131.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split132.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split133.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split134.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split135.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split136.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.fold.split137.i.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29.i.i

for.end29.i.i:                                    ; preds = %for.end29.fold.split137.i.i, %for.end29.fold.split136.i.i, %for.end29.fold.split135.i.i, %for.end29.fold.split134.i.i, %for.end29.fold.split133.i.i, %for.end29.fold.split132.i.i, %for.end29.fold.split131.i.i, %for.end29.fold.split130.i.i, %for.end29.fold.split129.i.i, %for.end29.fold.split128.i.i, %for.end29.fold.split127.i.i, %for.end29.fold.split126.i.i, %for.end29.fold.split125.i.i, %for.end29.fold.split124.i.i, %for.end29.fold.split123.i.i, %for.end29.fold.split.i.i, %for.inc27.i.i.for.end29.i.i_crit_edge
  %i.193.lcssa.wide.i.i = phi i32 [ 1, %for.inc27.i.i.for.end29.i.i_crit_edge ], [ 2, %for.end29.fold.split.i.i ], [ 3, %for.end29.fold.split123.i.i ], [ 4, %for.end29.fold.split124.i.i ], [ 5, %for.end29.fold.split125.i.i ], [ 6, %for.end29.fold.split126.i.i ], [ 7, %for.end29.fold.split127.i.i ], [ 8, %for.end29.fold.split128.i.i ], [ 9, %for.end29.fold.split129.i.i ], [ 10, %for.end29.fold.split130.i.i ], [ 11, %for.end29.fold.split131.i.i ], [ 12, %for.end29.fold.split132.i.i ], [ 13, %for.end29.fold.split133.i.i ], [ 14, %for.end29.fold.split134.i.i ], [ 15, %for.end29.fold.split135.i.i ], [ 16, %for.end29.fold.split136.i.i ], [ 17, %for.end29.fold.split137.i.i ]
  br i1 %cmp31.not.i.i, label %for.end29.i.i.do.end45.i.i_crit_edge, label %do.end.i.i

for.end29.i.i.do.end45.i.i_crit_edge:             ; preds = %for.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

do.end.i.i:                                       ; preds = %for.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %msg.i.i = getelementptr [26 x %struct.hclge_hw_module_id], ptr @hclge_hw_module_id_st, i32 0, i32 %index_module.0.i.i, i32 1
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msg.i.i, align 4
  %msg41.i.i = getelementptr [18 x %struct.hclge_hw_type_id], ptr @hclge_hw_type_id_st, i32 0, i32 %i.193.lcssa.wide.i.i, i32 1
  %35 = ptrtoint ptr %msg41.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msg41.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool.not.i.i = icmp sgt i8 %30, -1
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.495, ptr @.str.494
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.492, ptr noundef %34, ptr noundef %36, ptr noundef nonnull %cond.i.i) #9
  br label %do.end51.i.i

do.end45.i.i:                                     ; preds = %for.end29.i.i.do.end45.i.i_crit_edge, %for.inc27.i.i.do.end45.i.i_crit_edge, %for.end.i.i.do.end45.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.497, i32 noundef %conv10.i.i, i32 noundef %conv19.i.i) #9
  br label %do.end51.i.i

do.end51.i.i:                                     ; preds = %do.end45.i.i, %do.end.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.500) #9
  %reg_num.i.i = getelementptr inbounds %struct.hclge_type_reg_err_info, ptr %arrayidx28.i, i32 0, i32 1
  %37 = ptrtoint ptr %reg_num.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reg_num.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp5594.not.i.i = icmp eq i8 %38, 0
  br i1 %cmp5594.not.i.i, label %do.end51.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge, label %do.end51.i.i.do.end60.i.i_crit_edge

do.end51.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end51.i.i
  br label %do.end60.i.i

do.end51.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge: ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_handle_error_type_reg_log.exit.i

do.end60.i.i:                                     ; preds = %do.end60.i.i.do.end60.i.i_crit_edge, %do.end51.i.i.do.end60.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %do.end60.i.i.do.end60.i.i_crit_edge ], [ 0, %do.end51.i.i.do.end60.i.i_crit_edge ]
  %arrayidx62.i.i = getelementptr %struct.hclge_type_reg_err_info, ptr %arrayidx28.i, i32 0, i32 3, i32 %indvars.iv.i.i
  %39 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx62.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i104, ptr noundef nonnull @.str.503, i32 noundef %40) #9
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %41 = ptrtoint ptr %reg_num.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg_num.i.i, align 1
  %43 = zext i8 %42 to i32
  %cmp55.i.i = icmp ult i32 %indvars.iv.next.i.i, %43
  br i1 %cmp55.i.i, label %do.end60.i.i.do.end60.i.i_crit_edge, label %do.end60.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge

do.end60.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge: ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_handle_error_type_reg_log.exit.i

do.end60.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i.i

hclge_handle_error_type_reg_log.exit.i:           ; preds = %do.end60.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge, %do.end51.i.i.hclge_handle_error_type_reg_log.exit.i_crit_edge
  %44 = ptrtoint ptr %reg_num.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_num.i.i, align 1
  %conv29.i = zext i8 %45 to i32
  %add.i = add i32 %inc27.i, %conv29.i
  %inc30.i = add nuw i8 %i.064.i, 1
  %cmp18.i = icmp ult i8 %inc30.i, %26
  br i1 %cmp18.i, label %hclge_handle_error_type_reg_log.exit.i.for.body.i_crit_edge, label %hclge_handle_error_type_reg_log.exit.i.while.cond.loopexit.i_crit_edge

hclge_handle_error_type_reg_log.exit.i.while.cond.loopexit.i_crit_edge: ; preds = %hclge_handle_error_type_reg_log.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit.i

hclge_handle_error_type_reg_log.exit.i.for.body.i_crit_edge: ; preds = %hclge_handle_error_type_reg_log.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hclge_handle_error_module_log.exit:               ; preds = %do.end25.i, %do.end.i106, %while.cond.loopexit.i.hclge_handle_error_module_log.exit_crit_edge, %if.end.i105.hclge_handle_error_module_log.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i100) #6
  br label %err_buf_alloc

err_buf_alloc:                                    ; preds = %hclge_handle_error_module_log.exit, %if.end8.i.i101.err_buf_alloc_crit_edge
  %ret.0 = phi i32 [ 0, %hclge_handle_error_module_log.exit ], [ -12, %if.end8.i.i101.err_buf_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i72) #6
  br label %err_desc

err_desc:                                         ; preds = %err_buf_alloc, %if.end8.err_desc_crit_edge, %hclge_query_all_err_info.exit
  %ret.1 = phi i32 [ %call.i43, %hclge_query_all_err_info.exit ], [ %ret.0, %err_buf_alloc ], [ -12, %if.end8.err_desc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out

out:                                              ; preds = %err_desc, %if.end.out_crit_edge, %hclge_query_all_err_bd_num.exit.thread
  %ret.2 = phi i32 [ %ret.1, %err_desc ], [ -12, %if.end.out_crit_edge ], [ %retval.0.i.ph, %hclge_query_all_err_bd_num.exit.thread ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_report_hw_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_reuse_desc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_igu_egu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 6150, i1 noundef zeroext false) #6
  %spec.select = select i1 %en, i32 1862664192, i32 1611005952
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 251658240, ptr %3, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.104, i32 noundef %call) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 6147, i1 noundef zeroext false) #6
  br i1 %en, label %if.then10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1079377408, ptr %2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1056964608, ptr %3, align 4
  %call17 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.107, i32 noundef %call17) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #6
  %11 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %ae_dev.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %12 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %13 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ae_dev.i, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %16)
  %cmp.i = icmp ult i32 %16, 33
  br i1 %cmp.i, label %if.end23.hclge_config_ncsi_hw_err_int.exit_crit_edge, label %if.end.i

if.end23.hclge_config_ncsi_hw_err_int.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ncsi_hw_err_int.exit

if.end.i:                                         ; preds = %if.end23
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 9217, i1 noundef zeroext false) #6
  br i1 %en, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50331648, ptr %11, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.hclge_config_ncsi_hw_err_int.exit_crit_edge, label %do.end.i

if.end3.i.hclge_config_ncsi_hw_err_int.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ncsi_hw_err_int.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.109, i32 noundef %call.i) #9
  br label %hclge_config_ncsi_hw_err_int.exit

hclge_config_ncsi_hw_err_int.exit:                ; preds = %do.end.i, %if.end3.i.hclge_config_ncsi_hw_err_int.exit_crit_edge, %if.end23.hclge_config_ncsi_hw_err_int.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end23.hclge_config_ncsi_hw_err_int.exit_crit_edge ], [ %call.i, %do.end.i ], [ 0, %if.end3.i.hclge_config_ncsi_hw_err_int.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hclge_config_ncsi_hw_err_int.exit, %do.end22, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call17, %do.end22 ], [ %retval.0.i, %hclge_config_ncsi_hw_err_int.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_ppp_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hclge_config_ppp_error_interrupt(ptr noundef %hdev, i32 noundef 8448, i1 noundef zeroext %en)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i) #6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 8449, i1 noundef zeroext false) #6
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 1
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag.i, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag.i, align 2
  %arrayidx4.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4.i, i32 noundef 8449, i1 noundef zeroext false) #6
  br i1 %en, label %if.then32.i, label %if.end.if.end39.i_crit_edge

if.end.if.end39.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then32.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data34.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %6 = ptrtoint ptr %data34.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1056964608, ptr %data34.i, align 4
  %arrayidx38.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1056964608, ptr %arrayidx38.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then32.i, %if.end.if.end39.i_crit_edge
  %data41.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %data41.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1056964608, ptr %data41.i, align 4
  %arrayidx45.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1056964608, ptr %arrayidx45.i, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool49.not.i, label %if.end39.i.hclge_config_ppp_error_interrupt.exit_crit_edge, label %do.end.i

if.end39.i.hclge_config_ppp_error_interrupt.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ppp_error_interrupt.exit

do.end.i:                                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.111, i32 noundef %call.i) #9
  br label %hclge_config_ppp_error_interrupt.exit

hclge_config_ppp_error_interrupt.exit:            ; preds = %do.end.i, %if.end39.i.hclge_config_ppp_error_interrupt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hclge_config_ppp_error_interrupt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %hclge_config_ppp_error_interrupt.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_ssu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc) #6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2441, i1 noundef zeroext false) #6
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag, align 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4, i32 noundef 2441, i1 noundef zeroext false) #6
  br i1 %en, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data, align 4
  %arrayidx9 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16842752, ptr %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data14 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %data14, align 4
  %arrayidx18 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16842752, ptr %arrayidx21, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.113, i32 noundef %call) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2444, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flag, align 2
  %14 = or i16 %13, 1024
  store i16 %14, ptr %flag, align 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4, i32 noundef 2444, i1 noundef zeroext false) #6
  br i1 %en, label %if.then34, label %if.end25.if.end50_crit_edge

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %15 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp = icmp ugt i32 %18, 32
  %spec.select = select i1 %cmp, i32 -16580608, i32 -553451520
  %19 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  %arrayidx46 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -16056320, ptr %arrayidx46, align 4
  %arrayidx49 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -256, ptr %arrayidx49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.end25.if.end50_crit_edge
  %23 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -16515317, ptr %data14, align 4
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -256, ptr %arrayidx18, align 4
  %call59 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end50.cleanup_crit_edge, label %do.end64

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end64:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.116, i32 noundef %call59) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.end50.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call59, %do.end64 ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_ppu_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc.i39 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i35 = alloca [2 x %struct.hclge_desc], align 4
  %desc.i = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i) #6
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 2880, i1 noundef zeroext false) #6
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 1
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag.i, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag.i, align 2
  %arrayidx4.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4.i, i32 noundef 2880, i1 noundef zeroext false) #6
  br i1 %en, label %if.then5.i, label %entry.hclge_config_ppu_error_interrupts.exit_crit_edge

entry.hclge_config_ppu_error_interrupts.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ppu_error_interrupts.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data.i, align 4
  %arrayidx10.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx10.i, align 4
  %arrayidx13.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -16777216, ptr %arrayidx13.i, align 4
  %arrayidx16.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 4
  %9 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -12583105, ptr %arrayidx16.i, align 4
  br label %hclge_config_ppu_error_interrupts.exit

hclge_config_ppu_error_interrupts.exit:           ; preds = %if.then5.i, %entry.hclge_config_ppu_error_interrupts.exit_crit_edge
  %data18.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %data18.i, align 4
  %arrayidx22.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx22.i, align 4
  %arrayidx25.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -12583105, ptr %arrayidx25.i, align 4
  %arrayidx28.i = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx28.i, align 4
  %or29.i = or i32 %14, 65280
  store i32 %or29.i, ptr %arrayidx28.i, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %hclge_config_ppu_error_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.118, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %hclge_config_ppu_error_interrupts.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i35) #6
  %15 = call ptr @memset(ptr %desc.i35, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i35, i32 noundef 2881, i1 noundef zeroext false) #6
  br i1 %en, label %if.then35.i, label %if.end.hclge_config_ppu_error_interrupts.exit38_crit_edge

if.end.hclge_config_ppu_error_interrupts.exit38_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ppu_error_interrupts.exit38

if.then35.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data37.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i35, i32 0, i32 4
  %16 = ptrtoint ptr %data37.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 184549376, ptr %data37.i, align 4
  br label %hclge_config_ppu_error_interrupts.exit38

hclge_config_ppu_error_interrupts.exit38:         ; preds = %if.then35.i, %if.end.hclge_config_ppu_error_interrupts.exit38_crit_edge
  %arrayidx42.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i35, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 184549376, ptr %arrayidx42.i, align 4
  %call.i37 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool5.not = icmp eq i32 %call.i37, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %hclge_config_ppu_error_interrupts.exit38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.121, i32 noundef %call.i37) #9
  br label %cleanup

if.end10:                                         ; preds = %hclge_config_ppu_error_interrupts.exit38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc.i39) #6
  %18 = call ptr @memset(ptr %desc.i39, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i39, i32 noundef 2882, i1 noundef zeroext false) #6
  br i1 %en, label %if.then49.i, label %if.end10.hclge_config_ppu_error_interrupts.exit42_crit_edge

if.end10.hclge_config_ppu_error_interrupts.exit42_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %hclge_config_ppu_error_interrupts.exit42

if.then49.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %data51.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i39, i32 0, i32 4
  %19 = ptrtoint ptr %data51.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1056964608, ptr %data51.i, align 4
  br label %hclge_config_ppu_error_interrupts.exit42

hclge_config_ppu_error_interrupts.exit42:         ; preds = %if.then49.i, %if.end10.hclge_config_ppu_error_interrupts.exit42_crit_edge
  %arrayidx56.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i39, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1056964608, ptr %arrayidx56.i, align 4
  %call.i41 = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i39, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc.i39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool13.not = icmp eq i32 %call.i41, 0
  br i1 %tobool13.not, label %hclge_config_ppu_error_interrupts.exit42.cleanup_crit_edge, label %do.end17

hclge_config_ppu_error_interrupts.exit42.cleanup_crit_edge: ; preds = %hclge_config_ppu_error_interrupts.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %hclge_config_ppu_error_interrupts.exit42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124, i32 noundef %call.i41) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %hclge_config_ppu_error_interrupts.exit42.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i37, %do.end9 ], [ %call.i41, %do.end17 ], [ 0, %hclge_config_ppu_error_interrupts.exit42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_tm_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %4 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2089, i1 noundef zeroext false) #6
  br i1 %en, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50331648, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128, i32 noundef %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 6676, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 687865856, ptr %2, align 4
  br i1 %en, label %if.then8, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 704642816, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -256, ptr %3, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end4.if.end13_crit_edge
  %call15 = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %do.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.131, i32 noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_common_hw_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc) #6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 5381, i1 noundef zeroext false) #6
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag, align 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4, i32 noundef 5381, i1 noundef zeroext false) #6
  br i1 %en, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %data, align 4
  %arrayidx9 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -15794161, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196608, ptr %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data20 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %data20, align 4
  %arrayidx24 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %arrayidx24, align 4
  %arrayidx27 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -15794161, ptr %arrayidx30, align 4
  %arrayidx33 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 5
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196608, ptr %arrayidx33, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %if.end.if.end37_crit_edge, label %do.end

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.133, i32 noundef %call) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_mac_err_int(ptr noundef %hdev, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #6
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 782, i1 noundef zeroext false) #6
  br i1 %en, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -16318208, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -16318208, ptr %2, align 4
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.135, i32 noundef %call) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_config_ppp_error_interrupt(ptr noundef %hdev, i32 noundef %cmd, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [2 x %struct.hclge_desc], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %desc) #6
  %2 = call ptr @memset(ptr %desc, i32 255, i32 64)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef %cmd, i1 noundef zeroext false) #6
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flag, align 2
  %5 = or i16 %4, 1024
  store i16 %5, ptr %flag, align 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4, i32 noundef %cmd, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8448, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 8448
  br i1 %cmp, label %if.then, label %if.then30

if.then:                                          ; preds = %entry
  br i1 %en, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data, align 4
  %arrayidx11 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50331648, ptr %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %data16 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %data16, align 4
  %arrayidx20 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arrayidx20, align 4
  %ae_dev = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 1
  %11 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp21 = icmp ugt i32 %14, 32
  br i1 %cmp21, label %if.then23, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 50331648, ptr %arrayidx26, align 4
  br label %if.end47

if.then30:                                        ; preds = %entry
  br i1 %en, label %if.then32, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %data34 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %16 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1056964608, ptr %data34, align 4
  %arrayidx38 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1056964608, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then30.if.end39_crit_edge
  %data41 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %data41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1056964608, ptr %data41, align 4
  %arrayidx45 = getelementptr inbounds [2 x %struct.hclge_desc], ptr %desc, i32 0, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1056964608, ptr %arrayidx45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %if.then23, %if.end.if.end47_crit_edge
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool49.not = icmp eq i32 %call, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %do.end

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.111, i32 noundef %call) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.end47.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %desc) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_inform_reset_assert_to_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 544)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 544)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !257, !259, !260, !261, !262, !264, !266, !268, !270, !271, !272, !274, !276, !278, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !302, !303, !304, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !734, !735, !736, !738, !740, !742, !744, !746, !748, !749, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !869, !870, !871, !873, !875, !876, !877, !879, !880, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !914, !915, !916, !918, !920, !922, !923, !924, !926, !928, !930, !932, !934, !936, !938, !939, !940, !941, !943, !944, !945, !947, !948, !949, !951, !952, !953, !955, !956, !957, !958, !960, !961, !962, !964, !965, !966, !967, !969, !970, !971, !973, !974, !975, !976, !978, !979, !980, !981, !983, !984, !985, !987, !988, !989, !990, !991, !992, !994, !995, !996, !998, !999, !1000, !1002, !1003, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094}
!llvm.module.flags = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!llvm.ident = !{!1104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2272, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclge_config_rocee_ras_interrupt._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclge_config_rocee_ras_interrupt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2364, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hclge_handle_hw_ras_error._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hclge_handle_hw_ras_error._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2378, i32 3}
!15 = !{ptr @hclge_handle_hw_ras_error._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hclge_handle_hw_ras_error._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2387, i32 3}
!19 = !{ptr @hclge_handle_hw_ras_error._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hclge_handle_hw_ras_error._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2644, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hclge_handle_hw_msix_error._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hclge_handle_hw_msix_error._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2664, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hclge_handle_mac_tnl._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hclge_handle_mac_tnl._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2680, i32 4}
!33 = !{ptr @hclge_handle_mac_tnl._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hclge_handle_mac_tnl._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2714, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hclge_handle_all_hns_hw_errors._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hclge_handle_all_hns_hw_errors._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2723, i32 3}
!42 = !{ptr @hclge_handle_all_hns_hw_errors._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hclge_handle_all_hns_hw_errors._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2730, i32 3}
!46 = !{ptr @hclge_handle_all_hns_hw_errors._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hclge_handle_all_hns_hw_errors._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2197, i32 3}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2205, i32 4}
!55 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry.30, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2208, i32 4}
!59 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry.33, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2220, i32 3}
!63 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2231, i32 4}
!67 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry.39, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.41, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2241, i32 3}
!71 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry.42, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hclge_log_and_clear_rocee_ras_error._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1379, i32 3}
!75 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hclge_cmd_query_error._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hclge_cmd_query_error._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2095, i32 3}
!80 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hclge_log_rocee_axi_error._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @hclge_log_rocee_axi_error._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2099, i32 2}
!85 = !{ptr @hclge_log_rocee_axi_error._entry.49, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hclge_log_rocee_axi_error._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2103, i32 2}
!89 = !{ptr @hclge_log_rocee_axi_error._entry.52, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hclge_log_rocee_axi_error._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2107, i32 2}
!93 = !{ptr @hclge_log_rocee_axi_error._entry.55, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hclge_log_rocee_axi_error._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2124, i32 3}
!97 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hclge_log_rocee_ecc_error._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hclge_log_rocee_ecc_error._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.61, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2128, i32 2}
!102 = !{ptr @hclge_log_rocee_ecc_error._entry.60, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hclge_log_rocee_ecc_error._entry_ptr.62, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2132, i32 2}
!106 = !{ptr @hclge_log_rocee_ecc_error._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hclge_log_rocee_ecc_error._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2148, i32 3}
!110 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hclge_log_rocee_ovf_error._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @hclge_log_rocee_ovf_error._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2162, i32 5}
!115 = !{ptr @hclge_log_rocee_ovf_error._entry.68, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @hclge_log_rocee_ovf_error._entry_ptr.70, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2172, i32 3}
!119 = !{ptr @hclge_log_rocee_ovf_error._entry.71, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @hclge_log_rocee_ovf_error._entry_ptr.73, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2177, i32 3}
!123 = !{ptr @hclge_log_rocee_ovf_error._entry.74, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @hclge_log_rocee_ovf_error._entry_ptr.76, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.77, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1136, i32 10}
!127 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1139, i32 10}
!129 = !{ptr @.str.79, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1142, i32 10}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1145, i32 10}
!133 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1148, i32 10}
!135 = !{ptr @.str.82, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1151, i32 10}
!137 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1154, i32 10}
!139 = !{ptr @.str.84, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1157, i32 10}
!141 = !{ptr @.str.85, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1160, i32 10}
!143 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1163, i32 10}
!145 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1166, i32 10}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1169, i32 10}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1172, i32 10}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1175, i32 10}
!153 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1178, i32 10}
!155 = !{ptr @.str.92, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1181, i32 10}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1184, i32 10}
!159 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1187, i32 10}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1190, i32 10}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1193, i32 10}
!165 = distinct !{null, !166, !"hclge_rocee_qmm_ovf_err_int", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1133, i32 36}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2293, i32 11}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2297, i32 11}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2301, i32 11}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2305, i32 11}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2309, i32 11}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2313, i32 11}
!179 = distinct !{null, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2317, i32 11}
!181 = distinct !{null, !182, !"hw_blk", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2290, i32 34}
!183 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1469, i32 3}
!185 = !{ptr @.str.105, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @hclge_config_igu_egu_hw_err_int._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @hclge_config_igu_egu_hw_err_int._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1482, i32 3}
!190 = !{ptr @hclge_config_igu_egu_hw_err_int._entry.106, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @hclge_config_igu_egu_hw_err_int._entry_ptr.108, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1447, i32 3}
!194 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @hclge_config_ncsi_hw_err_int._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @hclge_config_ncsi_hw_err_int._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.111, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1536, i32 3}
!199 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @hclge_config_ppp_error_interrupt._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @hclge_config_ppp_error_interrupt._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.113, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1736, i32 3}
!204 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @hclge_config_ssu_hw_err_int._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @hclge_config_ssu_hw_err_int._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.116, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1764, i32 3}
!209 = !{ptr @hclge_config_ssu_hw_err_int._entry.115, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @hclge_config_ssu_hw_err_int._entry_ptr.117, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1692, i32 3}
!213 = !{ptr @.str.119, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @hclge_config_ppu_hw_err_int._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @hclge_config_ppu_hw_err_int._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1701, i32 3}
!218 = !{ptr @hclge_config_ppu_hw_err_int._entry.120, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @hclge_config_ppu_hw_err_int._entry_ptr.122, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1708, i32 3}
!222 = !{ptr @hclge_config_ppu_hw_err_int._entry.123, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @hclge_config_ppu_hw_err_int._entry_ptr.125, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1675, i32 3}
!226 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @hclge_config_ppu_error_interrupts._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @hclge_config_ppu_error_interrupts._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1569, i32 3}
!231 = !{ptr @.str.129, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @hclge_config_tm_hw_err_int._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @hclge_config_tm_hw_err_int._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.131, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1583, i32 3}
!236 = !{ptr @hclge_config_tm_hw_err_int._entry.130, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @hclge_config_tm_hw_err_int._entry_ptr.132, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.133, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1425, i32 3}
!240 = !{ptr @.str.134, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @hclge_config_common_hw_err_int._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @hclge_config_common_hw_err_int._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.135, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1604, i32 3}
!245 = !{ptr @.str.136, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @hclge_config_mac_err_int._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @hclge_config_mac_err_int._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.137, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1839, i32 3}
!250 = !{ptr @.str.138, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @hclge_handle_mpf_ras_error._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @hclge_handle_mpf_ras_error._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.139, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1846, i32 24}
!255 = !{ptr @.str.140, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1852, i32 24}
!257 = !{ptr @.str.142, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1857, i32 3}
!259 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @hclge_handle_mpf_ras_error._entry.141, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @hclge_handle_mpf_ras_error._entry_ptr.144, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1861, i32 24}
!264 = !{ptr @.str.146, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1867, i32 24}
!266 = !{ptr @.str.147, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1875, i32 24}
!268 = !{ptr @.str.149, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1881, i32 3}
!270 = !{ptr @hclge_handle_mpf_ras_error._entry.148, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @hclge_handle_mpf_ras_error._entry_ptr.150, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1888, i32 24}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1896, i32 24}
!276 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1904, i32 24}
!278 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1910, i32 24}
!280 = !{ptr @.str.156, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1918, i32 3}
!282 = !{ptr @hclge_handle_mpf_ras_error._entry.155, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @hclge_handle_mpf_ras_error._entry_ptr.157, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.158, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1925, i32 24}
!286 = !{ptr @.str.159, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1931, i32 24}
!288 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1939, i32 24}
!290 = !{ptr @.str.161, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1947, i32 24}
!292 = !{ptr @.str.162, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1953, i32 24}
!294 = !{ptr @.str.163, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1961, i32 24}
!296 = !{ptr @.str.165, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1969, i32 3}
!298 = !{ptr @hclge_handle_mpf_ras_error._entry.164, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @hclge_handle_mpf_ras_error._entry_ptr.166, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.167, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1345, i32 4}
!302 = !{ptr @.str.168, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @hclge_log_error._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @hclge_log_error._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.169, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 9, i32 10}
!307 = !{ptr @.str.170, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 13, i32 10}
!309 = !{ptr @.str.171, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 17, i32 10}
!311 = !{ptr @.str.172, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 21, i32 10}
!313 = !{ptr @.str.173, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 25, i32 10}
!315 = !{ptr @.str.174, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 29, i32 10}
!317 = !{ptr @.str.175, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 33, i32 10}
!319 = !{ptr @.str.176, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 37, i32 10}
!321 = !{ptr @.str.177, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 41, i32 10}
!323 = distinct !{null, !324, !"hclge_imp_tcm_ecc_int", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 6, i32 36}
!325 = !{ptr @.str.178, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 51, i32 10}
!327 = !{ptr @.str.179, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 55, i32 10}
!329 = !{ptr @.str.180, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 59, i32 10}
!331 = !{ptr @.str.181, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 63, i32 10}
!333 = !{ptr @.str.182, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 67, i32 10}
!335 = !{ptr @.str.183, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 71, i32 10}
!337 = !{ptr @.str.184, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 75, i32 10}
!339 = !{ptr @.str.185, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 79, i32 10}
!341 = !{ptr @.str.186, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 83, i32 10}
!343 = !{ptr @.str.187, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 87, i32 10}
!345 = !{ptr @.str.188, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 91, i32 10}
!347 = !{ptr @.str.189, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 95, i32 10}
!349 = !{ptr @.str.190, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 99, i32 10}
!351 = !{ptr @.str.191, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 103, i32 10}
!353 = !{ptr @.str.192, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 107, i32 10}
!355 = !{ptr @.str.193, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 111, i32 10}
!357 = !{ptr @hclge_cmdq_nic_mem_ecc_int, !358, !"hclge_cmdq_nic_mem_ecc_int", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 48, i32 36}
!359 = !{ptr @.str.194, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 121, i32 10}
!361 = !{ptr @.str.195, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 125, i32 10}
!363 = !{ptr @.str.196, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 129, i32 10}
!365 = !{ptr @.str.197, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 133, i32 10}
!367 = !{ptr @.str.198, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 137, i32 10}
!369 = !{ptr @.str.199, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 141, i32 10}
!371 = distinct !{null, !372, !"hclge_tqp_int_ecc_int", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 118, i32 36}
!373 = !{ptr @.str.200, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 151, i32 10}
!375 = !{ptr @.str.201, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 155, i32 10}
!377 = distinct !{null, !378, !"hclge_msix_sram_ecc_int", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 148, i32 36}
!379 = !{ptr @.str.202, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 898, i32 2}
!381 = !{ptr @.str.203, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 899, i32 2}
!383 = !{ptr @.str.204, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 900, i32 2}
!385 = !{ptr @.str.205, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 901, i32 2}
!387 = !{ptr @.str.206, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 902, i32 2}
!389 = !{ptr @.str.207, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 903, i32 2}
!391 = !{ptr @.str.208, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 904, i32 2}
!393 = !{ptr @.str.209, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 905, i32 2}
!395 = !{ptr @.str.210, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 906, i32 2}
!397 = !{ptr @.str.211, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 907, i32 2}
!399 = !{ptr @.str.212, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 908, i32 2}
!401 = !{ptr @.str.213, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 909, i32 2}
!403 = !{ptr @.str.214, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 910, i32 2}
!405 = !{ptr @.str.215, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 911, i32 2}
!407 = !{ptr @.str.216, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 912, i32 2}
!409 = !{ptr @.str.217, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 913, i32 2}
!411 = !{ptr @.str.218, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 914, i32 2}
!413 = !{ptr @.str.219, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 915, i32 2}
!415 = !{ptr @.str.220, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 916, i32 2}
!417 = !{ptr @.str.221, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 917, i32 2}
!419 = !{ptr @.str.222, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 918, i32 2}
!421 = !{ptr @.str.223, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 919, i32 2}
!423 = !{ptr @.str.224, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 920, i32 2}
!425 = !{ptr @.str.225, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 921, i32 2}
!427 = !{ptr @.str.226, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 922, i32 2}
!429 = !{ptr @.str.227, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 923, i32 2}
!431 = !{ptr @.str.228, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 924, i32 2}
!433 = !{ptr @.str.229, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 925, i32 2}
!435 = !{ptr @.str.230, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 926, i32 2}
!437 = !{ptr @.str.231, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 927, i32 2}
!439 = !{ptr @.str.232, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 928, i32 2}
!441 = !{ptr @.str.233, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 929, i32 2}
!443 = !{ptr @hclge_ssu_mem_ecc_err_int, !444, !"hclge_ssu_mem_ecc_err_int", i1 false, i1 false}
!444 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 897, i32 36}
!445 = !{ptr @.str.234, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 847, i32 10}
!447 = !{ptr @.str.235, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 851, i32 10}
!449 = !{ptr @.str.236, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 855, i32 10}
!451 = !{ptr @.str.237, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 859, i32 10}
!453 = !{ptr @.str.238, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 863, i32 10}
!455 = !{ptr @.str.239, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 867, i32 10}
!457 = !{ptr @.str.240, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 871, i32 10}
!459 = !{ptr @.str.241, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 875, i32 10}
!461 = !{ptr @.str.242, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 879, i32 10}
!463 = !{ptr @.str.243, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 883, i32 10}
!465 = !{ptr @hclge_ssu_com_err_int, !466, !"hclge_ssu_com_err_int", i1 false, i1 false}
!466 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 844, i32 36}
!467 = !{ptr @.str.244, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 165, i32 10}
!469 = !{ptr @.str.245, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 169, i32 10}
!471 = distinct !{null, !472, !"hclge_igu_int", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 162, i32 36}
!473 = !{ptr @.str.246, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 219, i32 10}
!475 = !{ptr @.str.247, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 223, i32 10}
!477 = !{ptr @.str.248, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 227, i32 10}
!479 = !{ptr @.str.249, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 231, i32 10}
!481 = !{ptr @.str.250, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 235, i32 10}
!483 = !{ptr @.str.251, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 239, i32 10}
!485 = !{ptr @.str.252, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 243, i32 10}
!487 = !{ptr @.str.253, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 247, i32 10}
!489 = !{ptr @.str.254, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 251, i32 10}
!491 = !{ptr @.str.255, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 255, i32 10}
!493 = !{ptr @.str.256, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 259, i32 10}
!495 = !{ptr @.str.257, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 263, i32 10}
!497 = !{ptr @.str.258, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 267, i32 10}
!499 = !{ptr @.str.259, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 271, i32 10}
!501 = !{ptr @.str.260, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 275, i32 10}
!503 = !{ptr @.str.261, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 279, i32 10}
!505 = !{ptr @.str.262, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 283, i32 10}
!507 = !{ptr @.str.263, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 287, i32 10}
!509 = !{ptr @.str.264, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 291, i32 10}
!511 = !{ptr @.str.265, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 295, i32 10}
!513 = !{ptr @.str.266, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 299, i32 10}
!515 = !{ptr @.str.267, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 303, i32 10}
!517 = !{ptr @.str.268, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 307, i32 10}
!519 = !{ptr @.str.269, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 311, i32 10}
!521 = !{ptr @.str.270, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 315, i32 10}
!523 = !{ptr @.str.271, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 319, i32 10}
!525 = !{ptr @.str.272, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 323, i32 10}
!527 = !{ptr @.str.273, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 327, i32 10}
!529 = !{ptr @.str.274, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 331, i32 10}
!531 = !{ptr @.str.275, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 335, i32 10}
!533 = !{ptr @.str.276, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 339, i32 10}
!535 = !{ptr @hclge_ppp_mpf_abnormal_int_st1, !536, !"hclge_ppp_mpf_abnormal_int_st1", i1 false, i1 false}
!536 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 216, i32 36}
!537 = !{ptr @.str.277, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 363, i32 10}
!539 = !{ptr @.str.278, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 367, i32 10}
!541 = !{ptr @.str.279, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 371, i32 10}
!543 = !{ptr @.str.280, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 375, i32 10}
!545 = !{ptr @.str.281, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 379, i32 10}
!547 = !{ptr @.str.282, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 383, i32 10}
!549 = distinct !{null, !550, !"hclge_ppp_mpf_abnormal_int_st3", i1 false, i1 false}
!550 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 360, i32 36}
!551 = !{ptr @.str.283, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 713, i32 10}
!553 = !{ptr @.str.284, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 717, i32 10}
!555 = !{ptr @.str.285, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 721, i32 10}
!557 = !{ptr @.str.286, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 725, i32 10}
!559 = !{ptr @.str.287, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 729, i32 10}
!561 = !{ptr @.str.288, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 733, i32 10}
!563 = !{ptr @.str.289, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 737, i32 10}
!565 = !{ptr @.str.290, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 741, i32 10}
!567 = !{ptr @.str.291, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 745, i32 10}
!569 = !{ptr @.str.292, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 749, i32 10}
!571 = !{ptr @.str.293, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 753, i32 10}
!573 = !{ptr @.str.294, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 757, i32 10}
!575 = !{ptr @.str.295, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 761, i32 10}
!577 = !{ptr @.str.296, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 765, i32 10}
!579 = !{ptr @.str.297, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 769, i32 10}
!581 = !{ptr @.str.298, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 773, i32 10}
!583 = !{ptr @.str.299, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 777, i32 10}
!585 = !{ptr @.str.300, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 781, i32 10}
!587 = !{ptr @.str.301, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 785, i32 10}
!589 = !{ptr @hclge_ppu_mpf_abnormal_int_st2, !590, !"hclge_ppu_mpf_abnormal_int_st2", i1 false, i1 false}
!590 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 710, i32 36}
!591 = !{ptr @.str.302, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 795, i32 10}
!593 = !{ptr @.str.303, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 799, i32 10}
!595 = !{ptr @.str.304, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 803, i32 10}
!597 = !{ptr @.str.305, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 807, i32 10}
!599 = distinct !{null, !600, !"hclge_ppu_mpf_abnormal_int_st3", i1 false, i1 false}
!600 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 792, i32 36}
!601 = !{ptr @.str.306, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 393, i32 10}
!603 = !{ptr @.str.307, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 397, i32 10}
!605 = !{ptr @.str.308, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 401, i32 10}
!607 = !{ptr @.str.309, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 405, i32 10}
!609 = !{ptr @.str.310, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 409, i32 10}
!611 = !{ptr @.str.311, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 413, i32 10}
!613 = !{ptr @.str.312, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 417, i32 10}
!615 = !{ptr @.str.313, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 421, i32 10}
!617 = !{ptr @.str.314, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 425, i32 10}
!619 = !{ptr @.str.315, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 429, i32 10}
!621 = !{ptr @.str.316, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 433, i32 10}
!623 = !{ptr @.str.317, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 437, i32 10}
!625 = !{ptr @.str.318, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 441, i32 10}
!627 = !{ptr @.str.319, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 445, i32 10}
!629 = !{ptr @.str.320, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 449, i32 10}
!631 = !{ptr @.str.321, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 453, i32 10}
!633 = !{ptr @.str.322, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 457, i32 10}
!635 = !{ptr @.str.323, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 461, i32 10}
!637 = !{ptr @.str.324, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 465, i32 10}
!639 = !{ptr @.str.325, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 469, i32 10}
!641 = !{ptr @.str.326, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 473, i32 10}
!643 = !{ptr @.str.327, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 477, i32 10}
!645 = !{ptr @.str.328, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 481, i32 10}
!647 = !{ptr @.str.329, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 485, i32 10}
!649 = !{ptr @.str.330, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 489, i32 10}
!651 = !{ptr @.str.331, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 493, i32 10}
!653 = !{ptr @.str.332, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 497, i32 10}
!655 = !{ptr @.str.333, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 501, i32 10}
!657 = !{ptr @.str.334, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 505, i32 10}
!659 = !{ptr @.str.335, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 509, i32 10}
!661 = !{ptr @.str.336, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 513, i32 10}
!663 = !{ptr @hclge_tm_sch_rint, !664, !"hclge_tm_sch_rint", i1 false, i1 false}
!664 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 390, i32 36}
!665 = !{ptr @.str.337, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 523, i32 10}
!667 = !{ptr @.str.338, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 527, i32 10}
!669 = !{ptr @.str.339, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 531, i32 10}
!671 = !{ptr @.str.340, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 535, i32 10}
!673 = !{ptr @.str.341, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 539, i32 10}
!675 = !{ptr @.str.342, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 543, i32 10}
!677 = !{ptr @.str.343, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 547, i32 10}
!679 = !{ptr @.str.344, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 551, i32 10}
!681 = !{ptr @.str.345, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 555, i32 10}
!683 = !{ptr @.str.346, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 559, i32 10}
!685 = !{ptr @.str.347, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 563, i32 10}
!687 = !{ptr @.str.348, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 567, i32 10}
!689 = !{ptr @.str.349, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 571, i32 10}
!691 = !{ptr @.str.350, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 575, i32 10}
!693 = !{ptr @.str.351, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 579, i32 10}
!695 = !{ptr @.str.352, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 583, i32 10}
!697 = !{ptr @.str.353, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 587, i32 10}
!699 = !{ptr @.str.354, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 591, i32 10}
!701 = !{ptr @hclge_qcn_fifo_rint, !702, !"hclge_qcn_fifo_rint", i1 false, i1 false}
!702 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 520, i32 36}
!703 = !{ptr @.str.355, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 601, i32 10}
!705 = !{ptr @.str.356, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 605, i32 10}
!707 = !{ptr @.str.357, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 609, i32 10}
!709 = !{ptr @.str.358, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 613, i32 10}
!711 = !{ptr @.str.359, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 617, i32 10}
!713 = !{ptr @.str.360, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 621, i32 10}
!715 = !{ptr @.str.361, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 625, i32 10}
!717 = !{ptr @.str.362, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 629, i32 10}
!719 = !{ptr @.str.363, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 633, i32 10}
!721 = !{ptr @.str.364, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 637, i32 10}
!723 = !{ptr @.str.365, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 641, i32 10}
!725 = !{ptr @hclge_qcn_ecc_rint, !726, !"hclge_qcn_ecc_rint", i1 false, i1 false}
!726 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 598, i32 36}
!727 = !{ptr @.str.366, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 209, i32 10}
!729 = distinct !{null, !730, !"hclge_ncsi_err_int", i1 false, i1 false}
!730 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 206, i32 36}
!731 = !{ptr @.str.367, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1997, i32 3}
!733 = !{ptr @.str.368, !732, !"<string literal>", i1 false, i1 false}
!734 = !{ptr @hclge_handle_pf_ras_error._entry, !732, !"_entry", i1 false, i1 false}
!735 = !{ptr @hclge_handle_pf_ras_error._entry_ptr, !732, !"_entry_ptr", i1 false, i1 false}
!736 = !{ptr @.str.369, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2004, i32 24}
!738 = !{ptr @.str.370, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2010, i32 24}
!740 = !{ptr @.str.371, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2016, i32 24}
!742 = !{ptr @.str.372, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2024, i32 24}
!744 = !{ptr @.str.373, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2032, i32 24}
!746 = !{ptr @.str.375, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2042, i32 3}
!748 = !{ptr @hclge_handle_pf_ras_error._entry.374, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @hclge_handle_pf_ras_error._entry_ptr.376, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.377, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 936, i32 10}
!752 = !{ptr @.str.378, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 940, i32 10}
!754 = !{ptr @.str.379, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 944, i32 10}
!756 = !{ptr @.str.380, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 948, i32 10}
!758 = !{ptr @.str.381, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 952, i32 10}
!760 = !{ptr @.str.382, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 956, i32 10}
!762 = !{ptr @.str.383, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 960, i32 10}
!764 = !{ptr @.str.384, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 964, i32 10}
!766 = !{ptr @.str.385, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 968, i32 10}
!768 = !{ptr @.str.386, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 972, i32 10}
!770 = !{ptr @.str.387, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 976, i32 10}
!772 = !{ptr @.str.388, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 980, i32 10}
!774 = !{ptr @.str.389, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 984, i32 10}
!776 = !{ptr @hclge_ssu_port_based_err_int, !777, !"hclge_ssu_port_based_err_int", i1 false, i1 false}
!777 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 933, i32 36}
!778 = !{ptr @.str.390, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 994, i32 10}
!780 = !{ptr @.str.391, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 998, i32 10}
!782 = !{ptr @.str.392, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1002, i32 10}
!784 = !{ptr @.str.393, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1006, i32 10}
!786 = !{ptr @.str.394, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1010, i32 10}
!788 = !{ptr @.str.395, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1014, i32 10}
!790 = !{ptr @.str.396, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1018, i32 10}
!792 = !{ptr @.str.397, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1022, i32 10}
!794 = !{ptr @.str.398, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1026, i32 10}
!796 = !{ptr @.str.399, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1030, i32 10}
!798 = !{ptr @.str.400, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1034, i32 10}
!800 = !{ptr @.str.401, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1038, i32 10}
!802 = !{ptr @.str.402, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1042, i32 10}
!804 = !{ptr @.str.403, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1046, i32 10}
!806 = !{ptr @.str.404, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1050, i32 10}
!808 = !{ptr @.str.405, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1054, i32 10}
!810 = !{ptr @.str.406, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1058, i32 10}
!812 = !{ptr @.str.407, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1062, i32 10}
!814 = !{ptr @.str.408, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1066, i32 10}
!816 = !{ptr @.str.409, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1070, i32 10}
!818 = !{ptr @.str.410, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1074, i32 10}
!820 = !{ptr @.str.411, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1078, i32 10}
!822 = !{ptr @.str.412, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1082, i32 10}
!824 = !{ptr @.str.413, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1086, i32 10}
!826 = !{ptr @hclge_ssu_fifo_overflow_int, !827, !"hclge_ssu_fifo_overflow_int", i1 false, i1 false}
!827 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 991, i32 36}
!828 = !{ptr @.str.414, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1096, i32 10}
!830 = !{ptr @.str.415, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1100, i32 10}
!832 = !{ptr @.str.416, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1104, i32 10}
!834 = !{ptr @.str.417, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1108, i32 10}
!836 = distinct !{null, !837, !"hclge_ssu_ets_tcg_int", i1 false, i1 false}
!837 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1093, i32 36}
!838 = !{ptr @.str.418, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 179, i32 10}
!840 = !{ptr @.str.419, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 183, i32 10}
!842 = !{ptr @.str.420, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 187, i32 10}
!844 = !{ptr @.str.421, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 191, i32 10}
!846 = !{ptr @.str.422, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 195, i32 10}
!848 = !{ptr @.str.423, !849, !"<string literal>", i1 false, i1 false}
!849 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 199, i32 10}
!850 = distinct !{null, !851, !"hclge_igu_egu_tnl_int", i1 false, i1 false}
!851 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 176, i32 36}
!852 = distinct !{null, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 817, i32 10}
!854 = !{ptr @.str.425, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 821, i32 10}
!856 = !{ptr @.str.426, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 825, i32 10}
!858 = !{ptr @.str.427, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 829, i32 10}
!860 = !{ptr @.str.428, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 833, i32 10}
!862 = !{ptr @.str.429, !863, !"<string literal>", i1 false, i1 false}
!863 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 837, i32 10}
!864 = distinct !{null, !865, !"hclge_ppu_pf_abnormal_int", i1 false, i1 false}
!865 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 814, i32 36}
!866 = !{ptr @.str.430, !867, !"<string literal>", i1 false, i1 false}
!867 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2512, i32 3}
!868 = !{ptr @.str.431, !867, !"<string literal>", i1 false, i1 false}
!869 = !{ptr @hclge_handle_mpf_msix_error._entry, !867, !"_entry", i1 false, i1 false}
!870 = !{ptr @hclge_handle_mpf_msix_error._entry_ptr, !867, !"_entry_ptr", i1 false, i1 false}
!871 = !{ptr @.str.432, !872, !"<string literal>", i1 false, i1 false}
!872 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2520, i32 24}
!873 = !{ptr @.str.434, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2529, i32 3}
!875 = !{ptr @hclge_handle_mpf_msix_error._entry.433, !874, !"_entry", i1 false, i1 false}
!876 = !{ptr @hclge_handle_mpf_msix_error._entry_ptr.435, !874, !"_entry_ptr", i1 false, i1 false}
!877 = !{ptr @.str.437, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2535, i32 3}
!879 = !{ptr @hclge_handle_mpf_msix_error._entry.436, !878, !"_entry", i1 false, i1 false}
!880 = !{ptr @hclge_handle_mpf_msix_error._entry_ptr.438, !878, !"_entry_ptr", i1 false, i1 false}
!881 = !{ptr @.str.439, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 651, i32 10}
!883 = !{ptr @.str.440, !884, !"<string literal>", i1 false, i1 false}
!884 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 655, i32 10}
!885 = !{ptr @.str.441, !886, !"<string literal>", i1 false, i1 false}
!886 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 659, i32 10}
!887 = !{ptr @.str.442, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 663, i32 10}
!889 = !{ptr @.str.443, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 667, i32 10}
!891 = !{ptr @.str.444, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 671, i32 10}
!893 = !{ptr @.str.445, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 675, i32 10}
!895 = !{ptr @.str.446, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 679, i32 10}
!897 = !{ptr @.str.447, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 683, i32 10}
!899 = !{ptr @.str.448, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 687, i32 10}
!901 = !{ptr @.str.449, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 691, i32 10}
!903 = !{ptr @.str.450, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 695, i32 10}
!905 = !{ptr @.str.451, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 699, i32 10}
!907 = !{ptr @.str.452, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 703, i32 10}
!909 = !{ptr @hclge_mac_afifo_tnl_int, !910, !"hclge_mac_afifo_tnl_int", i1 false, i1 false}
!910 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 648, i32 36}
!911 = !{ptr @.str.453, !912, !"<string literal>", i1 false, i1 false}
!912 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2564, i32 3}
!913 = !{ptr @.str.454, !912, !"<string literal>", i1 false, i1 false}
!914 = !{ptr @hclge_handle_pf_msix_error._entry, !912, !"_entry", i1 false, i1 false}
!915 = !{ptr @hclge_handle_pf_msix_error._entry_ptr, !912, !"_entry_ptr", i1 false, i1 false}
!916 = !{ptr @.str.455, !917, !"<string literal>", i1 false, i1 false}
!917 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2579, i32 24}
!918 = !{ptr @.str.456, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2587, i32 24}
!920 = !{ptr @.str.458, !921, !"<string literal>", i1 false, i1 false}
!921 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2598, i32 3}
!922 = !{ptr @hclge_handle_pf_msix_error._entry.457, !921, !"_entry", i1 false, i1 false}
!923 = !{ptr @hclge_handle_pf_msix_error._entry_ptr.459, !921, !"_entry_ptr", i1 false, i1 false}
!924 = !{ptr @.str.460, !925, !"<string literal>", i1 false, i1 false}
!925 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1122, i32 10}
!926 = distinct !{null, !927, !"<string literal>", i1 false, i1 false}
!927 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1126, i32 10}
!928 = distinct !{null, !929, !"hclge_ssu_port_based_pf_int", i1 false, i1 false}
!929 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1115, i32 36}
!930 = !{ptr @.str.462, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 349, i32 10}
!932 = !{ptr @.str.463, !933, !"<string literal>", i1 false, i1 false}
!933 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 353, i32 10}
!934 = distinct !{null, !935, !"hclge_ppp_pf_abnormal_int", i1 false, i1 false}
!935 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 346, i32 36}
!936 = !{ptr @.str.464, !937, !"<string literal>", i1 false, i1 false}
!937 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2459, i32 3}
!938 = !{ptr @.str.465, !937, !"<string literal>", i1 false, i1 false}
!939 = !{ptr @hclge_handle_over_8bd_err._entry, !937, !"_entry", i1 false, i1 false}
!940 = !{ptr @hclge_handle_over_8bd_err._entry_ptr, !937, !"_entry_ptr", i1 false, i1 false}
!941 = !{ptr @.str.467, !942, !"<string literal>", i1 false, i1 false}
!942 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2464, i32 2}
!943 = !{ptr @hclge_handle_over_8bd_err._entry.466, !942, !"_entry", i1 false, i1 false}
!944 = !{ptr @hclge_handle_over_8bd_err._entry_ptr.468, !942, !"_entry_ptr", i1 false, i1 false}
!945 = !{ptr @.str.470, !946, !"<string literal>", i1 false, i1 false}
!946 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2469, i32 4}
!947 = !{ptr @hclge_handle_over_8bd_err._entry.469, !946, !"_entry", i1 false, i1 false}
!948 = !{ptr @hclge_handle_over_8bd_err._entry_ptr.471, !946, !"_entry_ptr", i1 false, i1 false}
!949 = !{ptr @.str.473, !950, !"<string literal>", i1 false, i1 false}
!950 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2482, i32 4}
!951 = !{ptr @hclge_handle_over_8bd_err._entry.472, !950, !"_entry", i1 false, i1 false}
!952 = !{ptr @hclge_handle_over_8bd_err._entry_ptr.474, !950, !"_entry_ptr", i1 false, i1 false}
!953 = !{ptr @.str.475, !954, !"<string literal>", i1 false, i1 false}
!954 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1800, i32 3}
!955 = !{ptr @.str.476, !954, !"<string literal>", i1 false, i1 false}
!956 = !{ptr @hclge_query_bd_num._entry, !954, !"_entry", i1 false, i1 false}
!957 = !{ptr @hclge_query_bd_num._entry_ptr, !954, !"_entry_ptr", i1 false, i1 false}
!958 = !{ptr @.str.478, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1808, i32 3}
!960 = !{ptr @hclge_query_bd_num._entry.477, !959, !"_entry", i1 false, i1 false}
!961 = !{ptr @hclge_query_bd_num._entry_ptr.479, !959, !"_entry_ptr", i1 false, i1 false}
!962 = !{ptr @.str.480, !963, !"<string literal>", i1 false, i1 false}
!963 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2861, i32 3}
!964 = !{ptr @.str.481, !963, !"<string literal>", i1 false, i1 false}
!965 = !{ptr @hclge_query_all_err_bd_num._entry, !963, !"_entry", i1 false, i1 false}
!966 = !{ptr @hclge_query_all_err_bd_num._entry_ptr, !963, !"_entry_ptr", i1 false, i1 false}
!967 = !{ptr @.str.483, !968, !"<string literal>", i1 false, i1 false}
!968 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2867, i32 3}
!969 = !{ptr @hclge_query_all_err_bd_num._entry.482, !968, !"_entry", i1 false, i1 false}
!970 = !{ptr @hclge_query_all_err_bd_num._entry_ptr.484, !968, !"_entry_ptr", i1 false, i1 false}
!971 = !{ptr @.str.485, !972, !"<string literal>", i1 false, i1 false}
!972 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2883, i32 3}
!973 = !{ptr @.str.486, !972, !"<string literal>", i1 false, i1 false}
!974 = !{ptr @hclge_query_all_err_info._entry, !972, !"_entry", i1 false, i1 false}
!975 = !{ptr @hclge_query_all_err_info._entry_ptr, !972, !"_entry_ptr", i1 false, i1 false}
!976 = !{ptr @.str.487, !977, !"<string literal>", i1 false, i1 false}
!977 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2827, i32 4}
!978 = !{ptr @.str.488, !977, !"<string literal>", i1 false, i1 false}
!979 = !{ptr @hclge_handle_error_module_log._entry, !977, !"_entry", i1 false, i1 false}
!980 = !{ptr @hclge_handle_error_module_log._entry_ptr, !977, !"_entry_ptr", i1 false, i1 false}
!981 = !{ptr @.str.490, !982, !"<string literal>", i1 false, i1 false}
!982 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2836, i32 5}
!983 = !{ptr @hclge_handle_error_module_log._entry.489, !982, !"_entry", i1 false, i1 false}
!984 = !{ptr @hclge_handle_error_module_log._entry_ptr.491, !982, !"_entry_ptr", i1 false, i1 false}
!985 = !{ptr @.str.492, !986, !"<string literal>", i1 false, i1 false}
!986 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2794, i32 3}
!987 = !{ptr @.str.493, !986, !"<string literal>", i1 false, i1 false}
!988 = !{ptr @hclge_handle_error_type_reg_log._entry, !986, !"_entry", i1 false, i1 false}
!989 = !{ptr @hclge_handle_error_type_reg_log._entry_ptr, !986, !"_entry_ptr", i1 false, i1 false}
!990 = !{ptr @.str.494, !986, !"<string literal>", i1 false, i1 false}
!991 = !{ptr @.str.495, !986, !"<string literal>", i1 false, i1 false}
!992 = !{ptr @.str.497, !993, !"<string literal>", i1 false, i1 false}
!993 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2800, i32 3}
!994 = !{ptr @hclge_handle_error_type_reg_log._entry.496, !993, !"_entry", i1 false, i1 false}
!995 = !{ptr @hclge_handle_error_type_reg_log._entry_ptr.498, !993, !"_entry_ptr", i1 false, i1 false}
!996 = !{ptr @.str.500, !997, !"<string literal>", i1 false, i1 false}
!997 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2803, i32 2}
!998 = !{ptr @hclge_handle_error_type_reg_log._entry.499, !997, !"_entry", i1 false, i1 false}
!999 = !{ptr @hclge_handle_error_type_reg_log._entry_ptr.501, !997, !"_entry_ptr", i1 false, i1 false}
!1000 = !{ptr @.str.503, !1001, !"<string literal>", i1 false, i1 false}
!1001 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 2805, i32 3}
!1002 = !{ptr @hclge_handle_error_type_reg_log._entry.502, !1001, !"_entry", i1 false, i1 false}
!1003 = !{ptr @hclge_handle_error_type_reg_log._entry_ptr.504, !1001, !"_entry_ptr", i1 false, i1 false}
!1004 = !{ptr @.str.505, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1202, i32 10}
!1006 = !{ptr @.str.506, !1007, !"<string literal>", i1 false, i1 false}
!1007 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1205, i32 10}
!1008 = !{ptr @.str.507, !1009, !"<string literal>", i1 false, i1 false}
!1009 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1208, i32 10}
!1010 = !{ptr @.str.508, !1011, !"<string literal>", i1 false, i1 false}
!1011 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1211, i32 10}
!1012 = !{ptr @.str.509, !1013, !"<string literal>", i1 false, i1 false}
!1013 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1214, i32 10}
!1014 = !{ptr @.str.510, !1015, !"<string literal>", i1 false, i1 false}
!1015 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1217, i32 10}
!1016 = !{ptr @.str.511, !1017, !"<string literal>", i1 false, i1 false}
!1017 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1220, i32 10}
!1018 = !{ptr @.str.512, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1223, i32 10}
!1020 = !{ptr @.str.513, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1226, i32 10}
!1022 = !{ptr @.str.514, !1023, !"<string literal>", i1 false, i1 false}
!1023 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1229, i32 10}
!1024 = !{ptr @.str.515, !1025, !"<string literal>", i1 false, i1 false}
!1025 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1232, i32 10}
!1026 = !{ptr @.str.516, !1027, !"<string literal>", i1 false, i1 false}
!1027 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1235, i32 10}
!1028 = !{ptr @.str.517, !1029, !"<string literal>", i1 false, i1 false}
!1029 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1238, i32 10}
!1030 = !{ptr @.str.518, !1031, !"<string literal>", i1 false, i1 false}
!1031 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1241, i32 10}
!1032 = !{ptr @.str.519, !1033, !"<string literal>", i1 false, i1 false}
!1033 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1244, i32 10}
!1034 = !{ptr @.str.520, !1035, !"<string literal>", i1 false, i1 false}
!1035 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1247, i32 10}
!1036 = !{ptr @.str.521, !1037, !"<string literal>", i1 false, i1 false}
!1037 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1250, i32 10}
!1038 = !{ptr @.str.522, !1039, !"<string literal>", i1 false, i1 false}
!1039 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1253, i32 10}
!1040 = !{ptr @.str.523, !1041, !"<string literal>", i1 false, i1 false}
!1041 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1256, i32 10}
!1042 = !{ptr @.str.524, !1043, !"<string literal>", i1 false, i1 false}
!1043 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1259, i32 10}
!1044 = !{ptr @.str.525, !1045, !"<string literal>", i1 false, i1 false}
!1045 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1262, i32 10}
!1046 = !{ptr @.str.526, !1047, !"<string literal>", i1 false, i1 false}
!1047 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1265, i32 10}
!1048 = !{ptr @.str.527, !1049, !"<string literal>", i1 false, i1 false}
!1049 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1268, i32 10}
!1050 = !{ptr @.str.528, !1051, !"<string literal>", i1 false, i1 false}
!1051 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1271, i32 10}
!1052 = !{ptr @.str.529, !1053, !"<string literal>", i1 false, i1 false}
!1053 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1274, i32 10}
!1054 = !{ptr @.str.530, !1055, !"<string literal>", i1 false, i1 false}
!1055 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1277, i32 10}
!1056 = !{ptr @hclge_hw_module_id_st, !1057, !"hclge_hw_module_id_st", i1 false, i1 false}
!1057 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1199, i32 40}
!1058 = !{ptr @.str.531, !1059, !"<string literal>", i1 false, i1 false}
!1059 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1284, i32 10}
!1060 = !{ptr @.str.532, !1061, !"<string literal>", i1 false, i1 false}
!1061 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1287, i32 10}
!1062 = !{ptr @.str.533, !1063, !"<string literal>", i1 false, i1 false}
!1063 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1290, i32 10}
!1064 = !{ptr @.str.534, !1065, !"<string literal>", i1 false, i1 false}
!1065 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1293, i32 10}
!1066 = !{ptr @.str.535, !1067, !"<string literal>", i1 false, i1 false}
!1067 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1296, i32 10}
!1068 = !{ptr @.str.536, !1069, !"<string literal>", i1 false, i1 false}
!1069 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1299, i32 10}
!1070 = !{ptr @.str.537, !1071, !"<string literal>", i1 false, i1 false}
!1071 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1302, i32 10}
!1072 = !{ptr @.str.538, !1073, !"<string literal>", i1 false, i1 false}
!1073 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1305, i32 10}
!1074 = !{ptr @.str.539, !1075, !"<string literal>", i1 false, i1 false}
!1075 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1308, i32 10}
!1076 = !{ptr @.str.540, !1077, !"<string literal>", i1 false, i1 false}
!1077 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1311, i32 10}
!1078 = !{ptr @.str.541, !1079, !"<string literal>", i1 false, i1 false}
!1079 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1314, i32 10}
!1080 = !{ptr @.str.542, !1081, !"<string literal>", i1 false, i1 false}
!1081 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1317, i32 10}
!1082 = !{ptr @.str.543, !1083, !"<string literal>", i1 false, i1 false}
!1083 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1320, i32 10}
!1084 = !{ptr @.str.544, !1085, !"<string literal>", i1 false, i1 false}
!1085 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1323, i32 10}
!1086 = !{ptr @.str.545, !1087, !"<string literal>", i1 false, i1 false}
!1087 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1326, i32 10}
!1088 = !{ptr @.str.546, !1089, !"<string literal>", i1 false, i1 false}
!1089 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1329, i32 10}
!1090 = !{ptr @.str.547, !1091, !"<string literal>", i1 false, i1 false}
!1091 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1332, i32 10}
!1092 = !{ptr @.str.548, !1093, !"<string literal>", i1 false, i1 false}
!1093 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1335, i32 10}
!1094 = !{ptr @hclge_hw_type_id_st, !1095, !"hclge_hw_type_id_st", i1 false, i1 false}
!1095 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_err.c", i32 1281, i32 38}
!1096 = !{i32 1, !"wchar_size", i32 2}
!1097 = !{i32 1, !"min_enum_size", i32 4}
!1098 = !{i32 8, !"branch-target-enforcement", i32 0}
!1099 = !{i32 8, !"sign-return-address", i32 0}
!1100 = !{i32 8, !"sign-return-address-all", i32 0}
!1101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1102 = !{i32 7, !"uwtable", i32 1}
!1103 = !{i32 7, !"frame-pointer", i32 2}
!1104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1105 = !{i64 6344368}
!1106 = !{i64 2158036256}
!1107 = !{i64 2158032833}
!1108 = !{i64 6343950}
!1109 = !{!"branch_weights", i32 1, i32 2000}
!1110 = !{i64 2158283500}
