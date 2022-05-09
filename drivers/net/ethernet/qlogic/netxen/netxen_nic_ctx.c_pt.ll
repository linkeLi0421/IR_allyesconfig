; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netxen_recv_crb = type { [3 x i32], [4 x i32], [4 x i32] }
%struct.netxen_cmd_args = type { %struct._cdrp_cmd, %struct._cdrp_cmd }
%struct._cdrp_cmd = type { i32, i32, i32, i32 }
%struct.netxen_adapter = type { %struct.netxen_hardware_context, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [6 x i8], %struct.netxen_adapter_stats, %struct.netxen_recv_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.msix_entry], %struct.netxen_dummy_dma, %struct.delayed_work, %struct.work_struct, %struct.nx_nic_intr_coalesce_t, i32, i32, i32, ptr, %struct.netxen_minidump, i32 }
%struct.netxen_hardware_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rwlock_t, %struct.spinlock, i8, i8, i8, i8, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.netxen_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netxen_recv_context = type { i32, i16, i16, ptr, ptr, ptr, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.netxen_dummy_dma = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nx_nic_intr_coalesce_t = type { i16, i16, i16, i16, i32, i32, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t }
%union.nx_nic_intr_coalesce_data_t = type { i64 }
%struct.netxen_minidump = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.netxen_ring_ctx = type { i64, i64, i32, i32, [3 x %struct.netxen_rcv_ring], i64, i32, i32, [3 x i64], i32, i32, [4 x %struct.netxen_sts_ring], [8 x i8] }
%struct.netxen_rcv_ring = type { i64, i32, i32 }
%struct.netxen_sts_ring = type { i64, i32, i16, i16 }
%struct.nx_host_tx_ring = type { i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.nx_host_rds_ring = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.nx_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], i32, i32, [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.nx_hostrq_rx_ctx_t = type { i64, [4 x i32], i32, i32, i32, i32, i16, i16, i16, i16, [128 x i8], [0 x i8] }
%struct.nx_hostrq_rds_ring_t = type { i64, i64, i32, i32 }
%struct.nx_hostrq_sds_ring_t = type { i64, i32, i16, i16 }
%struct.nx_cardrsp_rx_ctx_t = type { i32, i32, i32, i32, i16, i16, i16, i8, i8, [128 x i8], [0 x i8] }
%struct.nx_cardrsp_rds_ring_t = type { i32, i32 }
%struct.nx_cardrsp_sds_ring_t = type { i32, i32 }
%struct.nx_hostrq_tx_ctx_t = type { i64, i64, i64, [4 x i32], i32, i32, i16, i16, i16, i16, %struct.nx_hostrq_cds_ring_t, [128 x i8] }
%struct.nx_hostrq_cds_ring_t = type { i64, i32, i32 }
%struct.nx_cardrsp_tx_ctx_t = type { i32, i16, i8, i8, %struct.nx_cardrsp_cds_ring_t, [128 x i8] }
%struct.nx_cardrsp_cds_ring_t = type { i32, i32 }

@netxen_setup_minidump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Flashed firmware version does not support minidump, minimum version required is [ %u.%u.%u ]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_setup_minidump\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netxen_setup_minidump._entry_ptr = internal global ptr @netxen_setup_minidump._entry, section ".printk_index", align 4
@netxen_setup_minidump._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error : Invalid template size ,should be non-zero.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@netxen_setup_minidump._entry_ptr.8 = internal global ptr @netxen_setup_minidump._entry.5, section ".printk_index", align 4
@netxen_setup_minidump._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 193, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Minidump template checksum Error\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_setup_minidump._entry_ptr.11 = internal global ptr @netxen_setup_minidump._entry.9, section ".printk_index", align 4
@netxen_alloc_hw_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 755, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate hw context\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_alloc_hw_resources\00", [38 x i8] zeroinitializer }, align 32
@netxen_alloc_hw_resources._entry_ptr = internal global ptr @netxen_alloc_hw_resources._entry, section ".printk_index", align 4
@netxen_alloc_hw_resources._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 773, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to allocate tx desc ring\0A\00", [59 x i8] zeroinitializer }, align 32
@netxen_alloc_hw_resources._entry_ptr.16 = internal global ptr @netxen_alloc_hw_resources._entry.14, section ".printk_index", align 4
@netxen_alloc_hw_resources._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 788, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to allocate rds ring [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@netxen_alloc_hw_resources._entry_ptr.19 = internal global ptr @netxen_alloc_hw_resources._entry.17, section ".printk_index", align 4
@recv_crb_registers = internal constant { [4 x %struct.netxen_recv_crb], [48 x i8] } { [4 x %struct.netxen_recv_crb] [%struct.netxen_recv_crb { [3 x i32] [i32 136323840, i32 136323856, i32 136323872], [4 x i32] [i32 136323896, i32 136324864, i32 136324868, i32 136324872], [4 x i32] [i32 136324056, i32 136324932, i32 136324936, i32 136324940] }, %struct.netxen_recv_crb { [3 x i32] [i32 136323908, i32 136323924, i32 136323940], [4 x i32] [i32 136323964, i32 136324896, i32 136324900, i32 136324904], [4 x i32] [i32 136324064, i32 136324964, i32 136324968, i32 136324972] }, %struct.netxen_recv_crb { [3 x i32] [i32 136324056, i32 136324088, i32 136324104], [4 x i32] [i32 136324128, i32 136324924, i32 136324924, i32 136324924], [4 x i32] [i32 136324068, i32 136324924, i32 136324924, i32 136324924] }, %struct.netxen_recv_crb { [3 x i32] [i32 136324140, i32 136324156, i32 136324172], [4 x i32] [i32 136324196, i32 136324924, i32 136324924, i32 136324924], [4 x i32] [i32 136324072, i32 136324924, i32 136324924, i32 136324924] }], [48 x i8] zeroinitializer }, align 32
@netxen_alloc_hw_resources._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 809, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to allocate sds ring [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@netxen_alloc_hw_resources._entry_ptr.22 = internal global ptr @netxen_alloc_hw_resources._entry.20, section ".printk_index", align 4
@ctx_addr_sig_regs = internal constant { [4 x [3 x i64]], [32 x i8] } { [4 x [3 x i64]] [[3 x i64] [i64 136323976, i64 136323980, i64 136324032], [3 x i64] [i64 136323984, i64 136323988, i64 136324036], [3 x i64] [i64 136323992, i64 136323996, i64 136324040], [3 x i64] [i64 136324000, i64 136324004, i64 136324044]], [32 x i8] zeroinitializer }, align 32
@netxen_get_minidump_template_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't get template size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"netxen_get_minidump_template_size\00", [62 x i8] zeroinitializer }, align 32
@netxen_get_minidump_template_size._entry_ptr = internal global ptr @netxen_get_minidump_template_size._entry, section ".printk_index", align 4
@netxen_get_minidump_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 112, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Can not capture Minidump template. Invalid template size.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netxen_get_minidump_template\00", [35 x i8] zeroinitializer }, align 32
@netxen_get_minidump_template._entry_ptr = internal global ptr @netxen_get_minidump_template._entry, section ".printk_index", align 4
@netxen_get_minidump_template._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 119, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to allocate dmable memory for template.\0A\00", [48 x i8] zeroinitializer }, align 32
@netxen_get_minidump_template._entry_ptr.29 = internal global ptr @netxen_get_minidump_template._entry.27, section ".printk_index", align 4
@netxen_get_minidump_template._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 135, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Failed to get minidump template, err_code : %d, requested_size : %d, actual_size : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@netxen_get_minidump_template._entry_ptr.32 = internal global ptr @netxen_get_minidump_template._entry.30, section ".printk_index", align 4
@netxen_issue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: card response timeout.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netxen_issue_cmd\00", [47 x i8] zeroinitializer }, align 32
@netxen_issue_cmd._entry_ptr = internal global ptr @netxen_issue_cmd._entry, section ".printk_index", align 4
@netxen_nic_driver_name = external dso_local global [0 x i8], align 1
@netxen_issue_cmd._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed card response code:0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@netxen_issue_cmd._entry_ptr.37 = internal global ptr @netxen_issue_cmd._entry.35, section ".printk_index", align 4
@nx_fw_cmd_create_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Failed to create rx ctx in firmware%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nx_fw_cmd_create_rx_ctx\00", [40 x i8] zeroinitializer }, align 32
@nx_fw_cmd_create_rx_ctx._entry_ptr = internal global ptr @nx_fw_cmd_create_rx_ctx._entry, section ".printk_index", align 4
@nx_fw_cmd_create_tx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Failed to create tx ctx in firmware%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nx_fw_cmd_create_tx_ctx\00", [40 x i8] zeroinitializer }, align 32
@nx_fw_cmd_create_tx_ctx._entry_ptr = internal global ptr @nx_fw_cmd_create_tx_ctx._entry, section ".printk_index", align 4
@nx_fw_cmd_destroy_rx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Failed to destroy rx ctx in firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nx_fw_cmd_destroy_rx_ctx\00", [39 x i8] zeroinitializer }, align 32
@nx_fw_cmd_destroy_rx_ctx._entry_ptr = internal global ptr @nx_fw_cmd_destroy_rx_ctx._entry, section ".printk_index", align 4
@nx_fw_cmd_destroy_tx_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Failed to destroy tx ctx in firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nx_fw_cmd_destroy_tx_ctx\00", [39 x i8] zeroinitializer }, align 32
@nx_fw_cmd_destroy_tx_ctx._entry_ptr = internal global ptr @nx_fw_cmd_destroy_tx_ctx._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 166, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 175, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 193, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 755, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 772, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 786, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"recv_crb_registers\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 577, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 807, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"ctx_addr_sig_regs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 563, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 92, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 111, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 119, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 134, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 58, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 65, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 354, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 491, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 411, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [55 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 516, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @netxen_alloc_hw_resources._entry, ptr @netxen_alloc_hw_resources._entry.14, ptr @netxen_alloc_hw_resources._entry.17, ptr @netxen_alloc_hw_resources._entry.20, ptr @netxen_alloc_hw_resources._entry_ptr, ptr @netxen_alloc_hw_resources._entry_ptr.16, ptr @netxen_alloc_hw_resources._entry_ptr.19, ptr @netxen_alloc_hw_resources._entry_ptr.22, ptr @netxen_get_minidump_template._entry, ptr @netxen_get_minidump_template._entry.27, ptr @netxen_get_minidump_template._entry.30, ptr @netxen_get_minidump_template._entry_ptr, ptr @netxen_get_minidump_template._entry_ptr.29, ptr @netxen_get_minidump_template._entry_ptr.32, ptr @netxen_get_minidump_template_size._entry, ptr @netxen_get_minidump_template_size._entry_ptr, ptr @netxen_issue_cmd._entry, ptr @netxen_issue_cmd._entry.35, ptr @netxen_issue_cmd._entry_ptr, ptr @netxen_issue_cmd._entry_ptr.37, ptr @netxen_setup_minidump._entry, ptr @netxen_setup_minidump._entry.5, ptr @netxen_setup_minidump._entry.9, ptr @netxen_setup_minidump._entry_ptr, ptr @netxen_setup_minidump._entry_ptr.11, ptr @netxen_setup_minidump._entry_ptr.8, ptr @nx_fw_cmd_create_rx_ctx._entry, ptr @nx_fw_cmd_create_rx_ctx._entry_ptr, ptr @nx_fw_cmd_create_tx_ctx._entry, ptr @nx_fw_cmd_create_tx_ctx._entry_ptr, ptr @nx_fw_cmd_destroy_rx_ctx._entry, ptr @nx_fw_cmd_destroy_rx_ctx._entry_ptr, ptr @nx_fw_cmd_destroy_tx_ctx._entry, ptr @nx_fw_cmd_destroy_tx_ctx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @recv_crb_registers, ptr @.str.21, ptr @ctx_addr_sig_regs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_minidump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_minidump._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_minidump._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_alloc_hw_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_alloc_hw_resources._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_alloc_hw_resources._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_crb_registers to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_alloc_hw_resources._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_addr_sig_regs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_get_minidump_template_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_get_minidump_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_get_minidump_template._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_get_minidump_template._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_issue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_issue_cmd._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_fw_cmd_create_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_fw_cmd_create_tx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_fw_cmd_destroy_rx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_fw_cmd_destroy_tx_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_setup_minidump(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %md_template_addr.i = alloca i32, align 4
  %cmd.i90 = alloca %struct.netxen_cmd_args, align 4
  %cmd.i = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #6
  %0 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 47, ptr %cmd.i, align 4
  %4 = call ptr @memset(ptr %0, i32 1, i32 16)
  %call.i = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #6
  %fw_supports_md = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 1
  %9 = ptrtoint ptr %fw_supports_md to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fw_supports_md, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %10 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd.i, i32 0, i32 1, i32 3
  %11 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %md_template_size.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 7
  %14 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %md_template_size.i, align 8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %md_template_ver.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 8
  %17 = ptrtoint ptr %md_template_ver.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %md_template_ver.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %do.end9, label %if.end8.i

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %pdev10 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %18 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev10, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #10
  %md_template = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 10
  %20 = ptrtoint ptr %md_template to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %md_template, align 8
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.end8.i.cleanup_crit_edge, label %if.end21

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md_template_addr.i) #6
  %21 = ptrtoint ptr %md_template_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %md_template_addr.i, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i90) #6
  %22 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i90, i32 0, i32 1
  %23 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i90, i32 0, i32 2
  %24 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i90, i32 0, i32 3
  %25 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd.i90, i32 0, i32 1
  %26 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd.i90, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %md_template_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i92 = icmp eq i32 %28, 0
  %pdev.i93 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %29 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i93, align 8
  %dev.i94 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  br i1 %cmp.i92, label %do.end.i95, label %if.end.i96

do.end.i95:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i94, ptr noundef nonnull @.str.25) #9
  br label %netxen_get_minidump_template.exit.thread

if.end.i96:                                       ; preds = %if.end21
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i94, i32 noundef %28, ptr noundef nonnull %md_template_addr.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i93, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.28) #9
  br label %netxen_get_minidump_template.exit.thread

if.end9.i:                                        ; preds = %if.end.i96
  %33 = call ptr @memset(ptr %25, i32 1, i32 16)
  %34 = ptrtoint ptr %cmd.i90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 48, ptr %cmd.i90, align 4
  %35 = ptrtoint ptr %md_template_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %md_template_addr.i, align 4
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %22, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %23, align 4
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %28, ptr %24, align 4
  %call18.i = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i90) #6
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp21.i = icmp eq i32 %41, 0
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end9.i.do.end31.i_crit_edge

if.end9.i.do.end31.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %43)
  %cmp25.i = icmp eq i32 %28, %43
  br i1 %cmp25.i, label %if.then27.i, label %land.lhs.true.i.do.end31.i_crit_edge

land.lhs.true.i.do.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %md_template, align 8
  %46 = call ptr @memcpy(ptr %45, ptr %call.i.i, i32 %28)
  br label %if.end30

do.end31.i:                                       ; preds = %land.lhs.true.i.do.end31.i_crit_edge, %if.end9.i.do.end31.i_crit_edge
  %47 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i93, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.31, i32 noundef %41, i32 noundef %28, i32 noundef %50) #9
  br label %if.end30

netxen_get_minidump_template.exit.thread:         ; preds = %do.end6.i, %do.end.i95
  %retval.0.i97.ph = phi i32 [ -12, %do.end6.i ], [ 6, %do.end.i95 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i90) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md_template_addr.i) #6
  br label %free_template

if.end30:                                         ; preds = %do.end31.i, %if.then27.i
  %51 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i93, align 8
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %md_template_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %md_template_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev40.i, i32 noundef %28, ptr noundef nonnull %call.i.i, i32 noundef %54, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i90) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md_template_addr.i) #6
  %55 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %md_template_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp14.not.i = icmp ult i32 %56, 4
  br i1 %cmp14.not.i, label %if.end30.do.end36_crit_edge, label %while.body.preheader.i

if.end30.do.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

while.body.preheader.i:                           ; preds = %if.end30
  %div13.i = lshr i32 %56, 2
  %57 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %md_template, align 8
  br label %while.body.i

while.cond2.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %tobool.not18.i = icmp ult i64 %add.i, 4294967296
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %tobool.not18.i, label %while.cond2.preheader.i.netxen_check_template_checksum.exit_crit_edge, label %while.cond2.preheader.i.while.body3.i_crit_edge

while.cond2.preheader.i.while.body3.i_crit_edge:  ; preds = %while.cond2.preheader.i
  br label %while.body3.i

while.cond2.preheader.i.netxen_check_template_checksum.exit_crit_edge: ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netxen_check_template_checksum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %count.017.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div13.i, %while.body.preheader.i ]
  %buff.016.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %58, %while.body.preheader.i ]
  %sum.015.i = phi i64 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %dec.i = add nsw i32 %count.017.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %buff.016.i, i32 1
  %59 = ptrtoint ptr %buff.016.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buff.016.i, align 4
  %conv.i = zext i32 %60 to i64
  %add.i = add i64 %sum.015.i, %conv.i
  %cmp.i100 = icmp ugt i32 %count.017.i, 1
  br i1 %cmp.i100, label %while.body.i.while.body.i_crit_edge, label %while.cond2.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body3.i:                                    ; preds = %while.body3.i.while.body3.i_crit_edge, %while.cond2.preheader.i.while.body3.i_crit_edge
  %sum.119.i = phi i64 [ %add5.i, %while.body3.i.while.body3.i_crit_edge ], [ %add.i, %while.cond2.preheader.i.while.body3.i_crit_edge ]
  %shr.i = lshr i64 %sum.119.i, 32
  %and.i = and i64 %sum.119.i, 4294967295
  %add5.i = add nuw nsw i64 %and.i, %shr.i
  %tobool.not.i101 = icmp ult i64 %add5.i, 4294967296
  br i1 %tobool.not.i101, label %while.end6.loopexit.i, label %while.body3.i.while.body3.i_crit_edge

while.body3.i.while.body3.i_crit_edge:            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body3.i

while.end6.loopexit.i:                            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t21.i = trunc i64 %add5.i to i32
  br label %netxen_check_template_checksum.exit

netxen_check_template_checksum.exit:              ; preds = %while.end6.loopexit.i, %while.cond2.preheader.i.netxen_check_template_checksum.exit_crit_edge
  %sum.1.lcssa.off0.i = phi i32 [ %extract.t.i, %while.cond2.preheader.i.netxen_check_template_checksum.exit_crit_edge ], [ %extract.t21.i, %while.end6.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sum.1.lcssa.off0.i)
  %tobool32.not = icmp eq i32 %sum.1.lcssa.off0.i, -1
  br i1 %tobool32.not, label %if.end39, label %netxen_check_template_checksum.exit.do.end36_crit_edge

netxen_check_template_checksum.exit.do.end36_crit_edge: ; preds = %netxen_check_template_checksum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

do.end36:                                         ; preds = %netxen_check_template_checksum.exit.do.end36_crit_edge, %if.end30.do.end36_crit_edge
  %61 = ptrtoint ptr %pdev.i93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i93, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.10) #9
  br label %free_template

if.end39:                                         ; preds = %netxen_check_template_checksum.exit
  %md_capture_mask = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 3
  %63 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 31, ptr %md_capture_mask, align 2
  %64 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %md_template_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp47109.not = icmp ult i32 %65, 4
  br i1 %cmp47109.not, label %if.end39.for.end_crit_edge, label %for.body.preheader

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end39
  %66 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %md_template, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %tmp_buf.0112 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %67, %for.body.preheader ]
  %i.0110 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %tmp_buf.0112, i32 1
  %68 = ptrtoint ptr %tmp_buf.0112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tmp_buf.0112, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %tmp_buf.0112 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %tmp_buf.0112, align 4
  %inc = add nuw nsw i32 %i.0110, 1
  %72 = ptrtoint ptr %md_template_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %md_template_size.i, align 8
  %div88 = lshr i32 %73, 2
  %cmp47 = icmp ult i32 %inc, %div88
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end39.for.end_crit_edge
  %md_capture_buff = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 11
  %74 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %md_capture_buff, align 4
  %fw_supports_md51 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 1
  %75 = ptrtoint ptr %fw_supports_md51 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %fw_supports_md51, align 4
  %md_enabled = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 4
  %76 = ptrtoint ptr %md_enabled to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %md_enabled, align 1
  br label %cleanup

free_template:                                    ; preds = %do.end36, %netxen_get_minidump_template.exit.thread
  %err.0 = phi i32 [ -5, %do.end36 ], [ %retval.0.i97.ph, %netxen_get_minidump_template.exit.thread ]
  %77 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %md_template, align 8
  call void @kfree(ptr noundef %78) #6
  %79 = ptrtoint ptr %md_template to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %md_template, align 8
  br label %cleanup

cleanup:                                          ; preds = %free_template, %for.end, %if.end8.i.cleanup_crit_edge, %do.end9, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %err.0, %free_template ], [ 0, %for.end ], [ -5, %do.end9 ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nx_fw_cmd_set_mtu(ptr noundef %adapter, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_ctx1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %cmd, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 18, ptr %cmd, align 4
  %context_id = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 1
  %6 = ptrtoint ptr %context_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %context_id, align 4
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mtu, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %11 = ptrtoint ptr %recv_ctx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_ctx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.end, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %13

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  br label %13

13:                                               ; preds = %if.end.thread, %if.end._crit_edge
  %14 = phi i32 [ 0, %if.end.thread ], [ -5, %if.end._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr nocapture noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_func = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  %0 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_func, align 2
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %or1 = or i32 %conv, -889323264
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %call2 = tail call i32 %3(ptr noundef %adapter, i32 noundef 136323624, i32 noundef %or1) #6
  %4 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_write, align 8
  %arg1 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg1, align 4
  %call4 = tail call i32 %5(ptr noundef %adapter, i32 noundef 136323612, i32 noundef %7) #6
  %8 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_write, align 8
  %arg2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg2, align 4
  %call7 = tail call i32 %9(ptr noundef %adapter, i32 noundef 136323616, i32 noundef %11) #6
  %12 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_write, align 8
  %arg3 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %arg3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg3, align 4
  %call10 = tail call i32 %13(ptr noundef %adapter, i32 noundef 136323620, i32 noundef %15) #6
  %16 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_write, align 8
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  %or14 = or i32 %19, -2147483648
  %call15 = tail call i32 %17(ptr noundef %adapter, i32 noundef 136323608, i32 noundef %or14) #6
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 4000
  br i1 %exitcond.i, label %do.body.i.do.end_crit_edge, label %if.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %20 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %21(ptr noundef %adapter, i32 noundef 136323608) #6
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.do.body.i_crit_edge, label %netxen_poll_rsp.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

netxen_poll_rsp.exit:                             ; preds = %if.end.i
  %22 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %netxen_poll_rsp.exit.if.end55_crit_edge [
    i32 3, label %netxen_poll_rsp.exit.do.end_crit_edge
    i32 2, label %if.then22
    i32 1, label %if.then32
  ]

netxen_poll_rsp.exit.do.end_crit_edge:            ; preds = %netxen_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

netxen_poll_rsp.exit.if.end55_crit_edge:          ; preds = %netxen_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end:                                           ; preds = %netxen_poll_rsp.exit.do.end_crit_edge, %do.body.i.do.end_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @netxen_nic_driver_name) #9
  br label %if.end55

if.then22:                                        ; preds = %netxen_poll_rsp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crb_read.i, align 4
  %call23 = tail call i32 %24(ptr noundef %adapter, i32 noundef 136323612) #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %call23) #9
  br label %if.end55

if.then32:                                        ; preds = %netxen_poll_rsp.exit
  %rsp33 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd, i32 0, i32 1
  %25 = ptrtoint ptr %rsp33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rsp33, align 4
  %arg236 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arg236 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arg236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool37.not = icmp eq i32 %27, 0
  br i1 %tobool37.not, label %if.then32.if.end43_crit_edge, label %if.then38

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crb_read.i, align 4
  %call40 = tail call i32 %29(ptr noundef %adapter, i32 noundef 136323616) #6
  %30 = ptrtoint ptr %arg236 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call40, ptr %arg236, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.then32.if.end43_crit_edge
  %arg345 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %arg345 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arg345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool46.not = icmp eq i32 %32, 0
  br i1 %tobool46.not, label %if.end43.if.end55_crit_edge, label %if.then47

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crb_read.i, align 4
  %call49 = tail call i32 %34(ptr noundef %adapter, i32 noundef 136323620) #6
  %35 = ptrtoint ptr %arg345 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call49, ptr %arg345, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end43.if.end55_crit_edge, %if.then22, %do.end, %netxen_poll_rsp.exit.if.end55_crit_edge
  %rcode.0 = phi i32 [ 17, %do.end ], [ %call23, %if.then22 ], [ 0, %if.then47 ], [ 0, %if.end43.if.end55_crit_edge ], [ 0, %netxen_poll_rsp.exit.if.end55_crit_edge ]
  %arg157 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arg157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arg157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool58.not = icmp eq i32 %37, 0
  br i1 %tobool58.not, label %if.end55.if.end64_crit_edge, label %if.then59

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_read.i, align 4
  %call61 = tail call i32 %39(ptr noundef %adapter, i32 noundef 136323612) #6
  %40 = ptrtoint ptr %arg157 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call61, ptr %arg157, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end55.if.end64_crit_edge
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rcode.0, %if.end64 ], [ 17, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nx_fw_cmd_set_gbe_port(ptr noundef %adapter, i32 noundef %speed, i32 noundef %duplex, i32 noundef %autoneg) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %cmd, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %cmd, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %speed, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %duplex, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %autoneg, ptr %2, align 4
  %call = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nx_fw_cmd_query_phy(ptr noundef %adapter, i32 noundef %reg, ptr noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.netxen_cmd_args, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds i8, ptr %cmd, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %reg, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 19, ptr %cmd, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %3, align 4
  %call = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp ne i32 %call, 0
  %cmp6 = icmp eq ptr %val, null
  %or.cond = or i1 %cmp6, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nx_fw_cmd_set_phy(ptr noundef %adapter, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %cmd, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reg, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %cmd, align 4
  %call = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %. = select i1 %cmp.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_alloc_hw_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %rq_phys_addr.i = alloca i32, align 4
  %rsp_phys_addr.i = alloca i32, align 4
  %cmd.i191 = alloca %struct.netxen_cmd_args, align 4
  %cmd.i = alloca %struct.netxen_cmd_args, align 4
  %hostrq_phys_addr.i = alloca i32, align 4
  %cardrsp_phys_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %netdev2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %4 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %portnum, align 2
  %conv = zext i8 %5 to i32
  %tx_ring4 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %6 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %phys_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 196, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwctx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 5
  %8 = ptrtoint ptr %hwctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %hwctx, align 4
  %9 = shl nuw i32 %conv, 24
  %ctx_id = getelementptr inbounds %struct.netxen_ring_ctx, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %ctx_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ctx_id, align 4
  %11 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys_addr, align 4
  %add = add i32 %12, 192
  %conv9 = zext i32 %add to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv9)
  %14 = ptrtoint ptr %hwctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwctx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %15, align 64
  %add.ptr = getelementptr i8, ptr %call.i, i32 192
  %hw_consumer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %hw_consumer, align 4
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_desc, align 4
  %mul = shl i32 %19, 6
  %phys_addr12 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %7, i32 0, i32 9
  %call.i188 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %phys_addr12, i32 noundef 3264, i32 noundef 0) #6
  %cmp14 = icmp eq ptr %call.i188, null
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %3) #9
  br label %err_out_free

if.end21:                                         ; preds = %if.end
  %desc_head = getelementptr inbounds %struct.nx_host_tx_ring, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %desc_head to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i188, ptr %desc_head, align 4
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %21 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp23235.not = icmp eq i8 %22, 0
  br i1 %cmp23235.not, label %if.end21.for.cond51.preheader_crit_edge, label %for.body.lr.ph

if.end21.for.cond51.preheader_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond51.preheader

for.body.lr.ph:                                   ; preds = %if.end21
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %arrayidx46 = getelementptr [4 x %struct.netxen_recv_crb], ptr @recv_crb_registers, i32 0, i32 %conv
  br label %for.body

for.cond51.preheader:                             ; preds = %for.inc.for.cond51.preheader_crit_edge, %if.end21.for.cond51.preheader_crit_edge
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %23 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp53239.not = icmp eq i8 %24, 0
  br i1 %cmp53239.not, label %for.cond51.preheader.for.end90_crit_edge, label %for.body55.lr.ph

for.cond51.preheader.for.end90_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90

for.body55.lr.ph:                                 ; preds = %for.cond51.preheader
  %sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %revision_id75 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  br label %for.body55

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rds_rings, align 4
  %27 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev1, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %num_desc27 = getelementptr %struct.nx_host_rds_ring, ptr %26, i32 %ring.0236, i32 1
  %29 = ptrtoint ptr %num_desc27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_desc27, align 4
  %mul28 = shl i32 %30, 4
  %phys_addr29 = getelementptr %struct.nx_host_rds_ring, ptr %26, i32 %ring.0236, i32 10
  %call.i189 = tail call ptr @dma_alloc_attrs(ptr noundef %dev26, i32 noundef %mul28, ptr noundef %phys_addr29, i32 noundef 3264, i32 noundef 0) #6
  %cmp31 = icmp eq ptr %call.i189, null
  br i1 %cmp31, label %do.end36, label %if.end40

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %3, i32 noundef %ring.0236) #9
  br label %err_out_free

if.end40:                                         ; preds = %for.body
  %desc_head41 = getelementptr %struct.nx_host_rds_ring, ptr %26, i32 %ring.0236, i32 6
  %31 = ptrtoint ptr %desc_head41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i189, ptr %desc_head41, align 4
  %32 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %33)
  %cmp43 = icmp ult i8 %33, 38
  br i1 %cmp43, label %if.then45, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr [3 x i32], ptr %arrayidx46, i32 0, i32 %ring.0236
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx47, align 4
  %call48 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %35) #6
  %crb_rcv_producer49 = getelementptr %struct.nx_host_rds_ring, ptr %26, i32 %ring.0236, i32 5
  %36 = ptrtoint ptr %crb_rcv_producer49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call48, ptr %crb_rcv_producer49, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %if.end40.for.inc_crit_edge
  %inc = add nuw nsw i32 %ring.0236, 1
  %37 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_rds_rings, align 8
  %conv22 = zext i8 %38 to i32
  %cmp23 = icmp ult i32 %inc, %conv22
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.cond51.preheader_crit_edge

for.inc.for.cond51.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond51.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body55:                                       ; preds = %for.inc88.for.body55_crit_edge, %for.body55.lr.ph
  %ring.1240 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc89, %for.inc88.for.body55_crit_edge ]
  %39 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sds_rings, align 4
  %41 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev1, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %num_desc59 = getelementptr %struct.nx_host_sds_ring, ptr %40, i32 %ring.1240, i32 1
  %43 = ptrtoint ptr %num_desc59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_desc59, align 4
  %mul60 = shl i32 %44, 4
  %phys_addr61 = getelementptr %struct.nx_host_sds_ring, ptr %40, i32 %ring.1240, i32 9
  %call.i190 = tail call ptr @dma_alloc_attrs(ptr noundef %dev58, i32 noundef %mul60, ptr noundef %phys_addr61, i32 noundef 3264, i32 noundef 0) #6
  %cmp63 = icmp eq ptr %call.i190, null
  br i1 %cmp63, label %do.end68, label %if.end72

do.end68:                                         ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %3, i32 noundef %ring.1240) #9
  br label %err_out_free

if.end72:                                         ; preds = %for.body55
  %desc_head73 = getelementptr %struct.nx_host_sds_ring, ptr %40, i32 %ring.1240, i32 4
  %45 = ptrtoint ptr %desc_head73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i190, ptr %desc_head73, align 8
  %46 = ptrtoint ptr %revision_id75 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %revision_id75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %47)
  %cmp77 = icmp ult i8 %47, 38
  br i1 %cmp77, label %if.then79, label %if.end72.for.inc88_crit_edge

if.end72.for.inc88_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc88

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx81 = getelementptr [4 x %struct.netxen_recv_crb], ptr @recv_crb_registers, i32 0, i32 %conv, i32 1, i32 %ring.1240
  %48 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx81, align 4
  %call82 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %49) #6
  %crb_sts_consumer83 = getelementptr %struct.nx_host_sds_ring, ptr %40, i32 %ring.1240, i32 2
  %50 = ptrtoint ptr %crb_sts_consumer83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call82, ptr %crb_sts_consumer83, align 8
  %arrayidx85 = getelementptr [4 x %struct.netxen_recv_crb], ptr @recv_crb_registers, i32 0, i32 %conv, i32 2, i32 %ring.1240
  %51 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx85, align 4
  %call86 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %52) #6
  %crb_intr_mask = getelementptr %struct.nx_host_sds_ring, ptr %40, i32 %ring.1240, i32 3
  %53 = ptrtoint ptr %crb_intr_mask to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call86, ptr %crb_intr_mask, align 4
  br label %for.inc88

for.inc88:                                        ; preds = %if.then79, %if.end72.for.inc88_crit_edge
  %inc89 = add nuw nsw i32 %ring.1240, 1
  %54 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_sds_rings, align 1
  %conv52 = zext i8 %55 to i32
  %cmp53 = icmp ult i32 %inc89, %conv52
  br i1 %cmp53, label %for.inc88.for.body55_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90

for.inc88.for.body55_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %for.cond51.preheader.for.end90_crit_edge
  %revision_id92 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %56 = ptrtoint ptr %revision_id92 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %revision_id92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %57)
  %cmp94 = icmp ult i8 %57, 38
  br i1 %cmp94, label %if.else, label %if.then96

if.then96:                                        ; preds = %for.end90
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %call97 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool.not = icmp eq i32 %call97, 0
  br i1 %tobool.not, label %if.end99, label %if.then96.cleanup_crit_edge

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end99:                                         ; preds = %if.then96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #6
  %58 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hostrq_phys_addr.i) #6
  %60 = ptrtoint ptr %hostrq_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %hostrq_phys_addr.i, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cardrsp_phys_addr.i) #6
  %61 = ptrtoint ptr %cardrsp_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %cardrsp_phys_addr.i, align 4, !annotation !94
  %recv_ctx1.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43
  %62 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_rds_rings, align 8
  %conv.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %max_sds_rings, align 1
  %conv2.i = zext i8 %65 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 24
  %add.i = add nuw nsw i32 %mul.i, 176
  %mul3.i = shl nuw nsw i32 %conv2.i, 4
  %add4.i = add nuw nsw i32 %add.i, %mul3.i
  %mul5.i = shl nuw nsw i32 %conv.i, 3
  %add6.i = add nuw nsw i32 %mul5.i, 152
  %mul7.i = shl nuw nsw i32 %conv2.i, 3
  %add8.i = add nuw nsw i32 %add6.i, %mul7.i
  %66 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add4.i, ptr noundef nonnull %hostrq_phys_addr.i, i32 noundef 3264, i32 noundef 0) #6
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %nx_fw_cmd_create_rx_ctx.exit.thread, label %if.end.i

nx_fw_cmd_create_rx_ctx.exit.thread:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cardrsp_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hostrq_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #6
  br label %err_out_free

if.end.i:                                         ; preds = %if.end99
  %68 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev1, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %call.i233.i = call ptr @dma_alloc_attrs(ptr noundef %dev11.i, i32 noundef %add8.i, ptr noundef nonnull %cardrsp_phys_addr.i, i32 noundef 3264, i32 noundef 0) #6
  %cmp13.i = icmp eq ptr %call.i233.i, null
  br i1 %cmp13.i, label %if.end.i.nx_fw_cmd_create_rx_ctx.exit_crit_edge, label %if.end16.i

if.end.i.nx_fw_cmd_create_rx_ctx.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nx_fw_cmd_create_rx_ctx.exit

if.end16.i:                                       ; preds = %if.end.i
  %70 = ptrtoint ptr %cardrsp_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cardrsp_phys_addr.i, align 4
  %conv17.i = zext i32 %71 to i64
  %72 = call i64 @llvm.bswap.i64(i64 %conv17.i) #6
  %73 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %call.i.i, align 8
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 389, i32 2097541
  %76 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %capabilities.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %capabilities.i, align 8
  %host_int_crb_mode.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %host_int_crb_mode.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 16777216, ptr %host_int_crb_mode.i, align 8
  %host_rds_crb_mode.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %host_rds_crb_mode.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %host_rds_crb_mode.i, align 4
  %conv21.i = zext i8 %63 to i16
  %80 = shl nuw i16 %conv21.i, 8
  %num_rds_rings.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %num_rds_rings.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %num_rds_rings.i, align 8
  %conv22.i = zext i8 %65 to i16
  %82 = shl nuw i16 %conv22.i, 8
  %num_sds_rings.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %num_sds_rings.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %num_sds_rings.i, align 2
  %rds_ring_offset.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %rds_ring_offset.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %rds_ring_offset.i, align 8
  %85 = call i32 @llvm.bswap.i32(i32 %mul.i) #6
  %sds_ring_offset.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 5
  %86 = ptrtoint ptr %sds_ring_offset.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sds_ring_offset.i, align 4
  %data.i = getelementptr inbounds %struct.nx_hostrq_rx_ctx_t, ptr %call.i.i, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp27234.not.i = icmp eq i8 %63, 0
  br i1 %cmp27234.not.i, label %if.end16.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %rds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0235.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %rds_rings.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rds_rings.i, align 4
  %phys_addr30.i = getelementptr %struct.nx_host_rds_ring, ptr %88, i32 %i.0235.i, i32 10
  %89 = ptrtoint ptr %phys_addr30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %phys_addr30.i, align 4
  %conv31.i = zext i32 %90 to i64
  %91 = call i64 @llvm.bswap.i64(i64 %conv31.i) #6
  %arrayidx32.i = getelementptr %struct.nx_hostrq_rds_ring_t, ptr %data.i, i32 %i.0235.i
  %92 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx32.i, align 8
  %num_desc.i = getelementptr %struct.nx_host_rds_ring, ptr %88, i32 %i.0235.i, i32 1
  %93 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_desc.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #6
  %ring_size.i = getelementptr %struct.nx_hostrq_rds_ring_t, ptr %data.i, i32 %i.0235.i, i32 2
  %96 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ring_size.i, align 8
  %97 = call i32 @llvm.bswap.i32(i32 %i.0235.i) #6
  %ring_kind.i = getelementptr %struct.nx_hostrq_rds_ring_t, ptr %data.i, i32 %i.0235.i, i32 3
  %98 = ptrtoint ptr %ring_kind.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %ring_kind.i, align 4
  %dma_size.i = getelementptr %struct.nx_host_rds_ring, ptr %88, i32 %i.0235.i, i32 2
  %99 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_size.i, align 4
  %conv35.i = zext i32 %100 to i64
  %101 = call i64 @llvm.bswap.i64(i64 %conv35.i) #6
  %buff_size.i = getelementptr %struct.nx_hostrq_rds_ring_t, ptr %data.i, i32 %i.0235.i, i32 1
  %102 = ptrtoint ptr %buff_size.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %buff_size.i, align 8
  %inc.i = add nuw nsw i32 %i.0235.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %103 = ptrtoint ptr %sds_ring_offset.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sds_ring_offset.i, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #6
  %add.ptr40.i = getelementptr i8, ptr %data.i, i32 %105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp42236.not.i = icmp eq i8 %65, 0
  br i1 %cmp42236.not.i, label %for.end.i.for.end57.i_crit_edge, label %for.body44.lr.ph.i

for.end.i.for.end57.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57.i

for.body44.lr.ph.i:                               ; preds = %for.end.i
  %sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %i.1237.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %inc56.i, %for.body44.i.for.body44.i_crit_edge ]
  %106 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sds_rings.i, align 4
  %phys_addr46.i = getelementptr %struct.nx_host_sds_ring, ptr %107, i32 %i.1237.i, i32 9
  %108 = ptrtoint ptr %phys_addr46.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phys_addr46.i, align 4
  %conv47.i = zext i32 %109 to i64
  %110 = call i64 @llvm.bswap.i64(i64 %conv47.i) #6
  %arrayidx48.i = getelementptr %struct.nx_hostrq_sds_ring_t, ptr %add.ptr40.i, i32 %i.1237.i
  %111 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %arrayidx48.i, align 8
  %num_desc50.i = getelementptr %struct.nx_host_sds_ring, ptr %107, i32 %i.1237.i, i32 1
  %112 = ptrtoint ptr %num_desc50.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_desc50.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  %ring_size52.i = getelementptr inbounds %struct.nx_hostrq_sds_ring_t, ptr %arrayidx48.i, i32 0, i32 1
  %115 = ptrtoint ptr %ring_size52.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ring_size52.i, align 8
  %conv53.i = trunc i32 %i.1237.i to i16
  %116 = call i16 @llvm.bswap.i16(i16 %conv53.i) #6
  %msi_index.i = getelementptr inbounds %struct.nx_hostrq_sds_ring_t, ptr %arrayidx48.i, i32 0, i32 2
  %117 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %msi_index.i, align 4
  %inc56.i = add nuw nsw i32 %i.1237.i, 1
  %exitcond244.not.i = icmp eq i32 %inc56.i, %conv2.i
  br i1 %exitcond244.not.i, label %for.body44.i.for.end57.i_crit_edge, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44.i

for.body44.i.for.end57.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57.i

for.end57.i:                                      ; preds = %for.body44.i.for.end57.i_crit_edge, %for.end.i.for.end57.i_crit_edge
  %118 = ptrtoint ptr %hostrq_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hostrq_phys_addr.i, align 4
  %120 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %121 = call ptr @memset(ptr %120, i32 0, i32 28)
  %122 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %119, ptr %58, align 4
  %123 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add4.i, ptr %59, align 4
  %124 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 7, ptr %cmd.i, align 4
  %call66.i = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end70.i, label %do.end.i

do.end.i:                                         ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call66.i) #9
  br label %out_free_rsp.i

if.end70.i:                                       ; preds = %for.end57.i
  %125 = ptrtoint ptr %call.i233.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call.i233.i, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126) #6
  %arrayidx73.i = getelementptr %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 10, i32 %127
  %num_rds_rings75.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 4
  %128 = ptrtoint ptr %num_rds_rings75.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %num_rds_rings75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp77239.not.i = icmp eq i16 %129, 0
  br i1 %cmp77239.not.i, label %if.end70.i.for.end87.i_crit_edge, label %for.body79.lr.ph.i

if.end70.i.for.end87.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end87.i

for.body79.lr.ph.i:                               ; preds = %if.end70.i
  %rds_rings80.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.body79.i.for.body79.i_crit_edge, %for.body79.lr.ph.i
  %i.2240.i = phi i32 [ 0, %for.body79.lr.ph.i ], [ %inc86.i, %for.body79.i.for.body79.i_crit_edge ]
  %130 = ptrtoint ptr %rds_rings80.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rds_rings80.i, align 4
  %arrayidx82.i = getelementptr %struct.nx_cardrsp_rds_ring_t, ptr %arrayidx73.i, i32 %i.2240.i
  %132 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx82.i, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133) #6
  %add83.i = add i32 %134, 136323072
  %call84.i = call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %add83.i) #6
  %crb_rcv_producer.i = getelementptr %struct.nx_host_rds_ring, ptr %131, i32 %i.2240.i, i32 5
  %135 = ptrtoint ptr %crb_rcv_producer.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call84.i, ptr %crb_rcv_producer.i, align 4
  %inc86.i = add nuw nsw i32 %i.2240.i, 1
  %136 = ptrtoint ptr %num_rds_rings75.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num_rds_rings75.i, align 4
  %138 = call i16 @llvm.bswap.i16(i16 %137) #6
  %conv76.i = zext i16 %138 to i32
  %cmp77.i = icmp ult i32 %inc86.i, %conv76.i
  br i1 %cmp77.i, label %for.body79.i.for.body79.i_crit_edge, label %for.body79.i.for.end87.i_crit_edge

for.body79.i.for.end87.i_crit_edge:               ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end87.i

for.body79.i.for.body79.i_crit_edge:              ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body79.i

for.end87.i:                                      ; preds = %for.body79.i.for.end87.i_crit_edge, %if.end70.i.for.end87.i_crit_edge
  %sds_ring_offset89.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 1
  %139 = ptrtoint ptr %sds_ring_offset89.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sds_ring_offset89.i, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #6
  %arrayidx90.i = getelementptr %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 10, i32 %141
  %num_sds_rings92.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 5
  %142 = ptrtoint ptr %num_sds_rings92.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %num_sds_rings92.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp94242.not.i = icmp eq i16 %143, 0
  br i1 %cmp94242.not.i, label %for.end87.i.for.end109.i_crit_edge, label %for.body96.lr.ph.i

for.end87.i.for.end109.i_crit_edge:               ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end109.i

for.body96.lr.ph.i:                               ; preds = %for.end87.i
  %sds_rings97.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.body96.i.for.body96.i_crit_edge, %for.body96.lr.ph.i
  %i.3243.i = phi i32 [ 0, %for.body96.lr.ph.i ], [ %inc108.i, %for.body96.i.for.body96.i_crit_edge ]
  %144 = ptrtoint ptr %sds_rings97.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sds_rings97.i, align 4
  %arrayidx99.i = getelementptr %struct.nx_cardrsp_sds_ring_t, ptr %arrayidx90.i, i32 %i.3243.i
  %146 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx99.i, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147) #6
  %add101.i = add i32 %148, 136323072
  %call102.i = call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %add101.i) #6
  %crb_sts_consumer.i = getelementptr %struct.nx_host_sds_ring, ptr %145, i32 %i.3243.i, i32 2
  %149 = ptrtoint ptr %crb_sts_consumer.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call102.i, ptr %crb_sts_consumer.i, align 8
  %interrupt_crb.i = getelementptr %struct.nx_cardrsp_sds_ring_t, ptr %arrayidx90.i, i32 %i.3243.i, i32 1
  %150 = ptrtoint ptr %interrupt_crb.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %interrupt_crb.i, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151) #6
  %add105.i = add i32 %152, 136323072
  %call106.i = call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %add105.i) #6
  %crb_intr_mask.i = getelementptr %struct.nx_host_sds_ring, ptr %145, i32 %i.3243.i, i32 3
  %153 = ptrtoint ptr %crb_intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call106.i, ptr %crb_intr_mask.i, align 4
  %inc108.i = add nuw nsw i32 %i.3243.i, 1
  %154 = ptrtoint ptr %num_sds_rings92.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %num_sds_rings92.i, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %155) #6
  %conv93.i = zext i16 %156 to i32
  %cmp94.i = icmp ult i32 %inc108.i, %conv93.i
  br i1 %cmp94.i, label %for.body96.i.for.body96.i_crit_edge, label %for.body96.i.for.end109.i_crit_edge

for.body96.i.for.end109.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end109.i

for.body96.i.for.body96.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body96.i

for.end109.i:                                     ; preds = %for.body96.i.for.end109.i_crit_edge, %for.end87.i.for.end109.i_crit_edge
  %host_ctx_state.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 2
  %157 = ptrtoint ptr %host_ctx_state.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %host_ctx_state.i, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158) #6
  %160 = ptrtoint ptr %recv_ctx1.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %recv_ctx1.i, align 4
  %context_id.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 6
  %161 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %context_id.i, align 4
  %163 = call i16 @llvm.bswap.i16(i16 %162) #6
  %context_id110.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 1
  %164 = ptrtoint ptr %context_id110.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %context_id110.i, align 4
  %virt_port.i = getelementptr inbounds %struct.nx_cardrsp_rx_ctx_t, ptr %call.i233.i, i32 0, i32 8
  %165 = ptrtoint ptr %virt_port.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %virt_port.i, align 1
  %conv111.i = zext i8 %166 to i16
  %virt_port112.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 2
  %167 = ptrtoint ptr %virt_port112.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv111.i, ptr %virt_port112.i, align 2
  br label %out_free_rsp.i

out_free_rsp.i:                                   ; preds = %for.end109.i, %do.end.i
  %168 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev1, align 8
  %dev114.i = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  %170 = ptrtoint ptr %cardrsp_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cardrsp_phys_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev114.i, i32 noundef %add8.i, ptr noundef nonnull %call.i233.i, i32 noundef %171, i32 noundef 0) #6
  br label %nx_fw_cmd_create_rx_ctx.exit

nx_fw_cmd_create_rx_ctx.exit:                     ; preds = %out_free_rsp.i, %if.end.i.nx_fw_cmd_create_rx_ctx.exit_crit_edge
  %err.0.i = phi i32 [ %call66.i, %out_free_rsp.i ], [ -12, %if.end.i.nx_fw_cmd_create_rx_ctx.exit_crit_edge ]
  %172 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev1, align 8
  %dev116.i = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  %174 = ptrtoint ptr %hostrq_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %hostrq_phys_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev116.i, i32 noundef %add4.i, ptr noundef nonnull %call.i.i, i32 noundef %175, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cardrsp_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hostrq_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool101.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool101.not, label %if.end103, label %nx_fw_cmd_create_rx_ctx.exit.err_out_free_crit_edge

nx_fw_cmd_create_rx_ctx.exit.err_out_free_crit_edge: ; preds = %nx_fw_cmd_create_rx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_free

if.end103:                                        ; preds = %nx_fw_cmd_create_rx_ctx.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rq_phys_addr.i) #6
  %176 = ptrtoint ptr %rq_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %rq_phys_addr.i, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_phys_addr.i) #6
  %177 = ptrtoint ptr %rsp_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %rsp_phys_addr.i, align 4, !annotation !94
  %178 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tx_ring4, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i191) #6
  %180 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i191, i32 0, i32 2
  %181 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i191, i32 0, i32 3
  %182 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev1, align 8
  %dev.i193 = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %call.i.i194 = call ptr @dma_alloc_attrs(ptr noundef %dev.i193, i32 noundef 200, ptr noundef nonnull %rq_phys_addr.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i195 = icmp eq ptr %call.i.i194, null
  br i1 %tobool.not.i195, label %nx_fw_cmd_create_tx_ctx.exit.thread, label %if.end.i196

nx_fw_cmd_create_tx_ctx.exit.thread:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i191) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rq_phys_addr.i) #6
  br label %err_out_free

if.end.i196:                                      ; preds = %if.end103
  %184 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev1, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %call.i80.i = call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef 144, ptr noundef nonnull %rsp_phys_addr.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool6.not.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool6.not.i, label %if.end.i196.nx_fw_cmd_create_tx_ctx.exit_crit_edge, label %if.end8.i

if.end.i196.nx_fw_cmd_create_tx_ctx.exit_crit_edge: ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %nx_fw_cmd_create_tx_ctx.exit

if.end8.i:                                        ; preds = %if.end.i196
  %186 = ptrtoint ptr %rsp_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rsp_phys_addr.i, align 4
  %conv.i197 = zext i32 %187 to i64
  %188 = call i64 @llvm.bswap.i64(i64 %conv.i197) #6
  %189 = ptrtoint ptr %call.i.i194 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %188, ptr %call.i.i194, align 8
  %capabilities.i198 = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 3
  %190 = ptrtoint ptr %capabilities.i198 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1157627904, ptr %capabilities.i198, align 8
  %host_int_crb_mode.i199 = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 4
  %191 = ptrtoint ptr %host_int_crb_mode.i199 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 16777216, ptr %host_int_crb_mode.i199, align 8
  %interrupt_ctl.i = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 7
  %192 = ptrtoint ptr %interrupt_ctl.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %interrupt_ctl.i, align 2
  %msi_index.i200 = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 8
  %193 = ptrtoint ptr %msi_index.i200 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %msi_index.i200, align 4
  %phys_addr9.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %194 = ptrtoint ptr %phys_addr9.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %phys_addr9.i, align 4
  %conv10.i = zext i32 %195 to i64
  %196 = call i64 @llvm.bswap.i64(i64 %conv10.i) #6
  %dummy_dma_addr.i = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 2
  %197 = ptrtoint ptr %dummy_dma_addr.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %dummy_dma_addr.i, align 8
  %198 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %phys_addr, align 4
  %add.i201 = add i32 %199, 192
  %conv12.i = zext i32 %add.i201 to i64
  %200 = call i64 @llvm.bswap.i64(i64 %conv12.i) #6
  %cmd_cons_dma_addr.i = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 1
  %201 = ptrtoint ptr %cmd_cons_dma_addr.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %cmd_cons_dma_addr.i, align 8
  %cds_ring.i = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 10
  %phys_addr13.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %179, i32 0, i32 9
  %202 = ptrtoint ptr %phys_addr13.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %phys_addr13.i, align 4
  %conv14.i = zext i32 %203 to i64
  %204 = call i64 @llvm.bswap.i64(i64 %conv14.i) #6
  %205 = ptrtoint ptr %cds_ring.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %cds_ring.i, align 8
  %num_desc.i202 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %179, i32 0, i32 5
  %206 = ptrtoint ptr %num_desc.i202 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_desc.i202, align 4
  %208 = call i32 @llvm.bswap.i32(i32 %207) #6
  %ring_size.i203 = getelementptr inbounds %struct.nx_hostrq_tx_ctx_t, ptr %call.i.i194, i32 0, i32 10, i32 1
  %209 = ptrtoint ptr %ring_size.i203 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %ring_size.i203, align 8
  %210 = ptrtoint ptr %rq_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rq_phys_addr.i, align 4
  %212 = getelementptr inbounds i8, ptr %cmd.i191, i32 4
  %213 = call ptr @memset(ptr %212, i32 0, i32 28)
  %214 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %211, ptr %180, align 4
  %215 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 200, ptr %181, align 4
  %216 = ptrtoint ptr %cmd.i191 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 9, ptr %cmd.i191, align 4
  %call22.i = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i191) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i204 = icmp eq i32 %call22.i, 0
  br i1 %cmp.i204, label %if.then24.i, label %do.end.i206

if.then24.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %cds_ring25.i = getelementptr inbounds %struct.nx_cardrsp_tx_ctx_t, ptr %call.i80.i, i32 0, i32 4
  %217 = ptrtoint ptr %cds_ring25.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cds_ring25.i, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %218) #6
  %add26.i = add i32 %219, 136323072
  %call27.i = call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %add26.i) #6
  %crb_cmd_producer.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %179, i32 0, i32 3
  %220 = ptrtoint ptr %crb_cmd_producer.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call27.i, ptr %crb_cmd_producer.i, align 4
  %context_id.i205 = getelementptr inbounds %struct.nx_cardrsp_tx_ctx_t, ptr %call.i80.i, i32 0, i32 1
  %221 = ptrtoint ptr %context_id.i205 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %context_id.i205, align 4
  %223 = call i16 @llvm.bswap.i16(i16 %222) #6
  %tx_context_id.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 28
  %224 = ptrtoint ptr %tx_context_id.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %tx_context_id.i, align 2
  br label %if.end29.i

do.end.i206:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call22.i) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i206, %if.then24.i
  %err.0.i207 = phi i32 [ 0, %if.then24.i ], [ -5, %do.end.i206 ]
  %225 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pdev1, align 8
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %226, i32 0, i32 44
  %227 = ptrtoint ptr %rsp_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %rsp_phys_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev31.i, i32 noundef 144, ptr noundef nonnull %call.i80.i, i32 noundef %228, i32 noundef 0) #6
  br label %nx_fw_cmd_create_tx_ctx.exit

nx_fw_cmd_create_tx_ctx.exit:                     ; preds = %if.end29.i, %if.end.i196.nx_fw_cmd_create_tx_ctx.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i207, %if.end29.i ], [ -12, %if.end.i196.nx_fw_cmd_create_tx_ctx.exit_crit_edge ]
  %229 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdev1, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %230, i32 0, i32 44
  %231 = ptrtoint ptr %rq_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rq_phys_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev33.i, i32 noundef 200, ptr noundef nonnull %call.i.i194, i32 noundef %232, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i191) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_phys_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rq_phys_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool105.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool105.not, label %nx_fw_cmd_create_tx_ctx.exit.cleanup_crit_edge, label %nx_fw_cmd_create_tx_ctx.exit.err_out_free_crit_edge

nx_fw_cmd_create_tx_ctx.exit.err_out_free_crit_edge: ; preds = %nx_fw_cmd_create_tx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_free

nx_fw_cmd_create_tx_ctx.exit.cleanup_crit_edge:   ; preds = %nx_fw_cmd_create_tx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %for.end90
  %233 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %portnum, align 2
  %235 = ptrtoint ptr %tx_ring4 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tx_ring4, align 8
  %237 = ptrtoint ptr %hwctx to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hwctx, align 4
  %phys_addr.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %236, i32 0, i32 9
  %239 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %phys_addr.i, align 4
  %conv4.i = zext i32 %240 to i64
  %241 = tail call i64 @llvm.bswap.i64(i64 %conv4.i) #6
  %cmd_ring_addr.i = getelementptr inbounds %struct.netxen_ring_ctx, ptr %238, i32 0, i32 1
  %242 = ptrtoint ptr %cmd_ring_addr.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %cmd_ring_addr.i, align 8
  %num_desc.i211 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %236, i32 0, i32 5
  %243 = ptrtoint ptr %num_desc.i211 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_desc.i211, align 4
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #6
  %cmd_ring_size.i = getelementptr inbounds %struct.netxen_ring_ctx, ptr %238, i32 0, i32 2
  %246 = ptrtoint ptr %cmd_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %cmd_ring_size.i, align 16
  %247 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp3.not.i = icmp eq i8 %248, 0
  br i1 %cmp3.not.i, label %if.else.for.cond13.preheader.i_crit_edge, label %for.body.lr.ph.i214

if.else.for.cond13.preheader.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond13.preheader.i

for.body.lr.ph.i214:                              ; preds = %if.else
  %rds_rings.i213 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  br label %for.body.i219

for.cond13.preheader.i:                           ; preds = %for.body.i219.for.cond13.preheader.i_crit_edge, %if.else.for.cond13.preheader.i_crit_edge
  %249 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %cmp156.not.i = icmp eq i8 %250, 0
  br i1 %cmp156.not.i, label %for.cond13.preheader.i.netxen_init_old_ctx.exit_crit_edge, label %if.end.peel.i

for.cond13.preheader.i.netxen_init_old_ctx.exit_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netxen_init_old_ctx.exit

if.end.peel.i:                                    ; preds = %for.cond13.preheader.i
  %sds_rings.i216 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %251 = ptrtoint ptr %sds_rings.i216 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %sds_rings.i216, align 4
  %sts_ring_size.i = getelementptr inbounds %struct.netxen_ring_ctx, ptr %238, i32 0, i32 6
  %sts_ring_addr.i = getelementptr inbounds %struct.netxen_ring_ctx, ptr %238, i32 0, i32 5
  %phys_addr21.peel.i = getelementptr %struct.nx_host_sds_ring, ptr %252, i32 0, i32 9
  %253 = ptrtoint ptr %phys_addr21.peel.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %phys_addr21.peel.i, align 4
  %conv22.peel.i = zext i32 %254 to i64
  %255 = tail call i64 @llvm.bswap.i64(i64 %conv22.peel.i) #6
  %256 = ptrtoint ptr %sts_ring_addr.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %sts_ring_addr.i, align 8
  %num_desc23.peel.i = getelementptr %struct.nx_host_sds_ring, ptr %252, i32 0, i32 1
  %257 = ptrtoint ptr %num_desc23.peel.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %num_desc23.peel.i, align 4
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #6
  %260 = ptrtoint ptr %sts_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %sts_ring_size.i, align 16
  %261 = ptrtoint ptr %phys_addr21.peel.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %phys_addr21.peel.i, align 4
  %conv25.peel.i = zext i32 %262 to i64
  %263 = tail call i64 @llvm.bswap.i64(i64 %conv25.peel.i) #6
  %arrayidx26.peel.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 0
  %264 = ptrtoint ptr %arrayidx26.peel.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %263, ptr %arrayidx26.peel.i, align 8
  %265 = ptrtoint ptr %num_desc23.peel.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %num_desc23.peel.i, align 4
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #6
  %size31.peel.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 0, i32 1
  %268 = ptrtoint ptr %size31.peel.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %size31.peel.i, align 8
  %msi_index.peel.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 0, i32 2
  %269 = ptrtoint ptr %msi_index.peel.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 0, ptr %msi_index.peel.i, align 4
  %270 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %271)
  %cmp15.peel.i = icmp ugt i8 %271, 1
  br i1 %cmp15.peel.i, label %if.end.peel.i.if.end.i222_crit_edge, label %if.end.peel.i.netxen_init_old_ctx.exit_crit_edge

if.end.peel.i.netxen_init_old_ctx.exit_crit_edge: ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netxen_init_old_ctx.exit

if.end.peel.i.if.end.i222_crit_edge:              ; preds = %if.end.peel.i
  br label %if.end.i222

for.body.i219:                                    ; preds = %for.body.i219.for.body.i219_crit_edge, %for.body.lr.ph.i214
  %ring.04.i = phi i32 [ 0, %for.body.lr.ph.i214 ], [ %inc.i217, %for.body.i219.for.body.i219_crit_edge ]
  %272 = ptrtoint ptr %rds_rings.i213 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %rds_rings.i213, align 4
  %phys_addr7.i = getelementptr %struct.nx_host_rds_ring, ptr %273, i32 %ring.04.i, i32 10
  %274 = ptrtoint ptr %phys_addr7.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %phys_addr7.i, align 4
  %conv8.i = zext i32 %275 to i64
  %276 = tail call i64 @llvm.bswap.i64(i64 %conv8.i) #6
  %arrayidx9.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 4, i32 %ring.04.i
  %277 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %276, ptr %arrayidx9.i, align 8
  %num_desc10.i = getelementptr %struct.nx_host_rds_ring, ptr %273, i32 %ring.04.i, i32 1
  %278 = ptrtoint ptr %num_desc10.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_desc10.i, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #6
  %size.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 4, i32 %ring.04.i, i32 1
  %281 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %size.i, align 8
  %inc.i217 = add nuw nsw i32 %ring.04.i, 1
  %282 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %max_rds_rings, align 8
  %conv5.i = zext i8 %283 to i32
  %cmp.i218 = icmp ult i32 %inc.i217, %conv5.i
  br i1 %cmp.i218, label %for.body.i219.for.body.i219_crit_edge, label %for.body.i219.for.cond13.preheader.i_crit_edge

for.body.i219.for.cond13.preheader.i_crit_edge:   ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond13.preheader.i

for.body.i219.for.body.i219_crit_edge:            ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i219

if.end.i222:                                      ; preds = %if.end.i222.if.end.i222_crit_edge, %if.end.peel.i.if.end.i222_crit_edge
  %ring.17.i = phi i32 [ %inc36.i, %if.end.i222.if.end.i222_crit_edge ], [ 1, %if.end.peel.i.if.end.i222_crit_edge ]
  %284 = ptrtoint ptr %sds_rings.i216 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %sds_rings.i216, align 4
  %phys_addr24.i = getelementptr %struct.nx_host_sds_ring, ptr %285, i32 %ring.17.i, i32 9
  %286 = ptrtoint ptr %phys_addr24.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %phys_addr24.i, align 4
  %conv25.i = zext i32 %287 to i64
  %288 = tail call i64 @llvm.bswap.i64(i64 %conv25.i) #6
  %arrayidx26.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 %ring.17.i
  %289 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %288, ptr %arrayidx26.i, align 8
  %num_desc28.i = getelementptr %struct.nx_host_sds_ring, ptr %285, i32 %ring.17.i, i32 1
  %290 = ptrtoint ptr %num_desc28.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %num_desc28.i, align 4
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #6
  %size31.i = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 %ring.17.i, i32 1
  %293 = ptrtoint ptr %size31.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %size31.i, align 8
  %conv32.i = trunc i32 %ring.17.i to i16
  %294 = tail call i16 @llvm.bswap.i16(i16 %conv32.i) #6
  %msi_index.i220 = getelementptr %struct.netxen_ring_ctx, ptr %238, i32 0, i32 11, i32 %ring.17.i, i32 2
  %295 = ptrtoint ptr %msi_index.i220 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %294, ptr %msi_index.i220, align 4
  %inc36.i = add nuw nsw i32 %ring.17.i, 1
  %296 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %max_sds_rings, align 1
  %conv14.i221 = zext i8 %297 to i32
  %cmp15.i = icmp ult i32 %inc36.i, %conv14.i221
  br i1 %cmp15.i, label %if.end.i222.if.end.i222_crit_edge, label %if.end.i222.netxen_init_old_ctx.exit_crit_edge, !llvm.loop !95

if.end.i222.netxen_init_old_ctx.exit_crit_edge:   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %netxen_init_old_ctx.exit

if.end.i222.if.end.i222_crit_edge:                ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i222

netxen_init_old_ctx.exit:                         ; preds = %if.end.i222.netxen_init_old_ctx.exit_crit_edge, %if.end.peel.i.netxen_init_old_ctx.exit_crit_edge, %for.cond13.preheader.i.netxen_init_old_ctx.exit_crit_edge
  %.lcssa.i = phi i8 [ 0, %for.cond13.preheader.i.netxen_init_old_ctx.exit_crit_edge ], [ %271, %if.end.peel.i.netxen_init_old_ctx.exit_crit_edge ], [ %297, %if.end.i222.netxen_init_old_ctx.exit_crit_edge ]
  %conv14.le.i = zext i8 %.lcssa.i to i32
  %conv.i223 = zext i8 %234 to i32
  %298 = shl nuw i32 %conv14.le.i, 24
  %sts_ring_count.i = getelementptr inbounds %struct.netxen_ring_ctx, ptr %238, i32 0, i32 9
  %299 = ptrtoint ptr %sts_ring_count.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %sts_ring_count.i, align 16
  %300 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %301)
  %cmp42.i = icmp ugt i8 %301, 1
  %cond.i = select i1 %cmp42.i, i32 188128, i32 57056
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %302 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %crb_write.i, align 8
  %arrayidx44.i = getelementptr [4 x [3 x i64]], ptr @ctx_addr_sig_regs, i32 0, i32 %conv.i223
  %304 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %arrayidx44.i, align 8
  %conv46.i = trunc i64 %305 to i32
  %306 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %phys_addr, align 4
  %call.i224 = tail call i32 %303(ptr noundef %adapter, i32 noundef %conv46.i, i32 noundef %307) #6
  %308 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %crb_write.i, align 8
  %arrayidx50.i = getelementptr [4 x [3 x i64]], ptr @ctx_addr_sig_regs, i32 0, i32 %conv.i223, i32 2
  %310 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %arrayidx50.i, align 8
  %conv51.i = trunc i64 %311 to i32
  %call56.i = tail call i32 %309(ptr noundef %adapter, i32 noundef %conv51.i, i32 noundef 0) #6
  %312 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %crb_write.i, align 8
  %arrayidx59.i = getelementptr [4 x [3 x i64]], ptr @ctx_addr_sig_regs, i32 0, i32 %conv.i223, i32 1
  %314 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %arrayidx59.i, align 8
  %conv60.i = trunc i64 %315 to i32
  %or.i = or i32 %cond.i, %conv.i223
  %call61.i = tail call i32 %313(ptr noundef %adapter, i32 noundef %conv60.i, i32 noundef %or.i) #6
  br label %cleanup

err_out_free:                                     ; preds = %nx_fw_cmd_create_tx_ctx.exit.err_out_free_crit_edge, %nx_fw_cmd_create_tx_ctx.exit.thread, %nx_fw_cmd_create_rx_ctx.exit.err_out_free_crit_edge, %nx_fw_cmd_create_rx_ctx.exit.thread, %do.end68, %do.end36, %do.end19
  %err.0 = phi i32 [ -12, %do.end19 ], [ -12, %do.end36 ], [ -12, %do.end68 ], [ %err.0.i, %nx_fw_cmd_create_rx_ctx.exit.err_out_free_crit_edge ], [ %err.1.i, %nx_fw_cmd_create_tx_ctx.exit.err_out_free_crit_edge ], [ -12, %nx_fw_cmd_create_rx_ctx.exit.thread ], [ -12, %nx_fw_cmd_create_tx_ctx.exit.thread ]
  call void @netxen_free_hw_resources(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %netxen_init_old_ctx.exit, %nx_fw_cmd_create_tx_ctx.exit.cleanup_crit_edge, %if.then96.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %err.0, %err_out_free ], [ 0, %netxen_init_old_ctx.exit ], [ 0, %nx_fw_cmd_create_tx_ctx.exit.cleanup_crit_edge ], [ 0, %if.then96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netxen_get_ioaddr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_free_hw_resources(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i105 = alloca %struct.netxen_cmd_args, align 4
  %cmd.i = alloca %struct.netxen_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.done_crit_edge, label %if.end

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #6
  %2 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %cmd.i, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %context_id.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 1
  %7 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %context_id.i, align 4
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.nx_fw_cmd_destroy_rx_ctx.exit_crit_edge, label %do.end.i

if.end.nx_fw_cmd_destroy_rx_ctx.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nx_fw_cmd_destroy_rx_ctx.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @netxen_nic_driver_name) #9
  br label %nx_fw_cmd_destroy_rx_ctx.exit

nx_fw_cmd_destroy_rx_ctx.exit:                    ; preds = %do.end.i, %if.end.nx_fw_cmd_destroy_rx_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i105) #6
  %13 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i105, i32 0, i32 1
  %14 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i105, i32 0, i32 2
  %15 = getelementptr inbounds %struct._cdrp_cmd, ptr %cmd.i105, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %cmd.i105, i32 16
  %17 = call ptr @memset(ptr %16, i32 0, i32 16)
  %tx_context_id.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 28
  %18 = ptrtoint ptr %tx_context_id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_context_id.i, align 2
  %conv.i106 = zext i16 %19 to i32
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i106, ptr %13, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %14, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %15, align 4
  %23 = ptrtoint ptr %cmd.i105 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %cmd.i105, align 4
  %call.i107 = call fastcc i32 @netxen_issue_cmd(ptr noundef %adapter, ptr noundef nonnull %cmd.i105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %nx_fw_cmd_destroy_rx_ctx.exit.nx_fw_cmd_destroy_tx_ctx.exit_crit_edge, label %do.end.i109

nx_fw_cmd_destroy_rx_ctx.exit.nx_fw_cmd_destroy_tx_ctx.exit_crit_edge: ; preds = %nx_fw_cmd_destroy_rx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nx_fw_cmd_destroy_tx_ctx.exit

do.end.i109:                                      ; preds = %nx_fw_cmd_destroy_rx_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @netxen_nic_driver_name) #9
  br label %nx_fw_cmd_destroy_tx_ctx.exit

nx_fw_cmd_destroy_tx_ctx.exit:                    ; preds = %do.end.i109, %nx_fw_cmd_destroy_rx_ctx.exit.nx_fw_cmd_destroy_tx_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i105) #6
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %24 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %portnum, align 2
  %conv = zext i8 %25 to i32
  %call4 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #6
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %26 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_write, align 8
  %arrayidx5 = getelementptr [4 x [3 x i64]], ptr @ctx_addr_sig_regs, i32 0, i32 %conv, i32 1
  %28 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx5, align 8
  %conv6 = trunc i64 %29 to i32
  %or = or i32 %conv, 44224
  %call7 = tail call i32 %27(ptr noundef %adapter, i32 noundef %conv6, i32 noundef %or) #6
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 5) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %nx_fw_cmd_destroy_tx_ctx.exit
  tail call void @msleep(i32 noundef 20) #6
  br label %done

done:                                             ; preds = %if.end8, %if.then.done_crit_edge
  %hwctx = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 5
  %30 = ptrtoint ptr %hwctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwctx, align 4
  %cmp10.not = icmp eq ptr %31, null
  br i1 %cmp10.not, label %done.if.end15_crit_edge, label %if.then12

done.if.end15_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %phys_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 6
  %34 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 196, ptr noundef nonnull %31, i32 noundef %35, i32 noundef 0) #6
  %36 = ptrtoint ptr %hwctx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %hwctx, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %done.if.end15_crit_edge
  %tx_ring16 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %37 = ptrtoint ptr %tx_ring16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_ring16, align 8
  %desc_head = getelementptr inbounds %struct.nx_host_tx_ring, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc_head, align 4
  %cmp17.not = icmp eq ptr %40, null
  br i1 %cmp17.not, label %if.end15.if.end25_crit_edge, label %if.then19

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %pdev20 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %41 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %38, i32 0, i32 5
  %43 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_desc, align 4
  %mul = shl i32 %44, 6
  %phys_addr23 = getelementptr inbounds %struct.nx_host_tx_ring, ptr %38, i32 0, i32 9
  %45 = ptrtoint ptr %phys_addr23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_addr23, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21, i32 noundef %mul, ptr noundef nonnull %40, i32 noundef %46, i32 noundef 0) #6
  %47 = ptrtoint ptr %desc_head to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %desc_head, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end15.if.end25_crit_edge
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %48 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp27111.not = icmp eq i8 %49, 0
  br i1 %cmp27111.not, label %if.end25.for.cond42.preheader_crit_edge, label %for.body.lr.ph

if.end25.for.cond42.preheader_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond42.preheader

for.body.lr.ph:                                   ; preds = %if.end25
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  %pdev34 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body

for.cond42.preheader:                             ; preds = %for.inc.for.cond42.preheader_crit_edge, %if.end25.for.cond42.preheader_crit_edge
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %50 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp44115.not = icmp eq i8 %51, 0
  br i1 %cmp44115.not, label %for.cond42.preheader.for.end62_crit_edge, label %for.body46.lr.ph

for.cond42.preheader.for.end62_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end62

for.body46.lr.ph:                                 ; preds = %for.cond42.preheader
  %sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %pdev52 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  br label %for.body46

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %52 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rds_rings, align 4
  %desc_head30 = getelementptr %struct.nx_host_rds_ring, ptr %53, i32 %ring.0112, i32 6
  %54 = ptrtoint ptr %desc_head30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc_head30, align 4
  %cmp31.not = icmp eq ptr %55, null
  br i1 %cmp31.not, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev34, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %num_desc36 = getelementptr %struct.nx_host_rds_ring, ptr %53, i32 %ring.0112, i32 1
  %58 = ptrtoint ptr %num_desc36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_desc36, align 4
  %mul37 = shl i32 %59, 4
  %phys_addr39 = getelementptr %struct.nx_host_rds_ring, ptr %53, i32 %ring.0112, i32 10
  %60 = ptrtoint ptr %phys_addr39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phys_addr39, align 4
  tail call void @dma_free_attrs(ptr noundef %dev35, i32 noundef %mul37, ptr noundef nonnull %55, i32 noundef %61, i32 noundef 0) #6
  %62 = ptrtoint ptr %desc_head30 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %desc_head30, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ring.0112, 1
  %63 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %max_rds_rings, align 8
  %conv26 = zext i8 %64 to i32
  %cmp27 = icmp ult i32 %inc, %conv26
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.cond42.preheader_crit_edge

for.inc.for.cond42.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond42.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body46:                                       ; preds = %for.inc60.for.body46_crit_edge, %for.body46.lr.ph
  %ring.1116 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc61, %for.inc60.for.body46_crit_edge ]
  %65 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sds_rings, align 4
  %desc_head48 = getelementptr %struct.nx_host_sds_ring, ptr %66, i32 %ring.1116, i32 4
  %67 = ptrtoint ptr %desc_head48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc_head48, align 8
  %cmp49.not = icmp eq ptr %68, null
  br i1 %cmp49.not, label %for.body46.for.inc60_crit_edge, label %if.then51

for.body46.for.inc60_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc60

if.then51:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev52, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %num_desc54 = getelementptr %struct.nx_host_sds_ring, ptr %66, i32 %ring.1116, i32 1
  %71 = ptrtoint ptr %num_desc54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_desc54, align 4
  %mul55 = shl i32 %72, 4
  %phys_addr57 = getelementptr %struct.nx_host_sds_ring, ptr %66, i32 %ring.1116, i32 9
  %73 = ptrtoint ptr %phys_addr57 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %phys_addr57, align 4
  tail call void @dma_free_attrs(ptr noundef %dev53, i32 noundef %mul55, ptr noundef nonnull %68, i32 noundef %74, i32 noundef 0) #6
  %75 = ptrtoint ptr %desc_head48 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %desc_head48, align 8
  br label %for.inc60

for.inc60:                                        ; preds = %if.then51, %for.body46.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %ring.1116, 1
  %76 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %max_sds_rings, align 1
  %conv43 = zext i8 %77 to i32
  %cmp44 = icmp ult i32 %inc61, %conv43
  br i1 %cmp44, label %for.inc60.for.body46_crit_edge, label %for.inc60.for.end62_crit_edge

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end62

for.inc60.for.body46_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %for.cond42.preheader.for.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_pcie_sem_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_pcie_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 166, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @netxen_setup_minidump._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @netxen_setup_minidump._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 175, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @netxen_setup_minidump._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @netxen_setup_minidump._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 193, i32 3}
!15 = !{ptr @netxen_setup_minidump._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @netxen_setup_minidump._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 755, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @netxen_alloc_hw_resources._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @netxen_alloc_hw_resources._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 772, i32 3}
!24 = !{ptr @netxen_alloc_hw_resources._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @netxen_alloc_hw_resources._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 786, i32 4}
!28 = !{ptr @netxen_alloc_hw_resources._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @netxen_alloc_hw_resources._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 807, i32 4}
!32 = !{ptr @netxen_alloc_hw_resources._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @netxen_alloc_hw_resources._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 92, i32 3}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @netxen_get_minidump_template_size._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @netxen_get_minidump_template_size._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 111, i32 3}
!41 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @netxen_get_minidump_template._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @netxen_get_minidump_template._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 119, i32 3}
!46 = !{ptr @netxen_get_minidump_template._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @netxen_get_minidump_template._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 134, i32 3}
!50 = !{ptr @netxen_get_minidump_template._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @netxen_get_minidump_template._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 58, i32 3}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @netxen_issue_cmd._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @netxen_issue_cmd._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 65, i32 3}
!59 = !{ptr @netxen_issue_cmd._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @netxen_issue_cmd._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @recv_crb_registers, !62, !"recv_crb_registers", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 577, i32 31}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 354, i32 3}
!65 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @nx_fw_cmd_create_rx_ctx._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @nx_fw_cmd_create_rx_ctx._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 491, i32 3}
!70 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nx_fw_cmd_create_tx_ctx._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nx_fw_cmd_create_tx_ctx._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 411, i32 3}
!75 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @nx_fw_cmd_destroy_rx_ctx._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @nx_fw_cmd_destroy_rx_ctx._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 516, i32 3}
!80 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nx_fw_cmd_destroy_tx_ctx._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nx_fw_cmd_destroy_tx_ctx._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ctx_addr_sig_regs, !84, !"ctx_addr_sig_regs", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ctx.c", i32 563, i32 12}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.peeled.count", i32 1}
