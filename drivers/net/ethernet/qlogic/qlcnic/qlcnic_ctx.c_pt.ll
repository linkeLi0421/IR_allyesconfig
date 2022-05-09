; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qlcnic_mailbox_metadata = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct._cdrp_cmd = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.qlcnic_recv_context = type { ptr, ptr, i32, i16, i16 }
%struct.qlcnic_hostrq_rx_ctx = type { i64, [4 x i32], i32, i32, i32, i32, i16, i16, i16, i8, i8, [128 x i8], [0 x i8] }
%struct.qlcnic_host_rds_ring = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, [40 x i8] }
%struct.qlcnic_hostrq_rds_ring = type { i64, i64, i32, i32 }
%struct.qlcnic_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], ptr, i32, i32, [28 x i8], [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.qlcnic_hostrq_sds_ring = type { i64, i32, i16, i16 }
%struct.qlcnic_intrpt_config = type { i8, i8, i16, i32 }
%struct.qlcnic_cardrsp_rx_ctx = type { i32, i32, i32, i32, i16, i16, i16, i8, i8, [128 x i8], [0 x i8] }
%struct.qlcnic_cardrsp_rds_ring = type { i32, i32 }
%struct.qlcnic_cardrsp_sds_ring = type { i32, i32 }
%struct.qlcnic_host_tx_ring = type { i32, ptr, [28 x i8], i16, i32, i32, i32, i32, %struct.qlcnic_tx_queue_stats, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, ptr, %struct.spinlock, [112 x i8] }
%struct.qlcnic_tx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.qlcnic_hostrq_tx_ctx = type { i64, i64, i64, [4 x i32], i32, i32, i16, i16, i16, i16, %struct.qlcnic_hostrq_cds_ring, [128 x i8] }
%struct.qlcnic_hostrq_cds_ring = type { i64, i32, i32 }
%struct.qlcnic_cardrsp_tx_ctx = type { i32, i16, i8, i8, %struct.qlcnic_cardrsp_cds_ring, [128 x i8] }
%struct.qlcnic_cardrsp_cds_ring = type { i32, i32 }
%struct.qlcnic_info_le = type { i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, [56 x i8] }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.qlcnic_pci_info_le = type { i16, i16, i16, i16, i16, i16, [2 x i16], [6 x i8], i16, [104 x i8] }
%struct.qlcnic_pci_info = type { i16, i16, i16, i16, i16, i16, [6 x i8], i16 }
%struct.qlcnic_eswitch = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.qlcnic_esw_stats_le = type { i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.__qlcnic_esw_statistics = type { i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.qlcnic_mac_statistics_le = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64 }
%struct.qlcnic_mac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i64 }
%struct.qlcnic_npar_info = type { i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }
%struct.qlcnic_esw_func_cfg = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8] }

@qlcnic_mbx_tbl = internal constant { [33 x %struct.qlcnic_mailbox_metadata], [116 x i8] } { [33 x %struct.qlcnic_mailbox_metadata] [%struct.qlcnic_mailbox_metadata { i32 7, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 8, i32 2, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 9, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 10, i32 3, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 17, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 18, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 19, i32 4, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 20, i32 5, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 21, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 22, i32 4, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 23, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 24, i32 4, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 25, i32 4, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 31, i32 4, i32 3 }, %struct.qlcnic_mailbox_metadata { i32 32, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 33, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 34, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 36, i32 4, i32 3 }, %struct.qlcnic_mailbox_metadata { i32 37, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 38, i32 4, i32 3 }, %struct.qlcnic_mailbox_metadata { i32 39, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 40, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 55, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 41, i32 4, i32 3 }, %struct.qlcnic_mailbox_metadata { i32 42, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 46, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 47, i32 4, i32 4 }, %struct.qlcnic_mailbox_metadata { i32 48, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 56, i32 4, i32 1 }, %struct.qlcnic_mailbox_metadata { i32 60, i32 4, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 57, i32 2, i32 3 }, %struct.qlcnic_mailbox_metadata { i32 52, i32 1, i32 2 }, %struct.qlcnic_mailbox_metadata { i32 53, i32 4, i32 1 }], [116 x i8] zeroinitializer }, align 32
@qlcnic_82xx_issue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"command timeout, response = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_82xx_issue_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_82xx_issue_cmd._entry_ptr = internal global ptr @qlcnic_82xx_issue_cmd._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CDRP invalid args: [%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CDRP command not supported: [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CDRP requested action not permitted: [%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CDRP invalid or unknown cmd received: [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CDRP command timeout: [%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CDRP command failed: [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_82xx_issue_cmd._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_82xx_issue_cmd._entry_ptr.12 = internal global ptr @qlcnic_82xx_issue_cmd._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_set_drv_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 201, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set driver version in firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_fw_cmd_set_drv_version\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_set_drv_version._entry_ptr = internal global ptr @qlcnic_fw_cmd_set_drv_version._entry, section ".printk_index", align 4
@qlcnic_fw_cmd_set_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to set mtu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_fw_cmd_set_mtu\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_fw_cmd_set_mtu._entry_ptr = internal global ptr @qlcnic_fw_cmd_set_mtu._entry, section ".printk_index", align 4
@qlcnic_82xx_fw_cmd_create_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create rx ctx in firmware%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_82xx_fw_cmd_create_rx_ctx\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_82xx_fw_cmd_create_rx_ctx._entry_ptr = internal global ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry, section ".printk_index", align 4
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rx Context[%d] Created, state 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_82xx_fw_cmd_del_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to destroy rx ctx in firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_82xx_fw_cmd_del_rx_ctx\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_82xx_fw_cmd_del_rx_ctx._entry_ptr = internal global ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry, section ".printk_index", align 4
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tx Context[0x%x] Created, state 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create tx ctx in firmware%d\0A\00", [57 x i8] zeroinitializer }, align 32
@qlcnic_82xx_fw_cmd_del_tx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to destroy tx ctx in firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_82xx_fw_cmd_del_tx_ctx\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_82xx_fw_cmd_del_tx_ctx._entry_ptr = internal global ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to %s interrupts %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Add\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Delete\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to configure interrupt for %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get mac address%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_82xx_get_mac_address\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_mac_address._entry_ptr = internal global ptr @qlcnic_82xx_get_mac_address._entry, section ".printk_index", align 4
@qlcnic_82xx_get_nic_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 874, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get nic info%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_82xx_get_nic_info\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_nic_info._entry_ptr = internal global ptr @qlcnic_82xx_get_nic_info._entry, section ".printk_index", align 4
@qlcnic_82xx_set_nic_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 940, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set nic info%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_82xx_set_nic_info\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_82xx_set_nic_info._entry_ptr = internal global ptr @qlcnic_82xx_set_nic_info._entry, section ".printk_index", align 4
@qlcnic_82xx_get_pci_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get PCI Info%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_82xx_get_pci_info\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_pci_info._entry_ptr = internal global ptr @qlcnic_82xx_get_pci_info._entry, section ".printk_index", align 4
@qlcnic_82xx_get_pci_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: Invalid function count: total nic func[%x], total pci func[%x]\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_pci_info._entry_ptr.42 = internal global ptr @qlcnic_82xx_get_pci_info._entry.40, section ".printk_index", align 4
@qlcnic_config_port_mirroring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1033, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Not a management function\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_config_port_mirroring\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_config_port_mirroring._entry_ptr = internal global ptr @qlcnic_config_port_mirroring._entry, section ".printk_index", align 4
@qlcnic_config_port_mirroring._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1050, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed to configure port mirroring for vNIC function %d on eSwitch %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qlcnic_config_port_mirroring._entry_ptr.47 = internal global ptr @qlcnic_config_port_mirroring._entry.45, section ".printk_index", align 4
@qlcnic_config_port_mirroring._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1053, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Configured port mirroring for vNIC function %d on eSwitch %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_config_port_mirroring._entry_ptr.50 = internal global ptr @qlcnic_config_port_mirroring._entry.48, section ".printk_index", align 4
@qlcnic_get_port_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1076, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Not privilege to query stats for func=%d\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qlcnic_get_port_stats\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_get_port_stats._entry_ptr = internal global ptr @qlcnic_get_port_stats._entry, section ".printk_index", align 4
@qlcnic_get_mac_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Get mac stats failed, err=%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_get_mac_stats\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_get_mac_stats._entry_ptr = internal global ptr @qlcnic_get_mac_stats._entry, section ".printk_index", align 4
@qlcnic_clear_esw_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid args func_esw %d port %d rx_ctx %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_clear_esw_stats\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_clear_esw_stats._entry_ptr = internal global ptr @qlcnic_clear_esw_stats._entry, section ".printk_index", align 4
@qlcnic_config_switch_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.57, ptr @.str.2, i32 1327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_config_switch_port\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_config_switch_port._entry_ptr = internal global ptr @qlcnic_config_switch_port._entry, section ".printk_index", align 4
@qlcnic_config_switch_port._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 1375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Invalid opmode 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_config_switch_port._entry_ptr.60 = internal global ptr @qlcnic_config_switch_port._entry.58, section ".printk_index", align 4
@qlcnic_config_switch_port._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 1391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to configure eswitch for vNIC function %d\0A\00", [46 x i8] zeroinitializer }, align 32
@qlcnic_config_switch_port._entry_ptr.63 = internal global ptr @qlcnic_config_switch_port._entry.61, section ".printk_index", align 4
@qlcnic_config_switch_port._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 1394, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Configured eSwitch for vNIC function %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qlcnic_config_switch_port._entry_ptr.66 = internal global ptr @qlcnic_config_switch_port._entry.64, section ".printk_index", align 4
@__qlcnic_get_eswitch_port_config._entry = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1303, ptr @.str.16, ptr @.str.4 }, align 1
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Get eSwitch port config for vNIC function %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__qlcnic_get_eswitch_port_config\00", [63 x i8] zeroinitializer }, align 32
@__qlcnic_get_eswitch_port_config._entry_ptr = internal global ptr @__qlcnic_get_eswitch_port_config._entry, section ".printk_index", align 4
@__qlcnic_get_eswitch_port_config._entry.69 = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1306, ptr @.str.3, ptr @.str.4 }, align 1
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to get eswitch port config for vNIC function %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__qlcnic_get_eswitch_port_config._entry_ptr.71 = internal global ptr @__qlcnic_get_eswitch_port_config._entry.69, section ".printk_index", align 4
@switch.table.qlcnic_82xx_issue_cmd = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.5, ptr @.str.10, ptr @.str.10, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.6, ptr @.str.8, ptr @.str.9], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 16, i64 32816, i64 32832, i64 33840, i64 33856, i64 34864, i64 35888]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"qlcnic_mbx_tbl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 9, i32 45 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 136, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 142, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 146, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 149, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 152, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 155, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 158, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 161, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 182, i32 43 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 200, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 226, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 346, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 379, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 405, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 505, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 508, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 535, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 787, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 788, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 789, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 796, i32 9 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 838, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 873, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 939, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1000, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1008, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1032, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1049, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1052, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1075, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1171, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1276, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1326, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1374, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1390, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1393, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1302, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [51 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1305, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [35 x i8] c"switch.table.qlcnic_82xx_issue_cmd\00", align 1
@llvm.compiler.used = appending global [106 x ptr] [ptr @__qlcnic_get_eswitch_port_config._entry, ptr @__qlcnic_get_eswitch_port_config._entry.69, ptr @__qlcnic_get_eswitch_port_config._entry_ptr, ptr @__qlcnic_get_eswitch_port_config._entry_ptr.71, ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry, ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry_ptr, ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry, ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry_ptr, ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry, ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry_ptr, ptr @qlcnic_82xx_get_mac_address._entry, ptr @qlcnic_82xx_get_mac_address._entry_ptr, ptr @qlcnic_82xx_get_nic_info._entry, ptr @qlcnic_82xx_get_nic_info._entry_ptr, ptr @qlcnic_82xx_get_pci_info._entry, ptr @qlcnic_82xx_get_pci_info._entry.40, ptr @qlcnic_82xx_get_pci_info._entry_ptr, ptr @qlcnic_82xx_get_pci_info._entry_ptr.42, ptr @qlcnic_82xx_issue_cmd._entry, ptr @qlcnic_82xx_issue_cmd._entry.11, ptr @qlcnic_82xx_issue_cmd._entry_ptr, ptr @qlcnic_82xx_issue_cmd._entry_ptr.12, ptr @qlcnic_82xx_set_nic_info._entry, ptr @qlcnic_82xx_set_nic_info._entry_ptr, ptr @qlcnic_clear_esw_stats._entry, ptr @qlcnic_clear_esw_stats._entry_ptr, ptr @qlcnic_config_port_mirroring._entry, ptr @qlcnic_config_port_mirroring._entry.45, ptr @qlcnic_config_port_mirroring._entry.48, ptr @qlcnic_config_port_mirroring._entry_ptr, ptr @qlcnic_config_port_mirroring._entry_ptr.47, ptr @qlcnic_config_port_mirroring._entry_ptr.50, ptr @qlcnic_config_switch_port._entry, ptr @qlcnic_config_switch_port._entry.58, ptr @qlcnic_config_switch_port._entry.61, ptr @qlcnic_config_switch_port._entry.64, ptr @qlcnic_config_switch_port._entry_ptr, ptr @qlcnic_config_switch_port._entry_ptr.60, ptr @qlcnic_config_switch_port._entry_ptr.63, ptr @qlcnic_config_switch_port._entry_ptr.66, ptr @qlcnic_fw_cmd_set_drv_version._entry, ptr @qlcnic_fw_cmd_set_drv_version._entry_ptr, ptr @qlcnic_fw_cmd_set_mtu._entry, ptr @qlcnic_fw_cmd_set_mtu._entry_ptr, ptr @qlcnic_get_mac_stats._entry, ptr @qlcnic_get_mac_stats._entry_ptr, ptr @qlcnic_get_port_stats._entry, ptr @qlcnic_get_port_stats._entry_ptr, ptr @qlcnic_mbx_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @switch.table.qlcnic_82xx_issue_cmd], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_mbx_tbl to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_issue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_issue_cmd._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_set_drv_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_fw_cmd_set_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_nic_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_set_nic_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_pci_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_pci_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_port_mirroring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_port_mirroring._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_port_mirroring._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_port_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_get_mac_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_clear_esw_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_switch_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_switch_port._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_switch_port._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_switch_port._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlcnic_82xx_issue_cmd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_alloc_mbx_args(ptr nocapture noundef %mbx, ptr nocapture noundef readnone %adapter, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.097 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_mbx_tbl, i32 %i.097
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp1 = icmp eq i32 %1, %type
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %in_args = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_mbx_tbl, i32 %i.097, i32 1
  %2 = ptrtoint ptr %in_args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_args, align 4
  %req = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %req, align 4
  %out_args = getelementptr %struct.qlcnic_mailbox_metadata, ptr @qlcnic_mbx_tbl, i32 %i.097, i32 2
  %5 = ptrtoint ptr %out_args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out_args, align 4
  %rsp = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 3
  %7 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rsp, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !153

kcalloc.exit.thread:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arg82 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arg82 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arg82, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #10
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %arg, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsp, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #7
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit80.thread, label %if.end7.i.i78, !prof !153

kcalloc.exit80.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arg1590 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arg1590 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arg1590, align 4
  br label %if.then19

if.end7.i.i78:                                    ; preds = %if.end
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i.i77 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 2848) #10
  %arg15 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %mbx, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arg15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i77, ptr %arg15, align 4
  %tobool18.not = icmp eq ptr %call8.i.i77, null
  br i1 %tobool18.not, label %if.end7.i.i78.if.then19_crit_edge, label %if.end24

if.end7.i.i78.if.then19_crit_edge:                ; preds = %if.end7.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.end7.i.i78.if.then19_crit_edge, %kcalloc.exit80.thread
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg, align 4
  tail call void @kfree(ptr noundef %21) #7
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arg, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end7.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %type, ptr %24, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end24, %if.then19, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end24 ], [ -12, %kcalloc.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_free_mbx_args(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arg, align 4
  %arg3 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg3, align 4
  tail call void @kfree(ptr noundef %4) #7
  %5 = ptrtoint ptr %arg3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arg3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_issue_cmd(ptr noundef %adapter, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1, align 8
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_func.i, align 1
  %fw_hal_version.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %fw_hal_version.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_hal_version.i, align 4
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %api_lock.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %api_lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %api_lock.i, align 4
  %call.i = tail call i32 %12(ptr noundef %adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %14, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1.i = shl i32 %8, 8
  %shl.i = and i32 %and1.i, 65280
  %conv.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv.i
  %or2.i = or i32 %or.i, -889323520
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %call9 = tail call i32 %21(ptr noundef %adapter, i32 noundef 136323624, i32 noundef %or2.i) #7
  %req = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp134 = icmp ugt i32 %23, 1
  br i1 %cmp134, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %arg15 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %hw_ops11 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %hw_ops11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_ops11, align 4
  %write_reg12 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_reg12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg12, align 4
  %mul = shl i32 %i.0135, 2
  %add13 = add i32 %mul, 136323608
  %30 = ptrtoint ptr %arg15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arg15, align 4
  %arrayidx16 = getelementptr i32, ptr %31, i32 %i.0135
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %call17 = tail call i32 %29(ptr noundef %adapter, i32 noundef %add13, i32 noundef %33) #7
  %inc = add nuw i32 %i.0135, 1
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %hw_ops19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %hw_ops19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_ops19, align 4
  %write_reg20 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_reg20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg20, align 4
  %arg22 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %arg22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arg22, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %or = or i32 %45, -2147483648
  %call24 = tail call i32 %41(ptr noundef %adapter, i32 noundef 136323608, i32 noundef %or) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #7
  %46 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %err.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.end
  %timeout.0.i = phi i32 [ 0, %for.end ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 4000
  br i1 %exitcond.i, label %qlcnic_poll_rsp.exit.thread, label %if.end.i

qlcnic_poll_rsp.exit.thread:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #7
  br label %do.end

if.end.i:                                         ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 8
  %hw_ops.i130 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %49, i32 0, i32 46
  %50 = ptrtoint ptr %hw_ops.i130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_ops.i130, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_reg.i, align 4
  %call.i131 = call i32 %53(ptr noundef %adapter, i32 noundef 136323608, ptr noundef nonnull %err.i) #7
  %cmp1.i = icmp slt i32 %call.i131, 0
  br i1 %cmp1.i, label %if.end.i.do.body.i_crit_edge, label %qlcnic_poll_rsp.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

qlcnic_poll_rsp.exit:                             ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #7
  %54 = zext i32 %call.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i131, label %qlcnic_poll_rsp.exit.if.end63_crit_edge [
    i32 3, label %qlcnic_poll_rsp.exit.do.end_crit_edge
    i32 2, label %if.then32
    i32 1, label %if.then57
  ]

qlcnic_poll_rsp.exit.do.end_crit_edge:            ; preds = %qlcnic_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_poll_rsp.exit.if.end63_crit_edge:          ; preds = %qlcnic_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end:                                           ; preds = %qlcnic_poll_rsp.exit.do.end_crit_edge, %qlcnic_poll_rsp.exit.thread
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 3) #11
  %arg29 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %arg29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arg29, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 17, ptr %56, align 4
  br label %if.end63

if.then32:                                        ; preds = %qlcnic_poll_rsp.exit
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 8
  %hw_ops34 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %hw_ops34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_ops34, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_reg, align 4
  %call35 = call i32 %63(ptr noundef %adapter, i32 noundef 136323612, ptr noundef nonnull %err) #7
  %arg37 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %arg37 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arg37, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call35, ptr %65, align 4
  %67 = load ptr, ptr %arg37, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %switch.tableidx = add i32 %69, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %70 = icmp ult i32 %switch.tableidx, 12
  br i1 %70, label %switch.lookup, label %if.then32.do.end50_crit_edge

if.then32.do.end50_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

switch.lookup:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [12 x ptr], ptr @switch.table.qlcnic_82xx_issue_cmd, i32 0, i32 %switch.tableidx
  %71 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end50

do.end50:                                         ; preds = %switch.lookup, %if.then32.do.end50_crit_edge
  %fmt.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.10, %if.then32.do.end50_crit_edge ]
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull %fmt.0, i32 noundef %69) #11
  call void @qlcnic_dump_mbx(ptr noundef %adapter, ptr noundef %cmd) #7
  br label %if.end63

if.then57:                                        ; preds = %qlcnic_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arg59 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %arg59 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arg59, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.end50, %do.end, %qlcnic_poll_rsp.exit.if.end63_crit_edge
  %rsp65 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3
  %75 = ptrtoint ptr %rsp65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rsp65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp67136 = icmp ugt i32 %76, 1
  br i1 %cmp67136, label %for.body68.lr.ph, label %if.end63.for.end81_crit_edge

if.end63.for.end81_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.body68.lr.ph:                                 ; preds = %if.end63
  %arg77 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  br label %for.body68

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.body68.lr.ph
  %i.1137 = phi i32 [ 1, %for.body68.lr.ph ], [ %inc80, %for.body68.for.body68_crit_edge ]
  %77 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter, align 8
  %hw_ops70 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %78, i32 0, i32 46
  %79 = ptrtoint ptr %hw_ops70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_ops70, align 4
  %read_reg71 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read_reg71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_reg71, align 4
  %mul72 = shl i32 %i.1137, 2
  %add74 = add i32 %mul72, 136323608
  %call75 = call i32 %82(ptr noundef %adapter, i32 noundef %add74, ptr noundef nonnull %err) #7
  %83 = ptrtoint ptr %arg77 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arg77, align 4
  %arrayidx78 = getelementptr i32, ptr %84, i32 %i.1137
  %85 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call75, ptr %arrayidx78, align 4
  %inc80 = add nuw i32 %i.1137, 1
  %86 = ptrtoint ptr %rsp65 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rsp65, align 4
  %cmp67 = icmp ult i32 %inc80, %87
  br i1 %cmp67, label %for.body68.for.body68_crit_edge, label %for.body68.for.end81_crit_edge

for.body68.for.end81_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body68

for.end81:                                        ; preds = %for.body68.for.end81_crit_edge, %if.end63.for.end81_crit_edge
  %88 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter, align 8
  %hw_ops.i132 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %89, i32 0, i32 46
  %90 = ptrtoint ptr %hw_ops.i132 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw_ops.i132, align 4
  %api_unlock.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %api_unlock.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %api_unlock.i, align 4
  call void %93(ptr noundef %adapter) #7
  %arg83 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  br label %cleanup

cleanup:                                          ; preds = %for.end81, %if.then
  %retval.0.in.in = phi ptr [ %arg, %if.then ], [ %arg83, %for.end81 ]
  %94 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load4_noabort(i32 %94)
  %retval.0.in = load ptr, ptr %retval.0.in.in, align 4
  %95 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %95)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_dump_mbx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_fw_cmd_set_drv_version(ptr noundef %adapter, i32 noundef %fw_cmd) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  %drv_string = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %drv_string) #7
  %1 = call ptr @memset(ptr %drv_string, i32 0, i32 12)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %drv_string, i32 noundef 12, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef 3, i32 noundef 66)
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %7(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef %fw_cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [12 x i8], ptr %drv_string, i32 0, i32 8
  %9 = getelementptr inbounds [12 x i8], ptr %drv_string, i32 0, i32 4
  %10 = ptrtoint ptr %drv_string to i32
  call void @__asan_load4_noabort(i32 %10)
  %arg1.0.copyload = load i32, ptr %drv_string, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %arg2.0.copyload = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %arg3.0.copyload = load i32, ptr %8, align 4
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %arg1.0.copyload, ptr %arrayidx, align 4
  %16 = load ptr, ptr %arg, align 4
  %arrayidx9 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %arg2.0.copyload, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %arg, align 4
  %arrayidx12 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %arg3.0.copyload, ptr %arrayidx12, align 4
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %hw_ops.i27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %hw_ops.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops.i27, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i28 = call i32 %25(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool14.not = icmp eq i32 %call.i28, 0
  br i1 %tobool14.not, label %qlcnic_issue_cmd.exit.if.end16_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end16_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end16_crit_edge
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %qlcnic_issue_cmd.exit.if.end16_crit_edge ]
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %29) #7
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %drv_string) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_fw_cmd_set_mtu(ptr noundef %adapter, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %1 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %recv_ctx1, align 4
  %state = getelementptr inbounds %struct.qlcnic_recv_context, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %10(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %context_id = getelementptr inbounds %struct.qlcnic_recv_context, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %context_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %context_id, align 4
  %conv = zext i16 %12 to i32
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %arrayidx, align 4
  %16 = load ptr, ptr %arg, align 4
  %arrayidx6 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mtu, ptr %arrayidx6, align 4
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %hw_ops.i21 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops.i21, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end3.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end3
  %call.i22 = call i32 %23(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool8.not = icmp eq i32 %call.i22, 0
  br i1 %tobool8.not, label %qlcnic_issue_cmd.exit.if.end10_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end10_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end3.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end10_crit_edge
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %qlcnic_issue_cmd.exit.if.end10_crit_edge ]
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_fw_cmd_create_rx_ctx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %hostrq_phys_addr = alloca i32, align 4
  %cardrsp_phys_addr = alloca i32, align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hostrq_phys_addr) #7
  %4 = ptrtoint ptr %hostrq_phys_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hostrq_phys_addr, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cardrsp_phys_addr) #7
  %5 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cardrsp_phys_addr, align 4, !annotation !154
  %netdev3 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev3, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %8 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %9 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_rds_rings, align 2
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %11 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drv_sds_rings, align 2
  %conv = zext i8 %10 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %add = add nuw nsw i32 %mul, 176
  %conv4 = zext i8 %12 to i32
  %mul5 = shl nuw nsw i32 %conv4, 4
  %add6 = add nuw nsw i32 %add, %mul5
  %mul8 = shl nuw nsw i32 %conv, 3
  %add9 = add nuw nsw i32 %mul8, 152
  %mul11 = shl nuw nsw i32 %conv4, 3
  %add12 = add nuw nsw i32 %add9, %mul11
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add6, ptr noundef nonnull %hostrq_phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call.i328 = call ptr @dma_alloc_attrs(ptr noundef %dev15, i32 noundef %add12, ptr noundef nonnull %cardrsp_phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %cmp17 = icmp eq ptr %call.i328, null
  br i1 %cmp17, label %if.end.out_free_rq_crit_edge, label %if.end20

if.end.out_free_rq_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_rq

if.end20:                                         ; preds = %if.end
  %17 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cardrsp_phys_addr, align 4
  %conv21 = zext i32 %18 to i64
  %19 = call i64 @llvm.bswap.i64(i64 %conv21)
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %call.i, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  br i1 %tobool.i.not, label %if.end20.if.else_crit_edge, label %land.lhs.true

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  %valid_field_offset = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %valid_field_offset to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 12032, ptr %valid_field_offset, align 1
  %sub = add i8 %12, -1
  %txrx_sds_binding = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %txrx_sds_binding to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub, ptr %txrx_sds_binding, align 1
  %host_int_crb_mode = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %host_int_crb_mode to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 16777216, ptr %host_int_crb_mode, align 1
  %host_rds_crb_mode = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %host_rds_crb_mode to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %host_rds_crb_mode, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %land.lhs.true.if.end29_crit_edge
  %cap.0 = phi i32 [ 2437, %if.else ], [ 4196741, %land.lhs.true.if.end29_crit_edge ]
  %32 = call i32 @llvm.bswap.i32(i32 %cap.0)
  %capabilities = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %capabilities to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %capabilities, align 1
  %conv30 = zext i8 %10 to i16
  %34 = shl nuw i16 %conv30, 8
  %num_rds_rings = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %num_rds_rings to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %num_rds_rings, align 1
  %conv31 = zext i8 %12 to i16
  %36 = shl nuw i16 %conv31, 8
  %num_sds_rings = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %num_sds_rings to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %num_sds_rings, align 1
  %rds_ring_offset = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %rds_ring_offset to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %rds_ring_offset, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %mul)
  %sds_ring_offset = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %sds_ring_offset to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %sds_ring_offset, align 1
  %data = getelementptr inbounds %struct.qlcnic_hostrq_rx_ctx, ptr %call.i, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp39339.not = icmp eq i8 %10, 0
  br i1 %cmp39339.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %producer = getelementptr %struct.qlcnic_host_rds_ring, ptr %42, i32 %indvars.iv, i32 4
  %43 = ptrtoint ptr %producer to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %producer, align 16
  %phys_addr42 = getelementptr %struct.qlcnic_host_rds_ring, ptr %42, i32 %indvars.iv, i32 10
  %44 = ptrtoint ptr %phys_addr42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys_addr42, align 4
  %conv43 = zext i32 %45 to i64
  %46 = call i64 @llvm.bswap.i64(i64 %conv43)
  %arrayidx45 = getelementptr %struct.qlcnic_hostrq_rds_ring, ptr %data, i32 %indvars.iv
  %47 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %arrayidx45, align 1
  %num_desc = getelementptr %struct.qlcnic_host_rds_ring, ptr %42, i32 %indvars.iv, i32 3
  %48 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_desc, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %ring_size = getelementptr %struct.qlcnic_hostrq_rds_ring, ptr %data, i32 %indvars.iv, i32 2
  %51 = ptrtoint ptr %ring_size to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %ring_size, align 1
  %52 = shl nuw i32 %indvars.iv, 24
  %ring_kind = getelementptr %struct.qlcnic_hostrq_rds_ring, ptr %data, i32 %indvars.iv, i32 3
  %53 = ptrtoint ptr %ring_kind to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %ring_kind, align 1
  %dma_size = getelementptr %struct.qlcnic_host_rds_ring, ptr %42, i32 %indvars.iv, i32 5
  %54 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_size, align 4
  %conv51 = zext i32 %55 to i64
  %56 = call i64 @llvm.bswap.i64(i64 %conv51)
  %buff_size = getelementptr %struct.qlcnic_hostrq_rds_ring, ptr %data, i32 %indvars.iv, i32 1
  %57 = ptrtoint ptr %buff_size to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %buff_size, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  %58 = ptrtoint ptr %sds_ring_offset to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %sds_ring_offset, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %add.ptr57 = getelementptr i8, ptr %data, i32 %60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp61341.not = icmp eq i8 %12, 0
  br i1 %cmp61341.not, label %for.end.for.end96_crit_edge, label %for.body63.lr.ph

for.end.for.end96_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.body63.lr.ph:                                 ; preds = %for.end
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %intr_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 53
  br label %for.body63

for.body63:                                       ; preds = %for.inc94.for.body63_crit_edge, %for.body63.lr.ph
  %indvars.iv351 = phi i32 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next352, %for.inc94.for.body63_crit_edge ]
  %61 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sds_rings, align 4
  %arrayidx65 = getelementptr %struct.qlcnic_host_sds_ring, ptr %62, i32 %indvars.iv351
  %63 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx65, align 128
  %desc_head = getelementptr %struct.qlcnic_host_sds_ring, ptr %62, i32 %indvars.iv351, i32 4
  %64 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc_head, align 16
  %num_desc66 = getelementptr %struct.qlcnic_host_sds_ring, ptr %62, i32 %indvars.iv351, i32 1
  %66 = ptrtoint ptr %num_desc66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_desc66, align 4
  %mul67 = shl i32 %67, 4
  %68 = call ptr @memset(ptr %65, i32 0, i32 %mul67)
  %phys_addr68 = getelementptr %struct.qlcnic_host_sds_ring, ptr %62, i32 %indvars.iv351, i32 10
  %69 = ptrtoint ptr %phys_addr68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %phys_addr68, align 8
  %conv69 = zext i32 %70 to i64
  %71 = call i64 @llvm.bswap.i64(i64 %conv69)
  %arrayidx71 = getelementptr %struct.qlcnic_hostrq_sds_ring, ptr %add.ptr57, i32 %indvars.iv351
  %72 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %arrayidx71, align 1
  %73 = ptrtoint ptr %num_desc66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_desc66, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %ring_size76 = getelementptr inbounds %struct.qlcnic_hostrq_sds_ring, ptr %arrayidx71, i32 0, i32 1
  %76 = ptrtoint ptr %ring_size76 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %ring_size76, align 1
  %77 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %state.i, align 4
  %79 = and i32 %78, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i330.not = icmp eq i32 %79, 0
  br i1 %tobool.i330.not, label %for.body63.if.else88_crit_edge, label %land.lhs.true79

for.body63.if.else88_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88

land.lhs.true79:                                  ; preds = %for.body63
  %80 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter, align 8
  %diag_test81 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %81, i32 0, i32 18
  %82 = ptrtoint ptr %diag_test81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %diag_test81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool82.not = icmp eq i8 %83, 0
  br i1 %tobool82.not, label %if.then83, label %land.lhs.true79.if.else88_crit_edge

land.lhs.true79.if.else88_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else88

if.then83:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %intr_tbl, align 4
  %id = getelementptr %struct.qlcnic_intrpt_config, ptr %85, i32 %indvars.iv351, i32 2
  %86 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %id, align 2
  %88 = call i16 @llvm.bswap.i16(i16 %87)
  br label %for.inc94

if.else88:                                        ; preds = %land.lhs.true79.if.else88_crit_edge, %for.body63.if.else88_crit_edge
  %89 = trunc i32 %indvars.iv351 to i16
  %90 = shl nuw i16 %89, 8
  br label %for.inc94

for.inc94:                                        ; preds = %if.else88, %if.then83
  %.sink = phi i16 [ %88, %if.then83 ], [ %90, %if.else88 ]
  %msi_index = getelementptr inbounds %struct.qlcnic_hostrq_sds_ring, ptr %arrayidx71, i32 0, i32 2
  %91 = ptrtoint ptr %msi_index to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %.sink, ptr %msi_index, align 1
  %indvars.iv.next352 = add nuw nsw i32 %indvars.iv351, 1
  %exitcond354.not = icmp eq i32 %indvars.iv.next352, %conv4
  br i1 %exitcond354.not, label %for.inc94.for.end96_crit_edge, label %for.inc94.for.body63_crit_edge

for.inc94.for.body63_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63

for.inc94.for.end96_crit_edge:                    ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.end96:                                        ; preds = %for.inc94.for.end96_crit_edge, %for.end.for.end96_crit_edge
  %92 = ptrtoint ptr %hostrq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hostrq_phys_addr, align 4
  %94 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %95, i32 0, i32 46
  %96 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i331 = call i32 %99(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool99.not = icmp eq i32 %call.i331, 0
  br i1 %tobool99.not, label %if.end101, label %for.end96.out_free_rsp_crit_edge

for.end96.out_free_rsp_crit_edge:                 ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_rsp

if.end101:                                        ; preds = %for.end96
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arg, align 4
  %arrayidx104 = getelementptr i32, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx104, align 4
  %103 = load ptr, ptr %arg, align 4
  %arrayidx108 = getelementptr i32, ptr %103, i32 2
  %104 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %93, ptr %arrayidx108, align 4
  %105 = load ptr, ptr %arg, align 4
  %arrayidx111 = getelementptr i32, ptr %105, i32 3
  %106 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add6, ptr %arrayidx111, align 4
  %107 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adapter, align 8
  %hw_ops.i332 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %108, i32 0, i32 46
  %109 = ptrtoint ptr %hw_ops.i332 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw_ops.i332, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %112, null
  br i1 %tobool.not.i, label %if.end101.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end101.do.end_crit_edge:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end101
  %call.i333 = call i32 %112(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool113.not = icmp eq i32 %call.i333, 0
  br i1 %tobool113.not, label %if.end117, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end101.do.end_crit_edge
  %retval.0.i338 = phi i32 [ %call.i333, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end101.do.end_crit_edge ]
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 8
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i338) #11
  br label %out_free_rsp

if.end117:                                        ; preds = %qlcnic_issue_cmd.exit
  %115 = ptrtoint ptr %call.i328 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %call.i328, align 1
  %117 = call i32 @llvm.bswap.i32(i32 %116)
  %arrayidx120 = getelementptr %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 10, i32 %117
  %num_rds_rings123 = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 4
  %118 = ptrtoint ptr %num_rds_rings123 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %num_rds_rings123, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp125344.not = icmp eq i16 %119, 0
  br i1 %cmp125344.not, label %if.end117.for.end136_crit_edge, label %if.end117.for.body127_crit_edge

if.end117.for.body127_crit_edge:                  ; preds = %if.end117
  br label %for.body127

if.end117.for.end136_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.body127:                                      ; preds = %for.body127.for.body127_crit_edge, %if.end117.for.body127_crit_edge
  %i.2345 = phi i8 [ %inc135, %for.body127.for.body127_crit_edge ], [ 0, %if.end117.for.body127_crit_edge ]
  %conv122 = zext i8 %i.2345 to i32
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %arrayidx130 = getelementptr %struct.qlcnic_host_rds_ring, ptr %121, i32 %conv122
  %arrayidx132 = getelementptr %struct.qlcnic_cardrsp_rds_ring, ptr %arrayidx120, i32 %conv122
  %122 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %arrayidx132, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %123)
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %3, align 8
  %add.ptr133 = getelementptr i8, ptr %126, i32 %124
  %127 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr133, ptr %arrayidx130, align 128
  %inc135 = add i8 %i.2345, 1
  %128 = ptrtoint ptr %num_rds_rings123 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %num_rds_rings123, align 1
  %130 = call i16 @llvm.bswap.i16(i16 %129)
  %131 = zext i8 %inc135 to i16
  %cmp125 = icmp ugt i16 %130, %131
  br i1 %cmp125, label %for.body127.for.body127_crit_edge, label %for.body127.for.end136_crit_edge

for.body127.for.end136_crit_edge:                 ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.body127.for.body127_crit_edge:                ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body127

for.end136:                                       ; preds = %for.body127.for.end136_crit_edge, %if.end117.for.end136_crit_edge
  %sds_ring_offset138 = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 1
  %132 = ptrtoint ptr %sds_ring_offset138 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %sds_ring_offset138, align 1
  %134 = call i32 @llvm.bswap.i32(i32 %133)
  %arrayidx139 = getelementptr %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 10, i32 %134
  %num_sds_rings142 = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 5
  %135 = ptrtoint ptr %num_sds_rings142 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %num_sds_rings142, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %cmp144346.not = icmp eq i16 %136, 0
  br i1 %cmp144346.not, label %for.end136.for.end172_crit_edge, label %for.body146.lr.ph

for.end136.for.end172_crit_edge:                  ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end172

for.body146.lr.ph:                                ; preds = %for.end136
  %sds_rings147 = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %intr_tbl159 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 53
  br label %for.body146

for.body146:                                      ; preds = %if.end165.for.body146_crit_edge, %for.body146.lr.ph
  %conv141348 = phi i32 [ 0, %for.body146.lr.ph ], [ %conv141, %if.end165.for.body146_crit_edge ]
  %i.3347 = phi i8 [ 0, %for.body146.lr.ph ], [ %inc171, %if.end165.for.body146_crit_edge ]
  %137 = ptrtoint ptr %sds_rings147 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sds_rings147, align 4
  %arrayidx151 = getelementptr %struct.qlcnic_cardrsp_sds_ring, ptr %arrayidx139, i32 %conv141348
  %139 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %arrayidx151, align 1
  %141 = call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %state.i, align 4
  %144 = and i32 %143, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.i335.not = icmp eq i32 %144, 0
  br i1 %tobool.i335.not, label %for.body146.if.else162_crit_edge, label %land.lhs.true154

for.body146.if.else162_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else162

land.lhs.true154:                                 ; preds = %for.body146
  %145 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %adapter, align 8
  %diag_test156 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %146, i32 0, i32 18
  %147 = ptrtoint ptr %diag_test156 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %diag_test156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool157.not = icmp eq i8 %148, 0
  br i1 %tobool157.not, label %if.then158, label %land.lhs.true154.if.else162_crit_edge

land.lhs.true154.if.else162_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else162

if.then158:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %intr_tbl159 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %intr_tbl159, align 4
  %src = getelementptr %struct.qlcnic_intrpt_config, ptr %150, i32 %conv141348, i32 3
  %151 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %src, align 4
  br label %if.end165

if.else162:                                       ; preds = %land.lhs.true154.if.else162_crit_edge, %for.body146.if.else162_crit_edge
  %interrupt_crb = getelementptr %struct.qlcnic_cardrsp_sds_ring, ptr %arrayidx139, i32 %conv141348, i32 1
  %153 = ptrtoint ptr %interrupt_crb to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %interrupt_crb, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  br label %if.end165

if.end165:                                        ; preds = %if.else162, %if.then158
  %reg2.0 = phi i32 [ %155, %if.else162 ], [ %152, %if.then158 ]
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %3, align 8
  %add.ptr167 = getelementptr i8, ptr %157, i32 %reg2.0
  %crb_intr_mask = getelementptr %struct.qlcnic_host_sds_ring, ptr %138, i32 %conv141348, i32 8
  %158 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr167, ptr %crb_intr_mask, align 16
  %159 = load ptr, ptr %3, align 8
  %add.ptr169 = getelementptr i8, ptr %159, i32 %141
  %crb_sts_consumer = getelementptr %struct.qlcnic_host_sds_ring, ptr %138, i32 %conv141348, i32 2
  %160 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %add.ptr169, ptr %crb_sts_consumer, align 8
  %inc171 = add i8 %i.3347, 1
  %conv141 = zext i8 %inc171 to i32
  %161 = ptrtoint ptr %num_sds_rings142 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %num_sds_rings142, align 1
  %163 = call i16 @llvm.bswap.i16(i16 %162)
  %164 = zext i8 %inc171 to i16
  %cmp144 = icmp ugt i16 %163, %164
  br i1 %cmp144, label %if.end165.for.body146_crit_edge, label %if.end165.for.end172_crit_edge

if.end165.for.end172_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end172

if.end165.for.body146_crit_edge:                  ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body146

for.end172:                                       ; preds = %if.end165.for.end172_crit_edge, %for.end136.for.end172_crit_edge
  %host_ctx_state = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 2
  %165 = ptrtoint ptr %host_ctx_state to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %host_ctx_state, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %state = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 2
  %168 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %state, align 4
  %context_id = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 6
  %169 = ptrtoint ptr %context_id to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %context_id, align 1
  %171 = call i16 @llvm.bswap.i16(i16 %170)
  %context_id173 = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 3
  %172 = ptrtoint ptr %context_id173 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %context_id173, align 4
  %virt_port = getelementptr inbounds %struct.qlcnic_cardrsp_rx_ctx, ptr %call.i328, i32 0, i32 8
  %173 = ptrtoint ptr %virt_port to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %virt_port, align 1
  %conv174 = zext i8 %174 to i16
  %virt_port175 = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 4
  %175 = ptrtoint ptr %virt_port175 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv174, ptr %virt_port175, align 2
  %conv177 = zext i16 %171 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %conv177, i32 noundef %167) #11
  %176 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %177) #7
  %178 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %179 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %180) #7
  %181 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_rsp

out_free_rsp:                                     ; preds = %for.end172, %do.end, %for.end96.out_free_rsp_crit_edge
  %err.0 = phi i32 [ %call.i331, %for.end96.out_free_rsp_crit_edge ], [ %retval.0.i338, %do.end ], [ 0, %for.end172 ]
  %182 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev, align 8
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %184 = ptrtoint ptr %cardrsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cardrsp_phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev180, i32 noundef %add12, ptr noundef nonnull %call.i328, i32 noundef %185, i32 noundef 0) #7
  br label %out_free_rq

out_free_rq:                                      ; preds = %out_free_rsp, %if.end.out_free_rq_crit_edge
  %err.1 = phi i32 [ %err.0, %out_free_rsp ], [ -12, %if.end.out_free_rq_crit_edge ]
  %186 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pdev, align 8
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %187, i32 0, i32 44
  %188 = ptrtoint ptr %hostrq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %hostrq_phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev182, i32 noundef %add6, ptr noundef nonnull %call.i, i32 noundef %189, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_rq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free_rq ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cardrsp_phys_addr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hostrq_phys_addr) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_fw_cmd_del_rx_ctx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %1 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %recv_ctx1, align 4
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %8(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %context_id = getelementptr inbounds %struct.qlcnic_recv_context, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %context_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %context_id, align 4
  %conv = zext i16 %10 to i32
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %hw_ops.i13 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i13, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i14 = call i32 %19(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %qlcnic_issue_cmd.exit.if.end5_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end5_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end5_crit_edge
  %state = getelementptr inbounds %struct.qlcnic_recv_context, ptr %2, i32 0, i32 2
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %24) #7
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_fw_cmd_create_tx_ctx(ptr noundef %adapter, ptr nocapture noundef %tx_ring, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  %rq_phys_addr = alloca i32, align 4
  %rsp_phys_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %netdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rq_phys_addr) #7
  %5 = ptrtoint ptr %rq_phys_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rq_phys_addr, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_phys_addr) #7
  %6 = ptrtoint ptr %rsp_phys_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rsp_phys_addr, align 4, !annotation !154
  %producer = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 5
  %7 = ptrtoint ptr %producer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %producer, align 4
  %sw_consumer = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 6
  %8 = ptrtoint ptr %sw_consumer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sw_consumer, align 16
  %hw_consumer = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 14
  %9 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_consumer, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 200, ptr noundef nonnull %rq_phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i150 = call ptr @dma_alloc_attrs(ptr noundef %dev4, i32 noundef 144, ptr noundef nonnull %rsp_phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call.i150, null
  br i1 %tobool6.not, label %if.end.out_free_rq_crit_edge, label %if.end8

if.end.out_free_rq_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_rq

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %rsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rsp_phys_addr, align 4
  %conv = zext i32 %17 to i64
  %18 = call i64 @llvm.bswap.i64(i64 %conv)
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %call.i, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %22 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  %spec.select = select i1 %tobool12.not, i32 4194373, i32 69
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end8.if.end14_crit_edge
  %temp.0 = phi i32 [ 69, %if.end8.if.end14_crit_edge ], [ %spec.select, %land.lhs.true ]
  %27 = call i32 @llvm.bswap.i32(i32 %temp.0)
  %capabilities = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %capabilities to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %capabilities, align 1
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i152.not = icmp eq i32 %31, 0
  br i1 %tobool.i152.not, label %if.end14.if.else_crit_edge, label %land.lhs.true17

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true17:                                  ; preds = %if.end14
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %diag_test19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %diag_test19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %diag_test19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool20.not = icmp eq i8 %35, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %36 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %drv_sds_rings, align 2
  %conv22 = zext i8 %37 to i32
  %add = add i32 %conv22, %ring
  %intr_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 53
  %38 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intr_tbl, align 4
  %id = getelementptr %struct.qlcnic_intrpt_config, ptr %39, i32 %add, i32 2
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %id, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.end14.if.else_crit_edge
  %host_int_crb_mode = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %host_int_crb_mode to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 16777216, ptr %host_int_crb_mode, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then21
  %.sink = phi i16 [ 0, %if.else ], [ %42, %if.then21 ]
  %msi_index24 = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %msi_index24 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %.sink, ptr %msi_index24, align 1
  %interrupt_ctl = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 7
  %45 = ptrtoint ptr %interrupt_ctl to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 0, ptr %interrupt_ctl, align 1
  %hw_cons_phys_addr = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 16
  %46 = ptrtoint ptr %hw_cons_phys_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_cons_phys_addr, align 4
  %conv26 = zext i32 %47 to i64
  %48 = call i64 @llvm.bswap.i64(i64 %conv26)
  %cmd_cons_dma_addr = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %cmd_cons_dma_addr to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %cmd_cons_dma_addr, align 1
  %cds_ring = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 10
  %phys_addr27 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 15
  %50 = ptrtoint ptr %phys_addr27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phys_addr27, align 8
  %conv28 = zext i32 %51 to i64
  %52 = call i64 @llvm.bswap.i64(i64 %conv28)
  %53 = ptrtoint ptr %cds_ring to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %cds_ring, align 1
  %num_desc = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 7
  %54 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_desc, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %ring_size = getelementptr inbounds %struct.qlcnic_hostrq_tx_ctx, ptr %call.i, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %ring_size to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %ring_size, align 1
  %58 = ptrtoint ptr %rq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rq_phys_addr, align 4
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i153 = call i32 %65(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool31.not = icmp eq i32 %call.i153, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.out_free_rsp_crit_edge

if.end25.out_free_rsp_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_rsp

if.end33:                                         ; preds = %if.end25
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arg, align 4
  %arrayidx36 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx36, align 4
  %69 = load ptr, ptr %arg, align 4
  %arrayidx40 = getelementptr i32, ptr %69, i32 2
  %70 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %59, ptr %arrayidx40, align 4
  %71 = load ptr, ptr %arg, align 4
  %arrayidx43 = getelementptr i32, ptr %71, i32 3
  %72 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 200, ptr %arrayidx43, align 4
  %73 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter, align 8
  %hw_ops.i154 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %74, i32 0, i32 46
  %75 = ptrtoint ptr %hw_ops.i154 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_ops.i154, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %if.end33.if.else69_crit_edge, label %qlcnic_issue_cmd.exit

if.end33.if.else69_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else69

qlcnic_issue_cmd.exit:                            ; preds = %if.end33
  %call.i155 = call i32 %78(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp = icmp eq i32 %call.i155, 0
  br i1 %cmp, label %if.then46, label %qlcnic_issue_cmd.exit.if.else69_crit_edge

qlcnic_issue_cmd.exit.if.else69_crit_edge:        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else69

if.then46:                                        ; preds = %qlcnic_issue_cmd.exit
  %79 = ptrtoint ptr %call.i150 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %call.i150, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %state = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 4
  %82 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %state, align 8
  %cds_ring47 = getelementptr inbounds %struct.qlcnic_cardrsp_tx_ctx, ptr %call.i150, i32 0, i32 4
  %83 = ptrtoint ptr %cds_ring47 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %cds_ring47, align 1
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %add.ptr = getelementptr i8, ptr %89, i32 %85
  %crb_cmd_producer = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 9
  %90 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr, ptr %crb_cmd_producer, align 32
  %context_id = getelementptr inbounds %struct.qlcnic_cardrsp_tx_ctx, ptr %call.i150, i32 0, i32 1
  %91 = ptrtoint ptr %context_id to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %context_id, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %ctx_id = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 3
  %94 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %ctx_id, align 4
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %state.i, align 4
  %97 = and i32 %96, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i157.not = icmp eq i32 %97, 0
  br i1 %tobool.i157.not, label %if.then46.if.end65_crit_edge, label %land.lhs.true51

if.then46.if.end65_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true51:                                  ; preds = %if.then46
  %98 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter, align 8
  %diag_test53 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %99, i32 0, i32 18
  %100 = ptrtoint ptr %diag_test53 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %diag_test53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool54.not = icmp eq i8 %101, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %land.lhs.true51.if.end65_crit_edge

land.lhs.true51.if.end65_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true55:                                  ; preds = %land.lhs.true51
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags, align 8
  %and = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %land.lhs.true55.if.end65_crit_edge, label %if.then57

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  %drv_sds_rings58 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %104 = ptrtoint ptr %drv_sds_rings58 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %drv_sds_rings58, align 2
  %conv59 = zext i8 %105 to i32
  %add60 = add i32 %conv59, %ring
  %intr_tbl61 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 53
  %106 = ptrtoint ptr %intr_tbl61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %intr_tbl61, align 4
  %src = getelementptr %struct.qlcnic_intrpt_config, ptr %107, i32 %add60, i32 3
  %108 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %src, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %add.ptr64 = getelementptr i8, ptr %111, i32 %109
  %crb_intr_mask = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 1
  %112 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr64, ptr %crb_intr_mask, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %land.lhs.true55.if.end65_crit_edge, %land.lhs.true51.if.end65_crit_edge, %if.then46.if.end65_crit_edge
  %conv67 = zext i16 %93 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %conv67, i32 noundef %81) #11
  br label %if.end70

if.else69:                                        ; preds = %qlcnic_issue_cmd.exit.if.else69_crit_edge, %if.end33.if.else69_crit_edge
  %retval.0.i160 = phi i32 [ %call.i155, %qlcnic_issue_cmd.exit.if.else69_crit_edge ], [ -5, %if.end33.if.else69_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i160) #11
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.end65
  %err.0 = phi i32 [ 0, %if.end65 ], [ -5, %if.else69 ]
  %113 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %114) #7
  %115 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %116 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %117) #7
  %118 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_rsp

out_free_rsp:                                     ; preds = %if.end70, %if.end25.out_free_rsp_crit_edge
  %err.1 = phi i32 [ %call.i153, %if.end25.out_free_rsp_crit_edge ], [ %err.0, %if.end70 ]
  %119 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %121 = ptrtoint ptr %rsp_phys_addr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rsp_phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev72, i32 noundef 144, ptr noundef nonnull %call.i150, i32 noundef %122, i32 noundef 0) #7
  br label %out_free_rq

out_free_rq:                                      ; preds = %out_free_rsp, %if.end.out_free_rq_crit_edge
  %err.2 = phi i32 [ %err.1, %out_free_rsp ], [ -12, %if.end.out_free_rq_crit_edge ]
  %123 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %125 = ptrtoint ptr %rq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rq_phys_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev74, i32 noundef 200, ptr noundef nonnull %call.i, i32 noundef %126, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_rq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_free_rq ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_phys_addr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rq_phys_addr) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_fw_cmd_del_tx_ctx(ptr noundef %adapter, ptr nocapture noundef readonly %tx_ring) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx_id = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %tx_ring, i32 0, i32 3
  %7 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ctx_id, align 4
  %conv = zext i16 %8 to i32
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %hw_ops.i8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %hw_ops.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops.i8, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i9 = call i32 %17(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool2.not = icmp eq i32 %call.i9, 0
  br i1 %tobool2.not, label %qlcnic_issue_cmd.exit.if.end4_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end4_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end4_crit_edge
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %21) #7
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_fw_cmd_set_port(ptr noundef %adapter, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %config, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i6, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

if.end.qlcnic_issue_cmd.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7 = call i32 %15(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %if.end.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i7, %if.then.i ], [ -5, %if.end.qlcnic_issue_cmd.exit_crit_edge ]
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %17) #7
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_issue_cmd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %qlcnic_issue_cmd.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_alloc_hw_resources(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %recv_ctx2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx2, align 4
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %2 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp99.not = icmp eq i8 %3, 0
  br i1 %cmp99.not, label %entry.for.cond13.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond13.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1, align 8
  %tx_ring4 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  br label %for.body

for.cond13.preheader:                             ; preds = %if.end12.for.cond13.preheader_crit_edge, %entry.for.cond13.preheader_crit_edge
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %6 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp15102.not = icmp eq i8 %7, 0
  br i1 %cmp15102.not, label %for.cond13.preheader.for.cond33.preheader_crit_edge, label %for.cond13.preheader.for.body17_crit_edge

for.cond13.preheader.for.body17_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body17

for.cond13.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond33.preheader

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %ring.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %8 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring4, align 8
  %hw_cons_phys_addr = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.0100, i32 16
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef %hw_cons_phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %cmp5 = icmp eq ptr %call.i, null
  br i1 %cmp5, label %for.body.err_out_free_crit_edge, label %if.end

for.body.err_out_free_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end:                                           ; preds = %for.body
  %hw_consumer = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.0100, i32 14
  %10 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %hw_consumer, align 4
  %num_desc = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.0100, i32 7
  %11 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_desc, align 4
  %mul = shl i32 %12, 6
  %phys_addr = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.0100, i32 15
  %call.i93 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #7
  %cmp9 = icmp eq ptr %call.i93, null
  br i1 %cmp9, label %if.end.err_out_free_crit_edge, label %if.end12

if.end.err_out_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end12:                                         ; preds = %if.end
  %desc_head = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.0100, i32 10
  %13 = ptrtoint ptr %desc_head to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i93, ptr %desc_head, align 4
  %inc = add nuw nsw i32 %ring.0100, 1
  %14 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.cond13.preheader_crit_edge

if.end12.for.cond13.preheader_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.preheader

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond33.preheader:                             ; preds = %if.end28.for.cond33.preheader_crit_edge, %for.cond13.preheader.for.cond33.preheader_crit_edge
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %16 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp35105.not = icmp eq i8 %17, 0
  br i1 %cmp35105.not, label %for.cond33.preheader.cleanup_crit_edge, label %for.body37.lr.ph

for.cond33.preheader.cleanup_crit_edge:           ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  br label %for.body37

for.body17:                                       ; preds = %if.end28.for.body17_crit_edge, %for.cond13.preheader.for.body17_crit_edge
  %ring.1103 = phi i32 [ %inc31, %if.end28.for.body17_crit_edge ], [ 0, %for.cond13.preheader.for.body17_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev1, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %num_desc21 = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %ring.1103, i32 3
  %22 = ptrtoint ptr %num_desc21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_desc21, align 4
  %mul22 = shl i32 %23, 4
  %phys_addr23 = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %ring.1103, i32 10
  %call.i94 = tail call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef %mul22, ptr noundef %phys_addr23, i32 noundef 3264, i32 noundef 0) #7
  %cmp25 = icmp eq ptr %call.i94, null
  br i1 %cmp25, label %for.body17.err_out_free_crit_edge, label %if.end28

for.body17.err_out_free_crit_edge:                ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end28:                                         ; preds = %for.body17
  %desc_head29 = getelementptr %struct.qlcnic_host_rds_ring, ptr %19, i32 %ring.1103, i32 1
  %24 = ptrtoint ptr %desc_head29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i94, ptr %desc_head29, align 4
  %inc31 = add nuw nsw i32 %ring.1103, 1
  %25 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_rds_rings, align 2
  %conv14 = zext i8 %26 to i32
  %cmp15 = icmp ult i32 %inc31, %conv14
  br i1 %cmp15, label %if.end28.for.body17_crit_edge, label %if.end28.for.cond33.preheader_crit_edge

if.end28.for.cond33.preheader_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond33.preheader

if.end28.for.body17_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.body37:                                       ; preds = %if.end48.for.body37_crit_edge, %for.body37.lr.ph
  %ring.2106 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc51, %if.end48.for.body37_crit_edge ]
  %27 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sds_rings, align 4
  %29 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev1, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %num_desc41 = getelementptr %struct.qlcnic_host_sds_ring, ptr %28, i32 %ring.2106, i32 1
  %31 = ptrtoint ptr %num_desc41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_desc41, align 4
  %mul42 = shl i32 %32, 4
  %phys_addr43 = getelementptr %struct.qlcnic_host_sds_ring, ptr %28, i32 %ring.2106, i32 10
  %call.i95 = tail call ptr @dma_alloc_attrs(ptr noundef %dev40, i32 noundef %mul42, ptr noundef %phys_addr43, i32 noundef 3264, i32 noundef 0) #7
  %cmp45 = icmp eq ptr %call.i95, null
  br i1 %cmp45, label %for.body37.err_out_free_crit_edge, label %if.end48

for.body37.err_out_free_crit_edge:                ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out_free

if.end48:                                         ; preds = %for.body37
  %desc_head49 = getelementptr %struct.qlcnic_host_sds_ring, ptr %28, i32 %ring.2106, i32 4
  %33 = ptrtoint ptr %desc_head49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i95, ptr %desc_head49, align 16
  %inc51 = add nuw nsw i32 %ring.2106, 1
  %34 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %drv_sds_rings, align 2
  %conv34 = zext i8 %35 to i32
  %cmp35 = icmp ult i32 %inc51, %conv34
  br i1 %cmp35, label %if.end48.for.body37_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48.for.body37_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

err_out_free:                                     ; preds = %for.body37.err_out_free_crit_edge, %for.body17.err_out_free_crit_edge, %if.end.err_out_free_crit_edge, %for.body.err_out_free_crit_edge
  tail call void @qlcnic_free_hw_resources(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end48.cleanup_crit_edge, %for.cond33.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_out_free ], [ 0, %for.cond33.preheader.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_free_hw_resources(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_ctx1, align 4
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %2 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp95.not = icmp eq i8 %3, 0
  br i1 %cmp95.not, label %entry.for.cond16.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond16.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring3 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.cond16.preheader:                             ; preds = %for.inc.for.cond16.preheader_crit_edge, %entry.for.cond16.preheader_crit_edge
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_rds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp18100.not = icmp eq i8 %5, 0
  br i1 %cmp18100.not, label %for.cond16.preheader.for.cond37.preheader_crit_edge, label %for.body20.lr.ph

for.cond16.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.preheader

for.body20.lr.ph:                                 ; preds = %for.cond16.preheader
  %pdev26 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %tx_ring3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring3, align 8
  %hw_consumer = getelementptr %struct.qlcnic_host_tx_ring, ptr %7, i32 %ring.096, i32 14
  %8 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_consumer, align 4
  %cmp4.not = icmp eq ptr %9, null
  br i1 %cmp4.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %hw_cons_phys_addr = getelementptr %struct.qlcnic_host_tx_ring, ptr %7, i32 %ring.096, i32 16
  %12 = ptrtoint ptr %hw_cons_phys_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_cons_phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #7
  %14 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hw_consumer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %desc_head = getelementptr %struct.qlcnic_host_tx_ring, ptr %7, i32 %ring.096, i32 10
  %15 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_head, align 4
  %cmp8.not = icmp eq ptr %16, null
  br i1 %cmp8.not, label %if.end.for.inc_crit_edge, label %if.then10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %num_desc = getelementptr %struct.qlcnic_host_tx_ring, ptr %7, i32 %ring.096, i32 7
  %19 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_desc, align 4
  %mul = shl i32 %20, 6
  %phys_addr = getelementptr %struct.qlcnic_host_tx_ring, ptr %7, i32 %ring.096, i32 15
  %21 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev12, i32 noundef %mul, ptr noundef nonnull %16, i32 noundef %22, i32 noundef 0) #7
  %23 = ptrtoint ptr %desc_head to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %desc_head, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %ring.096, 1
  %24 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond16.preheader_crit_edge

for.inc.for.cond16.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond37.preheader:                             ; preds = %for.inc34.for.cond37.preheader_crit_edge, %for.cond16.preheader.for.cond37.preheader_crit_edge
  %drv_sds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 16
  %26 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %drv_sds_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp39104.not = icmp eq i8 %27, 0
  br i1 %cmp39104.not, label %for.cond37.preheader.for.end57_crit_edge, label %for.body41.lr.ph

for.cond37.preheader.for.end57_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57

for.body41.lr.ph:                                 ; preds = %for.cond37.preheader
  %sds_rings = getelementptr inbounds %struct.qlcnic_recv_context, ptr %1, i32 0, i32 1
  %pdev47 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body41

for.body20:                                       ; preds = %for.inc34.for.body20_crit_edge, %for.body20.lr.ph
  %ring.1101 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc35, %for.inc34.for.body20_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %desc_head22 = getelementptr %struct.qlcnic_host_rds_ring, ptr %29, i32 %ring.1101, i32 1
  %30 = ptrtoint ptr %desc_head22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_head22, align 4
  %cmp23.not = icmp eq ptr %31, null
  br i1 %cmp23.not, label %for.body20.for.inc34_crit_edge, label %if.then25

for.body20.for.inc34_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.then25:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %num_desc28 = getelementptr %struct.qlcnic_host_rds_ring, ptr %29, i32 %ring.1101, i32 3
  %34 = ptrtoint ptr %num_desc28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_desc28, align 4
  %mul29 = shl i32 %35, 4
  %phys_addr31 = getelementptr %struct.qlcnic_host_rds_ring, ptr %29, i32 %ring.1101, i32 10
  %36 = ptrtoint ptr %phys_addr31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr31, align 4
  tail call void @dma_free_attrs(ptr noundef %dev27, i32 noundef %mul29, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #7
  %38 = ptrtoint ptr %desc_head22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %desc_head22, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.then25, %for.body20.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %ring.1101, 1
  %39 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_rds_rings, align 2
  %conv17 = zext i8 %40 to i32
  %cmp18 = icmp ult i32 %inc35, %conv17
  br i1 %cmp18, label %for.inc34.for.body20_crit_edge, label %for.inc34.for.cond37.preheader_crit_edge

for.inc34.for.cond37.preheader_crit_edge:         ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.preheader

for.inc34.for.body20_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.body41:                                       ; preds = %for.inc55.for.body41_crit_edge, %for.body41.lr.ph
  %ring.2105 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc56, %for.inc55.for.body41_crit_edge ]
  %41 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sds_rings, align 4
  %desc_head43 = getelementptr %struct.qlcnic_host_sds_ring, ptr %42, i32 %ring.2105, i32 4
  %43 = ptrtoint ptr %desc_head43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %desc_head43, align 16
  %cmp44.not = icmp eq ptr %44, null
  br i1 %cmp44.not, label %for.body41.for.inc55_crit_edge, label %if.then46

for.body41.for.inc55_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

if.then46:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %num_desc49 = getelementptr %struct.qlcnic_host_sds_ring, ptr %42, i32 %ring.2105, i32 1
  %47 = ptrtoint ptr %num_desc49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_desc49, align 4
  %mul50 = shl i32 %48, 4
  %phys_addr52 = getelementptr %struct.qlcnic_host_sds_ring, ptr %42, i32 %ring.2105, i32 10
  %49 = ptrtoint ptr %phys_addr52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phys_addr52, align 8
  tail call void @dma_free_attrs(ptr noundef %dev48, i32 noundef %mul50, ptr noundef nonnull %44, i32 noundef %50, i32 noundef 0) #7
  %51 = ptrtoint ptr %desc_head43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %desc_head43, align 16
  br label %for.inc55

for.inc55:                                        ; preds = %if.then46, %for.body41.for.inc55_crit_edge
  %inc56 = add nuw nsw i32 %ring.2105, 1
  %52 = ptrtoint ptr %drv_sds_rings to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %drv_sds_rings, align 2
  %conv38 = zext i8 %53 to i32
  %cmp39 = icmp ult i32 %inc56, %conv38
  br i1 %cmp39, label %for.inc55.for.body41_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57

for.inc55.for.body41_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %for.cond37.preheader.for.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_fw_create_ctx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_reset_function(ptr noundef %3) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and2 = and i32 %5, -4097
  store i32 %and2, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device1.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %9, label %if.end.if.end15_crit_edge [
    i16 -32720, label %if.end.land.lhs.true_crit_edge
    i16 -30672, label %if.end.land.lhs.true_crit_edge165
    i16 -32704, label %if.end.land.lhs.true_crit_edge166
    i16 -31680, label %if.end.land.lhs.true_crit_edge167
    i16 -31696, label %if.end.land.lhs.true_crit_edge168
    i16 -29648, label %if.end.land.lhs.true_crit_edge169
  ]

if.end.land.lhs.true_crit_edge169:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge168:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge167:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge166:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge165:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge165, %if.end.land.lhs.true_crit_edge166, %if.end.land.lhs.true_crit_edge167, %if.end.land.lhs.true_crit_edge168, %if.end.land.lhs.true_crit_edge169
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and5 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end15_crit_edge, label %if.then7

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.not = icmp eq i8 %16, 2
  br i1 %cmp.not, label %if.then7.if.end15_crit_edge, label %if.then9

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.then7
  %call10 = tail call i32 @qlcnic_83xx_config_intrpt(ptr noundef %dev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.then7.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %device1.i135 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device1.i135 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device1.i135, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %20)
  %cmp.i = icmp eq i16 %20, -32736
  br i1 %cmp.i, label %land.lhs.true18, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true18:                                  ; preds = %if.end15
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and20 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true18.if.end34_crit_edge, label %land.lhs.true22

land.lhs.true18.if.end34_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 5
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %25 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %land.lhs.true22.if.end34_crit_edge, label %land.lhs.true25

land.lhs.true22.if.end34_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %diag_test27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %diag_test27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %diag_test27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool28.not = icmp eq i8 %29, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true25.if.end34_crit_edge

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %land.lhs.true25
  %call30 = tail call i32 @qlcnic_82xx_mq_intrpt(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %land.lhs.true25.if.end34_crit_edge, %land.lhs.true22.if.end34_crit_edge, %land.lhs.true18.if.end34_crit_edge, %if.end15.if.end34_crit_edge
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_ops.i, align 4
  %create_rx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %create_rx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %create_rx_ctx.i, align 4
  %call.i = tail call i32 %35(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %for.cond.preheader, label %if.end34.err_out_crit_edge

if.end34.err_out_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

for.cond.preheader:                               ; preds = %if.end34
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 15
  %36 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp40151.not = icmp eq i8 %37, 0
  br i1 %cmp40151.not, label %for.cond.preheader.for.end58_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end58_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_ring = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %for.body.lr.ph
  %ring.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc56.for.body_crit_edge ]
  %38 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.qlcnic_host_tx_ring, ptr %39, i32 %ring.0152
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %hw_ops.i136 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %hw_ops.i136 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_ops.i136, align 4
  %create_tx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %create_tx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %create_tx_ctx.i, align 4
  %call.i137 = tail call i32 %45(ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %ring.0152) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool43.not = icmp eq i32 %call.i137, 0
  br i1 %tobool43.not, label %for.inc56, label %if.then44

if.then44:                                        ; preds = %for.body
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %hw_ops.i138 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %47, i32 0, i32 46
  %48 = ptrtoint ptr %hw_ops.i138 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_ops.i138, align 4
  %del_rx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %del_rx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %del_rx_ctx.i, align 4
  tail call void %51(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring.0152)
  %cmp50153.not = icmp eq i32 %ring.0152, 0
  br i1 %cmp50153.not, label %if.then44.err_out_crit_edge, label %if.then44.for.body52_crit_edge

if.then44.for.body52_crit_edge:                   ; preds = %if.then44
  br label %for.body52

if.then44.err_out_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %if.then44.for.body52_crit_edge
  %i.0154 = phi i32 [ %inc, %for.body52.for.body52_crit_edge ], [ 0, %if.then44.for.body52_crit_edge ]
  %52 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ring, align 8
  %arrayidx54 = getelementptr %struct.qlcnic_host_tx_ring, ptr %53, i32 %i.0154
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %hw_ops.i139 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %55, i32 0, i32 46
  %56 = ptrtoint ptr %hw_ops.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_ops.i139, align 4
  %del_tx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %del_tx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %del_tx_ctx.i, align 4
  tail call void %59(ptr noundef %dev, ptr noundef %arrayidx54) #7
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %ring.0152
  br i1 %exitcond.not, label %for.body52.err_out_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.body52.err_out_crit_edge:                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

for.inc56:                                        ; preds = %for.body
  %inc57 = add nuw nsw i32 %ring.0152, 1
  %60 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %drv_tx_rings, align 1
  %conv39 = zext i8 %61 to i32
  %cmp40 = icmp ult i32 %inc57, %conv39
  br i1 %cmp40, label %for.inc56.for.body_crit_edge, label %for.inc56.for.end58_crit_edge

for.inc56.for.end58_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end58:                                        ; preds = %for.inc56.for.end58_crit_edge, %for.cond.preheader.for.end58_crit_edge
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

err_out:                                          ; preds = %for.body52.err_out_crit_edge, %if.then44.err_out_crit_edge, %if.end34.err_out_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end34.err_out_crit_edge ], [ %call.i137, %if.then44.err_out_crit_edge ], [ %call.i137, %for.body52.err_out_crit_edge ]
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 8
  %device1.i141 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %device1.i141 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %device1.i141, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %65)
  %cmp.i142 = icmp eq i16 %65, -32736
  br i1 %cmp.i142, label %land.lhs.true61, label %err_out.if.end74_crit_edge

err_out.if.end74_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true61:                                  ; preds = %err_out
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 8
  %and63 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end74_crit_edge, label %land.lhs.true65

land.lhs.true61.if.end74_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true65:                                  ; preds = %land.lhs.true61
  %state.i143 = getelementptr inbounds %struct.qlcnic_adapter, ptr %dev, i32 0, i32 5
  %68 = ptrtoint ptr %state.i143 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i143, align 4
  %70 = and i32 %69, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i144.not = icmp eq i32 %70, 0
  br i1 %tobool.i144.not, label %land.lhs.true65.if.end74_crit_edge, label %land.lhs.true68

land.lhs.true65.if.end74_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %diag_test70 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %72, i32 0, i32 18
  %73 = ptrtoint ptr %diag_test70 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %diag_test70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool71.not = icmp eq i8 %74, 0
  br i1 %tobool71.not, label %if.then72, label %land.lhs.true68.if.end74_crit_edge

land.lhs.true68.if.end74_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then72:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 @qlcnic_82xx_config_intrpt(ptr noundef %dev, i8 noundef zeroext 0)
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true68.if.end74_crit_edge, %land.lhs.true65.if.end74_crit_edge, %land.lhs.true61.if.end74_crit_edge, %err_out.if.end74_crit_edge
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 8
  %device1.i146 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %device1.i146 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %device1.i146, align 2
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %78, label %if.end74.cleanup_crit_edge [
    i16 -32720, label %if.end74.land.lhs.true77_crit_edge
    i16 -30672, label %if.end74.land.lhs.true77_crit_edge170
    i16 -32704, label %if.end74.land.lhs.true77_crit_edge171
    i16 -31680, label %if.end74.land.lhs.true77_crit_edge172
    i16 -31696, label %if.end74.land.lhs.true77_crit_edge173
    i16 -29648, label %if.end74.land.lhs.true77_crit_edge174
  ]

if.end74.land.lhs.true77_crit_edge174:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.land.lhs.true77_crit_edge173:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.land.lhs.true77_crit_edge172:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.land.lhs.true77_crit_edge171:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.land.lhs.true77_crit_edge170:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.land.lhs.true77_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true77

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true77:                                  ; preds = %if.end74.land.lhs.true77_crit_edge, %if.end74.land.lhs.true77_crit_edge170, %if.end74.land.lhs.true77_crit_edge171, %if.end74.land.lhs.true77_crit_edge172, %if.end74.land.lhs.true77_crit_edge173, %if.end74.land.lhs.true77_crit_edge174
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags, align 8
  %and79 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.lhs.true77.cleanup_crit_edge, label %if.then81

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then81:                                        ; preds = %land.lhs.true77
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  %diag_test83 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %83, i32 0, i32 18
  %84 = ptrtoint ptr %diag_test83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %diag_test83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp85.not = icmp eq i8 %85, 2
  br i1 %cmp85.not, label %if.then81.cleanup_crit_edge, label %if.then87

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = tail call i32 @qlcnic_83xx_config_intrpt(ptr noundef %dev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.then81.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %for.end58, %if.then29.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end58 ], [ %call10, %if.then9.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ %err.0, %if.then81.cleanup_crit_edge ], [ %err.0, %if.then87 ], [ %err.0, %land.lhs.true77.cleanup_crit_edge ], [ %err.0, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_intrpt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_82xx_mq_intrpt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_config_intrpt(ptr noundef %adapter, i8 noundef zeroext %op_type) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %netdev2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %num_msix = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %num_msix to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_msix, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp114.not = icmp eq i8 %6, 0
  br i1 %cmp114.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op_type)
  %tobool5.not = icmp eq i8 %op_type, 0
  %cond = select i1 %tobool5.not, i32 2, i32 1
  %intr_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 53
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %arg30 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %12(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intr_tbl, align 4
  %arrayidx = getelementptr %struct.qlcnic_intrpt_config, ptr %14, i32 %i.0115
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 4
  %conv7 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv7, 4
  %or = or i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp12 = icmp eq i8 %16, 3
  br i1 %cmp12, label %if.then14, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr %struct.qlcnic_intrpt_config, ptr %14, i32 %i.0115, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id, align 2
  %conv17 = zext i16 %18 to i32
  %shl18 = shl nuw i32 %conv17, 16
  %or19 = or i32 %shl18, %or
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  %val.0 = phi i32 [ %or19, %if.then14 ], [ %or, %if.end.if.end20_crit_edge ]
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg, align 4
  %arrayidx21 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %val.0, ptr %arrayidx21, align 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %hw_ops.i106 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %hw_ops.i106 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_ops.i106, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end20.if.then24_crit_edge, label %qlcnic_issue_cmd.exit

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

qlcnic_issue_cmd.exit:                            ; preds = %if.end20
  %call.i107 = call i32 %27(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool23.not = icmp eq i32 %call.i107, 0
  br i1 %tobool23.not, label %if.end29, label %qlcnic_issue_cmd.exit.if.then24_crit_edge

qlcnic_issue_cmd.exit.if.then24_crit_edge:        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %qlcnic_issue_cmd.exit.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  %retval.0.i112 = phi i32 [ %call.i107, %qlcnic_issue_cmd.exit.if.then24_crit_edge ], [ -5, %if.end20.if.then24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op_type)
  %cmp26 = icmp eq i8 %op_type, 1
  %cond28 = select i1 %cmp26, ptr @.str.29, ptr @.str.30
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond28, i32 noundef %retval.0.i112) #11
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %29) #7
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arg, align 4
  %31 = ptrtoint ptr %arg30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arg30, align 4
  call void @kfree(ptr noundef %32) #7
  br label %cleanup

if.end29:                                         ; preds = %qlcnic_issue_cmd.exit
  %33 = ptrtoint ptr %arg30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arg30, align 4
  %arrayidx31 = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx31, align 4
  %conv32 = trunc i32 %36 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv32)
  %tobool33.not = icmp eq i8 %conv32, 0
  br i1 %tobool33.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intr_tbl, align 4
  %id37 = getelementptr %struct.qlcnic_intrpt_config, ptr %38, i32 %i.0115, i32 2
  %39 = ptrtoint ptr %id37 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %id37, align 2
  %conv38 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %conv38) #11
  br label %for.inc

if.end39:                                         ; preds = %if.end29
  br i1 %tobool5.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %36, 16
  %conv42 = trunc i32 %shr to i16
  %41 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intr_tbl, align 4
  %id45 = getelementptr %struct.qlcnic_intrpt_config, ptr %42, i32 %i.0115, i32 2
  %43 = ptrtoint ptr %id45 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv42, ptr %id45, align 2
  %44 = load ptr, ptr %intr_tbl, align 4
  %enabled = getelementptr %struct.qlcnic_intrpt_config, ptr %44, i32 %i.0115, i32 1
  %45 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %enabled, align 1
  %46 = ptrtoint ptr %arg30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arg30, align 4
  %arrayidx50 = getelementptr i32, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx50, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %conv53 = trunc i32 %i.0115 to i16
  %50 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intr_tbl, align 4
  %id56 = getelementptr %struct.qlcnic_intrpt_config, ptr %51, i32 %i.0115, i32 2
  %52 = ptrtoint ptr %id56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv53, ptr %id56, align 2
  %53 = load ptr, ptr %intr_tbl, align 4
  %enabled59 = getelementptr %struct.qlcnic_intrpt_config, ptr %53, i32 %i.0115, i32 1
  %54 = ptrtoint ptr %enabled59 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %enabled59, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then41
  %.sink = phi i32 [ 0, %if.else ], [ %49, %if.then41 ]
  %55 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %intr_tbl, align 4
  %src62 = getelementptr %struct.qlcnic_intrpt_config, ptr %56, i32 %i.0115, i32 3
  %57 = ptrtoint ptr %src62 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %src62, align 4
  %58 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %59) #7
  %60 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arg, align 4
  %61 = ptrtoint ptr %arg30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arg30, align 4
  call void @kfree(ptr noundef %62) #7
  %63 = ptrtoint ptr %arg30 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arg30, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end63, %if.then34
  %inc = add nuw nsw i32 %i.0115, 1
  %64 = ptrtoint ptr %num_msix to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_msix, align 2
  %conv = zext i8 %65 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then24, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i112, %if.then24 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_fw_destroy_ctx(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ops.i, align 4
  %del_rx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %del_rx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_rx_ctx.i, align 4
  tail call void %5(ptr noundef %adapter) #7
  %drv_tx_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 15
  %6 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_tx_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp49.not = icmp eq i8 %7, 0
  br i1 %cmp49.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %tx_ring = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ring.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.qlcnic_host_tx_ring, ptr %9, i32 %ring.050
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i45 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i45, align 4
  %del_tx_ctx.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %del_tx_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %del_tx_ctx.i, align 4
  tail call void %15(ptr noundef %adapter, ptr noundef %arrayidx) #7
  %inc = add nuw nsw i32 %ring.050, 1
  %16 = ptrtoint ptr %drv_tx_rings to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %drv_tx_rings, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %21)
  %cmp.i = icmp eq i16 %21, -32736
  br i1 %cmp.i, label %land.lhs.true, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true8

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %diag_test = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %diag_test to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %diag_test, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool9.not = icmp eq i8 %30, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @qlcnic_82xx_config_intrpt(ptr noundef %adapter, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then10, %land.lhs.true8.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 8
  %device1.i47 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %device1.i47 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device1.i47, align 2
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %34, label %if.end.if.end27_crit_edge [
    i16 -32720, label %if.end.land.lhs.true14_crit_edge
    i16 -30672, label %if.end.land.lhs.true14_crit_edge52
    i16 -32704, label %if.end.land.lhs.true14_crit_edge53
    i16 -31680, label %if.end.land.lhs.true14_crit_edge54
    i16 -31696, label %if.end.land.lhs.true14_crit_edge55
    i16 -29648, label %if.end.land.lhs.true14_crit_edge56
  ]

if.end.land.lhs.true14_crit_edge56:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.land.lhs.true14_crit_edge55:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.land.lhs.true14_crit_edge54:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.land.lhs.true14_crit_edge53:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.land.lhs.true14_crit_edge52:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.land.lhs.true14_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true14:                                  ; preds = %if.end.land.lhs.true14_crit_edge, %if.end.land.lhs.true14_crit_edge52, %if.end.land.lhs.true14_crit_edge53, %if.end.land.lhs.true14_crit_edge54, %if.end.land.lhs.true14_crit_edge55, %if.end.land.lhs.true14_crit_edge56
  %flags15 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %36 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags15, align 8
  %and16 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true14.if.end27_crit_edge, label %if.then18

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then18:                                        ; preds = %land.lhs.true14
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %diag_test20 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %diag_test20 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %diag_test20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp22.not = icmp eq i8 %41, 2
  br i1 %cmp22.not, label %if.then18.if.end27_crit_edge, label %if.then24

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 @qlcnic_83xx_config_intrpt(ptr noundef %adapter, i1 noundef zeroext false) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then18.if.end27_crit_edge, %land.lhs.true14.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_mac_address(ptr noundef %adapter, ptr nocapture noundef writeonly %mac, i8 noundef zeroext %function) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %function to i32
  %or = or i32 %conv, 256
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i45 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i45, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i46 = call i32 %15(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp = icmp eq i32 %call.i46, 0
  br i1 %cmp, label %if.then3, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then3:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arg4 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arg4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg4, align 4
  %arrayidx5 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  %arrayidx8 = getelementptr i32, ptr %17, i32 2
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %shr = lshr i32 %21, 8
  %conv11 = trunc i32 %shr to i8
  %22 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %mac, align 1
  %conv11.1 = trunc i32 %21 to i8
  %arrayidx12.1 = getelementptr i8, ptr %mac, i32 1
  %23 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11.1, ptr %arrayidx12.1, align 1
  %shr19 = lshr i32 %19, 24
  %conv20 = trunc i32 %shr19 to i8
  %arrayidx21 = getelementptr i8, ptr %mac, i32 2
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv20, ptr %arrayidx21, align 1
  %shr19.1 = lshr i32 %19, 16
  %conv20.1 = trunc i32 %shr19.1 to i8
  %arrayidx21.1 = getelementptr i8, ptr %mac, i32 3
  %25 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20.1, ptr %arrayidx21.1, align 1
  %shr19.2 = lshr i32 %19, 8
  %conv20.2 = trunc i32 %shr19.2 to i8
  %arrayidx21.2 = getelementptr i8, ptr %mac, i32 4
  %26 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20.2, ptr %arrayidx21.2, align 1
  %conv20.3 = trunc i32 %19 to i8
  %arrayidx21.3 = getelementptr i8, ptr %mac, i32 5
  %27 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv20.3, ptr %arrayidx21.3, align 1
  br label %if.end25

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i49 = phi i32 [ %call.i46, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i49) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then3
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %if.then3 ]
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %31) #7
  %32 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end25 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_nic_info(ptr noundef %adapter, ptr nocapture noundef writeonly %npar_info, i8 noundef zeroext %func_id) local_unnamed_addr #0 align 64 {
entry:
  %nic_dma_t = alloca i32, align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_dma_t) #7
  %0 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nic_dma_t, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 128, ptr noundef nonnull %nic_dma_t, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i68 = call i32 %9(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool2.not = icmp eq i32 %call.i68, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_dma_crit_edge

if.end.out_free_dma_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_dma

if.end4:                                          ; preds = %if.end
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nic_dma_t, align 4
  %15 = load ptr, ptr %arg, align 4
  %arrayidx11 = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %arrayidx11, align 4
  %conv12 = zext i8 %func_id to i32
  %shl = shl nuw nsw i32 %conv12, 16
  %or = or i32 %shl, 128
  %17 = load ptr, ptr %arg, align 4
  %arrayidx15 = getelementptr i32, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %arrayidx15, align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %hw_ops.i69 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i69, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end4.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end4
  %call.i70 = call i32 %24(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.not = icmp eq i32 %call.i70, 0
  br i1 %cmp.not, label %if.else, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end4.do.end_crit_edge
  %retval.0.i73 = phi i32 [ %call.i70, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end4.do.end_crit_edge ]
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i73) #11
  br label %if.end31

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %call.i, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %npar_info to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %npar_info, align 4
  %op_mode = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %op_mode to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %op_mode, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %op_mode22 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 1
  %34 = ptrtoint ptr %op_mode22 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %op_mode22, align 2
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 10
  %35 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %min_tx_bw, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %min_tx_bw23 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 9
  %38 = ptrtoint ptr %min_tx_bw23 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %min_tx_bw23, align 4
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %max_tx_bw, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %max_tx_bw24 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 10
  %42 = ptrtoint ptr %max_tx_bw24 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %max_tx_bw24, align 2
  %phys_port = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %phys_port to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %phys_port, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %phys_port25 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 2
  %46 = ptrtoint ptr %phys_port25 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %phys_port25, align 4
  %switch_mode = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %switch_mode to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %switch_mode, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %switch_mode26 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 3
  %50 = ptrtoint ptr %switch_mode26 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %switch_mode26, align 2
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %max_tx_ques, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %max_tx_ques27 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 7
  %54 = ptrtoint ptr %max_tx_ques27 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %max_tx_ques27, align 4
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 9
  %55 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %max_rx_ques, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %max_rx_ques28 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 8
  %58 = ptrtoint ptr %max_rx_ques28 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %max_rx_ques28, align 2
  %capabilities = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %capabilities to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %capabilities, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %capabilities29 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 4
  %62 = ptrtoint ptr %capabilities29 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %capabilities29, align 4
  %max_mtu = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 7
  %63 = ptrtoint ptr %max_mtu to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %max_mtu, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %max_mtu30 = getelementptr inbounds %struct.qlcnic_info, ptr %npar_info, i32 0, i32 6
  %66 = ptrtoint ptr %max_mtu30 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %max_mtu30, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.end
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %if.else ]
  %67 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %68) #7
  %69 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %71) #7
  %72 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_dma

out_free_dma:                                     ; preds = %if.end31, %if.end.out_free_dma_crit_edge
  %err.1 = phi i32 [ %call.i68, %if.end.out_free_dma_crit_edge ], [ %err.0, %if.end31 ]
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nic_dma_t, align 4
  call void @dma_free_attrs(ptr noundef %dev33, i32 noundef 128, ptr noundef nonnull %call.i, i32 noundef %76, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_dma, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free_dma ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_dma_t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_set_nic_info(ptr noundef %adapter, ptr nocapture noundef readonly %nic) local_unnamed_addr #0 align 64 {
entry:
  %nic_dma_t = alloca i32, align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_dma_t) #7
  %0 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nic_dma_t, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 128, ptr noundef nonnull %nic_dma_t, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %nic to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nic, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %call.i, align 1
  %op_mode5 = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 1
  %12 = ptrtoint ptr %op_mode5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %op_mode5, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %op_mode6 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %op_mode6 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %op_mode6, align 1
  %phys_port = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 2
  %16 = ptrtoint ptr %phys_port to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phys_port, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %phys_port7 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %phys_port7 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %phys_port7, align 1
  %switch_mode = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 3
  %20 = ptrtoint ptr %switch_mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %switch_mode, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %switch_mode8 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %switch_mode8 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %switch_mode8, align 1
  %capabilities = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 4
  %24 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %capabilities9 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %capabilities9 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %capabilities9, align 1
  %max_mac_filters = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 5
  %28 = ptrtoint ptr %max_mac_filters to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_mac_filters, align 4
  %max_mac_filters10 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %max_mac_filters10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %max_mac_filters10, align 1
  %max_tx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 7
  %31 = ptrtoint ptr %max_tx_ques to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_tx_ques, align 4
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %max_tx_ques11 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %max_tx_ques11 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %max_tx_ques11, align 1
  %max_rx_ques = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 8
  %35 = ptrtoint ptr %max_rx_ques to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_rx_ques, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %max_rx_ques12 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %max_rx_ques12 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %max_rx_ques12, align 1
  %min_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 9
  %39 = ptrtoint ptr %min_tx_bw to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %min_tx_bw, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %min_tx_bw13 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %min_tx_bw13 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %min_tx_bw13, align 1
  %max_tx_bw = getelementptr inbounds %struct.qlcnic_info, ptr %nic, i32 0, i32 10
  %43 = ptrtoint ptr %max_tx_bw to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_tx_bw, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %max_tx_bw14 = getelementptr inbounds %struct.qlcnic_info_le, ptr %call.i, i32 0, i32 11
  %46 = ptrtoint ptr %max_tx_bw14 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %max_tx_bw14, align 1
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i78 = call i32 %52(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool16.not = icmp eq i32 %call.i78, 0
  br i1 %tobool16.not, label %if.end18, label %if.end3.out_free_dma_crit_edge

if.end3.out_free_dma_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_dma

if.end18:                                         ; preds = %if.end3
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %54, i32 1
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx, align 4
  %56 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nic_dma_t, align 4
  %58 = load ptr, ptr %arg, align 4
  %arrayidx26 = getelementptr i32, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %arrayidx26, align 4
  %60 = ptrtoint ptr %nic to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nic, align 4
  %conv28 = zext i16 %61 to i32
  %shl = shl nuw i32 %conv28, 16
  %or = or i32 %shl, 128
  %62 = load ptr, ptr %arg, align 4
  %arrayidx31 = getelementptr i32, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or, ptr %arrayidx31, align 4
  %64 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter, align 8
  %hw_ops.i79 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %65, i32 0, i32 46
  %66 = ptrtoint ptr %hw_ops.i79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_ops.i79, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %if.end18.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end18
  %call.i80 = call i32 %69(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp33.not = icmp eq i32 %call.i80, 0
  br i1 %cmp33.not, label %qlcnic_issue_cmd.exit.if.end38_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit.if.end38_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end18.do.end_crit_edge
  %retval.0.i83 = phi i32 [ %call.i80, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end18.do.end_crit_edge ]
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i83) #11
  br label %if.end38

if.end38:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end38_crit_edge
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %qlcnic_issue_cmd.exit.if.end38_crit_edge ]
  %72 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %73) #7
  %74 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %76) #7
  %77 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_dma

out_free_dma:                                     ; preds = %if.end38, %if.end3.out_free_dma_crit_edge
  %err.1 = phi i32 [ %call.i78, %if.end3.out_free_dma_crit_edge ], [ %err.0, %if.end38 ]
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %nic_dma_t to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nic_dma_t, align 4
  call void @dma_free_attrs(ptr noundef %dev40, i32 noundef 128, ptr noundef nonnull %call.i, i32 noundef %81, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_dma, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free_dma ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_dma_t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_pci_info(ptr noundef %adapter, ptr nocapture noundef writeonly %pci_info) local_unnamed_addr #0 align 64 {
entry:
  %nic = alloca i16, align 2
  %fcoe = alloca i16, align 2
  %iscsi = alloca i16, align 2
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  %pci_info_dma_t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %max_vnic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_vnic_func, align 4
  %mul = shl i32 %3, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nic) #7
  %4 = ptrtoint ptr %nic to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %nic, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fcoe) #7
  %5 = ptrtoint ptr %fcoe to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %fcoe, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %iscsi) #7
  %6 = ptrtoint ptr %iscsi to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %iscsi, align 2
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_info_dma_t) #7
  %8 = ptrtoint ptr %pci_info_dma_t to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pci_info_dma_t, align 4, !annotation !154
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %pci_info_dma_t, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i114 = call i32 %16(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool3.not = icmp eq i32 %call.i114, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_free_dma_crit_edge

if.end.out_free_dma_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_dma

if.end5:                                          ; preds = %if.end
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %pci_info_dma_t to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pci_info_dma_t, align 4
  %22 = load ptr, ptr %arg, align 4
  %arrayidx12 = getelementptr i32, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %arrayidx12, align 4
  %24 = load ptr, ptr %arg, align 4
  %arrayidx15 = getelementptr i32, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %arrayidx15, align 4
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %hw_ops.i115 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %hw_ops.i115 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i115, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %qlcnic_issue_cmd.exit.thread, label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %total_nic_func118 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 36
  %32 = ptrtoint ptr %total_nic_func118 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %total_nic_func118, align 8
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end5
  %call.i116 = call i32 %31(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 36
  %33 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %total_nic_func, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp = icmp eq i32 %call.i116, 0
  br i1 %cmp, label %for.cond.preheader, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.preheader:                               ; preds = %qlcnic_issue_cmd.exit
  %34 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_vnic_func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp20123.not = icmp eq i32 %35, 0
  br i1 %cmp20123.not, label %for.cond.preheader.if.end39_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end39_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0127 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %err.0126 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %npar.0125 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %pci_info.addr.0124 = phi ptr [ %incdec.ptr36, %for.inc.for.body_crit_edge ], [ %pci_info, %for.cond.preheader.for.body_crit_edge ]
  %36 = ptrtoint ptr %npar.0125 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %npar.0125, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %39 = ptrtoint ptr %pci_info.addr.0124 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pci_info.addr.0124, align 2
  %active = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 1
  %40 = ptrtoint ptr %active to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %active, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %active23 = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 1
  %43 = ptrtoint ptr %active23 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %active23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool25.not = icmp eq i16 %41, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 2
  %44 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %type, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %type28 = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 2
  %47 = ptrtoint ptr %type28 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %type28, align 2
  %call30 = call i32 @qlcnic_get_pci_func_type(ptr noundef %adapter, i16 noundef zeroext %46, ptr noundef nonnull %nic, ptr noundef nonnull %fcoe, ptr noundef nonnull %iscsi) #7
  %default_port = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 3
  %48 = ptrtoint ptr %default_port to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %default_port, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %default_port31 = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 3
  %51 = ptrtoint ptr %default_port31 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %default_port31, align 2
  %tx_min_bw = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 4
  %52 = ptrtoint ptr %tx_min_bw to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %tx_min_bw, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %tx_min_bw32 = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 4
  %55 = ptrtoint ptr %tx_min_bw32 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %tx_min_bw32, align 2
  %tx_max_bw = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 5
  %56 = ptrtoint ptr %tx_max_bw to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %tx_max_bw, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %tx_max_bw33 = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 5
  %59 = ptrtoint ptr %tx_max_bw33 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %tx_max_bw33, align 2
  %mac = getelementptr inbounds %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 0, i32 6
  %mac34 = getelementptr inbounds %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 0, i32 7
  %60 = call ptr @memcpy(ptr %mac, ptr %mac34, i32 6)
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %call30, %if.end27 ], [ %err.0126, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0127, 1
  %incdec.ptr = getelementptr %struct.qlcnic_pci_info_le, ptr %npar.0125, i32 1
  %incdec.ptr36 = getelementptr %struct.qlcnic_pci_info, ptr %pci_info.addr.0124, i32 1
  %61 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_vnic_func, align 4
  %cmp20 = icmp ult i32 %inc, %62
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.if.end39_crit_edge

for.inc.if.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %qlcnic_issue_cmd.exit.thread
  %total_nic_func122 = phi ptr [ %total_nic_func118, %qlcnic_issue_cmd.exit.thread ], [ %total_nic_func, %qlcnic_issue_cmd.exit.do.end_crit_edge ]
  %retval.0.i120 = phi i32 [ -5, %qlcnic_issue_cmd.exit.thread ], [ %call.i116, %qlcnic_issue_cmd.exit.do.end_crit_edge ]
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i120) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end, %for.inc.if.end39_crit_edge, %for.cond.preheader.if.end39_crit_edge
  %total_nic_func121 = phi ptr [ %total_nic_func122, %do.end ], [ %total_nic_func, %for.cond.preheader.if.end39_crit_edge ], [ %total_nic_func, %for.inc.if.end39_crit_edge ]
  %err.2 = phi i32 [ -5, %do.end ], [ 0, %for.cond.preheader.if.end39_crit_edge ], [ %err.1, %for.inc.if.end39_crit_edge ]
  %65 = ptrtoint ptr %nic to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %nic, align 2
  %67 = ptrtoint ptr %total_nic_func121 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %total_nic_func121, align 8
  %conv41 = zext i16 %66 to i32
  %68 = ptrtoint ptr %fcoe to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %fcoe, align 2
  %conv42 = zext i16 %69 to i32
  %add = add nuw nsw i32 %conv42, %conv41
  %70 = ptrtoint ptr %iscsi to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %iscsi, align 2
  %conv43 = zext i16 %71 to i32
  %add44 = add nuw nsw i32 %add, %conv43
  %total_pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 39
  %72 = ptrtoint ptr %total_pci_func to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add44, ptr %total_pci_func, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp47 = icmp eq i16 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add44)
  %cmp50 = icmp eq i32 %add44, 0
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp50
  br i1 %or.cond, label %do.end55, label %if.end39.if.end61_crit_edge

if.end39.if.end61_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.end55:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %conv41, i32 noundef %add44) #11
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.end39.if.end61_crit_edge
  %err.3 = phi i32 [ -5, %do.end55 ], [ %err.2, %if.end39.if.end61_crit_edge ]
  %75 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %76) #7
  %77 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %79) #7
  %80 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_dma

out_free_dma:                                     ; preds = %if.end61, %if.end.out_free_dma_crit_edge
  %err.4 = phi i32 [ %call.i114, %if.end.out_free_dma_crit_edge ], [ %err.3, %if.end61 ]
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 8
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = ptrtoint ptr %pci_info_dma_t to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pci_info_dma_t, align 4
  call void @dma_free_attrs(ptr noundef %dev63, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %84, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_dma, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %out_free_dma ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_info_dma_t) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %iscsi) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fcoe) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nic) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_get_pci_func_type(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_config_port_mirroring(ptr noundef %adapter, i8 noundef zeroext %id, i8 noundef zeroext %enable_mirroring, i8 noundef zeroext %pci_func) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 30
  %5 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not = icmp eq i16 %6, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %eswitch = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 42
  %7 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eswitch, align 4
  %idxprom = zext i8 %id to i32
  %flags = getelementptr %struct.qlcnic_eswitch, ptr %8, i32 %idxprom, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv8 = zext i8 %pci_func to i32
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %14(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_mirroring)
  %tobool7.not = icmp eq i8 %enable_mirroring, 0
  %cond = select i1 %tobool7.not, i32 0, i32 16
  %or = or i32 %cond, %idxprom
  %shl = shl nuw nsw i32 %conv8, 8
  %or9 = or i32 %or, %shl
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg, align 4
  %arrayidx13 = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or9, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %hw_ops.i48 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops.i48, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end12.do.end20_crit_edge, label %qlcnic_issue_cmd.exit

if.end12.do.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

qlcnic_issue_cmd.exit:                            ; preds = %if.end12
  %call.i49 = call i32 %23(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp15.not = icmp eq i32 %call.i49, 0
  br i1 %cmp15.not, label %do.end25, label %qlcnic_issue_cmd.exit.do.end20_crit_edge

qlcnic_issue_cmd.exit.do.end20_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %qlcnic_issue_cmd.exit.do.end20_crit_edge, %if.end12.do.end20_crit_edge
  %retval.0.i53 = phi i32 [ %call.i49, %qlcnic_issue_cmd.exit.do.end20_crit_edge ], [ -5, %if.end12.do.end20_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %conv8, i32 noundef %idxprom) #11
  br label %if.end28

do.end25:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %conv8, i32 noundef %idxprom) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %do.end20
  %retval.0.i52 = phi i32 [ 0, %do.end25 ], [ %retval.0.i53, %do.end20 ]
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %retval.0.i52, %if.end28 ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_get_port_stats(ptr noundef %adapter, i8 noundef zeroext %func, i8 noundef zeroext %rx_tx, ptr noundef writeonly %esw_stats) local_unnamed_addr #0 align 64 {
entry:
  %stats_dma_t = alloca i32, align 4
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats_dma_t) #7
  %0 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stats_dma_t, align 4, !annotation !154
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %cmp = icmp eq ptr %esw_stats, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1.not = icmp eq i16 %5, 0
  br i1 %cmp1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %func)
  %cmp6.not = icmp eq i8 %7, %func
  br i1 %cmp6.not, label %land.lhs.true.if.end10_crit_edge, label %do.end

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = zext i8 %func to i32
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv3) #11
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %pdev11 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev12, i32 noundef 88, ptr noundef nonnull %stats_dma_t, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i92 = call i32 %17(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool22.not = icmp eq i32 %call.i92, 0
  br i1 %tobool22.not, label %if.end24, label %if.end14.out_free_dma_crit_edge

if.end14.out_free_dma_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_dma

if.end24:                                         ; preds = %if.end14
  %conv17 = zext i8 %rx_tx to i32
  %shl = shl nuw nsw i32 %conv17, 15
  %conv15 = zext i8 %func to i32
  %or19 = or i32 %shl, %conv15
  %or20 = or i32 %or19, 5771520
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or20, ptr %arrayidx, align 4
  %21 = load ptr, ptr %arg, align 4
  %arrayidx30 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx30, align 4
  %23 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats_dma_t, align 4
  %25 = load ptr, ptr %arg, align 4
  %arrayidx35 = getelementptr i32, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %arrayidx35, align 4
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %hw_ops.i93 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %hw_ops.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ops.i93, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end24.if.end49_crit_edge, label %qlcnic_issue_cmd.exit

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

qlcnic_issue_cmd.exit:                            ; preds = %if.end24
  %call.i94 = call i32 %32(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool37.not = icmp eq i32 %call.i94, 0
  br i1 %tobool37.not, label %if.then38, label %qlcnic_issue_cmd.exit.if.end49_crit_edge

qlcnic_issue_cmd.exit.if.end49_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then38:                                        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %call.i, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %esw_stats to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %esw_stats, align 8
  %version = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %version, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %version40 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 1
  %40 = ptrtoint ptr %version40 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %version40, align 2
  %size = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %size, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %size41 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 2
  %44 = ptrtoint ptr %size41 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %size41, align 4
  %multicast_frames = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %multicast_frames to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %multicast_frames, align 1
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %multicast_frames42 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 5
  %48 = ptrtoint ptr %multicast_frames42 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %multicast_frames42, align 8
  %broadcast_frames = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %broadcast_frames to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %broadcast_frames, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50)
  %broadcast_frames43 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 6
  %52 = ptrtoint ptr %broadcast_frames43 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %broadcast_frames43, align 8
  %unicast_frames = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %unicast_frames to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %unicast_frames, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %unicast_frames44 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 4
  %56 = ptrtoint ptr %unicast_frames44 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %unicast_frames44, align 8
  %dropped_frames = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %dropped_frames, align 1
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %dropped_frames45 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 7
  %60 = ptrtoint ptr %dropped_frames45 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %dropped_frames45, align 8
  %local_frames = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 9
  %61 = ptrtoint ptr %local_frames to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %local_frames, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %local_frames46 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 9
  %64 = ptrtoint ptr %local_frames46 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %local_frames46, align 8
  %errors = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 8
  %65 = ptrtoint ptr %errors to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %errors, align 1
  %67 = call i64 @llvm.bswap.i64(i64 %66)
  %errors47 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 8
  %68 = ptrtoint ptr %errors47 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %errors47, align 8
  %numbytes = getelementptr inbounds %struct.qlcnic_esw_stats_le, ptr %call.i, i32 0, i32 10
  %69 = ptrtoint ptr %numbytes to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %numbytes, align 1
  %71 = call i64 @llvm.bswap.i64(i64 %70)
  %numbytes48 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 10
  %72 = ptrtoint ptr %numbytes48 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %numbytes48, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then38, %qlcnic_issue_cmd.exit.if.end49_crit_edge, %if.end24.if.end49_crit_edge
  %retval.0.i97 = phi i32 [ 0, %if.then38 ], [ %call.i94, %qlcnic_issue_cmd.exit.if.end49_crit_edge ], [ -5, %if.end24.if.end49_crit_edge ]
  %73 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %74) #7
  %75 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %77) #7
  %78 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_dma

out_free_dma:                                     ; preds = %if.end49, %if.end14.out_free_dma_crit_edge
  %err.0 = phi i32 [ %call.i92, %if.end14.out_free_dma_crit_edge ], [ %retval.0.i97, %if.end49 ]
  %79 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev11, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stats_dma_t, align 4
  call void @dma_free_attrs(ptr noundef %dev51, i32 noundef 88, ptr noundef nonnull %call.i, i32 noundef %82, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_dma, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.0, %out_free_dma ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats_dma_t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_get_mac_stats(ptr noundef %adapter, ptr noundef writeonly %mac_stats) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  %stats_dma_t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats_dma_t) #7
  %1 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stats_dma_t, align 4, !annotation !154
  %cmp = icmp eq ptr %mac_stats, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 312, ptr noundef nonnull %stats_dma_t, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i79 = call i32 %9(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool4.not = icmp eq i32 %call.i79, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.out_free_dma_crit_edge

if.end2.out_free_dma_crit_edge:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_dma

if.end6:                                          ; preds = %if.end2
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20447232, ptr %arrayidx, align 4
  %13 = load ptr, ptr %arg, align 4
  %arrayidx11 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx11, align 4
  %15 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats_dma_t, align 4
  %17 = load ptr, ptr %arg, align 4
  %arrayidx16 = getelementptr i32, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %arrayidx16, align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %hw_ops.i80 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i80, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end6.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end6
  %call.i81 = call i32 %24(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool18.not = icmp eq i32 %call.i81, 0
  br i1 %tobool18.not, label %if.then19, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then19:                                        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %call.i, align 1
  %27 = call i64 @llvm.bswap.i64(i64 %26)
  %28 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %mac_stats, align 8
  %mac_tx_bytes = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %mac_tx_bytes to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %mac_tx_bytes, align 1
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %mac_tx_bytes21 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 1
  %32 = ptrtoint ptr %mac_tx_bytes21 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %mac_tx_bytes21, align 8
  %mac_tx_mcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %mac_tx_mcast_pkts to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %mac_tx_mcast_pkts, align 1
  %35 = call i64 @llvm.bswap.i64(i64 %34)
  %mac_tx_mcast_pkts22 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 2
  %36 = ptrtoint ptr %mac_tx_mcast_pkts22 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %mac_tx_mcast_pkts22, align 8
  %mac_tx_bcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %mac_tx_bcast_pkts to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %mac_tx_bcast_pkts, align 1
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %mac_tx_bcast_pkts23 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 3
  %40 = ptrtoint ptr %mac_tx_bcast_pkts23 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %mac_tx_bcast_pkts23, align 8
  %mac_rx_frames = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 14
  %41 = ptrtoint ptr %mac_rx_frames to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %mac_rx_frames, align 1
  %43 = call i64 @llvm.bswap.i64(i64 %42)
  %mac_rx_frames24 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 14
  %44 = ptrtoint ptr %mac_rx_frames24 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %mac_rx_frames24, align 8
  %mac_rx_bytes = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 15
  %45 = ptrtoint ptr %mac_rx_bytes to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %mac_rx_bytes, align 1
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %mac_rx_bytes25 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 15
  %48 = ptrtoint ptr %mac_rx_bytes25 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %mac_rx_bytes25, align 8
  %mac_rx_mcast_pkts = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 16
  %49 = ptrtoint ptr %mac_rx_mcast_pkts to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %mac_rx_mcast_pkts, align 1
  %51 = call i64 @llvm.bswap.i64(i64 %50)
  %mac_rx_mcast_pkts26 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 16
  %52 = ptrtoint ptr %mac_rx_mcast_pkts26 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %mac_rx_mcast_pkts26, align 8
  %mac_rx_length_error = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 28
  %53 = ptrtoint ptr %mac_rx_length_error to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %mac_rx_length_error, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %mac_rx_length_error27 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 28
  %56 = ptrtoint ptr %mac_rx_length_error27 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %mac_rx_length_error27, align 8
  %mac_rx_length_small = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 29
  %57 = ptrtoint ptr %mac_rx_length_small to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %mac_rx_length_small, align 1
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %mac_rx_length_small28 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 29
  %60 = ptrtoint ptr %mac_rx_length_small28 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %mac_rx_length_small28, align 8
  %mac_rx_length_large = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 30
  %61 = ptrtoint ptr %mac_rx_length_large to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %mac_rx_length_large, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %mac_rx_length_large29 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 30
  %64 = ptrtoint ptr %mac_rx_length_large29 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %mac_rx_length_large29, align 8
  %mac_rx_jabber = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 31
  %65 = ptrtoint ptr %mac_rx_jabber to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %mac_rx_jabber, align 1
  %67 = call i64 @llvm.bswap.i64(i64 %66)
  %mac_rx_jabber30 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 31
  %68 = ptrtoint ptr %mac_rx_jabber30 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %mac_rx_jabber30, align 8
  %mac_rx_dropped = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 32
  %69 = ptrtoint ptr %mac_rx_dropped to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %mac_rx_dropped, align 1
  %71 = call i64 @llvm.bswap.i64(i64 %70)
  %mac_rx_dropped31 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 32
  %72 = ptrtoint ptr %mac_rx_dropped31 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %mac_rx_dropped31, align 8
  %mac_rx_crc_error = getelementptr inbounds %struct.qlcnic_mac_statistics_le, ptr %call.i, i32 0, i32 33
  %73 = ptrtoint ptr %mac_rx_crc_error to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %mac_rx_crc_error, align 1
  %75 = call i64 @llvm.bswap.i64(i64 %74)
  %mac_rx_crc_error32 = getelementptr inbounds %struct.qlcnic_mac_statistics, ptr %mac_stats, i32 0, i32 33
  %76 = ptrtoint ptr %mac_rx_crc_error32 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %mac_rx_crc_error32, align 8
  br label %if.end35

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end6.do.end_crit_edge
  %retval.0.i84 = phi i32 [ %call.i81, %qlcnic_issue_cmd.exit.do.end_crit_edge ], [ -5, %if.end6.do.end_crit_edge ]
  %77 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i84) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then19
  %retval.0.i85 = phi i32 [ %retval.0.i84, %do.end ], [ 0, %if.then19 ]
  %79 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %80) #7
  %81 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %83) #7
  %84 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %arg3.i, align 4
  br label %out_free_dma

out_free_dma:                                     ; preds = %if.end35, %if.end2.out_free_dma_crit_edge
  %err.0 = phi i32 [ %call.i79, %if.end2.out_free_dma_crit_edge ], [ %retval.0.i85, %if.end35 ]
  %85 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %stats_dma_t to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stats_dma_t, align 4
  call void @dma_free_attrs(ptr noundef %dev37, i32 noundef 312, ptr noundef nonnull %call.i, i32 noundef %88, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_dma, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free_dma ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats_dma_t) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_get_eswitch_stats(ptr noundef %adapter, i8 noundef zeroext %eswitch, i8 noundef zeroext %rx_tx, ptr noundef %esw_stats) local_unnamed_addr #0 align 64 {
entry:
  %port_stats = alloca %struct.__qlcnic_esw_statistics, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %port_stats) #7
  %0 = call ptr @memset(ptr %port_stats, i32 255, i32 88)
  %cmp = icmp eq ptr %esw_stats, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp1.not = icmp eq i16 %4, 0
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 41
  %5 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %npars, align 8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %esw_stats to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %esw_stats, align 8
  %unicast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 4
  %multicast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 5
  %broadcast_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 6
  %dropped_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 7
  %errors = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 8
  %local_frames = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 9
  %numbytes = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 10
  %conv9 = zext i8 %eswitch to i16
  %8 = call ptr @memset(ptr %unicast_frames, i32 255, i32 56)
  store i16 %conv9, ptr %esw_stats, align 8
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %total_nic_func282 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 36
  %11 = ptrtoint ptr %total_nic_func282 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %total_nic_func282, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp13283.not = icmp eq i16 %12, 0
  br i1 %cmp13283.not, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %size = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 2
  %size27 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 2
  %version = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 1
  %version28 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %esw_stats, i32 0, i32 1
  %unicast_frames42 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 4
  %multicast_frames66 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 5
  %broadcast_frames93 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 6
  %dropped_frames120 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 7
  %errors147 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 8
  %local_frames174 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 9
  %numbytes201 = getelementptr inbounds %struct.__qlcnic_esw_statistics, ptr %port_stats, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv10286 = phi i32 [ 0, %for.body.lr.ph ], [ %conv10, %for.inc.for.body_crit_edge ]
  %ret.0285 = phi i32 [ -5, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %i.0284 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %npars, align 8
  %phy_port = getelementptr %struct.qlcnic_npar_info, ptr %14, i32 %conv10286, i32 4
  %15 = ptrtoint ptr %phy_port to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phy_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %eswitch)
  %cmp18.not = icmp eq i8 %16, %eswitch
  br i1 %cmp18.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %17 = call ptr @memset(ptr %port_stats, i32 0, i32 88)
  %pci_func = getelementptr %struct.qlcnic_npar_info, ptr %14, i32 %conv10286, i32 14
  %18 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pci_func, align 2
  %call = call i32 @qlcnic_get_port_stats(ptr noundef %adapter, i8 noundef zeroext %19, i8 noundef zeroext %rx_tx, ptr noundef nonnull %port_stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end26, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size, align 4
  %22 = ptrtoint ptr %size27 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %size27, align 4
  %23 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %version, align 2
  %25 = ptrtoint ptr %version28 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %version28, align 2
  %26 = ptrtoint ptr %unicast_frames to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %unicast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp30 = icmp eq i64 %27, -1
  %28 = ptrtoint ptr %unicast_frames42 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %unicast_frames42, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %29)
  %cmp33.not = icmp eq i64 %29, -1
  br i1 %cmp30, label %land.lhs.true, label %land.lhs.true41

land.lhs.true:                                    ; preds = %if.end26
  br i1 %cmp33.not, label %land.lhs.true.do.body50_crit_edge, label %land.lhs.true.do.body50.sink.split_crit_edge

land.lhs.true.do.body50.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50.sink.split

land.lhs.true.do.body50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

land.lhs.true41:                                  ; preds = %if.end26
  br i1 %cmp33.not, label %land.lhs.true41.do.body50_crit_edge, label %if.then45

land.lhs.true41.do.body50_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %29, %27
  br label %do.body50.sink.split

do.body50.sink.split:                             ; preds = %if.then45, %land.lhs.true.do.body50.sink.split_crit_edge
  %.sink = phi i64 [ %add, %if.then45 ], [ %29, %land.lhs.true.do.body50.sink.split_crit_edge ]
  %30 = ptrtoint ptr %unicast_frames to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %.sink, ptr %unicast_frames, align 8
  br label %do.body50

do.body50:                                        ; preds = %do.body50.sink.split, %land.lhs.true41.do.body50_crit_edge, %land.lhs.true.do.body50_crit_edge
  %31 = ptrtoint ptr %multicast_frames to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %multicast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %32)
  %cmp52 = icmp eq i64 %32, -1
  %33 = ptrtoint ptr %multicast_frames66 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %multicast_frames66, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp56.not = icmp eq i64 %34, -1
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true65

land.lhs.true54:                                  ; preds = %do.body50
  br i1 %cmp56.not, label %land.lhs.true54.do.body77_crit_edge, label %land.lhs.true54.do.body77.sink.split_crit_edge

land.lhs.true54.do.body77.sink.split_crit_edge:   ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77.sink.split

land.lhs.true54.do.body77_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77

land.lhs.true65:                                  ; preds = %do.body50
  br i1 %cmp56.not, label %land.lhs.true65.do.body77_crit_edge, label %if.then69

land.lhs.true65.do.body77_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  %add72 = add i64 %34, %32
  br label %do.body77.sink.split

do.body77.sink.split:                             ; preds = %if.then69, %land.lhs.true54.do.body77.sink.split_crit_edge
  %.sink287 = phi i64 [ %add72, %if.then69 ], [ %34, %land.lhs.true54.do.body77.sink.split_crit_edge ]
  %35 = ptrtoint ptr %multicast_frames to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %.sink287, ptr %multicast_frames, align 8
  br label %do.body77

do.body77:                                        ; preds = %do.body77.sink.split, %land.lhs.true65.do.body77_crit_edge, %land.lhs.true54.do.body77_crit_edge
  %36 = ptrtoint ptr %broadcast_frames to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %broadcast_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp79 = icmp eq i64 %37, -1
  %38 = ptrtoint ptr %broadcast_frames93 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %broadcast_frames93, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %39)
  %cmp83.not = icmp eq i64 %39, -1
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true92

land.lhs.true81:                                  ; preds = %do.body77
  br i1 %cmp83.not, label %land.lhs.true81.do.body104_crit_edge, label %land.lhs.true81.do.body104.sink.split_crit_edge

land.lhs.true81.do.body104.sink.split_crit_edge:  ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104.sink.split

land.lhs.true81.do.body104_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

land.lhs.true92:                                  ; preds = %do.body77
  br i1 %cmp83.not, label %land.lhs.true92.do.body104_crit_edge, label %if.then96

land.lhs.true92.do.body104_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

if.then96:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  %add99 = add i64 %39, %37
  br label %do.body104.sink.split

do.body104.sink.split:                            ; preds = %if.then96, %land.lhs.true81.do.body104.sink.split_crit_edge
  %.sink288 = phi i64 [ %add99, %if.then96 ], [ %39, %land.lhs.true81.do.body104.sink.split_crit_edge ]
  %40 = ptrtoint ptr %broadcast_frames to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %.sink288, ptr %broadcast_frames, align 8
  br label %do.body104

do.body104:                                       ; preds = %do.body104.sink.split, %land.lhs.true92.do.body104_crit_edge, %land.lhs.true81.do.body104_crit_edge
  %41 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dropped_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %cmp106 = icmp eq i64 %42, -1
  %43 = ptrtoint ptr %dropped_frames120 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dropped_frames120, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %44)
  %cmp110.not = icmp eq i64 %44, -1
  br i1 %cmp106, label %land.lhs.true108, label %land.lhs.true119

land.lhs.true108:                                 ; preds = %do.body104
  br i1 %cmp110.not, label %land.lhs.true108.do.body131_crit_edge, label %land.lhs.true108.do.body131.sink.split_crit_edge

land.lhs.true108.do.body131.sink.split_crit_edge: ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131.sink.split

land.lhs.true108.do.body131_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

land.lhs.true119:                                 ; preds = %do.body104
  br i1 %cmp110.not, label %land.lhs.true119.do.body131_crit_edge, label %if.then123

land.lhs.true119.do.body131_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

if.then123:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  %add126 = add i64 %44, %42
  br label %do.body131.sink.split

do.body131.sink.split:                            ; preds = %if.then123, %land.lhs.true108.do.body131.sink.split_crit_edge
  %.sink289 = phi i64 [ %add126, %if.then123 ], [ %44, %land.lhs.true108.do.body131.sink.split_crit_edge ]
  %45 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %.sink289, ptr %dropped_frames, align 8
  br label %do.body131

do.body131:                                       ; preds = %do.body131.sink.split, %land.lhs.true119.do.body131_crit_edge, %land.lhs.true108.do.body131_crit_edge
  %46 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %errors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %47)
  %cmp133 = icmp eq i64 %47, -1
  %48 = ptrtoint ptr %errors147 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %errors147, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %49)
  %cmp137.not = icmp eq i64 %49, -1
  br i1 %cmp133, label %land.lhs.true135, label %land.lhs.true146

land.lhs.true135:                                 ; preds = %do.body131
  br i1 %cmp137.not, label %land.lhs.true135.do.body158_crit_edge, label %land.lhs.true135.do.body158.sink.split_crit_edge

land.lhs.true135.do.body158.sink.split_crit_edge: ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158.sink.split

land.lhs.true135.do.body158_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

land.lhs.true146:                                 ; preds = %do.body131
  br i1 %cmp137.not, label %land.lhs.true146.do.body158_crit_edge, label %if.then150

land.lhs.true146.do.body158_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

if.then150:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #9
  %add153 = add i64 %49, %47
  br label %do.body158.sink.split

do.body158.sink.split:                            ; preds = %if.then150, %land.lhs.true135.do.body158.sink.split_crit_edge
  %.sink290 = phi i64 [ %add153, %if.then150 ], [ %49, %land.lhs.true135.do.body158.sink.split_crit_edge ]
  %50 = ptrtoint ptr %errors to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %.sink290, ptr %errors, align 8
  br label %do.body158

do.body158:                                       ; preds = %do.body158.sink.split, %land.lhs.true146.do.body158_crit_edge, %land.lhs.true135.do.body158_crit_edge
  %51 = ptrtoint ptr %local_frames to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %local_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp160 = icmp eq i64 %52, -1
  %53 = ptrtoint ptr %local_frames174 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %local_frames174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %54)
  %cmp164.not = icmp eq i64 %54, -1
  br i1 %cmp160, label %land.lhs.true162, label %land.lhs.true173

land.lhs.true162:                                 ; preds = %do.body158
  br i1 %cmp164.not, label %land.lhs.true162.do.body185_crit_edge, label %land.lhs.true162.do.body185.sink.split_crit_edge

land.lhs.true162.do.body185.sink.split_crit_edge: ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body185.sink.split

land.lhs.true162.do.body185_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body185

land.lhs.true173:                                 ; preds = %do.body158
  br i1 %cmp164.not, label %land.lhs.true173.do.body185_crit_edge, label %if.then177

land.lhs.true173.do.body185_crit_edge:            ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body185

if.then177:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #9
  %add180 = add i64 %54, %52
  br label %do.body185.sink.split

do.body185.sink.split:                            ; preds = %if.then177, %land.lhs.true162.do.body185.sink.split_crit_edge
  %.sink291 = phi i64 [ %add180, %if.then177 ], [ %54, %land.lhs.true162.do.body185.sink.split_crit_edge ]
  %55 = ptrtoint ptr %local_frames to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %.sink291, ptr %local_frames, align 8
  br label %do.body185

do.body185:                                       ; preds = %do.body185.sink.split, %land.lhs.true173.do.body185_crit_edge, %land.lhs.true162.do.body185_crit_edge
  %56 = ptrtoint ptr %numbytes to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %numbytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %57)
  %cmp187 = icmp eq i64 %57, -1
  %58 = ptrtoint ptr %numbytes201 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %numbytes201, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %59)
  %cmp191.not = icmp eq i64 %59, -1
  br i1 %cmp187, label %land.lhs.true189, label %land.lhs.true200

land.lhs.true189:                                 ; preds = %do.body185
  br i1 %cmp191.not, label %land.lhs.true189.for.inc_crit_edge, label %land.lhs.true189.for.inc.sink.split_crit_edge

land.lhs.true189.for.inc.sink.split_crit_edge:    ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

land.lhs.true189.for.inc_crit_edge:               ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true200:                                 ; preds = %do.body185
  br i1 %cmp191.not, label %land.lhs.true200.for.inc_crit_edge, label %if.then204

land.lhs.true200.for.inc_crit_edge:               ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then204:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #9
  %add207 = add i64 %59, %57
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then204, %land.lhs.true189.for.inc.sink.split_crit_edge
  %.sink292 = phi i64 [ %add207, %if.then204 ], [ %59, %land.lhs.true189.for.inc.sink.split_crit_edge ]
  %60 = ptrtoint ptr %numbytes to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %.sink292, ptr %numbytes, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true200.for.inc_crit_edge, %land.lhs.true189.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0285, %for.body.for.inc_crit_edge ], [ %ret.0285, %if.end21.for.inc_crit_edge ], [ 0, %land.lhs.true200.for.inc_crit_edge ], [ 0, %land.lhs.true189.for.inc_crit_edge ], [ 0, %for.inc.sink.split ]
  %inc = add i8 %i.0284, 1
  %conv10 = zext i8 %inc to i32
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %62, i32 0, i32 36
  %63 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %total_nic_func, align 8
  %65 = zext i8 %inc to i16
  %cmp13 = icmp ugt i16 %64, %65
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %port_stats) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_clear_esw_stats(ptr noundef %adapter, i8 noundef zeroext %func_esw, i8 noundef zeroext %port, i8 noundef zeroext %rx_tx) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %func_esw to i32
  %5 = zext i8 %func_esw to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %func_esw, label %if.end.do.end_crit_edge [
    i8 1, label %if.then6
    i8 2, label %if.then15
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then6:                                         ; preds = %if.end
  %conv7 = zext i8 %port to i32
  %max_vnic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %max_vnic_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_vnic_func, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv7)
  %cmp8.not = icmp ule i32 %7, %conv7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rx_tx)
  %cmp25.old = icmp ugt i8 %rx_tx, 1
  %or.cond60 = or i1 %cmp25.old, %cmp8.not
  br i1 %or.cond60, label %if.then6.do.end_crit_edge, label %if.then6.if.end28_crit_edge

if.then6.if.end28_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then15:                                        ; preds = %if.end
  %8 = or i8 %rx_tx, %port
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %.not = icmp ult i8 %8, 2
  br i1 %.not, label %if.then15.if.end28_crit_edge, label %if.then15.do.end_crit_edge

if.then15.do.end_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then15.if.end28_crit_edge, %if.then6.if.end28_crit_edge
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %12(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end37, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %conv24 = zext i8 %rx_tx to i32
  %shl33 = shl nuw nsw i32 %conv24, 15
  %shl = shl nuw nsw i32 %conv3, 12
  %conv29 = zext i8 %port to i32
  %or = or i32 %shl, %conv29
  %or34 = or i32 %or, %shl33
  %or35 = or i32 %or34, 16640
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or35, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %hw_ops.i61 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %hw_ops.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops.i61, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end37.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

if.end37.qlcnic_issue_cmd.exit_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62 = call i32 %21(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %if.end37.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i62, %if.then.i ], [ -5, %if.end37.qlcnic_issue_cmd.exit_crit_edge ]
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %23) #7
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %26) #7
  br label %cleanup

do.end:                                           ; preds = %if.then15.do.end_crit_edge, %if.then6.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %conv40 = zext i8 %port to i32
  %conv41 = zext i8 %rx_tx to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %conv3, i32 noundef %conv40, i32 noundef %conv41) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %qlcnic_issue_cmd.exit, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %retval.0.i, %qlcnic_issue_cmd.exit ], [ -5, %entry.cleanup_crit_edge ], [ %call.i, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_config_switch_port(ptr noundef %adapter, ptr nocapture noundef readonly %esw_cfg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg2) #7
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arg2, align 4
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_func5 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 3
  %8 = ptrtoint ptr %pci_func5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_func5, align 2
  %call = tail call i32 @qlcnic_is_valid_nic_func(ptr noundef %adapter, i8 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 41
  %10 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %npars, align 8
  %phy_port = getelementptr %struct.qlcnic_npar_info, ptr %11, i32 %call, i32 4
  %12 = ptrtoint ptr %phy_port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_port, align 2
  %14 = and i8 %13, 1
  %and = zext i8 %14 to i32
  %conv11 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %and
  %15 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %arg1, align 4
  %call12 = call fastcc i32 @__qlcnic_get_eswitch_port_config(ptr noundef %adapter, ptr noundef nonnull %arg1, ptr noundef nonnull %arg2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg1, align 4
  %and15 = and i32 %17, -65293
  %or18 = or i32 %and15, %shl
  %op_mode20 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %op_mode20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %op_mode20, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %19, label %do.end77 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb66
    i8 2, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end14
  %or22 = or i32 %or18, 208
  %21 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or22, ptr %arg1, align 4
  %22 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arg2, align 4
  %or23 = or i32 %23, 3
  store i32 %or23, ptr %arg2, align 4
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 40
  %26 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %capabilities, align 4
  %and25 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sw.bb.if.end29_crit_edge, label %if.then27

sw.bb.if.end29_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or28 = or i32 %23, 15
  %28 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or28, ptr %arg2, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %sw.bb.if.end29_crit_edge
  %discard_tagged = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 6
  %29 = ptrtoint ptr %discard_tagged to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %discard_tagged, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %and32 = and i32 %or22, -29
  %31 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and32, ptr %arg1, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %promisc_mode = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 5
  %32 = ptrtoint ptr %promisc_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %promisc_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arg1, align 4
  %and36 = and i32 %35, -65
  store i32 %and36, ptr %arg1, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %mac_override = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 7
  %36 = ptrtoint ptr %mac_override to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mac_override, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool38.not = icmp eq i8 %37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg1, align 4
  %and40 = and i32 %39, -129
  store i32 %and40, ptr %arg1, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  %mac_anti_spoof = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 8
  %40 = ptrtoint ptr %mac_anti_spoof to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mac_anti_spoof, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool42.not = icmp eq i8 %41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arg2, align 4
  %and44 = and i32 %43, -2
  store i32 %and44, ptr %arg2, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %offload_flags = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 9
  %44 = ptrtoint ptr %offload_flags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %offload_flags, align 2
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool48.not = icmp eq i8 %46, 0
  br i1 %tobool48.not, label %if.then49, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg2, align 4
  %and50 = and i32 %48, -15
  store i32 %and50, ptr %arg2, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45.if.end51_crit_edge
  %49 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool55.not = icmp eq i8 %49, 0
  br i1 %tobool55.not, label %if.then56, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arg2, align 4
  %and57 = and i32 %51, -5
  store i32 %and57, ptr %arg2, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end51.if.end58_crit_edge
  %52 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool62.not = icmp eq i8 %52, 0
  br i1 %tobool62.not, label %if.then63, label %if.end58.sw.epilog_crit_edge

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arg2, align 4
  %and64 = and i32 %54, -9
  store i32 %and64, ptr %arg2, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %and67 = and i32 %or18, 65491
  %or68 = or i32 %and67, 36
  %55 = ptrtoint ptr %esw_cfg to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %esw_cfg, align 2
  %conv69 = zext i16 %56 to i32
  %shl70 = shl nuw i32 %conv69, 16
  %or71 = or i32 %shl70, %or68
  %57 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or71, ptr %arg1, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %or73 = and i32 %or18, 65491
  %and74 = or i32 %or73, 40
  %58 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and74, ptr %arg1, align 4
  br label %sw.epilog

do.end77:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i8 %19 to i32
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %conv21) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb72, %sw.bb66, %if.then63, %if.end58.sw.epilog_crit_edge
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %66(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool83.not = icmp eq i32 %call.i, 0
  br i1 %tobool83.not, label %if.end85, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %sw.epilog
  %67 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arg1, align 4
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arg, align 4
  %arrayidx86 = getelementptr i32, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %arrayidx86, align 4
  %72 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arg2, align 4
  %74 = load ptr, ptr %arg, align 4
  %arrayidx89 = getelementptr i32, ptr %74, i32 2
  %75 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %73, ptr %arrayidx89, align 4
  %76 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adapter, align 8
  %hw_ops.i141 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %77, i32 0, i32 46
  %78 = ptrtoint ptr %hw_ops.i141 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_ops.i141, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %81, null
  br i1 %tobool.not.i, label %if.end85.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

if.end85.qlcnic_issue_cmd.exit_crit_edge:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call.i142 = call i32 %81(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %if.end85.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i142, %if.then.i ], [ -5, %if.end85.qlcnic_issue_cmd.exit_crit_edge ]
  %82 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %83) #7
  %84 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %arg, align 4
  %arg3.i = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %arg3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arg3.i, align 4
  call void @kfree(ptr noundef %86) #7
  %87 = ptrtoint ptr %arg3.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arg3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp91.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp91.not, label %do.end100, label %do.end96

do.end96:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %conv11) #11
  br label %cleanup

do.end100:                                        ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %conv11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %do.end96, %sw.epilog.cleanup_crit_edge, %do.end77, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end77 ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end100 ], [ %retval.0.i, %do.end96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg1) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_is_valid_nic_func(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qlcnic_get_eswitch_port_config(ptr noundef %adapter, ptr nocapture noundef %arg1, ptr nocapture noundef writeonly %arg2) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %3 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg1, align 4
  %shr = lshr i32 %4, 8
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %10(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg1, align 4
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %hw_ops.i28 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %hw_ops.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops.i28, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.qlcnic_issue_cmd.exit_crit_edge, label %if.then.i

if.end.qlcnic_issue_cmd.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %qlcnic_issue_cmd.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i29 = call i32 %21(ptr noundef %adapter, ptr noundef nonnull %cmd) #7
  br label %qlcnic_issue_cmd.exit

qlcnic_issue_cmd.exit:                            ; preds = %if.then.i, %if.end.qlcnic_issue_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i29, %if.then.i ], [ -5, %if.end.qlcnic_issue_cmd.exit_crit_edge ]
  %arg3 = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg3, align 4
  %arrayidx4 = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4, align 4
  %26 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arg1, align 4
  %arrayidx7 = getelementptr i32, ptr %23, i32 2
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7, align 4
  %29 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arg2, align 4
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arg, align 4
  call void @kfree(ptr noundef %31) #7
  %32 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arg, align 4
  %33 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arg3, align 4
  call void @kfree(ptr noundef %34) #7
  %35 = ptrtoint ptr %arg3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arg3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  %conv10 = and i32 %shr, 255
  br i1 %cmp, label %do.end, label %do.end13

do.end:                                           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %conv10) #11
  br label %cleanup

do.end13:                                         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %conv10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i, %do.end13 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_get_eswitch_port_config(ptr noundef %adapter, ptr nocapture noundef %esw_cfg) local_unnamed_addr #0 align 64 {
entry:
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg2) #7
  %0 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arg2, align 4, !annotation !154
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %op_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %op_mode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %op_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pci_func = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 3
  %5 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_func, align 2
  %call = tail call i32 @qlcnic_is_valid_nic_func(ptr noundef %adapter, i8 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 41
  %7 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %npars, align 8
  %phy_port5 = getelementptr %struct.qlcnic_npar_info, ptr %8, i32 %call, i32 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 12
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %phy_port.0.in = phi ptr [ %phy_port5, %if.end ], [ %physical_port, %if.else ]
  %9 = ptrtoint ptr %phy_port.0.in to i32
  call void @__asan_load1_noabort(i32 %9)
  %phy_port.0 = load i8, ptr %phy_port.0.in, align 1
  %conv8 = zext i8 %phy_port.0 to i32
  %pci_func9 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 3
  %10 = ptrtoint ptr %pci_func9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_func9, align 2
  %conv10 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %or = or i32 %shl, %conv8
  %12 = ptrtoint ptr %arg1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arg1, align 4
  %call11 = call fastcc i32 @__qlcnic_get_eswitch_port_config(ptr noundef %adapter, ptr noundef nonnull %arg1, ptr noundef nonnull %arg2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg1, align 4
  %15 = trunc i32 %14 to i8
  %16 = lshr i8 %15, 4
  %17 = and i8 %16, 1
  %discard_tagged = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 6
  %18 = ptrtoint ptr %discard_tagged to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %discard_tagged, align 1
  %19 = lshr i8 %15, 5
  %20 = and i8 %19, 1
  %host_vlan_tag = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 4
  %21 = ptrtoint ptr %host_vlan_tag to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %host_vlan_tag, align 1
  %22 = lshr i8 %15, 6
  %23 = and i8 %22, 1
  %promisc_mode = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 5
  %24 = ptrtoint ptr %promisc_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %promisc_mode, align 2
  %25 = lshr i8 %15, 7
  %mac_override = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 7
  %26 = ptrtoint ptr %mac_override to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %mac_override, align 2
  %shr = lshr i32 %14, 16
  %conv38 = trunc i32 %shr to i16
  %27 = ptrtoint ptr %esw_cfg to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv38, ptr %esw_cfg, align 2
  %28 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arg2, align 4
  %30 = trunc i32 %29 to i8
  %conv40 = and i8 %30, 1
  %mac_anti_spoof = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 8
  %31 = ptrtoint ptr %mac_anti_spoof to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv40, ptr %mac_anti_spoof, align 1
  %32 = lshr i8 %30, 1
  %conv43 = and i8 %32, 7
  %offload_flags = getelementptr inbounds %struct.qlcnic_esw_func_cfg, ptr %esw_cfg, i32 0, i32 9
  %33 = ptrtoint ptr %offload_flags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv43, ptr %offload_flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg1) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 136, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_82xx_issue_cmd._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_82xx_issue_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 142, i32 10}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 146, i32 10}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 149, i32 10}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 152, i32 10}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 155, i32 10}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 158, i32 10}
!20 = !{ptr @qlcnic_82xx_issue_cmd._entry.11, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 161, i32 3}
!22 = !{ptr @qlcnic_82xx_issue_cmd._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 182, i32 43}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 200, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qlcnic_fw_cmd_set_drv_version._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @qlcnic_fw_cmd_set_drv_version._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 226, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qlcnic_fw_cmd_set_mtu._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qlcnic_fw_cmd_set_mtu._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 346, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @qlcnic_82xx_fw_cmd_create_rx_ctx._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 379, i32 22}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 405, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qlcnic_82xx_fw_cmd_del_rx_ctx._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 505, i32 23}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 508, i32 22}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 535, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qlcnic_82xx_fw_cmd_del_tx_ctx._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 787, i32 23}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 788, i32 39}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 789, i32 8}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 796, i32 9}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 838, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qlcnic_82xx_get_mac_address._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qlcnic_82xx_get_mac_address._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 873, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qlcnic_82xx_get_nic_info._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qlcnic_82xx_get_nic_info._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 939, i32 3}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qlcnic_82xx_set_nic_info._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @qlcnic_82xx_set_nic_info._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1000, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qlcnic_82xx_get_pci_info._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qlcnic_82xx_get_pci_info._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1008, i32 3}
!87 = !{ptr @qlcnic_82xx_get_pci_info._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qlcnic_82xx_get_pci_info._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1032, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qlcnic_config_port_mirroring._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qlcnic_config_port_mirroring._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1049, i32 3}
!96 = !{ptr @qlcnic_config_port_mirroring._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qlcnic_config_port_mirroring._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1052, i32 3}
!100 = !{ptr @qlcnic_config_port_mirroring._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qlcnic_config_port_mirroring._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1075, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qlcnic_get_port_stats._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qlcnic_get_port_stats._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1171, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @qlcnic_get_mac_stats._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @qlcnic_get_mac_stats._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1276, i32 2}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qlcnic_clear_esw_stats._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qlcnic_clear_esw_stats._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1326, i32 3}
!119 = !{ptr @qlcnic_config_switch_port._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @qlcnic_config_switch_port._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1374, i32 3}
!123 = !{ptr @qlcnic_config_switch_port._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qlcnic_config_switch_port._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1390, i32 3}
!127 = !{ptr @qlcnic_config_switch_port._entry.61, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @qlcnic_config_switch_port._entry_ptr.63, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1393, i32 3}
!131 = !{ptr @qlcnic_config_switch_port._entry.64, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @qlcnic_config_switch_port._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @qlcnic_mbx_tbl, !134, !"qlcnic_mbx_tbl", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 9, i32 45}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1302, i32 3}
!137 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @__qlcnic_get_eswitch_port_config._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @__qlcnic_get_eswitch_port_config._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_ctx.c", i32 1305, i32 3}
!142 = !{ptr @__qlcnic_get_eswitch_port_config._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @__qlcnic_get_eswitch_port_config._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{!"auto-init"}
