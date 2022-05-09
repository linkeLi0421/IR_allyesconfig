; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_hw.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_hw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_info = type { i8, ptr, ptr, %struct.fw_hdr }
%struct.fw_hdr = type { i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [23 x i32] }
%struct.intr_info = type { i32, ptr, i16, i16 }
%struct.csio_adap_desc = type { [16 x i8], [32 x i8] }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.csio_ioreq = type { %struct.csio_sm, i32, i32, i32, i32, i32, %struct.csio_dma_buf, i16, i16, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i8, i8, i16, %struct.completion, [100 x i8] }
%struct.csio_dma_buf = type { %struct.list_head, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.79 = type { ptr }
%struct.csio_evt_msg = type { %struct.list_head, i32, [512 x i8] }
%struct.csio_q = type { i16, i16, i16, i16, i32, ptr, ptr, i32, ptr, %union.anon.2, i32, i32, i32, %struct.csio_qstats, [44 x i8] }
%union.anon.2 = type { %struct.csio_iq, [500 x i8] }
%struct.csio_iq = type { i16, i16, i16, i32, ptr }
%struct.csio_qstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_fl_dma_buf = type { [4 x %struct.csio_dma_buf], i32, i32, i8 }
%struct.csio_mb = type { %struct.list_head, [8 x i64], i32, i32, %struct.completion, ptr, ptr }
%struct.fw_fcoe_res_info_cmd = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t4_vpd_hdr = type { i8, [2 x i8], [16 x i8], i8, [2 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%union.anon.88 = type { i32 }
%struct.fw_caps_config_cmd = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32 }

@csio_dbg_level = dso_local global { i32, [28 x i8] } { i32 65279, [28 x i8] zeroinitializer }, align 32
@csio_port_mask = dso_local global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@csio_msi = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csio_hw_fatal_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2767, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HW Fatal error encountered!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_hw_fatal_err\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/csiostor/csio_hw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_hw_fatal_err._entry_ptr = internal global ptr @csio_hw_fatal_err._entry, section ".printk_index", align 4
@csio_handle_intr_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 3126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fatal %s (0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_handle_intr_status\00", [40 x i8] zeroinitializer }, align 32
@csio_handle_intr_status._entry_ptr = internal global ptr @csio_handle_intr_status._entry, section ".printk_index", align 4
@csio_handle_intr_status._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 3129, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s (0x%x)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@csio_handle_intr_status._entry_ptr.10 = internal global ptr @csio_handle_intr_status._entry.7, section ".printk_index", align 4
@csio_enqueue_evt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 3796, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to alloc evt entry, msg type %d len %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_enqueue_evt\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@csio_enqueue_evt._entry_ptr = internal global ptr @csio_enqueue_evt._entry, section ".printk_index", align 4
@csio_evtq_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 4028, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unhandled FW msg op %x type %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_evtq_worker\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@csio_evtq_worker._entry_ptr = internal global ptr @csio_evtq_worker._entry, section ".printk_index", align 4
@csio_evtq_worker._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 4044, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled event %x on evtq\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_evtq_worker._entry_ptr.19 = internal global ptr @csio_evtq_worker._entry.17, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@csio_hw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chelsio FCoE Adapter\00", [43 x i8] zeroinitializer }, align 32
@t5_ops = external dso_local global %struct.csio_hw_chip_ops, align 4
@csio_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 4395, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize eventq\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csio_hw_init\00", [19 x i8] zeroinitializer }, align 32
@csio_hw_init._entry_ptr = internal global ptr @csio_hw_init._entry, section ".printk_index", align 4
@dev_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@csio_hw_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 2621, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Issue of FW_INITIALIZE_CMD failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_hw_initialize\00", [45 x i8] zeroinitializer }, align 32
@csio_hw_initialize._entry_ptr = internal global ptr @csio_hw_initialize._entry, section ".printk_index", align 4
@csio_hw_initialize._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 2628, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FW_INITIALIZE_CMD returned 0x%x!\0A\00", [62 x i8] zeroinitializer }, align 32
@csio_hw_initialize._entry_ptr.28 = internal global ptr @csio_hw_initialize._entry.26, section ".printk_index", align 4
@csio_hw_initialize._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 2637, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read fcoe resource info: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@csio_hw_initialize._entry_ptr.31 = internal global ptr @csio_hw_initialize._entry.29, section ".printk_index", align 4
@csio_hw_initialize._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 2646, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Config of queues failed!: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_hw_initialize._entry_ptr.34 = internal global ptr @csio_hw_initialize._entry.32, section ".printk_index", align 4
@csio_hw_initialize._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 2656, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable ports: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_hw_initialize._entry_ptr.37 = internal global ptr @csio_hw_initialize._entry.35, section ".printk_index", align 4
@csio_get_fcoe_resinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1890, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to issue FW_FCOE_RES_INFO_CMD\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_get_fcoe_resinfo\00", [42 x i8] zeroinitializer }, align 32
@csio_get_fcoe_resinfo._entry_ptr = internal global ptr @csio_get_fcoe_resinfo._entry, section ".printk_index", align 4
@csio_get_fcoe_resinfo._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1899, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FW_FCOE_RES_INFO_CMD failed with ret x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_get_fcoe_resinfo._entry_ptr.42 = internal global ptr @csio_get_fcoe_resinfo._entry.40, section ".printk_index", align 4
@csio_enable_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1807, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to issue FW_PARAMS_CMD(r) port:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_enable_ports\00", [46 x i8] zeroinitializer }, align 32
@csio_enable_ports._entry_ptr = internal global ptr @csio_enable_ports._entry, section ".printk_index", align 4
@csio_enable_ports._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1823, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to issue FW_PORT_CMD(r) port:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_enable_ports._entry_ptr.47 = internal global ptr @csio_enable_ports._entry.45, section ".printk_index", align 4
@csio_enable_ports._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 1832, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW_PORT_CMD(r) port:%d failed: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@csio_enable_ports._entry_ptr.50 = internal global ptr @csio_enable_ports._entry.48, section ".printk_index", align 4
@csio_enable_ports._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 1847, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to issue FW_PORT_CMD(w) port:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_enable_ports._entry_ptr.53 = internal global ptr @csio_enable_ports._entry.51, section ".printk_index", align 4
@csio_enable_ports._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 1855, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW_PORT_CMD(w) port:%d failed :0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@csio_enable_ports._entry_ptr.56 = internal global ptr @csio_enable_ports._entry.54, section ".printk_index", align 4
@csio_hw_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 2496, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get serial flash params rv:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_hw_configure\00", [46 x i8] zeroinitializer }, align 32
@csio_hw_configure._entry_ptr = internal global ptr @csio_hw_configure._entry, section ".printk_index", align 4
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Firmware revision\00", [46 x i8] zeroinitializer }, align 32
@csio_hw_configure._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.2, i32 2548, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware doesn't support Firmware Configuration files\0A\00", [41 x i8] zeroinitializer }, align 32
@csio_hw_configure._entry_ptr.62 = internal global ptr @csio_hw_configure._entry.60, section ".printk_index", align 4
@csio_hw_configure._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 2559, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not initialize adapter, error%d\0A\00", [57 x i8] zeroinitializer }, align 32
@csio_hw_configure._entry_ptr.65 = internal global ptr @csio_hw_configure._entry.63, section ".printk_index", align 4
@csio_hw_configure._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 2564, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@csio_hw_configure._entry_ptr.67 = internal global ptr @csio_hw_configure._entry.66, section ".printk_index", align 4
@csio_hw_dev_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 899, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PL_WHOAMI returned 0x%x, cnt:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_hw_dev_ready\00", [46 x i8] zeroinitializer }, align 32
@csio_hw_dev_ready._entry_ptr = internal global ptr @csio_hw_dev_ready._entry, section ".printk_index", align 4
@csio_hw_get_flash_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 862, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unknown Flash Part, ID = %#x, assuming 4MB\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csio_hw_get_flash_params\00", [39 x i8] zeroinitializer }, align 32
@csio_hw_get_flash_params._entry_ptr = internal global ptr @csio_hw_get_flash_params._entry, section ".printk_index", align 4
@csio_hw_get_flash_params._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 873, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"WARNING: Flash Part ID %#x, size %#x < %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@csio_hw_get_flash_params._entry_ptr.74 = internal global ptr @csio_hw_get_flash_params._entry.72, section ".printk_index", align 4
@csio_hw_print_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 626, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %u.%u.%u.%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csio_hw_print_fw_version\00", [39 x i8] zeroinitializer }, align 32
@csio_hw_print_fw_version._entry_ptr = internal global ptr @csio_hw_print_fw_version._entry, section ".printk_index", align 4
@csio_do_hello._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 940, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to issue HELLO cmd. ret:%d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_do_hello\00", [18 x i8] zeroinitializer }, align 32
@csio_do_hello._entry_ptr = internal global ptr @csio_do_hello._entry, section ".printk_index", align 4
@csio_do_hello._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 946, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HELLO cmd failed with ret: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_do_hello._entry_ptr.81 = internal global ptr @csio_do_hello._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Initializing\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Initialized\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@csio_do_hello._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.78, ptr @.str.2, i32 1045, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PF: %d, Coming up as MASTER, HW state: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@csio_do_hello._entry_ptr.88 = internal global ptr @csio_do_hello._entry.86, section ".printk_index", align 4
@csio_do_hello._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.78, ptr @.str.2, i32 1049, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PF: %d, Coming up as SLAVE, Master PF: %d, HW state: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@csio_do_hello._entry_ptr.91 = internal global ptr @csio_do_hello._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RV\00", [29 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 352, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing VPD keyword RV\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_hw_get_vpd_params\00", [41 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry_ptr = internal global ptr @csio_hw_get_vpd_params._entry, section ".printk_index", align 4
@csio_hw_get_vpd_params._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 357, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"corrupted VPD EEPROM, actual csum %u\0A\00", [58 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry_ptr.97 = internal global ptr @csio_hw_get_vpd_params._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.2, i32 361, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing VPD keyword EC\0A\00", [40 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry_ptr.101 = internal global ptr @csio_hw_get_vpd_params._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SN\00", [29 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.94, ptr @.str.2, i32 362, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing VPD keyword SN\0A\00", [40 x i8] zeroinitializer }, align 32
@csio_hw_get_vpd_params._entry_ptr.105 = internal global ptr @csio_hw_get_vpd_params._entry.103, section ".printk_index", align 4
@csio_hw_seeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 229, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reading EEPROM address 0x%x failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csio_hw_seeprom_read\00", [43 x i8] zeroinitializer }, align 32
@csio_hw_seeprom_read._entry_ptr = internal global ptr @csio_hw_seeprom_read._entry, section ".printk_index", align 4
@csio_hw_flash_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 2425, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to get firmware info for chip %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_hw_flash_fw\00", [47 x i8] zeroinitializer }, align 32
@csio_hw_flash_fw._entry_ptr = internal global ptr @csio_hw_flash_fw._entry, section ".printk_index", align 4
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgb4/t5fw.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgb4/t6fw.bin\00", [17 x i8] zeroinitializer }, align 32
@csio_hw_flash_fw._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.109, ptr @.str.2, i32 2443, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not find firmware image %s, err: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@csio_hw_flash_fw._entry_ptr.114 = internal global ptr @csio_hw_flash_fw._entry.112, section ".printk_index", align 4
@fw_info_array = internal constant { [2 x %struct.fw_info], [72 x i8] } { [2 x %struct.fw_info] [%struct.fw_info { i8 5, ptr @.str.115, ptr @.str.110, %struct.fw_hdr { i8 0, i8 1, i16 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, [23 x i32] zeroinitializer } }, %struct.fw_info { i8 6, ptr @.str.116, ptr @.str.111, %struct.fw_hdr { i8 0, i8 2, i16 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, [23 x i32] zeroinitializer } }], [72 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4/t5-config.txt\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4/t6-config.txt\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@csio_hw_prep_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 2333, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to read card's firmware header: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_hw_prep_fw\00", [16 x i8] zeroinitializer }, align 32
@csio_hw_prep_fw._entry_ptr = internal global ptr @csio_hw_prep_fw._entry, section ".printk_index", align 4
@csio_hw_prep_fw._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 2359, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to install firmware: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@csio_hw_prep_fw._entry_ptr.121 = internal global ptr @csio_hw_prep_fw._entry.119, section ".printk_index", align 4
@csio_hw_prep_fw._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 2386, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"Cannot find a usable firmware: chip state %d, driver compiled with %d.%d.%d.%d, card has %d.%d.%d.%d, filesystem has %d.%d.%d.%d\0A\00", [62 x i8] zeroinitializer }, align 32
@csio_hw_prep_fw._entry_ptr.124 = internal global ptr @csio_hw_prep_fw._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"incompatible or unusable\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"older than the version supported with this driver\00", [46 x i8] zeroinitializer }, align 32
@csio_should_install_fs_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 2268, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"firmware on card (%u.%u.%u.%u) is %s, installing firmware %u.%u.%u.%u on card.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio_should_install_fs_fw\00", [38 x i8] zeroinitializer }, align 32
@csio_should_install_fs_fw._entry_ptr = internal global ptr @csio_should_install_fs_fw._entry, section ".printk_index", align 4
@csio_hw_fw_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1202, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Issue of RESET command failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_hw_fw_halt\00", [16 x i8] zeroinitializer }, align 32
@csio_hw_fw_halt._entry_ptr = internal global ptr @csio_hw_fw_halt._entry, section ".printk_index", align 4
@csio_hw_fw_dload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 680, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Serial Flash data invalid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csio_hw_fw_dload\00", [47 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr = internal global ptr @csio_hw_fw_dload._entry, section ".printk_index", align 4
@csio_hw_fw_dload._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 685, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW image has no data\0A\00", [42 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.135 = internal global ptr @csio_hw_fw_dload._entry.133, section ".printk_index", align 4
@csio_hw_fw_dload._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.2, i32 690, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW image size not multiple of 512 bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.138 = internal global ptr @csio_hw_fw_dload._entry.136, section ".printk_index", align 4
@csio_hw_fw_dload._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.132, ptr @.str.2, i32 695, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"FW image size differs from size in FW header\0A\00", [50 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.141 = internal global ptr @csio_hw_fw_dload._entry.139, section ".printk_index", align 4
@csio_hw_fw_dload._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.132, ptr @.str.2, i32 701, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW image too large, max is %u bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.144 = internal global ptr @csio_hw_fw_dload._entry.142, section ".printk_index", align 4
@csio_hw_fw_dload._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.132, ptr @.str.2, i32 709, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"corrupted firmware image, checksum %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.147 = internal global ptr @csio_hw_fw_dload._entry.145, section ".printk_index", align 4
@csio_hw_fw_dload._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.132, ptr @.str.2, i32 722, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash Erase failed\0A\00", [44 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.150 = internal global ptr @csio_hw_fw_dload._entry.148, section ".printk_index", align 4
@csio_hw_fw_dload._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.132, ptr @.str.2, i32 757, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware download failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_hw_fw_dload._entry_ptr.153 = internal global ptr @csio_hw_fw_dload._entry.151, section ".printk_index", align 4
@csio_hw_flash_erase_sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 614, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"erase of flash sector %d failed, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"csio_hw_flash_erase_sectors\00", [36 x i8] zeroinitializer }, align 32
@csio_hw_flash_erase_sectors._entry_ptr = internal global ptr @csio_hw_flash_erase_sectors._entry, section ".printk_index", align 4
@csio_hw_write_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 570, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to correctly write the flash page at %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_hw_write_flash\00", [44 x i8] zeroinitializer }, align 32
@csio_hw_write_flash._entry_ptr = internal global ptr @csio_hw_write_flash._entry, section ".printk_index", align 4
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T6 unsupported fw\00", [46 x i8] zeroinitializer }, align 32
@csio_hw_check_fwconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1947, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Issue of FW_PARAMS_CMD(read) failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_hw_check_fwconfig\00", [41 x i8] zeroinitializer }, align 32
@csio_hw_check_fwconfig._entry_ptr = internal global ptr @csio_hw_check_fwconfig._entry, section ".printk_index", align 4
@csio_hw_check_fwconfig._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 1956, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FW_PARAMS_CMD(read) failed with ret:0x%x!\0A\00", [53 x i8] zeroinitializer }, align 32
@csio_hw_check_fwconfig._entry_ptr.163 = internal global ptr @csio_hw_check_fwconfig._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"On FLASH\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Firmware Default\00", [47 x i8] zeroinitializer }, align 32
@csio_hw_use_fwconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 2173, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Config File checksum mismatch: csum=%#x, computed=%#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csio_hw_use_fwconfig\00", [43 x i8] zeroinitializer }, align 32
@csio_hw_use_fwconfig._entry_ptr = internal global ptr @csio_hw_use_fwconfig._entry, section ".printk_index", align 4
@csio_hw_use_fwconfig._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 2208, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Successfully configure using Firmware Configuration File %s, version %#x, computed checksum %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@csio_hw_use_fwconfig._entry_ptr.170 = internal global ptr @csio_hw_use_fwconfig._entry.168, section ".printk_index", align 4
@csio_hw_use_fwconfig._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.2, i32 2218, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Configuration file error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@csio_hw_use_fwconfig._entry_ptr.173 = internal global ptr @csio_hw_use_fwconfig._entry.171, section ".printk_index", align 4
@csio_hw_flash_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 1986, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not find config file %s, err: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csio_hw_flash_config\00", [43 x i8] zeroinitializer }, align 32
@csio_hw_flash_config._entry_ptr = internal global ptr @csio_hw_flash_config._entry, section ".printk_index", align 4
@csio_hw_flash_config._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.2, i32 2025, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"config file upgraded to %s\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_hw_flash_config._entry_ptr.178 = internal global ptr @csio_hw_flash_config._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"/lib/firmware/\00", [17 x i8] zeroinitializer }, align 32
@csio_hw_validate_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 1151, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No FCoE Initiator capability in the firmware.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_hw_validate_caps\00", [42 x i8] zeroinitializer }, align 32
@csio_hw_validate_caps._entry_ptr = internal global ptr @csio_hw_validate_caps._entry, section ".printk_index", align 4
@csio_hw_validate_caps._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 1156, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No FCoE Control Offload capability\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_hw_validate_caps._entry_ptr.185 = internal global ptr @csio_hw_validate_caps._entry.183, section ".printk_index", align 4
@csio_get_device_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.186, ptr @.str.2, i32 1389, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"csio_get_device_params\00", [41 x i8] zeroinitializer }, align 32
@csio_get_device_params._entry_ptr = internal global ptr @csio_get_device_params._entry, section ".printk_index", align 4
@csio_get_device_params._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.186, ptr @.str.2, i32 1398, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@csio_get_device_params._entry_ptr.188 = internal global ptr @csio_get_device_params._entry.187, section ".printk_index", align 4
@csio_config_device_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 1459, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Issue of FW_CAPS_CONFIG_CMD(r) failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_config_device_caps\00", [40 x i8] zeroinitializer }, align 32
@csio_config_device_caps._entry_ptr = internal global ptr @csio_config_device_caps._entry, section ".printk_index", align 4
@csio_config_device_caps._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 1465, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW_CAPS_CONFIG_CMD(r) returned %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_config_device_caps._entry_ptr.193 = internal global ptr @csio_config_device_caps._entry.191, section ".printk_index", align 4
@csio_config_device_caps._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.2, i32 1485, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Issue of FW_CAPS_CONFIG_CMD(w) failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@csio_config_device_caps._entry_ptr.196 = internal global ptr @csio_config_device_caps._entry.194, section ".printk_index", align 4
@csio_config_device_caps._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.2, i32 1491, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW_CAPS_CONFIG_CMD(w) returned %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_config_device_caps._entry_ptr.199 = internal global ptr @csio_config_device_caps._entry.197, section ".printk_index", align 4
@csio_do_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 1125, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Issue of RESET command failed.n\00", [32 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_do_reset\00", [18 x i8] zeroinitializer }, align 32
@csio_do_reset._entry_ptr = internal global ptr @csio_do_reset._entry, section ".printk_index", align 4
@csio_do_reset._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.2, i32 1132, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RESET cmd failed with ret:0x%x.\0A\00", [63 x i8] zeroinitializer }, align 32
@csio_do_reset._entry_ptr.204 = internal global ptr @csio_do_reset._entry.202, section ".printk_index", align 4
@csio_do_bye._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 1077, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Issue of BYE command failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csio_do_bye\00", [20 x i8] zeroinitializer }, align 32
@csio_do_bye._entry_ptr = internal global ptr @csio_do_bye._entry, section ".printk_index", align 4
@csio_hws_removing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 3056, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Resetting HW and waiting 2 seconds...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_hws_removing\00", [46 x i8] zeroinitializer }, align 32
@csio_hws_removing._entry_ptr = internal global ptr @csio_hws_removing._entry, section ".printk_index", align 4
@csio_cim_intr_handler.cim_intr_info = internal global { [8 x %struct.intr_info], [32 x i8] } { [8 x %struct.intr_info] [%struct.intr_info { i32 2, ptr @.str.209, i16 -1, i16 1 }, %struct.intr_info { i32 2016, ptr @.str.210, i16 -1, i16 1 }, %struct.intr_info { i32 129024, ptr @.str.211, i16 -1, i16 1 }, %struct.intr_info { i32 131072, ptr @.str.212, i16 -1, i16 1 }, %struct.intr_info { i32 262144, ptr @.str.213, i16 -1, i16 1 }, %struct.intr_info { i32 524288, ptr @.str.214, i16 -1, i16 1 }, %struct.intr_info { i32 1048576, ptr @.str.215, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIM control register prefetch drop\00", [61 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CIM OBQ parity error\00", [43 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CIM IBQ parity error\00", [43 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIM mailbox uP parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM mailbox host parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM TIEQ outgoing parity error\00", [33 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM TIEQ incoming parity error\00", [33 x i8] zeroinitializer }, align 32
@csio_cim_intr_handler.cim_upintr_info = internal global { [29 x %struct.intr_info], [68 x i8] } { [29 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.216, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.217, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.218, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.219, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.220, i16 -1, i16 1 }, %struct.intr_info { i32 32, ptr @.str.221, i16 -1, i16 1 }, %struct.intr_info { i32 64, ptr @.str.222, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.223, i16 -1, i16 1 }, %struct.intr_info { i32 512, ptr @.str.224, i16 -1, i16 1 }, %struct.intr_info { i32 1024, ptr @.str.225, i16 -1, i16 1 }, %struct.intr_info { i32 2048, ptr @.str.226, i16 -1, i16 1 }, %struct.intr_info { i32 8192, ptr @.str.227, i16 -1, i16 1 }, %struct.intr_info { i32 16384, ptr @.str.228, i16 -1, i16 1 }, %struct.intr_info { i32 32768, ptr @.str.229, i16 -1, i16 1 }, %struct.intr_info { i32 65536, ptr @.str.230, i16 -1, i16 1 }, %struct.intr_info { i32 131072, ptr @.str.231, i16 -1, i16 1 }, %struct.intr_info { i32 262144, ptr @.str.232, i16 -1, i16 1 }, %struct.intr_info { i32 524288, ptr @.str.233, i16 -1, i16 1 }, %struct.intr_info { i32 1048576, ptr @.str.234, i16 -1, i16 1 }, %struct.intr_info { i32 2097152, ptr @.str.235, i16 -1, i16 1 }, %struct.intr_info { i32 4194304, ptr @.str.236, i16 -1, i16 1 }, %struct.intr_info { i32 8388608, ptr @.str.237, i16 -1, i16 1 }, %struct.intr_info { i32 16777216, ptr @.str.238, i16 -1, i16 1 }, %struct.intr_info { i32 33554432, ptr @.str.239, i16 -1, i16 1 }, %struct.intr_info { i32 67108864, ptr @.str.240, i16 -1, i16 1 }, %struct.intr_info { i32 134217728, ptr @.str.241, i16 -1, i16 1 }, %struct.intr_info { i32 268435456, ptr @.str.242, i16 -1, i16 1 }, %struct.intr_info { i32 536870912, ptr @.str.243, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [68 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIM reserved space access\00", [38 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIM illegal transaction\00", [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CIM illegal write\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIM illegal read\00", [47 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CIM illegal read BE\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CIM illegal write BE\00", [43 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIM single read from boot space\00", [32 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM single write to boot space\00", [33 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM block write to boot space\00", [34 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIM single read from flash space\00", [63 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIM single write to flash space\00", [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM block write to flash space\00", [33 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIM single EEPROM read\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIM single EEPROM write\00", [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIM block EEPROM read\00", [42 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIM block EEPROM write\00", [41 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIM single read from CTL space\00", [33 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM single write to CTL space\00", [34 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM block read from CTL space\00", [34 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIM block write to CTL space\00", [35 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIM single read from PL space\00", [34 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIM single write to PL space\00", [35 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIM block read from PL space\00", [35 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIM block write to PL space\00", [36 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIM request FIFO overwrite\00", [37 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIM response FIFO overwrite\00", [36 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CIM PIF timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CIM PIF MA timeout\00", [45 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_rx_intr_info = internal global { [2 x %struct.intr_info], [40 x i8] } { [2 x %struct.intr_info] [%struct.intr_info { i32 16777215, ptr @.str.244, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MPS Rx parity error\00", [44 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_tx_intr_info = internal global { [8 x %struct.intr_info], [32 x i8] } { [8 x %struct.intr_info] [%struct.intr_info { i32 15, ptr @.str.245, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.246, i16 -1, i16 1 }, %struct.intr_info { i32 480, ptr @.str.247, i16 -1, i16 1 }, %struct.intr_info { i32 7680, ptr @.str.248, i16 -1, i16 1 }, %struct.intr_info { i32 8192, ptr @.str.249, i16 -1, i16 1 }, %struct.intr_info { i32 16384, ptr @.str.250, i16 -1, i16 1 }, %struct.intr_info { i32 32768, ptr @.str.251, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPS Tx TP FIFO parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MPS Tx NC-SI FIFO parity error\00", [33 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MPS Tx data FIFO parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MPS Tx desc FIFO parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MPS Tx underflow\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPS Tx SOP/EOP error\00", [43 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPS Tx framing error\00", [43 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_trc_intr_info = internal global { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 15, ptr @.str.252, i16 -1, i16 1 }, %struct.intr_info { i32 240, ptr @.str.253, i16 -1, i16 1 }, %struct.intr_info { i32 256, ptr @.str.254, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPS TRC filter parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MPS TRC packet FIFO parity error\00", [63 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MPS TRC misc parity error\00", [38 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_stat_sram_intr_info = internal global { [2 x %struct.intr_info], [40 x i8] } { [2 x %struct.intr_info] [%struct.intr_info { i32 2097151, ptr @.str.255, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MPS statistics SRAM parity error\00", [63 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_stat_tx_intr_info = internal global { [2 x %struct.intr_info], [40 x i8] } { [2 x %struct.intr_info] [%struct.intr_info { i32 1048575, ptr @.str.256, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPS statistics Tx FIFO parity error\00", [60 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_stat_rx_intr_info = internal global { [2 x %struct.intr_info], [40 x i8] } { [2 x %struct.intr_info] [%struct.intr_info { i32 16777215, ptr @.str.257, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPS statistics Rx FIFO parity error\00", [60 x i8] zeroinitializer }, align 32
@csio_mps_intr_handler.mps_cls_intr_info = internal global { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 1, ptr @.str.258, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.259, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.260, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPS match SRAM parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MPS match TCAM parity error\00", [36 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MPS hash SRAM parity error\00", [37 x i8] zeroinitializer }, align 32
@csio_ncsi_intr_handler.ncsi_intr_info = internal global { [5 x %struct.intr_info], [36 x i8] } { [5 x %struct.intr_info] [%struct.intr_info { i32 256, ptr @.str.261, i16 -1, i16 1 }, %struct.intr_info { i32 128, ptr @.str.262, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.263, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.264, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NC-SI CIM parity error\00", [41 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NC-SI MPS parity error\00", [41 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NC-SI Tx FIFO parity error\00", [37 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NC-SI Rx FIFO parity error\00", [37 x i8] zeroinitializer }, align 32
@csio_pl_intr_handler.pl_intr_info = internal global { [3 x %struct.intr_info], [60 x i8] } { [3 x %struct.intr_info] [%struct.intr_info { i32 16, ptr @.str.265, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.266, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"T4 fatal parity error\00", [42 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PL VFID_MAP parity error\00", [39 x i8] zeroinitializer }, align 32
@csio_smb_intr_handler.smb_intr_info = internal global { [4 x %struct.intr_info], [48 x i8] } { [4 x %struct.intr_info] [%struct.intr_info { i32 2097152, ptr @.str.267, i16 -1, i16 1 }, %struct.intr_info { i32 1048576, ptr @.str.268, i16 -1, i16 1 }, %struct.intr_info { i32 524288, ptr @.str.269, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMB master Tx FIFO parity error\00", [32 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMB master Rx FIFO parity error\00", [32 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMB slave FIFO parity error\00", [36 x i8] zeroinitializer }, align 32
@csio_xgmac_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.2, i32 3568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XGMAC %d Tx FIFO parity error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_xgmac_intr_handler\00", [40 x i8] zeroinitializer }, align 32
@csio_xgmac_intr_handler._entry_ptr = internal global ptr @csio_xgmac_intr_handler._entry, section ".printk_index", align 4
@csio_xgmac_intr_handler._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.271, ptr @.str.2, i32 3570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XGMAC %d Rx FIFO parity error\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_xgmac_intr_handler._entry_ptr.274 = internal global ptr @csio_xgmac_intr_handler._entry.272, section ".printk_index", align 4
@csio_mem_intr_handler.name = internal constant { [3 x [5 x i8]], [17 x i8] } { [3 x [5 x i8]] [[5 x i8] c"EDC0\00", [5 x i8] c"EDC1\00", [5 x i8] c"MC\00\00\00"], [17 x i8] zeroinitializer }, align 32
@csio_mem_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.2, i32 3487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s FIFO parity error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_mem_intr_handler\00", [42 x i8] zeroinitializer }, align 32
@csio_mem_intr_handler._entry_ptr = internal global ptr @csio_mem_intr_handler._entry, section ".printk_index", align 4
@csio_mem_intr_handler._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.276, ptr @.str.2, i32 3493, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%u %s correctable ECC data error%s\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_mem_intr_handler._entry_ptr.279 = internal global ptr @csio_mem_intr_handler._entry.277, section ".printk_index", align 4
@.str.280 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@csio_mem_intr_handler._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.276, ptr @.str.2, i32 3496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s uncorrectable ECC data error\0A\00", [63 x i8] zeroinitializer }, align 32
@csio_mem_intr_handler._entry_ptr.284 = internal global ptr @csio_mem_intr_handler._entry.282, section ".printk_index", align 4
@csio_le_intr_handler.le_intr_info = internal global { [6 x %struct.intr_info], [56 x i8] } { [6 x %struct.intr_info] [%struct.intr_info { i32 32, ptr @.str.285, i16 -1, i16 0 }, %struct.intr_info { i32 16, ptr @.str.286, i16 -1, i16 0 }, %struct.intr_info { i32 64, ptr @.str.287, i16 -1, i16 1 }, %struct.intr_info { i32 32768, ptr @.str.288, i16 -1, i16 1 }, %struct.intr_info { i32 65536, ptr @.str.289, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LE LIP miss\00", [20 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LE 0 LIP error\00", [17 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LE parity error\00", [16 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LE unknown command\00", [45 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LE request queue parity error\00", [34 x i8] zeroinitializer }, align 32
@csio_le_intr_handler.t6_le_intr_info = internal global { [6 x %struct.intr_info], [56 x i8] } { [6 x %struct.intr_info] [%struct.intr_info { i32 2, ptr @.str.285, i16 -1, i16 0 }, %struct.intr_info { i32 4, ptr @.str.286, i16 -1, i16 0 }, %struct.intr_info { i32 8192, ptr @.str.287, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.288, i16 -1, i16 1 }, %struct.intr_info { i32 1024, ptr @.str.289, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@csio_tp_intr_handler.tp_intr_info = internal global { [3 x %struct.intr_info], [60 x i8] } { [3 x %struct.intr_info] [%struct.intr_info { i32 1073741823, ptr @.str.290, i16 -1, i16 1 }, %struct.intr_info { i32 1073741824, ptr @.str.291, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TP parity error\00", [16 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TP out of Tx pages\00", [45 x i8] zeroinitializer }, align 32
@csio_ma_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.293, ptr @.str.2, i32 3512, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MA parity error, parity status %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"csio_ma_intr_handler\00", [43 x i8] zeroinitializer }, align 32
@csio_ma_intr_handler._entry_ptr = internal global ptr @csio_ma_intr_handler._entry, section ".printk_index", align 4
@csio_ma_intr_handler._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.293, ptr @.str.2, i32 3517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"MA address wrap-around error by client %u to address %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@csio_ma_intr_handler._entry_ptr.296 = internal global ptr @csio_ma_intr_handler._entry.294, section ".printk_index", align 4
@csio_pmtx_intr_handler.pmtx_intr_info = internal global { [10 x %struct.intr_info], [40 x i8] } { [10 x %struct.intr_info] [%struct.intr_info { i32 -2147483648, ptr @.str.297, i16 -1, i16 1 }, %struct.intr_info { i32 1073741824, ptr @.str.298, i16 -1, i16 1 }, %struct.intr_info { i32 536870912, ptr @.str.299, i16 -1, i16 1 }, %struct.intr_info { i32 268435456, ptr @.str.300, i16 -1, i16 1 }, %struct.intr_info { i32 268435440, ptr @.str.301, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.302, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.303, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.304, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.305, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PMTX channel 0 pcmd too large\00", [34 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PMTX channel 1 pcmd too large\00", [34 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PMTX channel 2 pcmd too large\00", [34 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMTX 0-length pcmd\00", [45 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMTX framing error\00", [45 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMTX oespi parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PMTX db_options parity error\00", [35 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMTX icspi parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PMTX c_pcmd parity error\00", [39 x i8] zeroinitializer }, align 32
@csio_pmrx_intr_handler.pmrx_intr_info = internal global { [7 x %struct.intr_info], [44 x i8] } { [7 x %struct.intr_info] [%struct.intr_info { i32 4194304, ptr @.str.306, i16 -1, i16 1 }, %struct.intr_info { i32 4194288, ptr @.str.307, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.308, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.309, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.310, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.311, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMRX 0-length pcmd\00", [45 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PMRX framing error\00", [45 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMRX ocspi parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PMRX db_options parity error\00", [35 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PMRX iespi parity error\00", [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PMRX e_pcmd parity error\00", [39 x i8] zeroinitializer }, align 32
@csio_ulprx_intr_handler.ulprx_intr_info = internal global { [3 x %struct.intr_info], [60 x i8] } { [3 x %struct.intr_info] [%struct.intr_info { i32 25165824, ptr @.str.312, i16 -1, i16 1 }, %struct.intr_info { i32 8388607, ptr @.str.313, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ULPRX context error\00", [44 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ULPRX parity error\00", [45 x i8] zeroinitializer }, align 32
@csio_cplsw_intr_handler.cplsw_intr_info = internal global { [7 x %struct.intr_info], [44 x i8] } { [7 x %struct.intr_info] [%struct.intr_info { i32 32, ptr @.str.314, i16 -1, i16 1 }, %struct.intr_info { i32 16, ptr @.str.315, i16 -1, i16 1 }, %struct.intr_info { i32 8, ptr @.str.316, i16 -1, i16 1 }, %struct.intr_info { i32 4, ptr @.str.317, i16 -1, i16 1 }, %struct.intr_info { i32 2, ptr @.str.318, i16 -1, i16 1 }, %struct.intr_info { i32 1, ptr @.str.319, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPLSW CIM op_map parity error\00", [34 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CPLSW CIM overflow\00", [45 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CPLSW TP framing error\00", [41 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPLSW SGE framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CPLSW CIM framing error\00", [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPLSW no-switch error\00", [42 x i8] zeroinitializer }, align 32
@csio_sge_intr_handler.sge_intr_info = internal global { [14 x %struct.intr_info], [56 x i8] } { [14 x %struct.intr_info] [%struct.intr_info { i32 4194304, ptr @.str.320, i16 -1, i16 1 }, %struct.intr_info { i32 2097152, ptr @.str.321, i16 -1, i16 0 }, %struct.intr_info { i32 524288, ptr @.str.322, i16 -1, i16 0 }, %struct.intr_info { i32 262144, ptr @.str.323, i16 -1, i16 0 }, %struct.intr_info { i32 196608, ptr @.str.324, i16 -1, i16 0 }, %struct.intr_info { i32 32768, ptr @.str.325, i16 -1, i16 0 }, %struct.intr_info { i32 16384, ptr @.str.326, i16 -1, i16 0 }, %struct.intr_info { i32 8192, ptr @.str.327, i16 -1, i16 0 }, %struct.intr_info { i32 4096, ptr @.str.328, i16 -1, i16 0 }, %struct.intr_info { i32 1024, ptr @.str.329, i16 -1, i16 0 }, %struct.intr_info { i32 512, ptr @.str.330, i16 -1, i16 0 }, %struct.intr_info { i32 32, ptr @.str.331, i16 -1, i16 0 }, %struct.intr_info { i32 16, ptr @.str.332, i16 -1, i16 0 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SGE received CPL exceeding IQE size\00", [60 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SGE GTS CIDX increment too large\00", [63 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SGE received 0-length CPL\00", [38 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SGE doorbell dropped\00", [43 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SGE IQID > 1023 received CPL for FL\00", [60 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SGE DBP 3 pidx increment too large\00", [61 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SGE DBP 2 pidx increment too large\00", [61 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SGE DBP 1 pidx increment too large\00", [61 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SGE DBP 0 pidx increment too large\00", [61 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SGE too many priority ingress contexts\00", [57 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SGE too many priority egress contexts\00", [58 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SGE illegal ingress QID\00", [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SGE illegal egress QID\00", [41 x i8] zeroinitializer }, align 32
@csio_sge_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str.2, i32 3190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SGE parity error (%#llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_sge_intr_handler\00", [42 x i8] zeroinitializer }, align 32
@csio_sge_intr_handler._entry_ptr = internal global ptr @csio_sge_intr_handler._entry, section ".printk_index", align 4
@csio_ulptx_intr_handler.ulptx_intr_info = internal global { [6 x %struct.intr_info], [56 x i8] } { [6 x %struct.intr_info] [%struct.intr_info { i32 -2147483648, ptr @.str.335, i16 -1, i16 0 }, %struct.intr_info { i32 1073741824, ptr @.str.336, i16 -1, i16 0 }, %struct.intr_info { i32 536870912, ptr @.str.337, i16 -1, i16 0 }, %struct.intr_info { i32 268435456, ptr @.str.338, i16 -1, i16 0 }, %struct.intr_info { i32 268435455, ptr @.str.339, i16 -1, i16 1 }, %struct.intr_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ULPTX channel 3 PBL out of bounds\00", [62 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ULPTX channel 2 PBL out of bounds\00", [62 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ULPTX channel 1 PBL out of bounds\00", [62 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ULPTX channel 0 PBL out of bounds\00", [62 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ULPTX parity error\00", [45 x i8] zeroinitializer }, align 32
@csio_process_fwevtq_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.341, ptr @.str.2, i32 3960, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected CPL %#x on FW event queue\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio_process_fwevtq_entry\00", [38 x i8] zeroinitializer }, align 32
@csio_process_fwevtq_entry._entry_ptr = internal global ptr @csio_process_fwevtq_entry._entry, section ".printk_index", align 4
@csio_enqueue_evt_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.342, ptr @.str.2, i32 3839, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_enqueue_evt_lock\00", [42 x i8] zeroinitializer }, align 32
@csio_enqueue_evt_lock._entry_ptr = internal global ptr @csio_enqueue_evt_lock._entry, section ".printk_index", align 4
@csio_t5_fcoe_adapters = internal constant { [22 x %struct.csio_adap_desc], [256 x i8] } { [22 x %struct.csio_adap_desc] [%struct.csio_adap_desc { [16 x i8] c"T580-Dbg 10G\00\00\00\00", [32 x i8] c"Chelsio T580-Dbg 10G [FCoE]\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-CR 10G\00\00\00\00\00", [32 x i8] c"Chelsio T520-CR 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T522-CR 10G/1G\00\00", [32 x i8] c"Chelsio T522-CR 10G/1G [FCoE]\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T540-CR 10G\00\00\00\00\00", [32 x i8] c"Chelsio T540-CR 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-BCH 10G\00\00\00\00", [32 x i8] c"Chelsio T520-BCH 10G [FCoE]\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T540-BCH 10G\00\00\00\00", [32 x i8] c"Chelsio T540-BCH 10G [FCoE]\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T540-CH 10G\00\00\00\00\00", [32 x i8] c"Chelsio T540-CH 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-SO 10G\00\00\00\00\00", [32 x i8] c"Chelsio T520-SO 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-CX4 10G\00\00\00\00", [32 x i8] c"Chelsio T520-CX4 10G [FCoE]\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-BT 10G\00\00\00\00\00", [32 x i8] c"Chelsio T520-BT 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T504-BT 1G\00\00\00\00\00\00", [32 x i8] c"Chelsio T504-BT 1G [FCoE]\00\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"B520-SR 10G\00\00\00\00\00", [32 x i8] c"Chelsio B520-SR 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"B504-BT 1G\00\00\00\00\00\00", [32 x i8] c"Chelsio B504-BT 1G [FCoE]\00\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T580-CR 10G\00\00\00\00\00", [32 x i8] c"Chelsio T580-CR 10G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T540-LP-CR 10G\00\00", [32 x i8] c"Chelsio T540-LP-CR 10G [FCoE]\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"AMSTERDAM 10G\00\00\00", [32 x i8] c"Chelsio AMSTERDAM 10G [FCoE]\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T580-LP-CR 40G\00\00", [32 x i8] c"Chelsio T580-LP-CR 40G [FCoE]\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T520-LL-CR 10G\00\00", [32 x i8] c"Chelsio T520-LL-CR 10G [FCoE]\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T560-CR 40G\00\00\00\00\00", [32 x i8] c"Chelsio T560-CR 40G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T580-CR 40G\00\00\00\00\00", [32 x i8] c"Chelsio T580-CR 40G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T580-SO 40G\00\00\00\00\00", [32 x i8] c"Chelsio T580-SO 40G [FCoE]\00\00\00\00\00\00" }, %struct.csio_adap_desc { [16 x i8] c"T502-BT 1G\00\00\00\00\00\00", [32 x i8] c"Chelsio T502-BT 1G [FCoE]\00\00\00\00\00\00\00" }], [256 x i8] zeroinitializer }, align 32
@__const.csio_hw_set_description.tempName = private unnamed_addr constant [32 x i8] c"Chelsio FCoE Controller\00\00\00\00\00\00\00\00\00", align 1
@csio_mgmtm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.343 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&mgmtm->mgmt_timer)\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 9, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.344 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.345 = internal global [5 x i64] [i64 3, i64 8, i64 192, i64 224, i64 225]
@__sancov_gen_cov_switch_values.346 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 224]
@__sancov_gen_cov_switch_values.347 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 9, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.348 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.349 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 157, i64 194, i64 239]
@__sancov_gen_cov_switch_values.350 = internal global [11 x i64] [i64 9, i64 8, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.351 = internal global [4 x i64] [i64 2, i64 8, i64 22, i64 23]
@__sancov_gen_cov_switch_values.352 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.353 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.354 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 4, i64 5, i64 6]
@___asan_gen_.357 = private unnamed_addr constant [15 x i8] c"csio_dbg_level\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 50, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant [15 x i8] c"csio_port_mask\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 51, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant [9 x i8] c"csio_msi\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 57, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2767, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3125, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3128, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3795, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4026, i32 6 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4043, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4348, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4354, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4395, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant [8 x i8] c"dev_num\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 60, i32 12 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2621, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2627, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2637, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2646, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2656, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1890, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1898, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1806, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1822, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1831, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1846, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1854, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2496, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2512, i32 31 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2547, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2558, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2563, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 899, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 861, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 872, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 622, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 940, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 946, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1030, i32 21 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1033, i32 21 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1036, i32 21 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1044, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1047, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 352, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 357, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 361, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 362, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 229, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2423, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2437, i32 17 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2439, i32 17 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2442, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant [14 x i8] c"fw_info_array\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2273, i32 23 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2276, i32 14 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2289, i32 14 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2332, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2358, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2376, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2251, i32 12 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2256, i32 12 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2263, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1202, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 680, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 685, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 690, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 695, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 700, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 709, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 722, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 757, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 613, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 568, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2464, i32 32 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1947, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1955, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2084, i32 17 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2141, i32 17 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2171, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2206, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2218, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1985, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2025, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2026, i32 22 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 2026, i32 30 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1151, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1156, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1389, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1397, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1459, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1465, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1485, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1491, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1125, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1132, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 1077, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3056, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant [14 x i8] c"cim_intr_info\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3213, i32 26 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3214, i32 20 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3215, i32 19 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3216, i32 19 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3217, i32 19 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3218, i32 21 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3219, i32 24 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3220, i32 25 }
@___asan_gen_.993 = private unnamed_addr constant [16 x i8] c"cim_upintr_info\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3223, i32 26 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3224, i32 21 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3225, i32 20 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3226, i32 17 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3227, i32 17 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3228, i32 19 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3229, i32 19 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3230, i32 21 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3231, i32 21 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3232, i32 21 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3233, i32 22 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3234, i32 22 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3235, i32 22 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3236, i32 23 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3237, i32 23 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3238, i32 23 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3239, i32 23 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3240, i32 20 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3241, i32 20 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3242, i32 20 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3243, i32 20 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3244, i32 19 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3245, i32 19 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3246, i32 19 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3247, i32 19 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3248, i32 24 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3249, i32 24 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3250, i32 19 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3251, i32 21 }
@___asan_gen_.1080 = private unnamed_addr constant [17 x i8] c"mps_rx_intr_info\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3400, i32 26 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3401, i32 15 }
@___asan_gen_.1086 = private unnamed_addr constant [17 x i8] c"mps_tx_intr_info\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3404, i32 26 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3405, i32 25 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3406, i32 17 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3407, i32 33 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3409, i32 33 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3411, i32 15 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3412, i32 17 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3413, i32 15 }
@___asan_gen_.1110 = private unnamed_addr constant [18 x i8] c"mps_trc_intr_info\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3416, i32 26 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3417, i32 27 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3418, i32 27 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3420, i32 17 }
@___asan_gen_.1122 = private unnamed_addr constant [24 x i8] c"mps_stat_sram_intr_info\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3423, i32 26 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3424, i32 15 }
@___asan_gen_.1128 = private unnamed_addr constant [22 x i8] c"mps_stat_tx_intr_info\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3427, i32 26 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3428, i32 14 }
@___asan_gen_.1134 = private unnamed_addr constant [22 x i8] c"mps_stat_rx_intr_info\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3431, i32 26 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3432, i32 15 }
@___asan_gen_.1140 = private unnamed_addr constant [18 x i8] c"mps_cls_intr_info\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3435, i32 26 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3436, i32 18 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3437, i32 18 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3438, i32 17 }
@___asan_gen_.1152 = private unnamed_addr constant [15 x i8] c"ncsi_intr_info\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3544, i32 26 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3545, i32 24 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3546, i32 24 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3547, i32 24 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3548, i32 24 }
@___asan_gen_.1167 = private unnamed_addr constant [13 x i8] c"pl_intr_info\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3580, i32 26 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3581, i32 18 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3582, i32 17 }
@___asan_gen_.1176 = private unnamed_addr constant [14 x i8] c"smb_intr_info\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3528, i32 26 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3529, i32 24 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3530, i32 24 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3531, i32 22 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3568, i32 3 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3570, i32 3 }
@___asan_gen_.1203 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3473, i32 20 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3487, i32 3 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3492, i32 3 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3496, i32 3 }
@___asan_gen_.1233 = private unnamed_addr constant [13 x i8] c"le_intr_info\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3371, i32 26 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3372, i32 16 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3373, i32 13 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3374, i32 18 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3375, i32 19 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3376, i32 19 }
@___asan_gen_.1251 = private unnamed_addr constant [16 x i8] c"t6_le_intr_info\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3380, i32 26 }
@___asan_gen_.1254 = private unnamed_addr constant [13 x i8] c"tp_intr_info\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3143, i32 26 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3144, i32 17 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3145, i32 23 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3511, i32 3 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3515, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant [15 x i8] c"pmtx_intr_info\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3307, i32 26 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3308, i32 23 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3309, i32 23 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3310, i32 23 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3311, i32 25 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3312, i32 16 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3313, i32 24 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3314, i32 29 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3316, i32 24 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3317, i32 30 }
@___asan_gen_.1308 = private unnamed_addr constant [15 x i8] c"pmrx_intr_info\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3330, i32 26 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3331, i32 25 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3332, i32 15 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3333, i32 24 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3334, i32 29 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3336, i32 24 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3337, i32 30 }
@___asan_gen_.1329 = private unnamed_addr constant [16 x i8] c"ulprx_intr_info\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3270, i32 26 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3271, i32 16 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3272, i32 15 }
@___asan_gen_.1338 = private unnamed_addr constant [16 x i8] c"cplsw_intr_info\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3350, i32 26 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3351, i32 24 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3352, i32 23 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3353, i32 25 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3354, i32 26 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3355, i32 26 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3356, i32 26 }
@___asan_gen_.1359 = private unnamed_addr constant [14 x i8] c"sge_intr_info\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3160, i32 26 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3162, i32 5 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3164, i32 5 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3165, i32 25 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3166, i32 23 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3168, i32 5 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3169, i32 25 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3171, i32 25 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3173, i32 25 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3175, i32 25 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3178, i32 5 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3180, i32 5 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3181, i32 25 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3182, i32 24 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3189, i32 3 }
@___asan_gen_.1410 = private unnamed_addr constant [16 x i8] c"ulptx_intr_info\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3285, i32 26 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3286, i32 26 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3288, i32 26 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3290, i32 26 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3292, i32 26 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3294, i32 16 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3960, i32 3 }
@___asan_gen_.1437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 3838, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant [22 x i8] c"csio_t5_fcoe_adapters\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 63, i32 36 }
@___asan_gen_.1446 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1449 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1450 = private constant [35 x i8] c"../drivers/scsi/csiostor/csio_hw.c\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1450, i32 4190, i32 2 }
@llvm.compiler.used = appending global [447 x ptr] [ptr @csio_config_device_caps._entry, ptr @csio_config_device_caps._entry.191, ptr @csio_config_device_caps._entry.194, ptr @csio_config_device_caps._entry.197, ptr @csio_config_device_caps._entry_ptr, ptr @csio_config_device_caps._entry_ptr.193, ptr @csio_config_device_caps._entry_ptr.196, ptr @csio_config_device_caps._entry_ptr.199, ptr @csio_do_bye._entry, ptr @csio_do_bye._entry_ptr, ptr @csio_do_hello._entry, ptr @csio_do_hello._entry.79, ptr @csio_do_hello._entry.86, ptr @csio_do_hello._entry.89, ptr @csio_do_hello._entry_ptr, ptr @csio_do_hello._entry_ptr.81, ptr @csio_do_hello._entry_ptr.88, ptr @csio_do_hello._entry_ptr.91, ptr @csio_do_reset._entry, ptr @csio_do_reset._entry.202, ptr @csio_do_reset._entry_ptr, ptr @csio_do_reset._entry_ptr.204, ptr @csio_enable_ports._entry, ptr @csio_enable_ports._entry.45, ptr @csio_enable_ports._entry.48, ptr @csio_enable_ports._entry.51, ptr @csio_enable_ports._entry.54, ptr @csio_enable_ports._entry_ptr, ptr @csio_enable_ports._entry_ptr.47, ptr @csio_enable_ports._entry_ptr.50, ptr @csio_enable_ports._entry_ptr.53, ptr @csio_enable_ports._entry_ptr.56, ptr @csio_enqueue_evt._entry, ptr @csio_enqueue_evt._entry_ptr, ptr @csio_enqueue_evt_lock._entry, ptr @csio_enqueue_evt_lock._entry_ptr, ptr @csio_evtq_worker._entry, ptr @csio_evtq_worker._entry.17, ptr @csio_evtq_worker._entry_ptr, ptr @csio_evtq_worker._entry_ptr.19, ptr @csio_get_device_params._entry, ptr @csio_get_device_params._entry.187, ptr @csio_get_device_params._entry_ptr, ptr @csio_get_device_params._entry_ptr.188, ptr @csio_get_fcoe_resinfo._entry, ptr @csio_get_fcoe_resinfo._entry.40, ptr @csio_get_fcoe_resinfo._entry_ptr, ptr @csio_get_fcoe_resinfo._entry_ptr.42, ptr @csio_handle_intr_status._entry, ptr @csio_handle_intr_status._entry.7, ptr @csio_handle_intr_status._entry_ptr, ptr @csio_handle_intr_status._entry_ptr.10, ptr @csio_hw_check_fwconfig._entry, ptr @csio_hw_check_fwconfig._entry.161, ptr @csio_hw_check_fwconfig._entry_ptr, ptr @csio_hw_check_fwconfig._entry_ptr.163, ptr @csio_hw_configure._entry, ptr @csio_hw_configure._entry.60, ptr @csio_hw_configure._entry.63, ptr @csio_hw_configure._entry.66, ptr @csio_hw_configure._entry_ptr, ptr @csio_hw_configure._entry_ptr.62, ptr @csio_hw_configure._entry_ptr.65, ptr @csio_hw_configure._entry_ptr.67, ptr @csio_hw_dev_ready._entry, ptr @csio_hw_dev_ready._entry_ptr, ptr @csio_hw_fatal_err._entry, ptr @csio_hw_fatal_err._entry_ptr, ptr @csio_hw_flash_config._entry, ptr @csio_hw_flash_config._entry.176, ptr @csio_hw_flash_config._entry_ptr, ptr @csio_hw_flash_config._entry_ptr.178, ptr @csio_hw_flash_erase_sectors._entry, ptr @csio_hw_flash_erase_sectors._entry_ptr, ptr @csio_hw_flash_fw._entry, ptr @csio_hw_flash_fw._entry.112, ptr @csio_hw_flash_fw._entry_ptr, ptr @csio_hw_flash_fw._entry_ptr.114, ptr @csio_hw_fw_dload._entry, ptr @csio_hw_fw_dload._entry.133, ptr @csio_hw_fw_dload._entry.136, ptr @csio_hw_fw_dload._entry.139, ptr @csio_hw_fw_dload._entry.142, ptr @csio_hw_fw_dload._entry.145, ptr @csio_hw_fw_dload._entry.148, ptr @csio_hw_fw_dload._entry.151, ptr @csio_hw_fw_dload._entry_ptr, ptr @csio_hw_fw_dload._entry_ptr.135, ptr @csio_hw_fw_dload._entry_ptr.138, ptr @csio_hw_fw_dload._entry_ptr.141, ptr @csio_hw_fw_dload._entry_ptr.144, ptr @csio_hw_fw_dload._entry_ptr.147, ptr @csio_hw_fw_dload._entry_ptr.150, ptr @csio_hw_fw_dload._entry_ptr.153, ptr @csio_hw_fw_halt._entry, ptr @csio_hw_fw_halt._entry_ptr, ptr @csio_hw_get_flash_params._entry, ptr @csio_hw_get_flash_params._entry.72, ptr @csio_hw_get_flash_params._entry_ptr, ptr @csio_hw_get_flash_params._entry_ptr.74, ptr @csio_hw_get_vpd_params._entry, ptr @csio_hw_get_vpd_params._entry.103, ptr @csio_hw_get_vpd_params._entry.95, ptr @csio_hw_get_vpd_params._entry.99, ptr @csio_hw_get_vpd_params._entry_ptr, ptr @csio_hw_get_vpd_params._entry_ptr.101, ptr @csio_hw_get_vpd_params._entry_ptr.105, ptr @csio_hw_get_vpd_params._entry_ptr.97, ptr @csio_hw_init._entry, ptr @csio_hw_init._entry_ptr, ptr @csio_hw_initialize._entry, ptr @csio_hw_initialize._entry.26, ptr @csio_hw_initialize._entry.29, ptr @csio_hw_initialize._entry.32, ptr @csio_hw_initialize._entry.35, ptr @csio_hw_initialize._entry_ptr, ptr @csio_hw_initialize._entry_ptr.28, ptr @csio_hw_initialize._entry_ptr.31, ptr @csio_hw_initialize._entry_ptr.34, ptr @csio_hw_initialize._entry_ptr.37, ptr @csio_hw_prep_fw._entry, ptr @csio_hw_prep_fw._entry.119, ptr @csio_hw_prep_fw._entry.122, ptr @csio_hw_prep_fw._entry_ptr, ptr @csio_hw_prep_fw._entry_ptr.121, ptr @csio_hw_prep_fw._entry_ptr.124, ptr @csio_hw_print_fw_version._entry, ptr @csio_hw_print_fw_version._entry_ptr, ptr @csio_hw_seeprom_read._entry, ptr @csio_hw_seeprom_read._entry_ptr, ptr @csio_hw_use_fwconfig._entry, ptr @csio_hw_use_fwconfig._entry.168, ptr @csio_hw_use_fwconfig._entry.171, ptr @csio_hw_use_fwconfig._entry_ptr, ptr @csio_hw_use_fwconfig._entry_ptr.170, ptr @csio_hw_use_fwconfig._entry_ptr.173, ptr @csio_hw_validate_caps._entry, ptr @csio_hw_validate_caps._entry.183, ptr @csio_hw_validate_caps._entry_ptr, ptr @csio_hw_validate_caps._entry_ptr.185, ptr @csio_hw_write_flash._entry, ptr @csio_hw_write_flash._entry_ptr, ptr @csio_hws_removing._entry, ptr @csio_hws_removing._entry_ptr, ptr @csio_ma_intr_handler._entry, ptr @csio_ma_intr_handler._entry.294, ptr @csio_ma_intr_handler._entry_ptr, ptr @csio_ma_intr_handler._entry_ptr.296, ptr @csio_mem_intr_handler._entry, ptr @csio_mem_intr_handler._entry.277, ptr @csio_mem_intr_handler._entry.282, ptr @csio_mem_intr_handler._entry_ptr, ptr @csio_mem_intr_handler._entry_ptr.279, ptr @csio_mem_intr_handler._entry_ptr.284, ptr @csio_process_fwevtq_entry._entry, ptr @csio_process_fwevtq_entry._entry_ptr, ptr @csio_sge_intr_handler._entry, ptr @csio_sge_intr_handler._entry_ptr, ptr @csio_should_install_fs_fw._entry, ptr @csio_should_install_fs_fw._entry_ptr, ptr @csio_xgmac_intr_handler._entry, ptr @csio_xgmac_intr_handler._entry.272, ptr @csio_xgmac_intr_handler._entry_ptr, ptr @csio_xgmac_intr_handler._entry_ptr.274, ptr @csio_dbg_level, ptr @csio_port_mask, ptr @csio_msi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @csio_hw_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dev_num, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @fw_info_array, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @csio_cim_intr_handler.cim_intr_info, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @csio_cim_intr_handler.cim_upintr_info, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @csio_mps_intr_handler.mps_rx_intr_info, ptr @.str.244, ptr @csio_mps_intr_handler.mps_tx_intr_info, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @csio_mps_intr_handler.mps_trc_intr_info, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @csio_mps_intr_handler.mps_stat_sram_intr_info, ptr @.str.255, ptr @csio_mps_intr_handler.mps_stat_tx_intr_info, ptr @.str.256, ptr @csio_mps_intr_handler.mps_stat_rx_intr_info, ptr @.str.257, ptr @csio_mps_intr_handler.mps_cls_intr_info, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @csio_ncsi_intr_handler.ncsi_intr_info, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @csio_pl_intr_handler.pl_intr_info, ptr @.str.265, ptr @.str.266, ptr @csio_smb_intr_handler.smb_intr_info, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.273, ptr @csio_mem_intr_handler.name, ptr @.str.275, ptr @.str.276, ptr @.str.278, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @csio_le_intr_handler.le_intr_info, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @csio_le_intr_handler.t6_le_intr_info, ptr @csio_tp_intr_handler.tp_intr_info, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.295, ptr @csio_pmtx_intr_handler.pmtx_intr_info, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @csio_pmrx_intr_handler.pmrx_intr_info, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @csio_ulprx_intr_handler.ulprx_intr_info, ptr @.str.312, ptr @.str.313, ptr @csio_cplsw_intr_handler.cplsw_intr_info, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @csio_sge_intr_handler.sge_intr_info, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @csio_ulptx_intr_handler.ulptx_intr_info, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @csio_t5_fcoe_adapters, ptr @csio_mgmtm_init.__key, ptr @.str.343], section "llvm.metadata"
@0 = internal global [365 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_port_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fatal_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_intr_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_handle_intr_status._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enqueue_evt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_evtq_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_evtq_worker._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_initialize._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_initialize._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_initialize._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_initialize._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_fcoe_resinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_fcoe_resinfo._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enable_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enable_ports._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enable_ports._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enable_ports._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enable_ports._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_configure._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_configure._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_configure._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_dev_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_flash_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_flash_params._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_print_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_hello._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_hello._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_hello._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_hello._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_vpd_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_vpd_params._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_vpd_params._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_get_vpd_params._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_seeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_flash_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_flash_fw._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_info_array to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_prep_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_prep_fw._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_prep_fw._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_should_install_fs_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_fw_dload._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_flash_erase_sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_write_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_check_fwconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_check_fwconfig._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_use_fwconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_use_fwconfig._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_use_fwconfig._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_flash_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_flash_config._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_validate_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hw_validate_caps._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_device_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_get_device_params._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_device_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_device_caps._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_device_caps._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_config_device_caps._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_reset._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_do_bye._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_hws_removing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_cim_intr_handler.cim_intr_info to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_cim_intr_handler.cim_upintr_info to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_rx_intr_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_tx_intr_info to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_trc_intr_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_stat_sram_intr_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_stat_tx_intr_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_stat_rx_intr_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mps_intr_handler.mps_cls_intr_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ncsi_intr_handler.ncsi_intr_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pl_intr_handler.pl_intr_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_smb_intr_handler.smb_intr_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_xgmac_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_xgmac_intr_handler._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mem_intr_handler.name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mem_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mem_intr_handler._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mem_intr_handler._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_le_intr_handler.le_intr_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_le_intr_handler.t6_le_intr_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_tp_intr_handler.tp_intr_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ma_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ma_intr_handler._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pmtx_intr_handler.pmtx_intr_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_pmrx_intr_handler.pmrx_intr_info to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ulprx_intr_handler.ulprx_intr_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_cplsw_intr_handler.cplsw_intr_info to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_sge_intr_handler.sge_intr_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_sge_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_ulptx_intr_handler.ulptx_intr_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_process_fwevtq_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_enqueue_evt_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_t5_fcoe_adapters to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mgmtm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_is_hw_ready(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i.i, align 4
  %cmp.i = icmp eq ptr %1, @csio_hws_ready
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_ready(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  %cbfn_q.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %evtflag = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %evtflag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %evt, ptr %evtflag, align 8
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %1 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %3 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %sw.default [
    i32 9, label %entry.sw.bb_crit_edge
    i32 11, label %entry.sw.bb_crit_edge42
    i32 13, label %entry.sw.bb_crit_edge43
    i32 12, label %entry.sw.bb_crit_edge44
    i32 5, label %entry.sw.bb_crit_edge45
    i32 4, label %sw.bb8
  ]

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_hws_quiescing, ptr %sm_state.i, align 4
  %8 = add i32 %evt, -5
  %switch.and = and i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %scsim5 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2
  %call6 = tail call i32 @csio_scsim_cleanup_io(ptr noundef %scsim5, i1 noundef zeroext %switch.selectcmp) #12
  tail call void @csio_hw_intr_disable(ptr noundef %hw)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbfn_q.i) #12
  %9 = getelementptr inbounds %struct.list_head, ptr %cbfn_q.i, i32 0, i32 1
  %10 = ptrtoint ptr %cbfn_q.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cbfn_q.i, ptr %cbfn_q.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cbfn_q.i, ptr %9, align 4
  call void @csio_mb_cancel_all(ptr noundef %hw, ptr noundef nonnull %cbfn_q.i) #12
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  call void @csio_mb_completions(ptr noundef %hw, ptr noundef nonnull %cbfn_q.i) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbfn_q.i) #12
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %13, 128
  store i32 %or.i, ptr %flags.i, align 4
  call void @csio_notify_lnodes(ptr noundef %hw, i32 noundef 2) #12
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not6.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not6.i, label %sw.bb.csio_evtq_flush.exit_crit_edge, label %sw.bb.while.body.i_crit_edge

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

sw.bb.csio_evtq_flush.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_evtq_flush.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %count.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 30, %sw.bb.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.07.i, -1
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  call void @msleep(i32 noundef 2000) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %while.body.i.csio_evtq_flush.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.csio_evtq_flush.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_evtq_flush.exit

csio_evtq_flush.exit:                             ; preds = %while.body.i.csio_evtq_flush.exit_crit_edge, %sw.bb.csio_evtq_flush.exit_crit_edge
  %mgmtm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12
  %18 = ptrtoint ptr %mgmtm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgmtm, align 4
  %active_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 4
  %20 = ptrtoint ptr %active_q.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %active_q.i, align 4
  %cmp.i28.i = icmp eq ptr %21, %active_q.i
  br i1 %cmp.i28.i, label %csio_evtq_flush.exit.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i36

csio_evtq_flush.exit.for.cond.preheader.i_crit_edge: ; preds = %csio_evtq_flush.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

while.body.lr.ph.i36:                             ; preds = %csio_evtq_flush.exit
  %lock.i35 = getelementptr inbounds %struct.csio_hw, ptr %19, i32 0, i32 1
  br label %while.body.i39

for.cond.preheader.i:                             ; preds = %while.body.i39.for.cond.preheader.i_crit_edge, %csio_evtq_flush.exit.for.cond.preheader.i_crit_edge
  %22 = ptrtoint ptr %active_q.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.030.i = load ptr, ptr %active_q.i, align 4
  %cmp.i26.not31.i = icmp eq ptr %tmp.030.i, %active_q.i
  br i1 %cmp.i26.not31.i, label %for.cond.preheader.i.csio_mgmtm_cleanup.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.csio_mgmtm_cleanup.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_mgmtm_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %n_active.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 9, i32 6
  br label %for.body.i

while.body.i39:                                   ; preds = %while.body.i39.while.body.i39_crit_edge, %while.body.lr.ph.i36
  %count.029.i = phi i32 [ 30, %while.body.lr.ph.i36 ], [ %dec.i37, %while.body.i39.while.body.i39_crit_edge ]
  %dec.i37 = add nsw i32 %count.029.i, -1
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i35) #12
  call void @msleep(i32 noundef 2000) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock.i35) #12
  %23 = ptrtoint ptr %active_q.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %active_q.i, align 4
  %cmp.i.i = icmp eq ptr %24, %active_q.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i37)
  %tobool2.not.i = icmp eq i32 %dec.i37, 0
  %or.cond.i38 = select i1 %cmp.i.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i38, label %while.body.i39.for.cond.preheader.i_crit_edge, label %while.body.i39.while.body.i39_crit_edge

while.body.i39.while.body.i39_crit_edge:          ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i39

while.body.i39.for.cond.preheader.i_crit_edge:    ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.032.i = phi ptr [ %tmp.030.i, %for.body.lr.ph.i ], [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.032.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.032.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %29 = ptrtoint ptr %tmp.032.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tmp.032.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %33 = ptrtoint ptr %tmp.032.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %tmp.032.i, ptr %tmp.032.i, align 4
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tmp.032.i, ptr %prev.i, align 4
  %35 = ptrtoint ptr %n_active.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_active.i, align 4
  %dec8.i = add i32 %36, -1
  store i32 %dec8.i, ptr %n_active.i, align 4
  %io_cbfn.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.032.i, i32 0, i32 11
  %37 = ptrtoint ptr %io_cbfn.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_cbfn.i, align 64
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %list_del_init.exit.i.for.inc.i_crit_edge, label %if.then.i

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status.i = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.032.i, i32 0, i32 7
  %39 = ptrtoint ptr %wr_status.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -110, ptr %wr_status.i, align 4
  %40 = ptrtoint ptr %mgmtm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mgmtm, align 4
  call void %38(ptr noundef %41, ptr noundef %tmp.032.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %list_del_init.exit.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.0.i = load ptr, ptr %26, align 4
  %cmp.i26.not.i = icmp eq ptr %tmp.0.i, %active_q.i
  br i1 %cmp.i26.not.i, label %for.inc.i.csio_mgmtm_cleanup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.csio_mgmtm_cleanup.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_mgmtm_cleanup.exit

csio_mgmtm_cleanup.exit:                          ; preds = %for.inc.i.csio_mgmtm_cleanup.exit_crit_edge, %for.cond.preheader.i.csio_mgmtm_cleanup.exit_crit_edge
  %43 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sm_state.i, align 4
  call void %44(ptr noundef %hw, i32 noundef 8) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i41 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %45 = ptrtoint ptr %sm_state.i41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @csio_hws_uninit, ptr %sm_state.i41, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %46 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_evt_unexp, align 4
  %inc11 = add i32 %47, 1
  store i32 %inc11, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %csio_mgmtm_cleanup.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_is_hw_removing(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i.i, align 4
  %cmp.i = icmp eq ptr %1, @csio_hws_removing
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_removing(ptr nocapture noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %evt)
  %cond = icmp eq i32 %evt, 9
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.207) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !699
  tail call void @arm_heavy_mb() #12
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 103464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #12, !srcloc !700
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end
  %__ms.016 = phi i32 [ 2000, %do.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.016, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #12
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %12 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_evt_unexp, align 4
  %inc6 = add i32 %13, 1
  store i32 %inc6, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_wait_op_done_val(ptr nocapture noundef readonly %hw, i32 noundef %reg, i32 noundef %mask, i32 noundef %polarity, i32 noundef %attempts, i32 noundef %delay, ptr noundef writeonly %valp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr23 = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #12, !srcloc !701
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %and24 = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25 = icmp ne i32 %and24, 0
  %lnot.ext26 = zext i1 %tobool25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lnot.ext26, i32 %polarity)
  %cmp27 = icmp eq i32 %lnot.ext26, %polarity
  br i1 %cmp27, label %entry.if.then_crit_edge, label %if.end5.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.lr.ph:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool9.not = icmp eq i32 %delay, 0
  br label %if.end5

if.then:                                          ; preds = %if.end15.if.then_crit_edge, %entry.if.then_crit_edge
  %.lcssa = phi i32 [ %3, %entry.if.then_crit_edge ], [ %9, %if.end15.if.then_crit_edge ]
  %tobool3.not = icmp eq ptr %valp, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.lcssa, ptr %valp, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end15.if.end5_crit_edge, %if.end5.lr.ph
  %attempts.addr.028 = phi i32 [ %attempts, %if.end5.lr.ph ], [ %dec, %if.end15.if.end5_crit_edge ]
  %dec = add i32 %attempts.addr.028, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %cond.false13

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

cond.false13:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %delay) #12
  br label %if.end15

if.end15:                                         ; preds = %cond.false13, %if.end8.if.end15_crit_edge
  %6 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %reg
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %and = and i32 %9, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %cmp = icmp eq i32 %lnot.ext, %polarity
  br i1 %cmp, label %if.end15.if.then_crit_edge, label %if.end15.if.end5_crit_edge

if.end15.if.end5_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end15.if.then_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ -11, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_hw_tp_wr_bits_indirect(ptr nocapture noundef readonly %hw, i32 noundef %addr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !703
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !700
  %3 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regstart, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 32324
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !701
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !704
  %neg = xor i32 %mask, -1
  %and = and i32 %6, %neg
  %or = or i32 %and, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !705
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 32324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #12, !srcloc !700
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_set_reg_field(ptr nocapture noundef readonly %hw, i32 noundef %reg, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %or = or i32 %and, %value
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regstart, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #12, !srcloc !700
  %7 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regstart, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 %reg
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fwcap_to_fwspeed(i32 noundef %acaps) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %acaps, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body1:                                         ; preds = %entry
  %and2 = and i32 %acaps, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body7, label %do.body1.return_crit_edge

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body7:                                         ; preds = %do.body1
  %and8 = and i32 %acaps, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body13, label %do.body7.return_crit_edge

do.body7.return_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body13:                                        ; preds = %do.body7
  %and14 = and i32 %acaps, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body19, label %do.body13.return_crit_edge

do.body13.return_crit_edge:                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body19:                                        ; preds = %do.body13
  %and20 = and i32 %acaps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body25, label %do.body19.return_crit_edge

do.body19.return_crit_edge:                       ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body25:                                        ; preds = %do.body19
  %and26 = and i32 %acaps, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body31, label %do.body25.return_crit_edge

do.body25.return_crit_edge:                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body31:                                        ; preds = %do.body25
  %and32 = and i32 %acaps, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body37, label %do.body31.return_crit_edge

do.body31.return_crit_edge:                       ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body37:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  %and38 = and i32 %acaps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and44 = and i32 %acaps, 1
  %spec.select = select i1 %tobool39.not, i32 %and44, i32 2
  br label %return

return:                                           ; preds = %do.body37, %do.body31.return_crit_edge, %do.body25.return_crit_edge, %do.body19.return_crit_edge, %do.body13.return_crit_edge, %do.body7.return_crit_edge, %do.body1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 256, %entry.return_crit_edge ], [ 128, %do.body1.return_crit_edge ], [ 64, %do.body7.return_crit_edge ], [ 32, %do.body13.return_crit_edge ], [ 16, %do.body19.return_crit_edge ], [ 8, %do.body25.return_crit_edge ], [ 4, %do.body31.return_crit_edge ], [ %spec.select, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fwcaps16_to_caps32(i16 noundef zeroext %caps16) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %caps16 to i32
  %and12 = shl nuw nsw i32 %conv, 1
  %0 = and i32 %and12, 8
  %and21 = lshr i32 %conv, 1
  %1 = and i32 %and21, 4
  %2 = and i32 %and12, 64
  %and48 = shl nuw nsw i32 %conv, 10
  %3 = and i32 %and48, 65536
  %4 = and i32 %and48, 131072
  %and66 = shl nuw nsw i32 %conv, 12
  %5 = and i32 %and66, 1048576
  %6 = and i32 %and66, 2097152
  %7 = and i32 %and66, 4194304
  %8 = and i32 %and66, 8388608
  %9 = and i32 %and66, 16777216
  %and111 = shl nuw nsw i32 %conv, 4
  %10 = and i32 %and111, 262144
  %11 = and i32 %and111, 524288
  %12 = and i32 %conv, 19
  %13 = or i32 %12, %0
  %14 = or i32 %13, %1
  %15 = or i32 %14, %2
  %16 = or i32 %15, %3
  %17 = or i32 %16, %4
  %18 = or i32 %17, %5
  %19 = or i32 %18, %6
  %20 = or i32 %19, %7
  %21 = or i32 %20, %8
  %22 = or i32 %21, %9
  %23 = or i32 %22, %10
  %24 = or i32 %23, %11
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fwcaps32_to_caps16(i32 noundef %caps32) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %caps32 to i16
  %1 = shl i16 %0, 1
  %2 = and i16 %1, 8
  %3 = lshr i16 %0, 1
  %4 = and i16 %3, 4
  %5 = and i16 %3, 32
  %and53 = lshr i32 %caps32, 10
  %6 = trunc i32 %and53 to i16
  %7 = and i16 %6, 64
  %8 = and i16 %6, 128
  %and73 = lshr i32 %caps32, 4
  %9 = trunc i32 %and73 to i16
  %10 = and i16 %9, 16384
  %11 = and i16 %9, -32768
  %and93 = lshr i32 %caps32, 12
  %12 = trunc i32 %and93 to i16
  %13 = and i16 %12, 256
  %and103 = lshr i32 %caps32, 15
  %14 = trunc i32 %and103 to i16
  %15 = and i16 %14, 8192
  %16 = and i16 %12, 512
  %17 = and i16 %12, 1024
  %18 = and i16 %12, 2048
  %19 = and i16 %12, 4096
  %20 = and i16 %0, 19
  %21 = or i16 %20, %2
  %22 = or i16 %21, %4
  %23 = or i16 %22, %5
  %24 = or i16 %23, %7
  %25 = or i16 %24, %8
  %26 = or i16 %25, %10
  %27 = or i16 %26, %11
  %28 = or i16 %27, %13
  %29 = or i16 %28, %15
  %30 = or i16 %29, %16
  %31 = or i16 %30, %17
  %32 = or i16 %31, %18
  %33 = or i16 %32, %19
  ret i16 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lstatus_to_fwcap(i32 noundef %lstatus) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %lstatus, 6
  %0 = and i32 %and, 196608
  %and6 = lshr i32 %lstatus, 24
  %1 = and i32 %and6, 1
  %2 = or i32 %0, %1
  %3 = and i32 %and6, 2
  %4 = or i32 %2, %3
  %and16 = lshr i32 %lstatus, 25
  %5 = and i32 %and16, 4
  %6 = or i32 %4, %5
  %and21 = lshr i32 %lstatus, 23
  %7 = and i32 %and21, 8
  %8 = or i32 %6, %7
  %9 = and i32 %and6, 16
  %10 = or i32 %8, %9
  %11 = and i32 %and21, 64
  %12 = or i32 %10, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_hw_intr_disable(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %4)
  %cmp.i.not = icmp eq i16 %4, 20480
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %5 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 103424
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !709
  %shr = lshr i32 %8, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = lshr i32 %7, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !710
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pf.0.in = phi i32 [ %shr, %if.then ], [ %9, %if.else ]
  %pf.0 = and i32 %pf.0.in, 7
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and14 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %and19 = and i32 %11, -3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and19, ptr %flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !711
  tail call void @arm_heavy_mb() #12
  %regstart20 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %13 = ptrtoint ptr %regstart20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regstart20, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 111556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #12, !srcloc !700
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and23 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end17.if.end26_crit_edge, label %if.then25

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 1, %pf.0
  %17 = ptrtoint ptr %regstart20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart20, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 103444
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %20, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %22 = ptrtoint ptr %regstart20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regstart20, align 4
  %add.ptr3.i = getelementptr i8, ptr %23, i32 103444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %21) #12, !srcloc !700
  %24 = ptrtoint ptr %regstart20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regstart20, align 4
  %add.ptr7.i = getelementptr i8, ptr %25, i32 103444
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end17.if.end26_crit_edge
  tail call void @csio_mb_intr_disable(ptr noundef %hw) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_intr_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_hw_fatal_err(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #12, !srcloc !700
  %6 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regstart.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 4104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw)
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_handle_intr_status(ptr nocapture noundef readonly %hw, i32 noundef %reg, ptr nocapture noundef readonly %acts) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !712
  %4 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not54 = icmp eq i32 %5, 0
  br i1 %tobool.not54, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %20, %for.inc.for.body_crit_edge ]
  %acts.addr.057 = phi ptr [ %acts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %fatal.056 = phi i32 [ 0, %for.body.lr.ph ], [ %fatal.2, %for.inc.for.body_crit_edge ]
  %mask.055 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.inc.for.body_crit_edge ]
  %and = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %fatal5 = getelementptr inbounds %struct.intr_info, ptr %acts.addr.057, i32 0, i32 3
  %7 = ptrtoint ptr %fatal5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fatal5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %fatal.056, 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %msg = getelementptr inbounds %struct.intr_info, ptr %acts.addr.057, i32 0, i32 1
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %12, i32 noundef %and) #15
  br label %if.end22

if.else:                                          ; preds = %if.end
  %msg10 = getelementptr inbounds %struct.intr_info, ptr %acts.addr.057, i32 0, i32 1
  %13 = ptrtoint ptr %msg10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.else.if.end22_crit_edge, label %do.end15

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.8, ptr noundef nonnull %14, i32 noundef %and) #15
  br label %if.end22

if.end22:                                         ; preds = %do.end15, %if.else.if.end22_crit_edge, %if.then7
  %fatal.1 = phi i32 [ %inc, %if.then7 ], [ %fatal.056, %do.end15 ], [ %fatal.056, %if.else.if.end22_crit_edge ]
  %17 = ptrtoint ptr %acts.addr.057 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %acts.addr.057, align 4
  %or = or i32 %18, %mask.055
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.end22 ], [ %mask.055, %for.body.for.inc_crit_edge ]
  %fatal.2 = phi i32 [ %fatal.1, %if.end22 ], [ %fatal.056, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.intr_info, ptr %acts.addr.057, i32 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ]
  %fatal.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %fatal.2, %for.inc.for.end_crit_edge ]
  %and24 = and i32 %mask.0.lcssa, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.end.if.end32_crit_edge, label %do.body27

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.body27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !713
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %and24)
  %22 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regstart, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %21) #12, !srcloc !700
  br label %if.end32

if.end32:                                         ; preds = %do.body27, %for.end.if.end32_crit_edge
  ret i32 %fatal.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_slow_intr_handler(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 103436
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !714
  %and = and i32 %3, 234864849
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_plint_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 10
  %4 = ptrtoint ptr %n_plint_unexp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_plint_unexp, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_plint_unexp, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_plint_cnt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 11
  %6 = ptrtoint ptr %n_plint_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_plint_cnt, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %n_plint_cnt, align 4
  %and4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %call.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 31532, ptr noundef nonnull @csio_cim_intr_handler.cim_intr_info) #12
  %call1.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 31540, ptr noundef nonnull @csio_cim_intr_handler.cim_upintr_info) #12
  %add.i = sub i32 0, %call1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add.i)
  %tobool.not.i = icmp eq i32 %call.i, %add.i
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %11 = and i32 %10, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %13, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %11) #12, !srcloc !700
  %14 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %15, i32 4104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %17 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i, ptr noundef nonnull @.str) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and8 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  %call.i152 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 69748, ptr noundef nonnull @csio_mps_intr_handler.mps_rx_intr_info) #12
  %call1.i153 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 37896, ptr noundef nonnull @csio_mps_intr_handler.mps_tx_intr_info) #12
  %add.i154 = add i32 %call1.i153, %call.i152
  %call2.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 39004, ptr noundef nonnull @csio_mps_intr_handler.mps_trc_intr_info) #12
  %add3.i = add i32 %add.i154, %call2.i
  %call4.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 38420, ptr noundef nonnull @csio_mps_intr_handler.mps_stat_sram_intr_info) #12
  %add5.i = add i32 %add3.i, %call4.i
  %call6.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 38432, ptr noundef nonnull @csio_mps_intr_handler.mps_stat_tx_intr_info) #12
  %add7.i = add i32 %add5.i, %call6.i
  %call8.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 38444, ptr noundef nonnull @csio_mps_intr_handler.mps_stat_rx_intr_info) #12
  %add9.i = add i32 %add7.i, %call8.i
  %call10.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 53288, ptr noundef nonnull @csio_mps_intr_handler.mps_cls_intr_info) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !715
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regstart, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 36872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !700
  %21 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regstart, align 4
  %add.ptr13.i = getelementptr i8, ptr %22, i32 36872
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !716
  %add11.i = sub i32 0, %call10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %add11.i)
  %tobool.not.i155 = icmp eq i32 %add9.i, %add11.i
  br i1 %tobool.not.i155, label %if.then10.if.end11_crit_edge, label %if.then.i161

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then.i161:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i156 = getelementptr i8, ptr %25, i32 4104
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i156) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i157 = getelementptr i8, ptr %29, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i157, i32 %27) #12, !srcloc !700
  %30 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i158 = getelementptr i8, ptr %31, i32 4104
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i158) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i159 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %33 = ptrtoint ptr %pdev.i.i159 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i.i159, align 8
  %dev.i.i160 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i160, ptr noundef nonnull @.str) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then.i161, %if.then10.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %and12 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %call.i162 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 106712, ptr noundef nonnull @csio_ncsi_intr_handler.ncsi_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %if.then14.if.end15_crit_edge, label %if.then.i170

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then.i170:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i165 = getelementptr i8, ptr %36, i32 4104
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i165) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %38 = and i32 %37, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i166 = getelementptr i8, ptr %40, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i166, i32 %38) #12, !srcloc !700
  %41 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i167 = getelementptr i8, ptr %42, i32 4104
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i167) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i168 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %44 = ptrtoint ptr %pdev.i.i168 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i.i168, align 8
  %dev.i.i169 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i169, ptr noundef nonnull @.str) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then.i170, %if.then14.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %and16 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  %call.i171 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 103472, ptr noundef nonnull @csio_pl_intr_handler.pl_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.then18.if.end19_crit_edge, label %if.then.i179

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then.i179:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i174 = getelementptr i8, ptr %47, i32 4104
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i174) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i175 = getelementptr i8, ptr %51, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i175, i32 %49) #12, !srcloc !700
  %52 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i176 = getelementptr i8, ptr %53, i32 4104
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i176) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i177 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %55 = ptrtoint ptr %pdev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i.i177, align 8
  %dev.i.i178 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i178, ptr noundef nonnull @.str) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then.i179, %if.then18.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %and20 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  %call.i180 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 102544, ptr noundef nonnull @csio_smb_intr_handler.smb_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i181, label %if.then22.if.end23_crit_edge, label %if.then.i188

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then.i188:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i183 = getelementptr i8, ptr %58, i32 4104
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i183) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %60 = and i32 %59, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i184 = getelementptr i8, ptr %62, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i184, i32 %60) #12, !srcloc !700
  %63 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i185 = getelementptr i8, ptr %64, i32 4104
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i185) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i186 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %66 = ptrtoint ptr %pdev.i.i186 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i.i186, align 8
  %dev.i.i187 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i187, ptr noundef nonnull @.str) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then.i188, %if.then22.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %and24 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end27_crit_edge, label %if.then26

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_xgmac_intr_handler(ptr noundef %hw, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %and28 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_xgmac_intr_handler(ptr noundef %hw, i32 noundef 1)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %and32 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_xgmac_intr_handler(ptr noundef %hw, i32 noundef 2)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %and36 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_xgmac_intr_handler(ptr noundef %hw, i32 noundef 3)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %and40 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %chip_ops = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 52
  %68 = ptrtoint ptr %chip_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip_ops, align 4
  %chip_pcie_intr_handler = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %chip_pcie_intr_handler to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip_pcie_intr_handler, align 4
  tail call void %71(ptr noundef %hw) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %and44 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mem_intr_handler(ptr noundef %hw, i32 noundef 2)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %and48 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mem_intr_handler(ptr noundef %hw, i32 noundef 0)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %and52 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mem_intr_handler(ptr noundef %hw, i32 noundef 1)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %and56 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end59_crit_edge, label %if.then58

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then58:                                        ; preds = %if.end55
  %chip_id.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 31
  %72 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %chip_id.i, align 2
  %.mask.i = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.mask.i)
  %cmp.i = icmp eq i16 %.mask.i, 20480
  %cond.i = select i1 %cmp.i, ptr @csio_le_intr_handler.le_intr_info, ptr @csio_le_intr_handler.t6_le_intr_info
  %call.i189 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 105532, ptr noundef nonnull %cond.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %if.then58.if.end59_crit_edge, label %if.then.i197

if.then58.if.end59_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then.i197:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i192 = getelementptr i8, ptr %75, i32 4104
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i192) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %77 = and i32 %76, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i193 = getelementptr i8, ptr %79, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i193, i32 %77) #12, !srcloc !700
  %80 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i194 = getelementptr i8, ptr %81, i32 4104
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i194) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i195 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %83 = ptrtoint ptr %pdev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i.i195, align 8
  %dev.i.i196 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i196, ptr noundef nonnull @.str) #15
  br label %if.end59

if.end59:                                         ; preds = %if.then.i197, %if.then58.if.end59_crit_edge, %if.end55.if.end59_crit_edge
  %and60 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end63_crit_edge, label %if.then62

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end59
  %call.i198 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 32372, ptr noundef nonnull @csio_tp_intr_handler.tp_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.then62.if.end63_crit_edge, label %if.then.i206

if.then62.if.end63_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then.i206:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i201 = getelementptr i8, ptr %86, i32 4104
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i201) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %88 = and i32 %87, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i202 = getelementptr i8, ptr %90, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i202, i32 %88) #12, !srcloc !700
  %91 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i203 = getelementptr i8, ptr %92, i32 4104
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i203) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i204 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %94 = ptrtoint ptr %pdev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev.i.i204, align 8
  %dev.i.i205 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i205, ptr noundef nonnull @.str) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then.i206, %if.then62.if.end63_crit_edge, %if.end59.if.end63_crit_edge
  %and64 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  %96 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regstart, align 4
  %add.ptr.i208 = getelementptr i8, ptr %97, i32 30688
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #12, !srcloc !701
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !717
  %and.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i209 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i209, label %if.then66.if.end.i_crit_edge, label %do.end.i

if.then66.if.end.i_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %100 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %102 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regstart, align 4
  %add.ptr5.i = getelementptr i8, ptr %103, i32 30708
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !701
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !718
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i, ptr noundef nonnull @.str.292, i32 noundef %105) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then66.if.end.i_crit_edge
  %and9.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.csio_ma_intr_handler.exit_crit_edge, label %if.then11.i

if.end.i.csio_ma_intr_handler.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_ma_intr_handler.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regstart, align 4
  %add.ptr15.i = getelementptr i8, ptr %107, i32 30692
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #12, !srcloc !701
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !719
  %pdev22.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %110 = ptrtoint ptr %pdev22.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev22.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %and24.i = and i32 %109, 15
  %shr25.i = and i32 %109, -16
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev23.i, ptr noundef nonnull @.str.295, i32 noundef %and24.i, i32 noundef %shr25.i) #15
  br label %csio_ma_intr_handler.exit

csio_ma_intr_handler.exit:                        ; preds = %if.then11.i, %if.end.i.csio_ma_intr_handler.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !720
  tail call void @arm_heavy_mb() #12
  %112 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regstart, align 4
  %add.ptr32.i = getelementptr i8, ptr %113, i32 30688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %98) #12, !srcloc !700
  %114 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i210 = getelementptr i8, ptr %115, i32 4104
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i210) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %117 = and i32 %116, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i211 = getelementptr i8, ptr %119, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i211, i32 %117) #12, !srcloc !700
  %120 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i212 = getelementptr i8, ptr %121, i32 4104
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i212) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i213 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %123 = ptrtoint ptr %pdev.i.i213 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i.i213, align 8
  %dev.i.i214 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i214, ptr noundef nonnull @.str) #15
  br label %if.end67

if.end67:                                         ; preds = %csio_ma_intr_handler.exit, %if.end63.if.end67_crit_edge
  %and68 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  %call.i215 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 36860, ptr noundef nonnull @csio_pmtx_intr_handler.pmtx_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %if.then70.if.end71_crit_edge, label %if.then.i223

if.then70.if.end71_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then.i223:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i218 = getelementptr i8, ptr %126, i32 4104
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i218) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %128 = and i32 %127, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %129 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i219 = getelementptr i8, ptr %130, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i219, i32 %128) #12, !srcloc !700
  %131 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i220 = getelementptr i8, ptr %132, i32 4104
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i220) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i221 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %134 = ptrtoint ptr %pdev.i.i221 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev.i.i221, align 8
  %dev.i.i222 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i222, ptr noundef nonnull @.str) #15
  br label %if.end71

if.end71:                                         ; preds = %if.then.i223, %if.then70.if.end71_crit_edge, %if.end67.if.end71_crit_edge
  %and72 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end75_crit_edge, label %if.then74

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then74:                                        ; preds = %if.end71
  %call.i225 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 36828, ptr noundef nonnull @csio_pmrx_intr_handler.pmrx_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i226 = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i226, label %if.then74.if.end75_crit_edge, label %if.then.i233

if.then74.if.end75_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then.i233:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i228 = getelementptr i8, ptr %137, i32 4104
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i228) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %139 = and i32 %138, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %140 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i229 = getelementptr i8, ptr %141, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i229, i32 %139) #12, !srcloc !700
  %142 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i230 = getelementptr i8, ptr %143, i32 4104
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i230) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i231 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %145 = ptrtoint ptr %pdev.i.i231 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pdev.i.i231, align 8
  %dev.i.i232 = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i232, ptr noundef nonnull @.str) #15
  br label %if.end75

if.end75:                                         ; preds = %if.then.i233, %if.then74.if.end75_crit_edge, %if.end71.if.end75_crit_edge
  %and76 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end79_crit_edge, label %if.then78

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then78:                                        ; preds = %if.end75
  %call.i235 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 102744, ptr noundef nonnull @csio_ulprx_intr_handler.ulprx_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool.not.i236 = icmp eq i32 %call.i235, 0
  br i1 %tobool.not.i236, label %if.then78.if.end79_crit_edge, label %if.then.i243

if.then78.if.end79_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then.i243:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i238 = getelementptr i8, ptr %148, i32 4104
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i238) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %150 = and i32 %149, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %151 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i239 = getelementptr i8, ptr %152, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i239, i32 %150) #12, !srcloc !700
  %153 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i240 = getelementptr i8, ptr %154, i32 4104
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i240) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i241 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %156 = ptrtoint ptr %pdev.i.i241 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev.i.i241, align 8
  %dev.i.i242 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i242, ptr noundef nonnull @.str) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then.i243, %if.then78.if.end79_crit_edge, %if.end75.if.end79_crit_edge
  %and80 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end83_crit_edge, label %if.then82

if.end79.if.end83_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then82:                                        ; preds = %if.end79
  %call.i245 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 102484, ptr noundef nonnull @csio_cplsw_intr_handler.cplsw_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool.not.i246 = icmp eq i32 %call.i245, 0
  br i1 %tobool.not.i246, label %if.then82.if.end83_crit_edge, label %if.then.i253

if.then82.if.end83_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then.i253:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i248 = getelementptr i8, ptr %159, i32 4104
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i248) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %161 = and i32 %160, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %162 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i249 = getelementptr i8, ptr %163, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i249, i32 %161) #12, !srcloc !700
  %164 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i250 = getelementptr i8, ptr %165, i32 4104
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i250) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i251 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %167 = ptrtoint ptr %pdev.i.i251 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev.i.i251, align 8
  %dev.i.i252 = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i252, ptr noundef nonnull @.str) #15
  br label %if.end83

if.end83:                                         ; preds = %if.then.i253, %if.then82.if.end83_crit_edge, %if.end79.if.end83_crit_edge
  %and84 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end87_crit_edge, label %if.then86

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then86:                                        ; preds = %if.end83
  %169 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regstart, align 4
  %add.ptr.i256 = getelementptr i8, ptr %170, i32 4132
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !721
  %172 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regstart, align 4
  %add.ptr5.i257 = getelementptr i8, ptr %173, i32 4144
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i257) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !722
  %175 = zext i32 %174 to i64
  %176 = zext i32 %171 to i64
  %177 = shl nuw i64 %176, 32
  %178 = or i64 %177, %175
  %179 = tail call i64 @llvm.bswap.i64(i64 %178) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %178)
  %tobool.not.i258 = icmp eq i64 %178, 0
  br i1 %tobool.not.i258, label %if.then86.if.end.i263_crit_edge, label %do.end.i262

if.then86.if.end.i263_crit_edge:                  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i263

do.end.i262:                                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i259 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %180 = ptrtoint ptr %pdev.i259 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pdev.i259, align 8
  %dev.i260 = getelementptr inbounds %struct.pci_dev, ptr %181, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i260, ptr noundef nonnull @.str.333, i64 noundef %179) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !723
  tail call void @arm_heavy_mb() #12
  %182 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regstart, align 4
  %add.ptr15.i261 = getelementptr i8, ptr %183, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i261, i32 %171) #12, !srcloc !700
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !724
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %179, 32
  %conv19.i = trunc i64 %shr.i to i32
  %184 = tail call i32 @llvm.bswap.i32(i32 %conv19.i) #12
  %185 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regstart, align 4
  %add.ptr21.i = getelementptr i8, ptr %186, i32 4144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %184) #12, !srcloc !700
  br label %if.end.i263

if.end.i263:                                      ; preds = %do.end.i262, %if.then86.if.end.i263_crit_edge
  %call22.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 4156, ptr noundef nonnull @csio_sge_intr_handler.sge_intr_info) #12
  %call25.i = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 4156, ptr noundef nonnull @csio_sge_intr_handler.sge_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i, label %if.end.i263.if.then28.i_crit_edge

if.end.i263.if.then28.i_crit_edge:                ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %if.end.i263
  %conv23.i = sext i32 %call22.i to i64
  %or24.i = or i64 %179, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or24.i)
  %cmp.not.i = icmp eq i64 %or24.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end87_crit_edge, label %lor.lhs.false.i.if.then28.i_crit_edge

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false.i.if.end87_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %if.end.i263.if.then28.i_crit_edge
  %187 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i264 = getelementptr i8, ptr %188, i32 4104
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i264) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %190 = and i32 %189, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %191 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i265 = getelementptr i8, ptr %192, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i265, i32 %190) #12, !srcloc !700
  %193 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i266 = getelementptr i8, ptr %194, i32 4104
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i266) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i267 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %196 = ptrtoint ptr %pdev.i.i267 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pdev.i.i267, align 8
  %dev.i.i268 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i268, ptr noundef nonnull @.str) #15
  br label %if.end87

if.end87:                                         ; preds = %if.then28.i, %lor.lhs.false.i.if.end87_crit_edge, %if.end83.if.end87_crit_edge
  %and88 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.do.body_crit_edge, label %if.then90

if.end87.do.body_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then90:                                        ; preds = %if.end87
  %call.i269 = tail call i32 @csio_handle_intr_status(ptr noundef %hw, i32 noundef 36300, ptr noundef nonnull @csio_ulptx_intr_handler.ulptx_intr_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i270 = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i270, label %if.then90.do.body_crit_edge, label %if.then.i277

if.then90.do.body_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then.i277:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i.i272 = getelementptr i8, ptr %199, i32 4104
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i272) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %201 = and i32 %200, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %202 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i.i273 = getelementptr i8, ptr %203, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i273, i32 %201) #12, !srcloc !700
  %204 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i.i274 = getelementptr i8, ptr %205, i32 4104
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i274) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i.i275 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %207 = ptrtoint ptr %pdev.i.i275 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev.i.i275, align 8
  %dev.i.i276 = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i.i276, ptr noundef nonnull @.str) #15
  br label %do.body

do.body:                                          ; preds = %if.then.i277, %if.then90.do.body_crit_edge, %if.end87.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !725
  tail call void @arm_heavy_mb() #12
  %209 = tail call i32 @llvm.bswap.i32(i32 %and)
  %210 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regstart, align 4
  %add.ptr94 = getelementptr i8, ptr %211, i32 103436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %209) #12, !srcloc !700
  %212 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regstart, align 4
  %add.ptr98 = getelementptr i8, ptr %213, i32 103436
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !726
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_xgmac_intr_handler(ptr noundef %hw, i32 noundef %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %mul = shl i32 %port, 14
  %add1 = add i32 %mul, 198876
  %add.ptr = getelementptr i8, ptr %1, i32 %add1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !727
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.270, i32 noundef %port) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %7 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end6.do.body16_crit_edge, label %do.end12

if.end6.do.body16_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %pdev13 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev13, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev14, ptr noundef nonnull @.str.273, i32 noundef %port) #15
  br label %do.body16

do.body16:                                        ; preds = %do.end12, %if.end6.do.body16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !728
  tail call void @arm_heavy_mb() #12
  %10 = shl nuw nsw i32 %and, 24
  %11 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regstart, align 4
  %add.ptr23 = getelementptr i8, ptr %12, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %10) #12, !srcloc !700
  %13 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4104
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %16 = and i32 %15, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %18, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %16) #12, !srcloc !700
  %19 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %20, i32 4104
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i, ptr noundef nonnull @.str) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_mem_intr_handler(ptr noundef %hw, i32 noundef %idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx)
  %cmp = icmp slt i32 %idx, 2
  %mul = shl i32 %idx, 7
  %add = add i32 %mul, 31096
  %add2 = add i32 %mul, 31100
  %cnt_addr.0 = select i1 %cmp, i32 %add2, i32 29980
  %addr.0 = select i1 %cmp, i32 %add, i32 29976
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr.0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !729
  %and = and i32 %2, 117440512
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %arrayidx = getelementptr [3 x [5 x i8]], ptr @csio_mem_intr_handler.name, i32 0, i32 %idx
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.275, ptr noundef %arrayidx) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %6 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end6.if.end31_crit_edge, label %if.then9

if.end6.if.end31_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regstart, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 %cnt_addr.0
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !701
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !730
  %shr = lshr i32 %10, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !731
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regstart, align 4
  %add.ptr22 = getelementptr i8, ptr %12, i32 %cnt_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 65535) #12, !srcloc !700
  %pdev26 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %arrayidx28 = getelementptr [3 x [5 x i8]], ptr @csio_mem_intr_handler.name, i32 0, i32 %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %10)
  %cmp30 = icmp ugt i32 %10, 131071
  %cond = select i1 %cmp30, ptr @.str.280, ptr @.str.281
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.278, i32 noundef %shr, ptr noundef %arrayidx28, ptr noundef nonnull %cond) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then9, %if.end6.if.end31_crit_edge
  %15 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33.not = icmp eq i32 %15, 0
  br i1 %tobool33.not, label %if.end31.do.body43_crit_edge, label %do.end37

if.end31.do.body43_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %pdev38 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %arrayidx40 = getelementptr [3 x [5 x i8]], ptr @csio_mem_intr_handler.name, i32 0, i32 %idx
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev39, ptr noundef nonnull @.str.283, ptr noundef %arrayidx40) #15
  br label %do.body43

do.body43:                                        ; preds = %do.end37, %if.end31.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !732
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regstart, align 4
  %add.ptr47 = getelementptr i8, ptr %19, i32 %addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %and) #12, !srcloc !700
  %20 = and i32 %2, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not = icmp eq i32 %20, 0
  br i1 %tobool49.not, label %do.body43.if.end51_crit_edge, label %if.then50

do.body43.if.end51_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regstart, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %24 = and i32 %23, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regstart, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %26, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %24) #12, !srcloc !700
  %27 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regstart, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %28, i32 4104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #12
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev.i, ptr noundef nonnull @.str) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.body43.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_enqueue_evt(ptr noundef %hw, i32 noundef %type, ptr nocapture noundef readonly %evt_msg, i16 noundef zeroext %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp ugt i32 %type, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %len)
  %cmp1 = icmp ugt i16 %len, 512
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %evt_free_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %2 = ptrtoint ptr %evt_free_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %evt_free_q, align 4
  %cmp.i.not = icmp eq ptr %3, %evt_free_q
  br i1 %cmp.i.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %type, i32 noundef %conv) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del_init.exit_crit_edge

if.end10.list_del_init.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end10.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %prev.i3.i, align 4
  %type12 = getelementptr inbounds %struct.csio_evt_msg, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %type12, align 4
  %data = getelementptr inbounds %struct.csio_evt_msg, ptr %3, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %data, ptr %evt_msg, i32 %conv)
  %evt_active_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %17, ptr noundef %evt_active_q) #12
  br i1 %call.i.i29, label %if.end.i.i30, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i30:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %prev.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %evt_active_q, ptr %3, align 4
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %3, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i30, %list_del_init.exit.list_add_tail.exit_crit_edge
  %stats = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55
  %n_evt_freeq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  %22 = ptrtoint ptr %n_evt_freeq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_evt_freeq, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %n_evt_freeq, align 4
  %24 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stats, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %list_add_tail.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_evtq_flush(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and5 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not6 = icmp eq i32 %and5, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.07 = phi i32 [ 30, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %count.07, -1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @msleep(i32 noundef 2000) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_evtq_worker(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  %cbfn_q.i = alloca %struct.list_head, align 4
  %evt_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -7344
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evt_q) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %evt_q, i32 0, i32 1
  %1 = ptrtoint ptr %evt_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %evt_q, ptr %evt_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %evt_q, ptr %0, align 4
  %lock = getelementptr i8, ptr %work, i32 -7332
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %evt_active_q = getelementptr i8, ptr %work, i32 52
  %3 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %evt_active_q, align 4
  %cmp.i.not123 = icmp eq ptr %4, %evt_active_q
  br i1 %cmp.i.not123, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev2.i.i = getelementptr i8, ptr %work, i32 56
  %flags = getelementptr i8, ptr %work, i32 -268
  %n_evt_drop = getelementptr i8, ptr %work, i32 15056
  %5 = getelementptr inbounds %struct.list_head, ptr %cbfn_q.i, i32 0, i32 1
  %timer.i = getelementptr i8, ptr %work, i32 -128
  %cbfn_q2.i = getelementptr i8, ptr %work, i32 -68
  %prev2.i.i.i = getelementptr i8, ptr %work, i32 -64
  %n_cbfnq.i = getelementptr i8, ptr %work, i32 -40
  %req_q.i = getelementptr i8, ptr %work, i32 -76
  %prev.i39.i = getelementptr i8, ptr %work, i32 -72
  %n_activeq.i = getelementptr i8, ptr %work, i32 -44
  %pdev = getelementptr i8, ptr %work, i32 -6440
  %n_evt_unexp = getelementptr i8, ptr %work, i32 15060
  %evt_free_q.i = getelementptr i8, ptr %work, i32 44
  %prev.i.i = getelementptr i8, ptr %work, i32 48
  %stats.i = getelementptr i8, ptr %work, i32 15048
  %n_evt_freeq.i = getelementptr i8, ptr %work, i32 15052
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %evtq_stop.0124 = phi i8 [ 0, %while.body.lr.ph ], [ %evtq_stop.1.lcssa, %for.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %evt_active_q, align 4
  %cmp.i.not.i = icmp eq ptr %7, %evt_active_q
  br i1 %cmp.i.not.i, label %while.body.list_splice_tail_init.exit_crit_edge, label %if.then.i

while.body.list_splice_tail_init.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %evt_q, ptr %11, align 4
  store ptr %11, ptr %0, align 4
  %15 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %evt_active_q, ptr %evt_active_q, align 4
  store ptr %evt_active_q, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %while.body.list_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %16 = ptrtoint ptr %evt_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %evt_q, align 4
  %cmp.i102.not118 = icmp eq ptr %17, %evt_q
  br i1 %cmp.i102.not118, label %list_splice_tail_init.exit.for.end_crit_edge, label %list_splice_tail_init.exit.for.body_crit_edge

list_splice_tail_init.exit.for.body_crit_edge:    ; preds = %list_splice_tail_init.exit
  br label %for.body

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %csio_free_evt.exit.for.body_crit_edge, %list_splice_tail_init.exit.for.body_crit_edge
  %evtq_stop.1121 = phi i8 [ %spec.select, %csio_free_evt.exit.for.body_crit_edge ], [ %evtq_stop.0124, %list_splice_tail_init.exit.for.body_crit_edge ]
  %evt_entry.0119 = phi ptr [ %next_entry.0122, %csio_free_evt.exit.for.body_crit_edge ], [ %17, %list_splice_tail_init.exit.for.body_crit_edge ]
  %18 = ptrtoint ptr %evt_entry.0119 to i32
  call void @__asan_load4_noabort(i32 %18)
  %next_entry.0122 = load ptr, ptr %evt_entry.0119, align 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool9.not, i8 %evtq_stop.1121, i8 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool11.not = icmp eq i8 %spec.select, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_evt_drop, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %n_evt_drop, align 8
  br label %free_evt

if.end13:                                         ; preds = %for.body
  %type = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %24, label %do.end55 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
    i32 3, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end13
  %data = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 8
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.345)
  switch i8 %27, label %sw.bb.do.end_crit_edge [
    i8 -32, label %sw.bb.land.lhs.true_crit_edge
    i8 -64, label %sw.bb.land.lhs.true_crit_edge125
    i8 -31, label %if.then35
  ]

sw.bb.land.lhs.true_crit_edge125:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb.land.lhs.true_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %sw.bb.land.lhs.true_crit_edge, %sw.bb.land.lhs.true_crit_edge125
  %type19 = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %type19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not = icmp eq i8 %30, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true
  %data22 = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2, i32 8
  %call24 = call i32 @csio_mb_fwevt_handler(ptr noundef %add.ptr, ptr noundef %data22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then21.free_evt_crit_edge, label %if.end27

if.then21.free_evt_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_evt

if.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data, align 8
  call void @csio_fcoe_fwevt_handler(ptr noundef %add.ptr, i8 noundef zeroext %32, ptr noundef %data22) #12
  br label %free_evt

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %data37 = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2, i32 8
  call void @csio_fcoe_fwevt_handler(ptr noundef %add.ptr, i8 noundef zeroext -31, ptr noundef %data37) #12
  br label %free_evt

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %conv32 = zext i8 %27 to i32
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %type42 = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %type42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type42, align 1
  %conv43 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv32, i32 noundef %conv43) #15
  %37 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_evt_drop, align 8
  %inc46 = add i32 %38, 1
  store i32 %inc46, ptr %n_evt_drop, align 8
  br label %free_evt

sw.bb49:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbfn_q.i) #12
  %39 = ptrtoint ptr %cbfn_q.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cbfn_q.i, ptr %cbfn_q.i, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cbfn_q.i, ptr %5, align 4
  %call.i = call i32 @del_timer_sync(ptr noundef %timer.i) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %41 = ptrtoint ptr %cbfn_q2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %cbfn_q2.i, align 4
  %cmp.i.not.i104 = icmp eq ptr %42, %cbfn_q2.i
  br i1 %cmp.i.not.i104, label %if.then.i105, label %if.end.i

if.then.i105:                                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %csio_mberr_worker.exit

if.end.i:                                         ; preds = %sw.bb49
  %43 = ptrtoint ptr %cbfn_q2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %cbfn_q2.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %44, %cbfn_q2.i
  br i1 %cmp.i.not.i.i, label %if.end.i.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.i.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %47 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cbfn_q.i, ptr %48, align 4
  store ptr %48, ptr %5, align 4
  %52 = ptrtoint ptr %cbfn_q2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %cbfn_q2.i, ptr %cbfn_q2.i, align 4
  store ptr %cbfn_q2.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.i.list_splice_tail_init.exit.i_crit_edge
  %53 = ptrtoint ptr %n_cbfnq.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %n_cbfnq.i, align 4
  %54 = ptrtoint ptr %req_q.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %req_q.i, align 4
  %cmp.i37.not.i = icmp eq ptr %55, %req_q.i
  br i1 %cmp.i37.not.i, label %list_splice_tail_init.exit.i.if.end17.i_crit_edge, label %if.then8.i

list_splice_tail_init.exit.i.if.end17.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then8.i:                                       ; preds = %list_splice_tail_init.exit.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %55) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.list_del_init.exit.i_crit_edge

if.then8.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then8.i.list_del_init.exit.i_crit_edge
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %55, ptr %55, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %55, ptr %prev.i3.i.i, align 4
  %call11.i = call i32 @csio_mb_issue(ptr noundef %add.ptr, ptr noundef %55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.not.i = icmp eq i32 %call11.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %list_del_init.exit.i
  %64 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i39.i, align 4
  %call.i.i40.i = call zeroext i1 @__list_add_valid(ptr noundef %55, ptr noundef %65, ptr noundef %req_q.i) #12
  br i1 %call.i.i40.i, label %if.end.i.i42.i, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end.i.i42.i:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %55, ptr %prev.i39.i, align 4
  %67 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %req_q.i, ptr %55, align 4
  %68 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev.i3.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %55, ptr %65, align 4
  br label %if.end17.i

if.else.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %n_activeq.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_activeq.i, align 4
  %dec.i = add i32 %71, -1
  store i32 %dec.i, ptr %n_activeq.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.end.i.i42.i, %if.then12.i.if.end17.i_crit_edge, %list_splice_tail_init.exit.i.if.end17.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @csio_mb_completions(ptr noundef %add.ptr, ptr noundef nonnull %cbfn_q.i) #12
  br label %csio_mberr_worker.exit

csio_mberr_worker.exit:                           ; preds = %if.end17.i, %if.then.i105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbfn_q.i) #12
  br label %free_evt

sw.bb50:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %data51 = getelementptr inbounds %struct.csio_evt_msg, ptr %evt_entry.0119, i32 0, i32 2
  %72 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %rn.0.copyload = load ptr, ptr %data51, align 4
  call void @csio_rnode_devloss_handler(ptr noundef %rn.0.copyload) #12
  br label %free_evt

do.end55:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57, ptr noundef nonnull @.str.18, i32 noundef %24) #15
  %75 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_evt_unexp, align 4
  %inc60 = add i32 %76, 1
  store i32 %inc60, ptr %n_evt_unexp, align 4
  br label %free_evt

free_evt:                                         ; preds = %do.end55, %sw.bb50, %csio_mberr_worker.exit, %do.end, %if.then35, %if.end27, %if.then21.free_evt_crit_edge, %if.then12
  %tobool.not.i = icmp eq ptr %evt_entry.0119, null
  br i1 %tobool.not.i, label %free_evt.csio_free_evt.exit_crit_edge, label %if.then.i108

free_evt.csio_free_evt.exit_crit_edge:            ; preds = %free_evt
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_free_evt.exit

if.then.i108:                                     ; preds = %free_evt
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call.i.i.i107 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %evt_entry.0119) #12
  br i1 %call.i.i.i107, label %if.end.i.i.i111, label %if.then.i108.list_del_init.exit.i113_crit_edge

if.then.i108.list_del_init.exit.i113_crit_edge:   ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i113

if.end.i.i.i111:                                  ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %evt_entry.0119, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i109, align 4
  %79 = ptrtoint ptr %evt_entry.0119 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %evt_entry.0119, align 4
  %prev1.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i110, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del_init.exit.i113

list_del_init.exit.i113:                          ; preds = %if.end.i.i.i111, %if.then.i108.list_del_init.exit.i113_crit_edge
  %83 = ptrtoint ptr %evt_entry.0119 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %evt_entry.0119, ptr %evt_entry.0119, align 4
  %prev.i3.i.i112 = getelementptr inbounds %struct.list_head, ptr %evt_entry.0119, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %evt_entry.0119, ptr %prev.i3.i.i112, align 4
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %call.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %evt_entry.0119, ptr noundef %86, ptr noundef %evt_free_q.i) #12
  br i1 %call.i.i10.i, label %if.end.i.i11.i, label %list_del_init.exit.i113.list_add_tail.exit.i_crit_edge

list_del_init.exit.i113.list_add_tail.exit.i_crit_edge: ; preds = %list_del_init.exit.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i11.i:                                   ; preds = %list_del_init.exit.i113
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %evt_entry.0119, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %evt_entry.0119 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %evt_free_q.i, ptr %evt_entry.0119, align 4
  %89 = ptrtoint ptr %prev.i3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev.i3.i.i112, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %evt_entry.0119, ptr %86, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i11.i, %list_del_init.exit.i113.list_add_tail.exit.i_crit_edge
  %91 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stats.i, align 8
  %dec.i114 = add i32 %92, -1
  store i32 %dec.i114, ptr %stats.i, align 8
  %93 = ptrtoint ptr %n_evt_freeq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_evt_freeq.i, align 4
  %inc.i = add i32 %94, 1
  store i32 %inc.i, ptr %n_evt_freeq.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %csio_free_evt.exit

csio_free_evt.exit:                               ; preds = %list_add_tail.exit.i, %free_evt.csio_free_evt.exit_crit_edge
  %cmp.i102.not = icmp eq ptr %next_entry.0122, %evt_q
  br i1 %cmp.i102.not, label %csio_free_evt.exit.for.end_crit_edge, label %csio_free_evt.exit.for.body_crit_edge

csio_free_evt.exit.for.body_crit_edge:            ; preds = %csio_free_evt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

csio_free_evt.exit.for.end_crit_edge:             ; preds = %csio_free_evt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %csio_free_evt.exit.for.end_crit_edge, %list_splice_tail_init.exit.for.end_crit_edge
  %evtq_stop.1.lcssa = phi i8 [ %evtq_stop.0124, %list_splice_tail_init.exit.for.end_crit_edge ], [ %spec.select, %csio_free_evt.exit.for.end_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %95 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %evt_active_q, align 4
  %cmp.i.not = icmp eq ptr %96, %evt_active_q
  br i1 %cmp.i.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  %flags63 = getelementptr i8, ptr %work, i32 -268
  %97 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags63, align 4
  %and64 = and i32 %98, -5
  store i32 %and64, ptr %flags63, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evt_q) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_fwevt_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_fwevt_handler(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_rnode_devloss_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_fwevtq_handler(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_arr, align 4
  %fwevt_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 18
  %2 = ptrtoint ptr %fwevt_iq_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fwevt_iq_idx, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %un = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %un, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_int_stray = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 12
  %8 = ptrtoint ptr %n_int_stray to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_int_stray, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %n_int_stray, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @csio_wr_process_iq_idx(ptr noundef %hw, i32 noundef %3, ptr noundef nonnull @csio_process_fwevtq_entry, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_process_iq_idx(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_process_fwevtq_entry(ptr noundef %hw, ptr noundef %wr, i32 noundef %len, ptr noundef readonly %flb, ptr nocapture noundef readnone %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wr, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %1)
  %cmp = icmp eq i8 %1, -31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %n_cpl_fw6_pld = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 7
  %2 = ptrtoint ptr %n_cpl_fw6_pld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_cpl_fw6_pld, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_cpl_fw6_pld, align 4
  %tobool.not = icmp eq ptr %flb, null
  br i1 %tobool.not, label %if.then.if.then3_crit_edge, label %lor.lhs.false

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %totlen = getelementptr inbounds %struct.csio_fl_dma_buf, ptr %flb, i32 0, i32 2
  %4 = ptrtoint ptr %totlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %totlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %n_cpl_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %6 = ptrtoint ptr %n_cpl_unexp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_cpl_unexp, align 8
  %inc5 = add i32 %7, 1
  store i32 %inc5, ptr %n_cpl_unexp, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.346)
  switch i8 %1, label %do.end [
    i8 -32, label %if.else.if.then14_crit_edge
    i8 -64, label %if.then14.fold.split
  ]

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14.fold.split:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %if.then14.fold.split, %if.else.if.then14_crit_edge
  %cond = phi i32 [ 40, %if.else.if.then14_crit_edge ], [ 24, %if.then14.fold.split ]
  %n_cpl_fw6_msg = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 6
  %9 = ptrtoint ptr %n_cpl_fw6_msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_cpl_fw6_msg, align 8
  %inc16 = add i32 %10, 1
  store i32 %inc16, ptr %n_cpl_fw6_msg, align 8
  %11 = ptrtoint ptr %wr to i32
  %add = add i32 %11, 8
  %12 = inttoptr i32 %add to ptr
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.340, i32 noundef %conv) #15
  %n_cpl_unexp23 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 8
  %15 = ptrtoint ptr %n_cpl_unexp23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_cpl_unexp23, align 8
  %inc24 = add i32 %16, 1
  store i32 %inc24, ptr %n_cpl_unexp23, align 8
  br label %cleanup

if.end26:                                         ; preds = %if.then14, %lor.lhs.false.if.end26_crit_edge
  %msg.0 = phi ptr [ %12, %if.then14 ], [ %flb, %lor.lhs.false.if.end26_crit_edge ]
  %msg_len.0 = phi i32 [ %cond, %if.then14 ], [ %5, %lor.lhs.false.if.end26_crit_edge ]
  %conv27 = trunc i32 %msg_len.0 to i16
  %conv.i = and i32 %msg_len.0, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %conv27)
  %cmp1.i = icmp ugt i16 %conv27, 512
  br i1 %cmp1.i, label %if.end26.if.then30_crit_edge, label %do.body5.i

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

do.body5.i:                                       ; preds = %if.end26
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %flags11.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %17 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags11.i, align 4
  %and.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %do.body5.i.csio_enqueue_evt_lock.exit.thread53_crit_edge

do.body5.i.csio_enqueue_evt_lock.exit.thread53_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_enqueue_evt_lock.exit.thread53

if.end13.i:                                       ; preds = %do.body5.i
  %evt_free_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %19 = ptrtoint ptr %evt_free_q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %evt_free_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %evt_free_q.i
  br i1 %cmp.i.not.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %conv.i) #15
  br label %csio_enqueue_evt_lock.exit.thread53

if.end21.i:                                       ; preds = %if.end13.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end21.i.list_del_init.exit.i_crit_edge

if.end21.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end21.i.list_del_init.exit.i_crit_edge
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %20, ptr %20, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %prev.i3.i.i, align 4
  %type24.i = getelementptr inbounds %struct.csio_evt_msg, ptr %20, i32 0, i32 1
  %31 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %type24.i, align 4
  br i1 %cmp, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %cmp303.not.i = icmp eq i16 %conv27, 0
  br i1 %cmp303.not.i, label %for.cond.preheader.i.if.end42.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end42.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data.i = getelementptr inbounds %struct.csio_evt_msg, ptr %20, i32 0, i32 2
  %32 = ptrtoint ptr %data.i to i32
  %vaddr.i = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vaddr.i, align 4
  %len34.i = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %len34.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len34.i, align 4
  %37 = call ptr @memcpy(ptr %data.i, ptr %34, i32 %36)
  %38 = load i32, ptr %len34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv.i)
  %cmp30.i = icmp ult i32 %38, %conv.i
  br i1 %cmp30.i, label %for.body.i.1, label %for.body.lr.ph.i.if.end42.i_crit_edge

for.body.lr.ph.i.if.end42.i_crit_edge:            ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

for.body.i.1:                                     ; preds = %for.body.lr.ph.i
  %add.i.1 = add i32 %38, %32
  %39 = inttoptr i32 %add.i.1 to ptr
  %vaddr.i.1 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %vaddr.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vaddr.i.1, align 4
  %len34.i.1 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %len34.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len34.i.1, align 4
  %44 = call ptr @memcpy(ptr %39, ptr %41, i32 %43)
  %45 = load i32, ptr %len34.i.1, align 4
  %add38.i.1 = add i32 %45, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i.1, i32 %conv.i)
  %cmp30.i.1 = icmp ult i32 %add38.i.1, %conv.i
  br i1 %cmp30.i.1, label %for.body.i.2, label %for.body.i.1.if.end42.i_crit_edge

for.body.i.1.if.end42.i_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %add.i.2 = add i32 %add38.i.1, %32
  %46 = inttoptr i32 %add.i.2 to ptr
  %vaddr.i.2 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %vaddr.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vaddr.i.2, align 4
  %len34.i.2 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %len34.i.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len34.i.2, align 4
  %51 = call ptr @memcpy(ptr %46, ptr %48, i32 %50)
  %52 = load i32, ptr %len34.i.2, align 4
  %add38.i.2 = add i32 %52, %add38.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i.2, i32 %conv.i)
  %cmp30.i.2 = icmp ult i32 %add38.i.2, %conv.i
  br i1 %cmp30.i.2, label %for.body.i.3, label %for.body.i.2.if.end42.i_crit_edge

for.body.i.2.if.end42.i_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %add.i.3 = add i32 %add38.i.2, %32
  %53 = inttoptr i32 %add.i.3 to ptr
  %vaddr.i.3 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %vaddr.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vaddr.i.3, align 4
  %len34.i.3 = getelementptr [4 x %struct.csio_dma_buf], ptr %msg.0, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %len34.i.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len34.i.3, align 4
  %58 = call ptr @memcpy(ptr %53, ptr %55, i32 %57)
  br label %if.end42.i

if.else.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data39.i = getelementptr inbounds %struct.csio_evt_msg, ptr %20, i32 0, i32 2
  %59 = call ptr @memcpy(ptr %data39.i, ptr %msg.0, i32 %conv.i)
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %for.body.i.3, %for.body.i.2.if.end42.i_crit_edge, %for.body.i.1.if.end42.i_crit_edge, %for.body.lr.ph.i.if.end42.i_crit_edge, %for.cond.preheader.i.if.end42.i_crit_edge
  %evt_active_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21
  %prev.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %call.i.i1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %61, ptr noundef %evt_active_q.i) #12
  br i1 %call.i.i1.i, label %if.end.i.i2.i, label %if.end42.i.csio_enqueue_evt_lock.exit_crit_edge

if.end42.i.csio_enqueue_evt_lock.exit_crit_edge:  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_enqueue_evt_lock.exit

if.end.i.i2.i:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %20, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %evt_active_q.i, ptr %20, align 4
  %64 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev.i3.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %20, ptr %61, align 4
  br label %csio_enqueue_evt_lock.exit

csio_enqueue_evt_lock.exit.thread53:              ; preds = %do.end19.i, %do.body5.i.csio_enqueue_evt_lock.exit.thread53_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #12
  br label %if.then30

csio_enqueue_evt_lock.exit:                       ; preds = %if.end.i.i2.i, %if.end42.i.csio_enqueue_evt_lock.exit_crit_edge
  %stats.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55
  %n_evt_freeq.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  %66 = ptrtoint ptr %n_evt_freeq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_evt_freeq.i, align 4
  %dec.i = add i32 %67, -1
  store i32 %dec.i, ptr %n_evt_freeq.i, align 4
  %68 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %stats.i, align 8
  %inc45.i = add i32 %69, 1
  store i32 %inc45.i, ptr %stats.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #12
  br label %cleanup

if.then30:                                        ; preds = %csio_enqueue_evt_lock.exit.thread53, %if.end26.if.then30_crit_edge
  %n_evt_drop = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %70 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_evt_drop, align 8
  %inc32 = add i32 %71, 1
  store i32 %inc32, ptr %n_evt_drop, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %csio_enqueue_evt_lock.exit, %do.end, %if.then3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_mgmt_req_lookup(ptr noundef readonly %mgmtm, ptr noundef readnone %io_req) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_q = getelementptr inbounds %struct.csio_mgmtm, ptr %mgmtm, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %active_q, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %active_q
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq ptr %tmp.0, %io_req
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_start(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  tail call void %1(ptr noundef %hw, i32 noundef 1) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %2 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_state.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, @csio_hws_ready
  %cmp.i = icmp eq ptr %3, @csio_hws_uninit
  %. = select i1 %cmp.i, i32 -22, i32 -19
  %retval.0 = select i1 %cmp.i.i.not, i32 0, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_uninit(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %evt)
  %cond = icmp eq i32 %evt, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @csio_hws_configuring, ptr %sm_state.i, align 4
  tail call fastcc void @csio_hw_configure(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %6 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_evt_unexp, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_stop(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  tail call void %1(ptr noundef %hw, i32 noundef 12) #12
  %2 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sm_state.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, @csio_hws_removing
  %. = select i1 %cmp.i.i.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_reset(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %rst_retries = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 37
  %2 = ptrtoint ptr %rst_retries to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rst_retries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  %inc = add nuw nsw i8 %3, 1
  %4 = ptrtoint ptr %rst_retries to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %inc, ptr %rst_retries, align 1
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sm_state.i, align 4
  tail call void %6(ptr noundef %hw, i32 noundef 9) #12
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm_state.i, align 4
  %cmp.i.i.not = icmp eq ptr %8, @csio_hws_ready
  br i1 %cmp.i.i.not, label %if.then6, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %rst_retries to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rst_retries, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %10) #12
  %conv9 = zext i32 %call8 to i64
  %n_reset_start = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 18
  %11 = ptrtoint ptr %n_reset_start to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv9, ptr %n_reset_start, align 8
  br label %return

return:                                           ; preds = %if.then6, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -1, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_hw_init(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %hw, ptr %hw, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hw, ptr %prev.i, align 4
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @csio_hws_uninit, ptr %sm_state.i.i, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @csio_hw_init.__key, i16 noundef signext 3) #12
  %sln_head = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16
  %3 = ptrtoint ptr %sln_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sln_head, ptr %sln_head, align 4
  %prev.i74 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sln_head, ptr %prev.i74, align 4
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.csio_hw_get_device_id.exit_crit_edge

entry.csio_hw_get_device_id.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_get_device_id.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %pci.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2
  %call.i = tail call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 0, ptr noundef %pci.i) #12
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %device_id.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2, i32 1
  %call4.i = tail call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 2, ptr noundef %device_id.i) #12
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %12, 64
  store i32 %or.i, ptr %flags.i, align 4
  %13 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device_id.i, align 2
  %15 = and i16 %14, -4096
  %chip_id.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 31
  %16 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %chip_id.i, align 2
  br label %csio_hw_get_device_id.exit

csio_hw_get_device_id.exit:                       ; preds = %if.end.i, %entry.csio_hw_get_device_id.exit_crit_edge
  %name = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 22
  %17 = call ptr @memcpy(ptr %name, ptr @.str.21, i32 21)
  %chip_ops = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 52
  %18 = ptrtoint ptr %chip_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @t5_ops, ptr %chip_ops, align 4
  %pci = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2
  %19 = ptrtoint ptr %pci to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pci, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5157, i16 %20)
  %cmp.i = icmp eq i16 %20, 5157
  br i1 %cmp.i, label %if.then.i, label %csio_hw_get_device_id.exit.csio_hw_set_description.exit_crit_edge

csio_hw_get_device_id.exit.csio_hw_set_description.exit_crit_edge: ; preds = %csio_hw_get_device_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_set_description.exit

if.then.i:                                        ; preds = %csio_hw_get_device_id.exit
  %device_id = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2, i32 1
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device_id, align 2
  %conv2.i = zext i16 %22 to i32
  %and.i75 = and i32 %conv2.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 22016, i32 %and.i75)
  %cmp5.i = icmp eq i32 %and.i75, 22016
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and4.i = and i32 %conv2.i, 255
  %hw_ver.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 23
  %arrayidx.i = getelementptr [22 x %struct.csio_adap_desc], ptr @csio_t5_fcoe_adapters, i32 0, i32 %and4.i
  %23 = call ptr @memcpy(ptr %hw_ver.i, ptr %arrayidx.i, i32 16)
  %model_desc.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 24
  %description.i = getelementptr [22 x %struct.csio_adap_desc], ptr @csio_t5_fcoe_adapters, i32 0, i32 %and4.i, i32 1
  %24 = call ptr @memcpy(ptr %model_desc.i, ptr %description.i, i32 32)
  br label %csio_hw_set_description.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_desc12.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 24
  %25 = call ptr @memcpy(ptr %model_desc12.i, ptr @__const.csio_hw_set_description.tempName, i32 32)
  br label %csio_hw_set_description.exit

csio_hw_set_description.exit:                     ; preds = %if.else.i, %if.then7.i, %csio_hw_get_device_id.exit.csio_hw_set_description.exit_crit_edge
  %26 = load i32, ptr @csio_dbg_level, align 4
  %log_level = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 3
  %27 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %log_level, align 4
  %fwevt_intr_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 47
  %28 = ptrtoint ptr %fwevt_intr_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %fwevt_intr_idx, align 8
  %nondata_intr_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 48
  %29 = ptrtoint ptr %nondata_intr_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %nondata_intr_idx, align 4
  %mbm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13
  %call6 = tail call i32 @csio_mbm_init(ptr noundef %mbm, ptr noundef %hw, ptr noundef nonnull @csio_hw_mb_timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %csio_hw_set_description.exit.cleanup_crit_edge

csio_hw_set_description.exit.cleanup_crit_edge:   ; preds = %csio_hw_set_description.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %csio_hw_set_description.exit
  %wrm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3
  %call7 = tail call i32 @csio_wrm_init(ptr noundef %wrm, ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_mbm_exit_crit_edge

if.end.err_mbm_exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_mbm_exit

if.end10:                                         ; preds = %if.end
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2
  %call11 = tail call i32 @csio_scsim_init(ptr noundef %scsim, ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_wrm_exit_crit_edge

if.end10.err_wrm_exit_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_wrm_exit

if.end14:                                         ; preds = %if.end10
  %mgmtm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12
  %mgmt_timer.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 8
  tail call void @init_timer_key(ptr noundef %mgmt_timer.i, ptr noundef nonnull @csio_mgmt_tmo_handler, i32 noundef 0, ptr noundef nonnull @.str.343, ptr noundef nonnull @csio_mgmtm_init.__key) #12
  %active_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 4
  %30 = ptrtoint ptr %active_q.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %active_q.i, ptr %active_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %active_q.i, ptr %prev.i.i, align 4
  %cbfn_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 6
  %32 = ptrtoint ptr %cbfn_q.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %cbfn_q.i, ptr %cbfn_q.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cbfn_q.i, ptr %prev.i1.i, align 4
  %34 = ptrtoint ptr %mgmtm to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hw, ptr %mgmtm, align 4
  %evt_active_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21
  %35 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %evt_active_q, ptr %evt_active_q, align 4
  %prev.i76 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21, i32 1
  %36 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %evt_active_q, ptr %prev.i76, align 4
  %evt_free_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %37 = ptrtoint ptr %evt_free_q to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %evt_free_q, ptr %evt_free_q, align 4
  %prev.i77 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20, i32 1
  %38 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %evt_free_q, ptr %prev.i77, align 4
  %n_evt_freeq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end14
  %i.081 = phi i32 [ 0, %if.end14 ], [ %inc27, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 524) #16
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end25

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #15
  tail call fastcc void @csio_evtq_cleanup(ptr noundef %hw)
  %call.i79 = tail call i32 @del_timer_sync(ptr noundef %mgmt_timer.i) #12
  tail call void @csio_scsim_exit(ptr noundef %scsim) #12
  br label %err_wrm_exit

if.end25:                                         ; preds = %for.body
  %42 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i77, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %43, ptr noundef %evt_free_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %prev.i77, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %evt_free_q, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  %48 = ptrtoint ptr %n_evt_freeq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_evt_freeq, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %n_evt_freeq, align 4
  %inc27 = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc27, 512
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %50 = load i32, ptr @dev_num, align 4
  %dev_num = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 40
  %51 = ptrtoint ptr %dev_num to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dev_num, align 4
  %inc28 = add i32 %50, 1
  store i32 %inc28, ptr @dev_num, align 4
  br label %cleanup

err_wrm_exit:                                     ; preds = %if.then21, %if.end10.err_wrm_exit_crit_edge
  %rv.1 = phi i32 [ %call11, %if.end10.err_wrm_exit_crit_edge ], [ -12, %if.then21 ]
  tail call void @csio_wrm_exit(ptr noundef %wrm, ptr noundef %hw) #12
  br label %err_mbm_exit

err_mbm_exit:                                     ; preds = %err_wrm_exit, %if.end.err_mbm_exit_crit_edge
  %rv.2 = phi i32 [ %call7, %if.end.err_mbm_exit_crit_edge ], [ %rv.1, %err_wrm_exit ]
  tail call void @csio_mbm_exit(ptr noundef %mbm) #12
  br label %cleanup

cleanup:                                          ; preds = %err_mbm_exit, %for.end, %csio_hw_set_description.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %csio_hw_set_description.exit.cleanup_crit_edge ], [ %rv.2, %err_mbm_exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mbm_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hw_mb_timer(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call = tail call ptr @csio_mb_tmo_handler(ptr noundef %1) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mb_cbfn, align 8
  tail call void %3(ptr noundef %1, ptr noundef nonnull %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wrm_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_scsim_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_evtq_cleanup(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %evt_active_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21
  %0 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %evt_active_q, align 4
  %cmp.i.not = icmp eq ptr %1, %evt_active_q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %evt_active_q, align 4
  %cmp.i.not.i = icmp eq ptr %3, %evt_active_q
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %evt_free_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %evt_free_q, ptr %7, align 4
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %evt_active_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %evt_active_q, ptr %evt_active_q, align 4
  store ptr %evt_active_q, ptr %prev2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %stats = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %stats, align 8
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, -5
  store i32 %and, ptr %flags, align 4
  %evt_free_q2 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %15 = ptrtoint ptr %evt_free_q2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %evt_free_q2, align 4
  %cmp.i22.not24 = icmp eq ptr %16, %evt_free_q2
  br i1 %cmp.i22.not24, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %n_evt_freeq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %evt_entry.025 = phi ptr [ %16, %for.body.lr.ph ], [ %next_entry.0, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %evt_entry.025 to i32
  call void @__asan_load4_noabort(i32 %17)
  %next_entry.0 = load ptr, ptr %evt_entry.025, align 4
  tail call void @kfree(ptr noundef %evt_entry.025) #12
  %18 = ptrtoint ptr %n_evt_freeq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_evt_freeq, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %n_evt_freeq, align 4
  %cmp.i22.not = icmp eq ptr %next_entry.0, %evt_free_q2
  br i1 %cmp.i22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %n_evt_freeq10 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  %20 = ptrtoint ptr %n_evt_freeq10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %n_evt_freeq10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_scsim_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_wrm_exit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mbm_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_hw_exit(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %evt_active_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21
  %0 = ptrtoint ptr %evt_active_q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %evt_active_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %evt_active_q.i
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %evt_active_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %evt_active_q.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %evt_active_q.i
  br i1 %cmp.i.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %evt_free_q.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %prev.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %evt_free_q.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %evt_active_q.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %evt_active_q.i, ptr %evt_active_q.i, align 4
  store ptr %evt_active_q.i, ptr %prev2.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %stats.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55
  %12 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %stats.i, align 8
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, -5
  store i32 %and.i, ptr %flags.i, align 4
  %evt_free_q2.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 20
  %15 = ptrtoint ptr %evt_free_q2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %evt_free_q2.i, align 4
  %cmp.i22.not24.i = icmp eq ptr %16, %evt_free_q2.i
  br i1 %cmp.i22.not24.i, label %if.end.i.csio_evtq_cleanup.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.csio_evtq_cleanup.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_evtq_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %n_evt_freeq.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %evt_entry.025.i = phi ptr [ %16, %for.body.lr.ph.i ], [ %next_entry.0.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %evt_entry.025.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %next_entry.0.i = load ptr, ptr %evt_entry.025.i, align 4
  tail call void @kfree(ptr noundef %evt_entry.025.i) #12
  %18 = ptrtoint ptr %n_evt_freeq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_evt_freeq.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %n_evt_freeq.i, align 4
  %cmp.i22.not.i = icmp eq ptr %next_entry.0.i, %evt_free_q2.i
  br i1 %cmp.i22.not.i, label %for.body.i.csio_evtq_cleanup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.csio_evtq_cleanup.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_evtq_cleanup.exit

csio_evtq_cleanup.exit:                           ; preds = %for.body.i.csio_evtq_cleanup.exit_crit_edge, %if.end.i.csio_evtq_cleanup.exit_crit_edge
  %n_evt_freeq10.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 1
  %20 = ptrtoint ptr %n_evt_freeq10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %n_evt_freeq10.i, align 4
  %mgmt_timer.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 12, i32 8
  %call.i = tail call i32 @del_timer_sync(ptr noundef %mgmt_timer.i) #12
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2
  tail call void @csio_scsim_exit(ptr noundef %scsim) #12
  %wrm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3
  tail call void @csio_wrm_exit(ptr noundef %wrm, ptr noundef %hw) #12
  %mbm = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13
  tail call void @csio_mbm_exit(ptr noundef %mbm) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_quiescing(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %evt)
  %cond = icmp eq i32 %evt, 8
  br i1 %cond, label %sw.bb, label %sw.default18

sw.bb:                                            ; preds = %entry
  %evtflag = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 10
  %5 = ptrtoint ptr %evtflag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %evtflag, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %6, label %sw.default [
    i32 11, label %sw.bb.sw.bb3_crit_edge
    i32 9, label %sw.bb.sw.bb3_crit_edge49
    i32 12, label %sw.bb7
    i32 13, label %sw.bb11
    i32 5, label %sw.bb13
  ]

sw.bb.sw.bb3_crit_edge49:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge49
  %sm_state.i44 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %sm_state.i44 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @csio_hws_resetting, ptr %sm_state.i44, align 4
  tail call void @csio_notify_lnodes(ptr noundef %hw, i32 noundef 4) #12
  %call = tail call i32 @csio_wr_destroy_queues(ptr noundef %hw, i1 noundef zeroext false) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !733
  tail call void @arm_heavy_mb() #12
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 103464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #12, !srcloc !700
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb3
  %__ms.041.i = phi i32 [ 2000, %sw.bb3 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.041.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #12
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %csio_do_reset.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

csio_do_reset.exit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %sm_state.i44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm_state.i44, align 4
  tail call void %13(ptr noundef %hw, i32 noundef 10) #12
  br label %sw.epilog22

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i46 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %sm_state.i46 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @csio_hws_removing, ptr %sm_state.i46, align 4
  tail call void @csio_notify_lnodes(ptr noundef %hw, i32 noundef 3) #12
  %call9 = tail call i32 @csio_wr_destroy_queues(ptr noundef %hw, i1 noundef zeroext true) #12
  tail call fastcc void @csio_do_bye(ptr noundef %hw)
  br label %sw.epilog22

sw.bb11:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i47 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %sm_state.i47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @csio_hws_quiesced, ptr %sm_state.i47, align 4
  br label %sw.epilog22

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i48 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %sm_state.i48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @csio_hws_pcierr, ptr %sm_state.i48, align 4
  %call15 = tail call i32 @csio_wr_destroy_queues(ptr noundef %hw, i1 noundef zeroext false) #12
  br label %sw.epilog22

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %17 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_evt_unexp, align 4
  %inc17 = add i32 %18, 1
  store i32 %inc17, ptr %n_evt_unexp, align 4
  br label %sw.epilog22

sw.default18:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp20 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %19 = ptrtoint ptr %n_evt_unexp20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_evt_unexp20, align 4
  %inc21 = add i32 %20, 1
  store i32 %inc21, ptr %n_evt_unexp20, align 4
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.default18, %sw.default, %sw.bb13, %sw.bb11, %sw.bb7, %csio_do_reset.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_scsim_cleanup_io(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_notify_lnodes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_resetting(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %evt)
  %cond = icmp eq i32 %evt, 10
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, -129
  store i32 %and.i, ptr %flags.i, align 4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_hws_configuring, ptr %sm_state.i, align 4
  tail call fastcc void @csio_hw_configure(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %8 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_evt_unexp, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_destroy_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_do_reset(ptr noundef %hw, i1 noundef zeroext %fw_rst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %fw_rst, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !733
  tail call void @arm_heavy_mb() #12
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 103464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #12, !srcloc !700
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body
  %__ms.041 = phi i32 [ 2000, %do.body ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.041, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #12
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %3 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 2592) #12
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %5 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @csio_mb_reset(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %call6 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.200) #15
  %9 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %10) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %pdev19 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.203, i32 noundef %call14) #15
  %13 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %14) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end18, %do.end11, %if.then4, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end18 ], [ 0, %if.end22 ], [ -12, %if.then4 ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_do_bye(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %0 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %2 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @csio_mb_bye(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, ptr noundef null) #12
  %call2 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.205) #15
  %6 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %7) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call) #12
  %8 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_quiesced(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %evt)
  %cond = icmp eq i32 %evt, 14
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @csio_hws_configuring, ptr %sm_state.i, align 4
  tail call fastcc void @csio_hw_configure(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %6 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_evt_unexp, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_pcierr(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %evt)
  %cond = icmp eq i32 %evt, 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, -129
  store i32 %and.i, ptr %flags.i, align 4
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @csio_hws_configuring, ptr %sm_state.i, align 4
  tail call fastcc void @csio_hw_configure(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %8 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_evt_unexp, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_configuring(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  %retval1.i.i = alloca i32, align 4
  %pcaps.i.i = alloca i32, align 4
  %acaps.i.i = alloca i32, align 4
  %param.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  %5 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %evt, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 12, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @csio_hws_initializing, ptr %sm_state.i, align 4
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end17.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end17.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %fw_state.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  %9 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end17.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %mb_mempool.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %11 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mb_mempool.i, align 4
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %12, i32 noundef 2592) #12
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.end.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  tail call void @csio_mb_initialize(ptr noundef %hw, ptr noundef nonnull %call.i, i32 noundef 10000, ptr noundef null) #12
  %call3.i = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #15
  br label %free_and_out.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.end15.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev13.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev13.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.27, i32 noundef %call7.i) #15
  br label %free_and_out.i

if.end15.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mb_mempool.i, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %18) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i, %land.lhs.true.i.if.end17.i_crit_edge, %sw.bb.if.end17.i_crit_edge
  %fres_info.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51
  %mb_mempool.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %19 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mb_mempool.i.i, align 4
  %call.i.i = tail call noalias ptr @mempool_alloc(ptr noundef %20, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %21 = ptrtoint ptr %n_err_nomem.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_err_nomem.i.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %n_err_nomem.i.i, align 4
  br label %do.end23.i

if.end.i.i:                                       ; preds = %if.end17.i
  tail call void @csio_fcoe_read_res_info_init_mb(ptr noundef %hw, ptr noundef nonnull %call.i.i, i32 noundef 10000, ptr noundef null) #12
  %call2.i.i = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end6.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38) #15
  %25 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i.i, ptr noundef %26) #12
  br label %do.end23.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %mb.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1
  %retval_len16.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %retval_len16.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retval_len16.i.i, align 4
  %shr.i.i = lshr i32 %28, 8
  %and.i.i = and i32 %shr.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %if.end26.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev11.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %29 = ptrtoint ptr %pdev11.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev11.i.i, align 8
  %dev12.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i.i, ptr noundef nonnull @.str.41, i32 noundef %and.i.i) #15
  %31 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i.i, ptr noundef %32) #12
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end10.i.i, %do.end.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %if.then.i.i ], [ -22, %do.end10.i.i ], [ -22, %do.end.i.i ]
  %pdev24.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %33 = ptrtoint ptr %pdev24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev24.i, align 8
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph.i) #15
  br label %sw.epilog

if.end26.i:                                       ; preds = %if.end6.i.i
  %e_d_tov.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %e_d_tov.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %e_d_tov.i.i, align 4
  %37 = ptrtoint ptr %fres_info.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %fres_info.i.i, align 4
  %r_a_tov_seq.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %r_a_tov_seq.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %r_a_tov_seq.i.i, align 2
  %r_a_tov_seq16.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 1
  %40 = ptrtoint ptr %r_a_tov_seq16.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %r_a_tov_seq16.i.i, align 2
  %r_a_tov_els.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %r_a_tov_els.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %r_a_tov_els.i.i, align 4
  %r_a_tov_els17.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 2
  %43 = ptrtoint ptr %r_a_tov_els17.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %r_a_tov_els17.i.i, align 4
  %r_r_tov.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %r_r_tov.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %r_r_tov.i.i, align 2
  %r_r_tov18.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 3
  %46 = ptrtoint ptr %r_r_tov18.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %r_r_tov18.i.i, align 2
  %max_xchgs.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %max_xchgs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_xchgs.i.i, align 4
  %max_xchgs19.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 4
  %49 = ptrtoint ptr %max_xchgs19.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_xchgs19.i.i, align 4
  %max_ssns.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 7
  %50 = ptrtoint ptr %max_ssns.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_ssns.i.i, align 4
  %max_ssns20.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 5
  %52 = ptrtoint ptr %max_ssns20.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_ssns20.i.i, align 4
  %used_xchgs.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %used_xchgs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used_xchgs.i.i, align 4
  %used_xchgs21.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 6
  %55 = ptrtoint ptr %used_xchgs21.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %used_xchgs21.i.i, align 4
  %used_ssns.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %used_ssns.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %used_ssns.i.i, align 4
  %used_ssns22.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 7
  %58 = ptrtoint ptr %used_ssns22.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %used_ssns22.i.i, align 4
  %max_fcfs.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %max_fcfs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_fcfs.i.i, align 4
  %max_fcfs23.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 8
  %61 = ptrtoint ptr %max_fcfs23.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %max_fcfs23.i.i, align 4
  %max_vnps.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 11
  %62 = ptrtoint ptr %max_vnps.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_vnps.i.i, align 4
  %max_vnps24.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 9
  %64 = ptrtoint ptr %max_vnps24.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_vnps24.i.i, align 4
  %used_fcfs.i.i = getelementptr inbounds %struct.csio_mb, ptr %call.i.i, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %used_fcfs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used_fcfs.i.i, align 4
  %used_fcfs25.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 10
  %67 = ptrtoint ptr %used_fcfs25.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %used_fcfs25.i.i, align 4
  %used_vnps.i.i = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb.i.i, i32 0, i32 13
  %68 = ptrtoint ptr %used_vnps.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %used_vnps.i.i, align 4
  %used_vnps26.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 51, i32 11
  %70 = ptrtoint ptr %used_vnps26.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %used_vnps26.i.i, align 4
  %71 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mb_mempool.i.i, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i.i, ptr noundef %72) #12
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %call27.i = tail call i32 @csio_config_queues(ptr noundef %hw) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp29.not.i = icmp eq i32 %call27.i, 0
  br i1 %cmp29.not.i, label %for.cond.preheader.i, label %do.end33.i

for.cond.preheader.i:                             ; preds = %if.end26.i
  %num_pports.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %73 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_pports.i, align 8
  %conv.i = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp37120.not.i = icmp eq i8 %74, 0
  br i1 %cmp37120.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev34.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %75 = ptrtoint ptr %pdev34.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev34.i, align 8
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.33, i32 noundef %call27.i) #15
  br label %sw.epilog

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0121.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mod_type.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0121.i, i32 6
  %77 = ptrtoint ptr %mod_type.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %mod_type.i, align 2
  %inc.i = add nuw nsw i32 %i.0121.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %and40.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %for.end.i.if.end57.i_crit_edge, label %land.lhs.true42.i

for.end.i.if.end57.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

land.lhs.true42.i:                                ; preds = %for.end.i
  %fw_state43.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  %80 = ptrtoint ptr %fw_state43.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fw_state43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp44.not.i = icmp eq i32 %81, 1
  br i1 %cmp44.not.i, label %land.lhs.true42.i.if.end57.i_crit_edge, label %if.then46.i

land.lhs.true42.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then46.i:                                      ; preds = %land.lhs.true42.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i.i) #12
  %82 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %retval1.i.i, align 4, !annotation !734
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcaps.i.i) #12
  %83 = ptrtoint ptr %pcaps.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %pcaps.i.i, align 4, !annotation !734
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acaps.i.i) #12
  %84 = ptrtoint ptr %acaps.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %acaps.i.i, align 4, !annotation !734
  %85 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mb_mempool.i.i, align 4
  %call.i97.i = tail call noalias ptr @mempool_alloc(ptr noundef %86, i32 noundef 2592) #12
  %tobool.not.i98.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool.not.i98.i, label %if.then.i101.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.then46.i
  %87 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_pports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp153.not.i.i = icmp eq i8 %88, 0
  br i1 %cmp153.not.i.i, label %for.cond.preheader.i.i.csio_enable_ports.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.csio_enable_ports.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_enable_ports.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pfn.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  br label %for.body.i.i

if.then.i101.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem.i99.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %89 = ptrtoint ptr %n_err_nomem.i99.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_err_nomem.i99.i, align 4
  %inc.i100.i = add i32 %90, 1
  store i32 %inc.i100.i, ptr %n_err_nomem.i99.i, align 4
  br label %do.end53.i

for.cond.i.i:                                     ; preds = %if.end56.i.i
  %inc69.i.i = add nuw nsw i32 %i.0155.i.i, 1
  %91 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_pports.i, align 8
  %conv.i.i = zext i8 %92 to i32
  %cmp.i.i = icmp ult i32 %inc69.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.csio_enable_ports.exit.i_crit_edge

for.cond.i.i.csio_enable_ports.exit.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_enable_ports.exit.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0155.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc69.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %fw_caps.0154.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %fw_caps.2.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %portid3.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 2
  %93 = ptrtoint ptr %portid3.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %portid3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fw_caps.0154.i.i)
  %cmp5.i.i = icmp eq i16 %fw_caps.0154.i.i, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %for.body.i.i.if.end18.i.i_crit_edge

for.body.i.i.if.end18.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %95 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 37355520, ptr %param.i.i, align 4
  %96 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %val.i.i, align 4
  %97 = ptrtoint ptr %pfn.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pfn.i.i, align 8
  %conv8.i.i = zext i8 %98 to i32
  call void @csio_mb_params(ptr noundef %hw, ptr noundef nonnull %call.i97.i, i32 noundef 10000, i32 noundef %conv8.i.i, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param.i.i, ptr noundef nonnull %val.i.i, i1 noundef zeroext true, ptr noundef null) #12
  %call9.i.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i97.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %cleanup.thread.i.i, label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @csio_mb_process_read_params_rsp(ptr noundef %hw, ptr noundef nonnull %call.i97.i, ptr noundef nonnull %retval1.i.i, i32 noundef 0, ptr noundef null) #12
  %99 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %retval1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool15.not.i.i = icmp eq i32 %100, 0
  %conv16.i.i = select i1 %tobool15.not.i.i, i16 2, i16 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #12
  br label %if.end18.i.i

cleanup.i.i:                                      ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i102.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %101 = ptrtoint ptr %pdev.i102.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i102.i, align 8
  %dev.i103.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %conv12.i.i = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i103.i, ptr noundef nonnull @.str.43, i32 noundef %conv12.i.i) #15
  %103 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %104) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #12
  br label %do.end53.i

if.end18.i.i:                                     ; preds = %cleanup.thread.i.i, %for.body.i.i.if.end18.i.i_crit_edge
  %fw_caps.2.i.i = phi i16 [ %fw_caps.0154.i.i, %for.body.i.i.if.end18.i.i_crit_edge ], [ %conv16.i.i, %cleanup.thread.i.i ]
  call void @csio_mb_port(ptr noundef %hw, ptr noundef nonnull %call.i97.i, i32 noundef 10000, i8 noundef zeroext %94, i1 noundef zeroext false, i32 noundef 0, i16 noundef zeroext %fw_caps.2.i.i, ptr noundef null) #12
  %call19.i.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i97.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end29.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev25.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %105 = ptrtoint ptr %pdev25.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev25.i.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %conv27.i.i = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.46, i32 noundef %conv27.i.i) #15
  %107 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %108) #12
  br label %do.end53.i

if.end29.i.i:                                     ; preds = %if.end18.i.i
  call void @csio_mb_process_read_port_rsp(ptr noundef %hw, ptr noundef nonnull %call.i97.i, ptr noundef nonnull %retval1.i.i, i16 noundef zeroext %fw_caps.2.i.i, ptr noundef nonnull %pcaps.i.i, ptr noundef nonnull %acaps.i.i) #12
  %109 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %retval1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp30.not.i.i = icmp eq i32 %110, 0
  br i1 %cmp30.not.i.i, label %if.end40.i.i, label %do.end35.i.i

do.end35.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev36.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %111 = ptrtoint ptr %pdev36.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev36.i.i, align 8
  %dev37.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %conv38.i.i = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i.i, ptr noundef nonnull @.str.49, i32 noundef %conv38.i.i, i32 noundef %110) #15
  %113 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %114) #12
  br label %do.end53.i

if.end40.i.i:                                     ; preds = %if.end29.i.i
  %link_cfg.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10
  %115 = ptrtoint ptr %pcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pcaps.i.i, align 4
  %117 = ptrtoint ptr %acaps.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %acaps.i.i, align 4
  %119 = ptrtoint ptr %link_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %116, ptr %link_cfg.i.i, align 4
  %def_acaps.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 1
  %120 = ptrtoint ptr %def_acaps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %118, ptr %def_acaps.i.i.i, align 4
  %lpacaps.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 3
  %121 = ptrtoint ptr %lpacaps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %lpacaps.i.i.i, align 4
  %speed_caps.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 4
  %122 = ptrtoint ptr %speed_caps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %speed_caps.i.i.i, align 4
  %speed.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 5
  %123 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %speed.i.i.i, align 4
  %requested_fc.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 6
  %124 = ptrtoint ptr %requested_fc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 3, ptr %requested_fc.i.i.i, align 4
  %fc.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 7
  %125 = ptrtoint ptr %fc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %fc.i.i.i, align 4
  %requested_fec.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 8
  %126 = ptrtoint ptr %requested_fec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %requested_fec.i.i.i, align 4
  %and.i.i.i.i = lshr i32 %118, 22
  %127 = and i32 %and.i.i.i.i, 6
  %fec.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 9
  %128 = ptrtoint ptr %fec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %fec.i.i.i, align 4
  %and.i.i.i = and i32 %116, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end40.i.i.csio_init_link_config.exit.i.i_crit_edge, label %if.then.i.i.i

if.end40.i.i.csio_init_link_config.exit.i.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_init_link_config.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %116, 1052671
  %129 = ptrtoint ptr %requested_fc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 7, ptr %requested_fc.i.i.i, align 4
  br label %csio_init_link_config.exit.i.i

csio_init_link_config.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end40.i.i.csio_init_link_config.exit.i.i_crit_edge
  %and6.sink.i.i.i = phi i32 [ %and6.i.i.i, %if.then.i.i.i ], [ 0, %if.end40.i.i.csio_init_link_config.exit.i.i_crit_edge ]
  %.sink.i.i.i = phi i8 [ 1, %if.then.i.i.i ], [ 0, %if.end40.i.i.csio_init_link_config.exit.i.i_crit_edge ]
  %130 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 2
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and6.sink.i.i.i, ptr %130, align 4
  %132 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 10
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink.i.i.i, ptr %132, align 4
  %link_ok.i.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.0155.i.i, i32 10, i32 11
  %134 = ptrtoint ptr %link_ok.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %link_ok.i.i.i, align 1
  %135 = ptrtoint ptr %requested_fc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %requested_fc.i.i.i, align 4
  %and.i.i135.i.i = shl i32 %136, 16
  %137 = and i32 %and.i.i135.i.i, 196608
  %138 = ptrtoint ptr %requested_fec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %requested_fec.i.i.i, align 4
  %and.i137.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137.i.i)
  %tobool.not.i138.i.i = icmp eq i32 %and.i137.i.i, 0
  br i1 %tobool.not.i138.i.i, label %csio_init_link_config.exit.i.i.if.end.i.i.i_crit_edge, label %if.then.i140.i.i

csio_init_link_config.exit.i.i.if.end.i.i.i_crit_edge: ; preds = %csio_init_link_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i140.i.i:                                 ; preds = %csio_init_link_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %def_acaps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %def_acaps.i.i.i, align 4
  %and.i1.i.i.i = lshr i32 %141, 22
  %142 = and i32 %and.i1.i.i.i, 6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i140.i.i, %csio_init_link_config.exit.i.i.if.end.i.i.i_crit_edge
  %cc_fec.0.i.i.i = phi i32 [ %142, %if.then.i140.i.i ], [ %139, %csio_init_link_config.exit.i.i.if.end.i.i.i_crit_edge ]
  %and.i2.i.i.i = shl i32 %cc_fec.0.i.i.i, 22
  %143 = and i32 %and.i2.i.i.i, 25165824
  %144 = ptrtoint ptr %link_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %link_cfg.i.i, align 4
  %and4.i.i.i = and i32 %145, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.else12.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and8.i.i.i = and i32 %145, 1052671
  %or.i.i.i = or i32 %143, %137
  %or9.i.i.i = or i32 %or.i.i.i, %and8.i.i.i
  %and11.i.i.i = and i32 %136, -5
  %146 = ptrtoint ptr %fc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and11.i.i.i, ptr %fc.i.i.i, align 4
  %147 = ptrtoint ptr %fec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %cc_fec.0.i.i.i, ptr %fec.i.i.i, align 4
  br label %csio_link_l1cfg.exit.i.i

if.else12.i.i.i:                                  ; preds = %if.end.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then14.i.i.i, label %if.else22.i.i.i

if.then14.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %speed_caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %speed_caps.i.i.i, align 4
  %or15.i.i.i = or i32 %143, %137
  %or16.i.i.i = or i32 %or15.i.i.i, %149
  %or17.i.i.i = or i32 %or16.i.i.i, 2097152
  %and19.i.i.i = and i32 %136, -5
  %150 = ptrtoint ptr %fc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %and19.i.i.i, ptr %fc.i.i.i, align 4
  %151 = ptrtoint ptr %fec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %cc_fec.0.i.i.i, ptr %fec.i.i.i, align 4
  br label %csio_link_l1cfg.exit.i.i

if.else22.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or23.i.i.i = or i32 %143, %137
  %or24.i.i.i = or i32 %or23.i.i.i, %and6.sink.i.i.i
  %or25.i.i.i = or i32 %or24.i.i.i, 2097152
  br label %csio_link_l1cfg.exit.i.i

csio_link_l1cfg.exit.i.i:                         ; preds = %if.else22.i.i.i, %if.then14.i.i.i, %if.then6.i.i.i
  %lrcap.0.i.i.i = phi i32 [ %or17.i.i.i, %if.then14.i.i.i ], [ %or25.i.i.i, %if.else22.i.i.i ], [ %or9.i.i.i, %if.then6.i.i.i ]
  call void @csio_mb_port(ptr noundef %hw, ptr noundef nonnull %call.i97.i, i32 noundef 10000, i8 noundef zeroext %94, i1 noundef zeroext true, i32 noundef %lrcap.0.i.i.i, i16 noundef zeroext %fw_caps.2.i.i, ptr noundef null) #12
  %call46.i.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i97.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %tobool47.not.i.i = icmp eq i32 %call46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end56.i.i, label %do.end51.i.i

do.end51.i.i:                                     ; preds = %csio_link_l1cfg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev52.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %152 = ptrtoint ptr %pdev52.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdev52.i.i, align 8
  %dev53.i.i = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %conv54.i.i = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i.i, ptr noundef nonnull @.str.52, i32 noundef %conv54.i.i) #15
  %154 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %155) #12
  br label %do.end53.i

if.end56.i.i:                                     ; preds = %csio_link_l1cfg.exit.i.i
  %call57.i.i = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call.i97.i) #12
  %156 = ptrtoint ptr %retval1.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call57.i.i, ptr %retval1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %cmp58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %cmp58.not.i.i, label %for.cond.i.i, label %do.end63.i.i

do.end63.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev64.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %157 = ptrtoint ptr %pdev64.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdev64.i.i, align 8
  %dev65.i.i = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  %conv66.i.i = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65.i.i, ptr noundef nonnull @.str.55, i32 noundef %conv66.i.i, i32 noundef %call57.i.i) #15
  %159 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %160) #12
  br label %do.end53.i

csio_enable_ports.exit.i:                         ; preds = %for.cond.i.i.csio_enable_ports.exit.i_crit_edge, %for.cond.preheader.i.i.csio_enable_ports.exit.i_crit_edge
  %161 = ptrtoint ptr %mb_mempool.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mb_mempool.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i97.i, ptr noundef %162) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acaps.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcaps.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i) #12
  br label %if.end57.i

do.end53.i:                                       ; preds = %do.end63.i.i, %do.end51.i.i, %do.end35.i.i, %do.end24.i.i, %cleanup.i.i, %if.then.i101.i
  %retval.3.i.ph.i = phi i32 [ -12, %if.then.i101.i ], [ -22, %cleanup.i.i ], [ -22, %do.end63.i.i ], [ -22, %do.end51.i.i ], [ -22, %do.end35.i.i ], [ -22, %do.end24.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acaps.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcaps.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i.i) #12
  %pdev54.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %163 = ptrtoint ptr %pdev54.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdev54.i, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %164, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull @.str.36, i32 noundef %retval.3.i.ph.i) #15
  br label %sw.epilog

if.end57.i:                                       ; preds = %csio_enable_ports.exit.i, %land.lhs.true42.i.if.end57.i_crit_edge, %for.end.i.if.end57.i_crit_edge
  %165 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sm_state.i, align 4
  call void %166(ptr noundef %hw, i32 noundef 3) #12
  br label %sw.epilog

free_and_out.i:                                   ; preds = %do.end12.i, %do.end.i
  %167 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mb_mempool.i, align 4
  tail call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %168) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i21 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %169 = ptrtoint ptr %sm_state.i21 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @csio_hws_ready, ptr %sm_state.i21, align 4
  tail call void @csio_notify_lnodes(ptr noundef %hw, i32 noundef 1) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i22 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %170 = ptrtoint ptr %sm_state.i22 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @csio_hws_uninit, ptr %sm_state.i22, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_do_bye(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %171 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %n_evt_unexp, align 4
  %inc8 = add i32 %172, 1
  store i32 %inc8, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb2, %free_and_out.i, %if.end57.i, %do.end53.i, %do.end33.i, %do.end23.i, %if.then.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_hw_configure(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %retval1.i = alloca i32, align 4
  %mpfn.i = alloca i8, align 1
  %state_str.i = alloca [16 x i8], align 8
  %flashid.i = alloca i32, align 4
  %reset = alloca i32, align 4
  %param = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset) #12
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %reset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param, align 4, !annotation !734
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regstart.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 103424
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp3.i = icmp eq i32 %4, -1
  br i1 %cmp3.i, label %entry.while.body5.i_crit_edge, label %entry.csio_hw_dev_ready.exit_crit_edge

entry.csio_hw_dev_ready.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_dev_ready.exit

entry.while.body5.i_crit_edge:                    ; preds = %entry
  br label %while.body5.i

while.cond.loopexit.i:                            ; preds = %while.body5.i
  %5 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 103424
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %while.cond.loopexit.i.while.body5.1.i_crit_edge, label %while.cond.loopexit.i.csio_hw_dev_ready.exit_crit_edge

while.cond.loopexit.i.csio_hw_dev_ready.exit_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_dev_ready.exit

while.cond.loopexit.i.while.body5.1.i_crit_edge:  ; preds = %while.cond.loopexit.i
  br label %while.body5.1.i

while.body5.1.i:                                  ; preds = %while.body5.1.i.while.body5.1.i_crit_edge, %while.cond.loopexit.i.while.body5.1.i_crit_edge
  %__ms.01.1.i = phi i32 [ %dec4.1.i, %while.body5.1.i.while.body5.1.i_crit_edge ], [ 100, %while.cond.loopexit.i.while.body5.1.i_crit_edge ]
  %dec4.1.i = add nsw i32 %__ms.01.1.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #12
  %tobool.not.1.i = icmp eq i32 %dec4.1.i, 0
  br i1 %tobool.not.1.i, label %while.cond.loopexit.1.i, label %while.body5.1.i.while.body5.1.i_crit_edge

while.body5.1.i.while.body5.1.i_crit_edge:        ; preds = %while.body5.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.1.i

while.cond.loopexit.1.i:                          ; preds = %while.body5.1.i
  %9 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %10, i32 103424
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.1.i = icmp eq i32 %11, -1
  br i1 %cmp.1.i, label %while.cond.loopexit.1.i.while.body5.2.i_crit_edge, label %while.cond.loopexit.1.i.csio_hw_dev_ready.exit_crit_edge

while.cond.loopexit.1.i.csio_hw_dev_ready.exit_crit_edge: ; preds = %while.cond.loopexit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_dev_ready.exit

while.cond.loopexit.1.i.while.body5.2.i_crit_edge: ; preds = %while.cond.loopexit.1.i
  br label %while.body5.2.i

while.body5.2.i:                                  ; preds = %while.body5.2.i.while.body5.2.i_crit_edge, %while.cond.loopexit.1.i.while.body5.2.i_crit_edge
  %__ms.01.2.i = phi i32 [ %dec4.2.i, %while.body5.2.i.while.body5.2.i_crit_edge ], [ 100, %while.cond.loopexit.1.i.while.body5.2.i_crit_edge ]
  %dec4.2.i = add nsw i32 %__ms.01.2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #12
  %tobool.not.2.i = icmp eq i32 %dec4.2.i, 0
  br i1 %tobool.not.2.i, label %while.cond.loopexit.2.i, label %while.body5.2.i.while.body5.2.i_crit_edge

while.body5.2.i.while.body5.2.i_crit_edge:        ; preds = %while.body5.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.2.i

while.cond.loopexit.2.i:                          ; preds = %while.body5.2.i
  %13 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regstart.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %14, i32 103424
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.2.i = icmp eq i32 %15, -1
  br i1 %cmp.2.i, label %while.cond.loopexit.2.i.while.body5.3.i_crit_edge, label %while.cond.loopexit.2.i.csio_hw_dev_ready.exit_crit_edge

while.cond.loopexit.2.i.csio_hw_dev_ready.exit_crit_edge: ; preds = %while.cond.loopexit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_dev_ready.exit

while.cond.loopexit.2.i.while.body5.3.i_crit_edge: ; preds = %while.cond.loopexit.2.i
  br label %while.body5.3.i

while.body5.3.i:                                  ; preds = %while.body5.3.i.while.body5.3.i_crit_edge, %while.cond.loopexit.2.i.while.body5.3.i_crit_edge
  %__ms.01.3.i = phi i32 [ %dec4.3.i, %while.body5.3.i.while.body5.3.i_crit_edge ], [ 100, %while.cond.loopexit.2.i.while.body5.3.i_crit_edge ]
  %dec4.3.i = add nsw i32 %__ms.01.3.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #12
  %tobool.not.3.i = icmp eq i32 %dec4.3.i, 0
  br i1 %tobool.not.3.i, label %while.cond.loopexit.3.i, label %while.body5.3.i.while.body5.3.i_crit_edge

while.body5.3.i.while.body5.3.i_crit_edge:        ; preds = %while.body5.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.3.i

while.cond.loopexit.3.i:                          ; preds = %while.body5.3.i
  %17 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %18, i32 103424
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.3.i = icmp eq i32 %19, -1
  br i1 %cmp.3.i, label %while.cond.loopexit.3.i.while.body5.4.i_crit_edge, label %while.cond.loopexit.3.i.csio_hw_dev_ready.exit_crit_edge

while.cond.loopexit.3.i.csio_hw_dev_ready.exit_crit_edge: ; preds = %while.cond.loopexit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_dev_ready.exit

while.cond.loopexit.3.i.while.body5.4.i_crit_edge: ; preds = %while.cond.loopexit.3.i
  br label %while.body5.4.i

while.body5.4.i:                                  ; preds = %while.body5.4.i.while.body5.4.i_crit_edge, %while.cond.loopexit.3.i.while.body5.4.i_crit_edge
  %__ms.01.4.i = phi i32 [ %dec4.4.i, %while.body5.4.i.while.body5.4.i_crit_edge ], [ 100, %while.cond.loopexit.3.i.while.body5.4.i_crit_edge ]
  %dec4.4.i = add nsw i32 %__ms.01.4.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #12
  %tobool.not.4.i = icmp eq i32 %dec4.4.i, 0
  br i1 %tobool.not.4.i, label %while.cond.loopexit.4.i, label %while.body5.4.i.while.body5.4.i_crit_edge

while.body5.4.i.while.body5.4.i_crit_edge:        ; preds = %while.body5.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.4.i

while.cond.loopexit.4.i:                          ; preds = %while.body5.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regstart.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %22, i32 103424
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  br label %csio_hw_dev_ready.exit

while.body5.i:                                    ; preds = %while.body5.i.while.body5.i_crit_edge, %entry.while.body5.i_crit_edge
  %__ms.01.i = phi i32 [ %dec4.i, %while.body5.i.while.body5.i_crit_edge ], [ 100, %entry.while.body5.i_crit_edge ]
  %dec4.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  %tobool.not.i = icmp eq i32 %dec4.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i, label %while.body5.i.while.body5.i_crit_edge

while.body5.i.while.body5.i_crit_edge:            ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.i

csio_hw_dev_ready.exit:                           ; preds = %while.cond.loopexit.4.i, %while.cond.loopexit.3.i.csio_hw_dev_ready.exit_crit_edge, %while.cond.loopexit.2.i.csio_hw_dev_ready.exit_crit_edge, %while.cond.loopexit.1.i.csio_hw_dev_ready.exit_crit_edge, %while.cond.loopexit.i.csio_hw_dev_ready.exit_crit_edge, %entry.csio_hw_dev_ready.exit_crit_edge
  %.lcssa.i = phi i32 [ %4, %entry.csio_hw_dev_ready.exit_crit_edge ], [ %7, %while.cond.loopexit.i.csio_hw_dev_ready.exit_crit_edge ], [ %11, %while.cond.loopexit.1.i.csio_hw_dev_ready.exit_crit_edge ], [ %15, %while.cond.loopexit.2.i.csio_hw_dev_ready.exit_crit_edge ], [ %19, %while.cond.loopexit.3.i.csio_hw_dev_ready.exit_crit_edge ], [ %23, %while.cond.loopexit.4.i ]
  %25 = tail call i32 @llvm.bswap.i32(i32 %.lcssa.i) #12
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device.i, align 2
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %30)
  %cmp.i.not.i = icmp eq i16 %30, 20480
  %src_pf.0.in.v.i = select i1 %cmp.i.not.i, i32 8, i32 9
  %src_pf.0.in.i = lshr i32 %25, %src_pf.0.in.v.i
  %31 = trunc i32 %src_pf.0.in.i to i8
  %conv22.i = and i8 %31, 7
  %pfn.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %32 = ptrtoint ptr %pfn.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv22.i, ptr %pfn.i, align 8
  %33 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regstart.i, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 103484
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !736
  %conv = trunc i32 %36 to i8
  %chip_ver = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 30
  %37 = ptrtoint ptr %chip_ver to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %chip_ver, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashid.i) #12
  %38 = ptrtoint ptr %flashid.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flashid.i, align 4
  %call.i = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 159) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i163 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i163, label %if.then.i, label %csio_hw_dev_ready.exit.do.body.i_crit_edge

csio_hw_dev_ready.exit.do.body.i_crit_edge:       ; preds = %csio_hw_dev_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then.i:                                        ; preds = %csio_hw_dev_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @csio_hw_sf1_read(ptr noundef %hw, i32 noundef 3, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %flashid.i) #12
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %csio_hw_dev_ready.exit.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %csio_hw_dev_ready.exit.do.body.i_crit_edge ], [ %call1.i, %if.then.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !737
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %40, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 0) #12, !srcloc !700
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool2.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool2.not.i, label %for.body.i, label %do.end

for.body.i:                                       ; preds = %do.body.i
  %41 = ptrtoint ptr %flashid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flashid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1376769, i32 %42)
  %cmp5.i = icmp eq i32 %42, 1376769
  br i1 %cmp5.i, label %if.then6.i, label %for.end.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %params.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %43 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4194304, ptr %params.i, align 8
  br label %found.i

for.end.i:                                        ; preds = %for.body.i
  %trunc.i = trunc i32 %42 to i8
  %44 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.349)
  switch i8 %trunc.i, label %for.end.i.do.end34.i_crit_edge [
    i8 32, label %sw.bb.i
    i8 -99, label %sw.bb17.i
    i8 -62, label %for.end.i.sw.bb23.i_crit_edge
    i8 -17, label %for.end.i.sw.bb23.i_crit_edge322
  ]

for.end.i.sw.bb23.i_crit_edge322:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23.i

for.end.i.sw.bb23.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23.i

for.end.i.do.end34.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34.i

sw.bb.i:                                          ; preds = %for.end.i
  %shr.i = lshr i32 %42, 16
  %trunc83.i = trunc i32 %shr.i to i8
  %45 = zext i8 %trunc83.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.350)
  switch i8 %trunc83.i, label %sw.bb.i.do.end34.i_crit_edge [
    i8 20, label %sw.bb.i.sw.bb13.i_crit_edge
    i8 21, label %sw.bb.i.sw.bb13.i_crit_edge323
    i8 22, label %sw.bb.i.sw.bb13.i_crit_edge324
    i8 23, label %sw.bb.i.sw.bb13.i_crit_edge325
    i8 24, label %sw.bb.i.sw.bb13.i_crit_edge326
    i8 25, label %sw.bb.i.sw.bb13.i_crit_edge327
    i8 32, label %sw.bb.i.if.end35.i_crit_edge
    i8 33, label %sw.bb15.i
    i8 34, label %sw.bb16.i
  ]

sw.bb.i.if.end35.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

sw.bb.i.sw.bb13.i_crit_edge327:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.sw.bb13.i_crit_edge326:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.sw.bb13.i_crit_edge325:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.sw.bb13.i_crit_edge324:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.sw.bb13.i_crit_edge323:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.sw.bb13.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

sw.bb.i.do.end34.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34.i

sw.bb13.i:                                        ; preds = %sw.bb.i.sw.bb13.i_crit_edge, %sw.bb.i.sw.bb13.i_crit_edge323, %sw.bb.i.sw.bb13.i_crit_edge324, %sw.bb.i.sw.bb13.i_crit_edge325, %sw.bb.i.sw.bb13.i_crit_edge326, %sw.bb.i.sw.bb13.i_crit_edge327
  %and12.i = and i32 %shr.i, 255
  %shl.i = shl nuw i32 1, %and12.i
  br label %if.end35.i

sw.bb15.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

sw.bb16.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

sw.bb17.i:                                        ; preds = %for.end.i
  %shr18.i = lshr i32 %42, 16
  %trunc82.i = trunc i32 %shr18.i to i8
  %46 = zext i8 %trunc82.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.351)
  switch i8 %trunc82.i, label %sw.bb17.i.do.end34.i_crit_edge [
    i8 22, label %sw.bb17.i.if.end35.i_crit_edge
    i8 23, label %if.end35.fold.split.i
  ]

sw.bb17.i.if.end35.i_crit_edge:                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

sw.bb17.i.do.end34.i_crit_edge:                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34.i

sw.bb23.i:                                        ; preds = %for.end.i.sw.bb23.i_crit_edge, %for.end.i.sw.bb23.i_crit_edge322
  %shr24.i = lshr i32 %42, 16
  %trunc80.i = trunc i32 %shr24.i to i8
  %trunc80.off.i = add i8 %trunc80.i, -23
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trunc80.off.i)
  %switch.i = icmp ult i8 %trunc80.off.i, 2
  br i1 %switch.i, label %sw.bb26.i, label %sw.bb23.i.do.end34.i_crit_edge

sw.bb23.i.do.end34.i_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34.i

sw.bb26.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #14
  %and25.i = and i32 %shr24.i, 255
  %shl27.i = shl nuw i32 1, %and25.i
  br label %if.end35.i

do.end34.i:                                       ; preds = %sw.bb23.i.do.end34.i_crit_edge, %sw.bb17.i.do.end34.i_crit_edge, %sw.bb.i.do.end34.i_crit_edge, %for.end.i.do.end34.i_crit_edge
  %47 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef %42) #15
  br label %if.end35.i

if.end35.fold.split.i:                            ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.fold.split.i, %do.end34.i, %sw.bb26.i, %sw.bb17.i.if.end35.i_crit_edge, %sw.bb16.i, %sw.bb15.i, %sw.bb13.i, %sw.bb.i.if.end35.i_crit_edge
  %size.1.i = phi i32 [ 4194304, %do.end34.i ], [ %shl.i, %sw.bb13.i ], [ 134217728, %sw.bb15.i ], [ 268435456, %sw.bb16.i ], [ %shl27.i, %sw.bb26.i ], [ 67108864, %sw.bb.i.if.end35.i_crit_edge ], [ 33554432, %sw.bb17.i.if.end35.i_crit_edge ], [ 67108864, %if.end35.fold.split.i ]
  %params36.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %49 = ptrtoint ptr %params36.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %size.1.i, ptr %params36.i, align 8
  %div3881.i = lshr i32 %size.1.i, 16
  br label %found.i

found.i:                                          ; preds = %if.end35.i, %if.then6.i
  %div3881.sink.i = phi i32 [ %div3881.i, %if.end35.i ], [ 64, %if.then6.i ]
  %sf_nsec40.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 1
  %50 = ptrtoint ptr %sf_nsec40.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div3881.sink.i, ptr %sf_nsec40.i, align 4
  %params41.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %51 = ptrtoint ptr %params41.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %params41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %52)
  %cmp43.i = icmp ult i32 %52, 2097152
  br i1 %cmp43.i, label %do.end47.i, label %found.i.if.end8_crit_edge

found.i.if.end8_crit_edge:                        ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end47.i:                                       ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev49.i, ptr noundef nonnull @.str.73, i32 noundef %42, i32 noundef %52, i32 noundef 2097152) #15
  br label %if.end8

do.end:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashid.i) #12
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %ret.0.i) #15
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %57 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sm_state.i, align 4
  tail call void %58(ptr noundef %hw, i32 noundef 4) #12
  br label %out

if.end8:                                          ; preds = %do.end47.i, %found.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashid.i) #12
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not = icmp eq i8 %62, 0
  br i1 %tobool.i.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %60, i32 noundef 40, i16 noundef zeroext 15, i16 noundef zeroext 13) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %chip_ops = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 52
  %63 = ptrtoint ptr %chip_ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip_ops, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call15 = tail call i32 %66(ptr noundef %hw, i32 noundef 6) #12
  %fwrev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 28
  %call.i167 = tail call fastcc i32 @csio_hw_read_flash(ptr noundef %hw, i32 noundef 524292, i32 noundef 1, ptr noundef %fwrev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp17.not = icmp eq i32 %call.i167, 0
  br i1 %cmp17.not, label %if.end20, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end14
  %67 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i, align 8
  %dev.i169 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %fwrev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fwrev, align 8
  %shr.i170 = lshr i32 %70, 24
  %shr2.i = lshr i32 %70, 16
  %and3.i = and i32 %shr2.i, 255
  %shr5.i = lshr i32 %70, 8
  %and6.i = and i32 %shr5.i, 255
  %and9.i = and i32 %70, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i169, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.59, i32 noundef %shr.i170, i32 noundef %and3.i, i32 noundef %and6.i, i32 noundef %and9.i) #15
  %fw_state = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #12
  %71 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %retval1.i, align 4, !annotation !734
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mpfn.i) #12
  %72 = ptrtoint ptr %mpfn.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %mpfn.i, align 1, !annotation !734
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state_str.i) #12
  %73 = call ptr @memset(ptr %state_str.i, i32 0, i32 16)
  %mb_mempool.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %74 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mb_mempool.i, align 4
  %call.i171 = tail call noalias ptr @mempool_alloc(ptr noundef %75, i32 noundef 2592) #12
  %tobool.not.i172 = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i172, label %csio_do_hello.exit.thread, label %retry.preheader.i

retry.preheader.i:                                ; preds = %if.end20
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  br label %retry.i

csio_do_hello.exit.thread:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %76 = ptrtoint ptr %n_err_nomem.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_err_nomem.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %n_err_nomem.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state_str.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mpfn.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #12
  br label %if.then24

retry.i:                                          ; preds = %if.then32.i.retry.i_crit_edge, %retry.preheader.i
  %retries.0.i = phi i32 [ %dec.i, %if.then32.i.retry.i_crit_edge ], [ 3, %retry.preheader.i ]
  %78 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pfn.i, align 8
  %conv.i = zext i8 %79 to i32
  call void @csio_mb_hello(ptr noundef %hw, ptr noundef nonnull %call.i171, i32 noundef 10000, i32 noundef %conv.i, i32 noundef %conv.i, i32 noundef 1, ptr noundef null) #12
  %call4.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i171) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev.i, align 8
  %dev.i177 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i177, ptr noundef nonnull @.str.77, i32 noundef %call4.i) #15
  br label %csio_do_hello.exit.thread206

if.end7.i:                                        ; preds = %retry.i
  call void @csio_mb_process_hello_rsp(ptr noundef %hw, ptr noundef nonnull %call.i171, ptr noundef nonnull %retval1.i, ptr noundef %fw_state, ptr noundef nonnull %mpfn.i) #12
  %82 = ptrtoint ptr %retval1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %retval1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not.i = icmp eq i32 %83, 0
  br i1 %cmp.not.i, label %if.end15.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.80, i32 noundef %83) #15
  br label %csio_do_hello.exit.thread206

if.end15.i:                                       ; preds = %if.end7.i
  %86 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %pfn.i, align 8
  %88 = ptrtoint ptr %mpfn.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mpfn.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp19.i = icmp eq i8 %87, %89
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %91, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end65thread-pre-split.i

if.else.i:                                        ; preds = %if.end15.i
  %92 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp22.i = icmp eq i32 %93, 0
  br i1 %cmp22.i, label %if.else.i.for.cond.i_crit_edge, label %if.else.i.if.end65.i_crit_edge

if.else.i.if.end65.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then29.i.for.cond.i_crit_edge, %if.else.i.for.cond.i_crit_edge
  %waiting.0.i = phi i32 [ %sub.i, %if.then29.i.for.cond.i_crit_edge ], [ 30000, %if.else.i.for.cond.i_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  call void @msleep(i32 noundef 50) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %94 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %95, i32 12472
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #12, !srcloc !701
  %97 = call i32 @llvm.bswap.i32(i32 %96) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !738
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %97)
  %tobool28.not.i = icmp ult i32 %97, 1073741824
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end38.i

if.then29.i:                                      ; preds = %for.cond.i
  %sub.i = add nsw i32 %waiting.0.i, -50
  %cmp30.i = icmp eq i32 %sub.i, 0
  br i1 %cmp30.i, label %if.then32.i, label %if.then29.i.for.cond.i_crit_edge

if.then29.i.for.cond.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then32.i:                                      ; preds = %if.then29.i
  %dec.i = add nsw i32 %retries.0.i, -1
  %cmp33.not.i = icmp eq i32 %retries.0.i, 0
  br i1 %cmp33.not.i, label %if.then32.i.cleanup62.thread.i_crit_edge, label %if.then32.i.retry.i_crit_edge

if.then32.i.retry.i_crit_edge:                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.i

if.then32.i.cleanup62.thread.i_crit_edge:         ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62.thread.i

if.end38.i:                                       ; preds = %for.cond.i
  %tobool39.not.i = icmp eq ptr %fw_state, null
  br i1 %tobool39.not.i, label %if.end38.i.if.end50.i_crit_edge, label %if.then40.i

if.end38.i.if.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool42.not.i = icmp sgt i32 %97, -1
  br i1 %tobool42.not.i, label %if.else44.i, label %if.then40.i.if.end50.sink.split.i_crit_edge

if.then40.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i

if.else44.i:                                      ; preds = %if.then40.i
  %and45.i = and i32 %97, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else44.i.if.end50.i_crit_edge, label %if.else44.i.if.end50.sink.split.i_crit_edge

if.else44.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i

if.else44.i.if.end50.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.end50.sink.split.i:                            ; preds = %if.else44.i.if.end50.sink.split.i_crit_edge, %if.then40.i.if.end50.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then40.i.if.end50.sink.split.i_crit_edge ], [ 1, %if.else44.i.if.end50.sink.split.i_crit_edge ]
  %rv.1.ph.i = phi i32 [ -110, %if.then40.i.if.end50.sink.split.i_crit_edge ], [ 0, %if.else44.i.if.end50.sink.split.i_crit_edge ]
  %98 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink.i, ptr %fw_state, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.sink.split.i, %if.else44.i.if.end50.i_crit_edge, %if.end38.i.if.end50.i_crit_edge
  %rv.1.i = phi i32 [ 0, %if.else44.i.if.end50.i_crit_edge ], [ 0, %if.end38.i.if.end50.i_crit_edge ], [ %rv.1.ph.i, %if.end50.sink.split.i ]
  %99 = ptrtoint ptr %mpfn.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mpfn.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %100)
  %cmp52.i = icmp ne i8 %100, 7
  %and54.i = and i32 %97, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %or.cond.i = select i1 %cmp52.i, i1 true, i1 %tobool55.not.i
  br i1 %or.cond.i, label %if.end50.i.cleanup62.thread.i_crit_edge, label %if.then56.i

if.end50.i.cleanup62.thread.i_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62.thread.i

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i179 = lshr i32 %97, 12
  %101 = trunc i32 %shr.i179 to i8
  %conv58.i = and i8 %101, 7
  %102 = ptrtoint ptr %mpfn.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv58.i, ptr %mpfn.i, align 1
  br label %cleanup62.thread.i

cleanup62.thread.i:                               ; preds = %if.then56.i, %if.end50.i.cleanup62.thread.i_crit_edge, %if.then32.i.cleanup62.thread.i_crit_edge
  %rv.2.ph.i = phi i32 [ %rv.1.i, %if.end50.i.cleanup62.thread.i_crit_edge ], [ %rv.1.i, %if.then56.i ], [ -110, %if.then32.i.cleanup62.thread.i_crit_edge ]
  %flags60.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %103 = ptrtoint ptr %flags60.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags60.i, align 4
  %and61.i = and i32 %104, -2
  store i32 %and61.i, ptr %flags60.i, align 4
  br label %if.end65thread-pre-split.i

if.end65thread-pre-split.i:                       ; preds = %cleanup62.thread.i, %if.then21.i
  %rv.3.ph.i = phi i32 [ %rv.2.ph.i, %cleanup62.thread.i ], [ 0, %if.then21.i ]
  %105 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr.i = load i32, ptr %fw_state, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end65thread-pre-split.i, %if.else.i.if.end65.i_crit_edge
  %106 = phi i32 [ %.pr.i, %if.end65thread-pre-split.i ], [ %93, %if.else.i.if.end65.i_crit_edge ]
  %rv.3.i = phi i32 [ %rv.3.ph.i, %if.end65thread-pre-split.i ], [ 0, %if.else.i.if.end65.i_crit_edge ]
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %106, label %sw.default.i [
    i32 0, label %sw.bb.i180
    i32 1, label %sw.bb68.i
    i32 2, label %sw.bb71.i
  ]

sw.bb.i180:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = call ptr @memcpy(ptr %state_str.i, ptr @.str.82, i32 13)
  br label %sw.epilog.i

sw.bb68.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = call ptr @memcpy(ptr %state_str.i, ptr @.str.83, i32 12)
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = call ptr @memcpy(ptr %state_str.i, ptr @.str.84, i32 6)
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %state_str.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 6155975862722719232, ptr %state_str.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb71.i, %sw.bb68.i, %sw.bb.i180
  %112 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pfn.i, align 8
  %conv77.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %mpfn.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %mpfn.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %115)
  %cmp79.i = icmp eq i8 %113, %115
  br i1 %cmp79.i, label %do.end84.i, label %do.end93.i

do.end84.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i, align 8
  %dev86.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86.i, ptr noundef nonnull @.str.87, i32 noundef %conv77.i, ptr noundef nonnull %state_str.i) #15
  br label %csio_do_hello.exit

do.end93.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv78.i = zext i8 %115 to i32
  %118 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev.i, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev95.i, ptr noundef nonnull @.str.90, i32 noundef %conv77.i, i32 noundef %conv78.i, ptr noundef nonnull %state_str.i) #15
  br label %csio_do_hello.exit

csio_do_hello.exit.thread206:                     ; preds = %do.end12.i, %do.end.i
  %120 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i171, ptr noundef %121) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state_str.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mpfn.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #12
  br label %if.then24

csio_do_hello.exit:                               ; preds = %do.end93.i, %do.end84.i
  %122 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i171, ptr noundef %123) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state_str.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mpfn.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.3.i)
  %cmp22.not = icmp eq i32 %rv.3.i, 0
  br i1 %cmp22.not, label %if.end29, label %csio_do_hello.exit.if.then24_crit_edge

csio_do_hello.exit.if.then24_crit_edge:           ; preds = %csio_do_hello.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %csio_do_hello.exit.if.then24_crit_edge, %csio_do_hello.exit.thread206, %csio_do_hello.exit.thread
  %n_err_fatal26 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 14
  %124 = ptrtoint ptr %n_err_fatal26 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %n_err_fatal26, align 8
  %inc27 = add i32 %125, 1
  store i32 %inc27, ptr %n_err_fatal26, align 8
  %sm_state.i181 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %126 = ptrtoint ptr %sm_state.i181 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sm_state.i181, align 4
  call void %127(ptr noundef %hw, i32 noundef 4) #12
  br label %out

if.end29:                                         ; preds = %csio_do_hello.exit
  %flags.i182 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %128 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags.i182, align 4
  %and.i = and i32 %129, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i183 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i183, label %if.end.i, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end.i:                                         ; preds = %if.end29
  %130 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i, align 8
  %vpd_cap_addr.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2, i32 2
  %call.i.i = call zeroext i8 @pci_find_capability(ptr noundef %131, i32 noundef 3) #12
  %conv.i.i = zext i8 %call.i.i to i32
  %132 = ptrtoint ptr %vpd_cap_addr.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv.i.i, ptr %vpd_cap_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool.not.i.not.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i.out_crit_edge, label %if.end3.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %133 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %133, i32 noundef 2848, i32 noundef 1024) #16
  %cmp.i185 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i185, label %if.end3.i.out_crit_edge, label %if.end6.i

if.end3.i.out_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6.i:                                        ; preds = %if.end3.i
  %call7.i = call fastcc i32 @csio_hw_seeprom_read(ptr noundef %hw, i32 noundef 1024, ptr noundef nonnull %call7.i.i.i) #12
  %134 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %135)
  %cmp8.i = icmp eq i8 %135, -126
  %cond.i = select i1 %cmp8.i, i32 1024, i32 0
  br label %for.body.i188

for.cond.i186:                                    ; preds = %for.body.i188
  %add16.i = add nuw nsw i32 %i.0211.i, 4
  %cmp10.i = icmp ult i32 %i.0211.i, 1020
  br i1 %cmp10.i, label %for.cond.i186.for.body.i188_crit_edge, label %for.end.i189

for.cond.i186.for.body.i188_crit_edge:            ; preds = %for.cond.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i188

for.body.i188:                                    ; preds = %for.cond.i186.for.body.i188_crit_edge, %if.end6.i
  %i.0211.i = phi i32 [ 0, %if.end6.i ], [ %add16.i, %for.cond.i186.for.body.i188_crit_edge ]
  %add.i = add nuw nsw i32 %i.0211.i, %cond.i
  %add.ptr.i187 = getelementptr i8, ptr %call7.i.i.i, i32 %i.0211.i
  %call12.i = call fastcc i32 @csio_hw_seeprom_read(ptr noundef %hw, i32 noundef %add.i, ptr noundef %add.ptr.i187) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %for.cond.i186, label %for.body.i188.csio_hw_get_vpd_params.exit.thread215_crit_edge

for.body.i188.csio_hw_get_vpd_params.exit.thread215_crit_edge: ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_get_vpd_params.exit.thread215

for.end.i189:                                     ; preds = %for.cond.i186
  %136 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags.i182, align 4
  %and18.i = and i32 %137, -33
  store i32 %and18.i, ptr %flags.i182, align 4
  %arrayidx.i.i = getelementptr %struct.t4_vpd_hdr, ptr %call7.i.i.i, i32 0, i32 4
  %138 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i, align 4
  %conv1.i.i = zext i8 %139 to i32
  %arrayidx2.i.i = getelementptr %struct.t4_vpd_hdr, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx2.i.i, align 1
  %conv4.i.i = zext i8 %141 to i32
  %shl.i.i = shl nuw nsw i32 %conv4.i.i, 8
  %add.i.i = or i32 %shl.i.i, %conv1.i.i
  %add5.i.i = add nuw nsw i32 %add.i.i, 22
  %142 = add nsw i32 %add.i.i, -1003
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000, i32 %142)
  %143 = icmp ult i32 %142, -1000
  br i1 %143, label %for.end.i189.do.end.i191_crit_edge, label %for.body.i.preheader.i

for.end.i189.do.end.i191_crit_edge:               ; preds = %for.end.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i191

for.body.i.preheader.i:                           ; preds = %for.end.i189
  %add.ptr.i212.i = getelementptr i8, ptr %call7.i.i.i, i32 22
  %bcmp.i213.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i212.i, ptr noundef nonnull dereferenceable(2) @.str.92, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i213.i)
  %cmp11.i214.i = icmp eq i32 %bcmp.i213.i, 0
  br i1 %cmp11.i214.i, label %for.body.i.preheader.i.for.body31.i.preheader_crit_edge, label %for.body.i.preheader.i.if.end15.i.i_crit_edge

for.body.i.preheader.i.if.end15.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %if.end15.i.i

for.body.i.preheader.i.for.body31.i.preheader_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i.preheader

for.body31.i.preheader:                           ; preds = %csio_hw_get_vpd_keyword_val.exit.i.for.body31.i.preheader_crit_edge, %for.body.i.preheader.i.for.body31.i.preheader_crit_edge
  %i.1217.i.ph = phi i32 [ 25, %for.body.i.preheader.i.for.body31.i.preheader_crit_edge ], [ %add7.i.i, %csio_hw_get_vpd_keyword_val.exit.i.for.body31.i.preheader_crit_edge ]
  br label %for.body31.i

for.body.i.i:                                     ; preds = %if.end15.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i.i, ptr noundef nonnull dereferenceable(2) @.str.92, i32 2) #17
  %cmp11.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp11.i.i, label %csio_hw_get_vpd_keyword_val.exit.i, label %for.body.i.i.if.end15.i.i_crit_edge

for.body.i.i.if.end15.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %for.body.i.i.if.end15.i.i_crit_edge, %for.body.i.preheader.i.if.end15.i.i_crit_edge
  %i.036.i215.i = phi i32 [ %add20.i.i, %for.body.i.i.if.end15.i.i_crit_edge ], [ 22, %for.body.i.preheader.i.if.end15.i.i_crit_edge ]
  %add16.i.i = add i32 %i.036.i215.i, 2
  %arrayidx17.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add16.i.i
  %144 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx17.i.i, align 1
  %conv18.i.i = zext i8 %145 to i32
  %add19.i.i = add i32 %i.036.i215.i, 3
  %add20.i.i = add i32 %add19.i.i, %conv18.i.i
  %add7.i.i = add i32 %add20.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %add5.i.i)
  %cmp9.not.i.i = icmp sgt i32 %add7.i.i, %add5.i.i
  br i1 %cmp9.not.i.i, label %if.end15.i.i.do.end.i191_crit_edge, label %for.body.i.i

if.end15.i.i.do.end.i191_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i191

csio_hw_get_vpd_keyword_val.exit.i:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7.i.i)
  %cmp20.i = icmp slt i32 %add7.i.i, 0
  br i1 %cmp20.i, label %csio_hw_get_vpd_keyword_val.exit.i.do.end.i191_crit_edge, label %csio_hw_get_vpd_keyword_val.exit.i.for.body31.i.preheader_crit_edge

csio_hw_get_vpd_keyword_val.exit.i.for.body31.i.preheader_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i.preheader

csio_hw_get_vpd_keyword_val.exit.i.do.end.i191_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i191

do.end.i191:                                      ; preds = %csio_hw_get_vpd_keyword_val.exit.i.do.end.i191_crit_edge, %if.end15.i.i.do.end.i191_crit_edge, %for.end.i189.do.end.i191_crit_edge
  %146 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev.i, align 8
  %dev.i190 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i190, ptr noundef nonnull @.str.93) #15
  br label %csio_hw_get_vpd_params.exit.thread215

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body31.i.preheader
  %csum.0218.i = phi i8 [ %add34.i, %for.body31.i.for.body31.i_crit_edge ], [ 0, %for.body31.i.preheader ]
  %i.1217.i = phi i32 [ %dec.i192, %for.body31.i.for.body31.i_crit_edge ], [ %i.1217.i.ph, %for.body31.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 %i.1217.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i, align 1
  %add34.i = add i8 %149, %csum.0218.i
  %dec.i192 = add nsw i32 %i.1217.i, -1
  %cmp29.not.i = icmp eq i32 %i.1217.i, 0
  br i1 %cmp29.not.i, label %for.end37.i, label %for.body31.i.for.body31.i_crit_edge

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i

for.end37.i:                                      ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add34.i)
  %tobool38.not.i = icmp eq i8 %add34.i, 0
  br i1 %tobool38.not.i, label %for.body.i165.preheader.i, label %do.end42.i

do.end42.i:                                       ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev.i, align 8
  %dev44.i = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %conv45.i = zext i8 %add34.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.96, i32 noundef %conv45.i) #15
  br label %csio_hw_get_vpd_params.exit.thread215

for.body.i165.preheader.i:                        ; preds = %for.end37.i
  %bcmp.i163221.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i212.i, ptr noundef nonnull dereferenceable(2) @.str.98, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i163221.i)
  %cmp11.i164222.i = icmp eq i32 %bcmp.i163221.i, 0
  br i1 %cmp11.i164222.i, label %for.body.i165.preheader.i.for.body.i188.preheader.i_crit_edge, label %for.body.i165.preheader.i.if.end15.i173.i_crit_edge

for.body.i165.preheader.i.if.end15.i173.i_crit_edge: ; preds = %for.body.i165.preheader.i
  br label %if.end15.i173.i

for.body.i165.preheader.i.for.body.i188.preheader.i_crit_edge: ; preds = %for.body.i165.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i188.preheader.i

for.body.i165.i:                                  ; preds = %if.end15.i173.i
  %add.ptr.i162.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i170.i
  %bcmp.i163.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i162.i, ptr noundef nonnull dereferenceable(2) @.str.98, i32 2) #17
  %cmp11.i164.i = icmp eq i32 %bcmp.i163.i, 0
  br i1 %cmp11.i164.i, label %csio_hw_get_vpd_keyword_val.exit175.i, label %for.body.i165.i.if.end15.i173.i_crit_edge

for.body.i165.i.if.end15.i173.i_crit_edge:        ; preds = %for.body.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i173.i

if.end15.i173.i:                                  ; preds = %for.body.i165.i.if.end15.i173.i_crit_edge, %for.body.i165.preheader.i.if.end15.i173.i_crit_edge
  %i.036.i161223.i = phi i32 [ %add20.i170.i, %for.body.i165.i.if.end15.i173.i_crit_edge ], [ 22, %for.body.i165.preheader.i.if.end15.i173.i_crit_edge ]
  %add16.i166.i = add i32 %i.036.i161223.i, 2
  %arrayidx17.i167.i = getelementptr i8, ptr %call7.i.i.i, i32 %add16.i166.i
  %152 = ptrtoint ptr %arrayidx17.i167.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx17.i167.i, align 1
  %conv18.i168.i = zext i8 %153 to i32
  %add19.i169.i = add i32 %i.036.i161223.i, 3
  %add20.i170.i = add i32 %add19.i169.i, %conv18.i168.i
  %add7.i171.i = add i32 %add20.i170.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i171.i, i32 %add5.i.i)
  %cmp9.not.i172.i = icmp sgt i32 %add7.i171.i, %add5.i.i
  br i1 %cmp9.not.i172.i, label %if.end15.i173.i.do.end54.i_crit_edge, label %for.body.i165.i

if.end15.i173.i.do.end54.i_crit_edge:             ; preds = %if.end15.i173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

csio_hw_get_vpd_keyword_val.exit175.i:            ; preds = %for.body.i165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7.i171.i)
  %cmp49.i = icmp slt i32 %add7.i171.i, 0
  br i1 %cmp49.i, label %csio_hw_get_vpd_keyword_val.exit175.i.do.end54.i_crit_edge, label %csio_hw_get_vpd_keyword_val.exit175.i.for.body.i188.preheader.i_crit_edge

csio_hw_get_vpd_keyword_val.exit175.i.for.body.i188.preheader.i_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i188.preheader.i

csio_hw_get_vpd_keyword_val.exit175.i.do.end54.i_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

do.end54.i:                                       ; preds = %csio_hw_get_vpd_keyword_val.exit175.i.do.end54.i_crit_edge, %if.end15.i173.i.do.end54.i_crit_edge
  %154 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i, align 8
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.100) #15
  br label %csio_hw_get_vpd_params.exit.thread215

for.body.i188.preheader.i:                        ; preds = %csio_hw_get_vpd_keyword_val.exit175.i.for.body.i188.preheader.i_crit_edge, %for.body.i165.preheader.i.for.body.i188.preheader.i_crit_edge
  %add737.i160.lcssa239.i = phi i32 [ %add7.i171.i, %csio_hw_get_vpd_keyword_val.exit175.i.for.body.i188.preheader.i_crit_edge ], [ 25, %for.body.i165.preheader.i.for.body.i188.preheader.i_crit_edge ]
  %bcmp.i186226.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i212.i, ptr noundef nonnull dereferenceable(2) @.str.102, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i186226.i)
  %cmp11.i187227.i = icmp eq i32 %bcmp.i186226.i, 0
  br i1 %cmp11.i187227.i, label %for.body.i188.preheader.i.csio_hw_get_vpd_params.exit_crit_edge, label %for.body.i188.preheader.i.if.end15.i196.i_crit_edge

for.body.i188.preheader.i.if.end15.i196.i_crit_edge: ; preds = %for.body.i188.preheader.i
  br label %if.end15.i196.i

for.body.i188.preheader.i.csio_hw_get_vpd_params.exit_crit_edge: ; preds = %for.body.i188.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_get_vpd_params.exit

for.body.i188.i:                                  ; preds = %if.end15.i196.i
  %add.ptr.i185.i = getelementptr i8, ptr %call7.i.i.i, i32 %add20.i193.i
  %bcmp.i186.i = call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr.i185.i, ptr noundef nonnull dereferenceable(2) @.str.102, i32 2) #17
  %cmp11.i187.i = icmp eq i32 %bcmp.i186.i, 0
  br i1 %cmp11.i187.i, label %csio_hw_get_vpd_keyword_val.exit198.i, label %for.body.i188.i.if.end15.i196.i_crit_edge

for.body.i188.i.if.end15.i196.i_crit_edge:        ; preds = %for.body.i188.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i196.i

if.end15.i196.i:                                  ; preds = %for.body.i188.i.if.end15.i196.i_crit_edge, %for.body.i188.preheader.i.if.end15.i196.i_crit_edge
  %i.036.i184228.i = phi i32 [ %add20.i193.i, %for.body.i188.i.if.end15.i196.i_crit_edge ], [ 22, %for.body.i188.preheader.i.if.end15.i196.i_crit_edge ]
  %add16.i189.i = add i32 %i.036.i184228.i, 2
  %arrayidx17.i190.i = getelementptr i8, ptr %call7.i.i.i, i32 %add16.i189.i
  %156 = ptrtoint ptr %arrayidx17.i190.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx17.i190.i, align 1
  %conv18.i191.i = zext i8 %157 to i32
  %add19.i192.i = add i32 %i.036.i184228.i, 3
  %add20.i193.i = add i32 %add19.i192.i, %conv18.i191.i
  %add7.i194.i = add i32 %add20.i193.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i194.i, i32 %add5.i.i)
  %cmp9.not.i195.i = icmp sgt i32 %add7.i194.i, %add5.i.i
  br i1 %cmp9.not.i195.i, label %if.end15.i196.i.do.end67.i_crit_edge, label %for.body.i188.i

if.end15.i196.i.do.end67.i_crit_edge:             ; preds = %if.end15.i196.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67.i

csio_hw_get_vpd_keyword_val.exit198.i:            ; preds = %for.body.i188.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7.i194.i)
  %cmp62.i = icmp slt i32 %add7.i194.i, 0
  br i1 %cmp62.i, label %csio_hw_get_vpd_keyword_val.exit198.i.do.end67.i_crit_edge, label %csio_hw_get_vpd_keyword_val.exit198.i.csio_hw_get_vpd_params.exit_crit_edge

csio_hw_get_vpd_keyword_val.exit198.i.csio_hw_get_vpd_params.exit_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_get_vpd_params.exit

csio_hw_get_vpd_keyword_val.exit198.i.do.end67.i_crit_edge: ; preds = %csio_hw_get_vpd_keyword_val.exit198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67.i

do.end67.i:                                       ; preds = %csio_hw_get_vpd_keyword_val.exit198.i.do.end67.i_crit_edge, %if.end15.i196.i.do.end67.i_crit_edge
  %158 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev.i, align 8
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.104) #15
  br label %csio_hw_get_vpd_params.exit.thread215

csio_hw_get_vpd_params.exit.thread215:            ; preds = %do.end67.i, %do.end54.i, %do.end42.i, %do.end.i191, %for.body.i188.csio_hw_get_vpd_params.exit.thread215_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %out

csio_hw_get_vpd_params.exit:                      ; preds = %csio_hw_get_vpd_keyword_val.exit198.i.csio_hw_get_vpd_params.exit_crit_edge, %for.body.i188.preheader.i.csio_hw_get_vpd_params.exit_crit_edge
  %add737.i183.lcssa242.i = phi i32 [ %add7.i194.i, %csio_hw_get_vpd_keyword_val.exit198.i.csio_hw_get_vpd_params.exit_crit_edge ], [ 25, %for.body.i188.preheader.i.csio_hw_get_vpd_params.exit_crit_edge ]
  %id.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33, i32 3
  %id_data.i = getelementptr inbounds %struct.t4_vpd_hdr, ptr %call7.i.i.i, i32 0, i32 2
  %160 = call ptr @memcpy(ptr %id.i, ptr %id_data.i, i32 16)
  %call.i199.i = call ptr @strim(ptr noundef %id.i) #12
  %ec77.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33, i32 1
  %add.ptr79.i = getelementptr i8, ptr %call7.i.i.i, i32 %add737.i160.lcssa239.i
  %161 = call ptr @memcpy(ptr %ec77.i, ptr %add.ptr79.i, i32 16)
  %call.i200.i = call ptr @strim(ptr noundef %ec77.i) #12
  %add83.i = add nsw i32 %add737.i183.lcssa242.i, -1
  %arrayidx84.i = getelementptr i8, ptr %call7.i.i.i, i32 %add83.i
  %162 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx84.i, align 1
  %sn86.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33, i32 2
  %add.ptr88.i = getelementptr i8, ptr %call7.i.i.i, i32 %add737.i183.lcssa242.i
  %164 = call i8 @llvm.umin.i8(i8 %163, i8 16) #12
  %cond91.i = zext i8 %164 to i32
  %165 = call ptr @memcpy(ptr %sn86.i, ptr %add.ptr88.i, i32 %cond91.i)
  %call.i201.i = call ptr @strim(ptr noundef %sn86.i) #12
  %166 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags.i182, align 4
  %or.i193 = or i32 %167, 32
  store i32 %or.i193, ptr %flags.i182, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end34

if.end34:                                         ; preds = %csio_hw_get_vpd_params.exit, %if.end29.if.end34_crit_edge
  %call.i194 = call fastcc i32 @csio_hw_read_flash(ptr noundef %hw, i32 noundef 524292, i32 noundef 1, ptr noundef %fwrev, i32 noundef 0) #12
  %tp_vers = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 29
  %call.i195 = call fastcc i32 @csio_hw_read_flash(ptr noundef %hw, i32 noundef 524296, i32 noundef 1, ptr noundef %tp_vers, i32 noundef 0) #12
  %168 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags.i182, align 4
  %and = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end34.if.else_crit_edge, label %land.lhs.true

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end34
  %170 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp39.not = icmp eq i32 %171, 1
  br i1 %cmp39.not, label %land.lhs.true.if.else_crit_edge, label %if.then41

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %call42 = call fastcc i32 @csio_hw_flash_fw(ptr noundef %hw, ptr noundef nonnull %reset)
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44.not = icmp eq i32 %call42, 0
  br i1 %cmp44.not, label %if.end47, label %if.then41.out_crit_edge

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end47:                                         ; preds = %if.then41
  %call48 = call fastcc i32 @csio_hw_check_fwver(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.out_crit_edge, label %if.end52

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc i32 @csio_hw_check_fwconfig(ptr noundef %hw, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev.i, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.61) #15
  br label %out

if.end62:                                         ; preds = %if.end52
  %174 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reset, align 4
  %call64 = call fastcc i32 @csio_hw_use_fwconfig(ptr noundef %hw, i32 noundef %175, ptr noundef nonnull %param)
  %176 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %call64, label %do.end79 [
    i32 -2, label %do.end70
    i32 0, label %if.end62.out_crit_edge
  ]

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %177 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pdev.i, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull @.str.64, i32 noundef -2) #15
  br label %out

do.end79:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev.i, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.64, i32 noundef %call64) #15
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end34.if.else_crit_edge
  %181 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pdev.i, align 8
  %device.i197 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 8
  %183 = ptrtoint ptr %device.i197 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %device.i197, align 2
  %185 = and i16 %184, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %185)
  %cmp.i.not.i198 = icmp eq i16 %185, 24576
  br i1 %cmp.i.not.i198, label %land.lhs.true.i, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true.i:                                  ; preds = %if.else
  %186 = ptrtoint ptr %fwrev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fwrev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17837312, i32 %187)
  %cmp.i200 = icmp ult i32 %187, 17837312
  br i1 %cmp.i200, label %csio_hw_check_fwver.exit, label %land.lhs.true.i.if.end87_crit_edge

land.lhs.true.i.if.end87_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

csio_hw_check_fwver.exit:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  %shr.i.i = lshr i32 %187, 24
  %shr2.i.i = lshr i32 %187, 16
  %and3.i.i = and i32 %shr2.i.i, 255
  %shr5.i.i = lshr i32 %187, 8
  %and6.i.i = and i32 %shr5.i.i, 255
  %and9.i.i = and i32 %187, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.158, i32 noundef %shr.i.i, i32 noundef %and3.i.i, i32 noundef %and6.i.i, i32 noundef %and9.i.i) #15
  br label %out

if.end87:                                         ; preds = %land.lhs.true.i.if.end87_crit_edge, %if.else.if.end87_crit_edge
  %188 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp89 = icmp eq i32 %189, 1
  br i1 %cmp89, label %if.then91, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then91:                                        ; preds = %if.end87
  %190 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags.i182, align 4
  %or = or i32 %191, 256
  store i32 %or, ptr %flags.i182, align 4
  %call93 = call fastcc i32 @csio_get_device_params(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.end97, label %if.then91.out_crit_edge

if.then91.out_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end97:                                         ; preds = %if.then91
  %call98 = call fastcc i32 @csio_config_device_caps(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.end97.out_crit_edge

if.end97.out_crit_edge:                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  call void @csio_wr_sge_init(ptr noundef %hw) #12
  %sm_state.i203 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %192 = ptrtoint ptr %sm_state.i203 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sm_state.i203, align 4
  call void %193(ptr noundef %hw, i32 noundef 2) #12
  br label %out

out:                                              ; preds = %if.end102, %if.end97.out_crit_edge, %if.then91.out_crit_edge, %if.end87.out_crit_edge, %csio_hw_check_fwver.exit, %do.end79, %do.end70, %if.end62.out_crit_edge, %do.end59, %if.end47.out_crit_edge, %if.then41.out_crit_edge, %csio_hw_get_vpd_params.exit.thread215, %if.end3.i.out_crit_edge, %if.end.i.out_crit_edge, %if.then24, %if.end14.out_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_hws_initializing(ptr noundef %hw, i32 noundef %evt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cur_evt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_evt, align 2
  %prev_evt = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 39
  %2 = ptrtoint ptr %prev_evt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %prev_evt, align 1
  %conv = trunc i32 %evt to i8
  store i8 %conv, ptr %cur_evt, align 2
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 17, i32 %evt
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  %5 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %evt, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 12, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @csio_hws_ready, ptr %sm_state.i, align 4
  tail call void @csio_notify_lnodes(ptr noundef %hw, i32 noundef 1) #12
  %intr_idx.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %intr_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_idx.i, align 4
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 103440
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !739
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i, align 2
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %16)
  %cmp.i.not.i = icmp eq i16 %16, 20480
  %17 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regstart.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 103424
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #12
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !740
  %shr.i = lshr i32 %20, 8
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %21 = lshr i32 %19, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !741
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %pf.0.in.i = phi i32 [ %shr.i, %if.then.i ], [ %21, %if.else.i ]
  %pf.0.i = and i32 %pf.0.in.i, 7
  %intr_mode.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %22 = ptrtoint ptr %intr_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intr_mode.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %23, label %if.end.i.do.body.i_crit_edge [
    i32 3, label %if.then23.i
    i32 2, label %if.then29.i
  ]

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv24.i = and i32 %8, 65535
  %25 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 110656
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %28 = and i32 %27, 264306687
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %or.i.i = or i32 %29, %conv24.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %31 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regstart.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %32, i32 110656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %30) #12, !srcloc !700
  %33 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regstart.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %34, i32 110656
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br label %do.body.i

if.then29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %37, i32 110656
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %39 = and i32 %38, 264306687
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regstart.i, align 4
  %add.ptr3.i69.i = getelementptr i8, ptr %41, i32 110656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i69.i, i32 %39) #12, !srcloc !700
  %42 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regstart.i, align 4
  %add.ptr7.i70.i = getelementptr i8, ptr %43, i32 110656
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i70.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br label %do.body.i

do.body.i:                                        ; preds = %if.then29.i, %if.then23.i, %if.end.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !742
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regstart.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %46, i32 111556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 167772160) #12, !srcloc !700
  tail call void @csio_mb_intr_enable(ptr noundef %hw) #12
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and34.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body.i.csio_hw_intr_enable.exit_crit_edge, label %if.then36.i

do.body.i.csio_hw_intr_enable.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_intr_enable.exit

if.then36.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = and i32 %11, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !743
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regstart.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %51, i32 103440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %49) #12, !srcloc !700
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !744
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regstart.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %53, i32 4160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 821456640) #12, !srcloc !700
  %shl.i = shl nuw nsw i32 1, %pf.0.i
  %54 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %55, i32 103444
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #12, !srcloc !701
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %or.i73.i = or i32 %57, %shl.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i73.i) #12
  %59 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regstart.i, align 4
  %add.ptr3.i74.i = getelementptr i8, ptr %60, i32 103444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i74.i, i32 %58) #12, !srcloc !700
  %61 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regstart.i, align 4
  %add.ptr7.i75.i = getelementptr i8, ptr %62, i32 103444
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i75.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br label %csio_hw_intr_enable.exit

csio_hw_intr_enable.exit:                         ; preds = %if.then36.i, %do.body.i.csio_hw_intr_enable.exit_crit_edge
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %65, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sm_state.i18 = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %66 = ptrtoint ptr %sm_state.i18 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @csio_hws_uninit, ptr %sm_state.i18, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_do_bye(ptr noundef %hw)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 3
  %67 = ptrtoint ptr %n_evt_unexp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_evt_unexp, align 4
  %inc6 = add i32 %68, 1
  store i32 %inc6, ptr %n_evt_unexp, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %csio_hw_intr_enable.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_intr_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_initialize(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_issue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_fw_retval(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_config_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_fcoe_read_res_info_init_mb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_params(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_process_read_params_rsp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_port(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_process_read_port_rsp(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_flash_fw(ptr noundef %hw, ptr nocapture noundef writeonly %reset) unnamed_addr #1 align 64 {
entry:
  %first_page.i.i.i = alloca [256 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !734
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %chip_id = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 31
  %3 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip_id, align 2
  %5 = lshr i16 %4, 12
  %trunc = trunc i16 %5 to i4
  %6 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.356)
  switch i4 %trunc, label %do.end [
    i4 5, label %entry.if.end_crit_edge
    i4 6, label %if.end.fold.split
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.108, i32 noundef %7) #15
  br label %cleanup

if.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ @fw_info_array, %entry.if.end_crit_edge ], [ getelementptr inbounds ([2 x %struct.fw_info], ptr @fw_info_array, i32 0, i32 1), %if.end.fold.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 128) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %11)
  %cmp.i.not = icmp eq i16 %11, 20480
  %.str.111..str.110 = select i1 %cmp.i.not, ptr @.str.110, ptr @.str.111
  %call19 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %.str.111..str.110, ptr noundef %dev1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.else28

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.113, ptr noundef nonnull %.str.111..str.110, i32 noundef -125) #15
  br label %if.end29

if.else28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %do.end25
  %fw_data.0 = phi ptr [ null, %do.end25 ], [ %17, %if.else28 ]
  %fw_size.0 = phi i32 [ 0, %do.end25 ], [ %19, %if.else28 ]
  %fw_state = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  %20 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_state, align 4
  %call.i = call fastcc i32 @csio_hw_read_flash(ptr noundef %hw, i32 noundef 524288, i32 noundef 32, ptr noundef nonnull %call7.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i55 = icmp eq i32 %call.i, 0
  br i1 %cmp.i55, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end29
  %chip.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip.i.i, align 1
  %chip1.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 1
  %24 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp.i.i = icmp eq i8 %23, %25
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.if.end44.i.i_crit_edge

if.then.i.if.end44.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %fw_ver.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %fw_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_ver.i.i, align 4
  %fw_ver4.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 3
  %28 = ptrtoint ptr %fw_ver4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fw_ver4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp5.i.i = icmp eq i32 %27, %29
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i.i
  %intfver_nic.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 5
  %30 = ptrtoint ptr %intfver_nic.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %intfver_nic.i.i, align 4
  %intfver_nic15.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 5
  %32 = ptrtoint ptr %intfver_nic15.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %intfver_nic15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp17.i.i = icmp eq i8 %31, %33
  br i1 %cmp17.i.i, label %land.lhs.true19.i.i, label %land.lhs.true13.i.i.if.end44.i.i_crit_edge

land.lhs.true13.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true13.i.i
  %intfver_vnic.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %intfver_vnic.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %intfver_vnic.i.i, align 1
  %intfver_vnic21.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 6
  %36 = ptrtoint ptr %intfver_vnic21.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %intfver_vnic21.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp23.i.i = icmp eq i8 %35, %37
  br i1 %cmp23.i.i, label %land.lhs.true25.i.i, label %land.lhs.true19.i.i.if.end44.i.i_crit_edge

land.lhs.true19.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true19.i.i
  %intfver_ri.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %intfver_ri.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %intfver_ri.i.i, align 1
  %intfver_ri27.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 8
  %40 = ptrtoint ptr %intfver_ri27.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %intfver_ri27.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp29.i.i = icmp eq i8 %39, %41
  br i1 %cmp29.i.i, label %land.lhs.true31.i.i, label %land.lhs.true25.i.i.if.end44.i.i_crit_edge

land.lhs.true25.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true31.i.i:                              ; preds = %land.lhs.true25.i.i
  %intfver_iscsi.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %intfver_iscsi.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %intfver_iscsi.i.i, align 1
  %intfver_iscsi33.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 10
  %44 = ptrtoint ptr %intfver_iscsi33.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %intfver_iscsi33.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp35.i.i = icmp eq i8 %43, %45
  br i1 %cmp35.i.i, label %land.lhs.true37.i.i, label %land.lhs.true31.i.i.if.end44.i.i_crit_edge

land.lhs.true31.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true31.i.i
  %intfver_fcoe.i.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %intfver_fcoe.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %intfver_fcoe.i.i, align 1
  %intfver_fcoe39.i.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 12
  %48 = ptrtoint ptr %intfver_fcoe39.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %intfver_fcoe39.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp41.i.i = icmp eq i8 %47, %49
  br i1 %cmp41.i.i, label %land.lhs.true37.i.i.if.end.i_crit_edge, label %land.lhs.true37.i.i.if.end44.i.i_crit_edge

land.lhs.true37.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

land.lhs.true37.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end44.i.i:                                     ; preds = %land.lhs.true37.i.i.if.end44.i.i_crit_edge, %land.lhs.true31.i.i.if.end44.i.i_crit_edge, %land.lhs.true25.i.i.if.end44.i.i_crit_edge, %land.lhs.true19.i.i.if.end44.i.i_crit_edge, %land.lhs.true13.i.i.if.end44.i.i_crit_edge, %if.then.i.if.end44.i.i_crit_edge
  br label %if.end.i

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.117, i32 noundef %call.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end44.i.i, %land.lhs.true37.i.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge
  %tobool.not.i = phi i1 [ true, %if.end44.i.i ], [ false, %land.lhs.true37.i.i.if.end.i_crit_edge ], [ false, %land.lhs.true.i.i.if.end.i_crit_edge ], [ true, %do.end.i ]
  %cmp2.not.i = icmp eq ptr %fw_data.0, null
  br i1 %cmp2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  %chip.i120.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %chip.i120.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %chip.i120.i, align 1
  %chip1.i121.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 1
  %54 = ptrtoint ptr %chip1.i121.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %chip1.i121.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp.i122.i = icmp eq i8 %53, %55
  br i1 %cmp.i122.i, label %land.lhs.true.i126.i, label %if.then3.i.if.end44.i147.i_crit_edge

if.then3.i.if.end44.i147.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true.i126.i:                             ; preds = %if.then3.i
  %fw_ver.i123.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %fw_ver.i123.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_ver.i123.i, align 4
  %fw_ver4.i124.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %58 = ptrtoint ptr %fw_ver4.i124.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_ver4.i124.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp5.i125.i = icmp eq i32 %57, %59
  br i1 %cmp5.i125.i, label %land.lhs.true.i126.i.if.end6.i_crit_edge, label %land.lhs.true13.i130.i

land.lhs.true.i126.i.if.end6.i_crit_edge:         ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true13.i130.i:                           ; preds = %land.lhs.true.i126.i
  %intfver_nic.i127.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 5
  %60 = ptrtoint ptr %intfver_nic.i127.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %intfver_nic.i127.i, align 4
  %intfver_nic15.i128.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 5
  %62 = ptrtoint ptr %intfver_nic15.i128.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %intfver_nic15.i128.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp17.i129.i = icmp eq i8 %61, %63
  br i1 %cmp17.i129.i, label %land.lhs.true19.i134.i, label %land.lhs.true13.i130.i.if.end44.i147.i_crit_edge

land.lhs.true13.i130.i.if.end44.i147.i_crit_edge: ; preds = %land.lhs.true13.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true19.i134.i:                           ; preds = %land.lhs.true13.i130.i
  %intfver_vnic.i131.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 6
  %64 = ptrtoint ptr %intfver_vnic.i131.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %intfver_vnic.i131.i, align 1
  %intfver_vnic21.i132.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 6
  %66 = ptrtoint ptr %intfver_vnic21.i132.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %intfver_vnic21.i132.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp23.i133.i = icmp eq i8 %65, %67
  br i1 %cmp23.i133.i, label %land.lhs.true25.i138.i, label %land.lhs.true19.i134.i.if.end44.i147.i_crit_edge

land.lhs.true19.i134.i.if.end44.i147.i_crit_edge: ; preds = %land.lhs.true19.i134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true25.i138.i:                           ; preds = %land.lhs.true19.i134.i
  %intfver_ri.i135.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %intfver_ri.i135.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %intfver_ri.i135.i, align 1
  %intfver_ri27.i136.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 8
  %70 = ptrtoint ptr %intfver_ri27.i136.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %intfver_ri27.i136.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp29.i137.i = icmp eq i8 %69, %71
  br i1 %cmp29.i137.i, label %land.lhs.true31.i142.i, label %land.lhs.true25.i138.i.if.end44.i147.i_crit_edge

land.lhs.true25.i138.i.if.end44.i147.i_crit_edge: ; preds = %land.lhs.true25.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true31.i142.i:                           ; preds = %land.lhs.true25.i138.i
  %intfver_iscsi.i139.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 10
  %72 = ptrtoint ptr %intfver_iscsi.i139.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %intfver_iscsi.i139.i, align 1
  %intfver_iscsi33.i140.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 10
  %74 = ptrtoint ptr %intfver_iscsi33.i140.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %intfver_iscsi33.i140.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp35.i141.i = icmp eq i8 %73, %75
  br i1 %cmp35.i141.i, label %land.lhs.true37.i146.i, label %land.lhs.true31.i142.i.if.end44.i147.i_crit_edge

land.lhs.true31.i142.i.if.end44.i147.i_crit_edge: ; preds = %land.lhs.true31.i142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true37.i146.i:                           ; preds = %land.lhs.true31.i142.i
  %intfver_fcoe.i143.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %intfver_fcoe.i143.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %intfver_fcoe.i143.i, align 1
  %intfver_fcoe39.i144.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 12
  %78 = ptrtoint ptr %intfver_fcoe39.i144.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %intfver_fcoe39.i144.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp41.i145.i = icmp eq i8 %77, %79
  br i1 %cmp41.i145.i, label %land.lhs.true37.i146.i.if.end6.i_crit_edge, label %land.lhs.true37.i146.i.if.end44.i147.i_crit_edge

land.lhs.true37.i146.i.if.end44.i147.i_crit_edge: ; preds = %land.lhs.true37.i146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i147.i

land.lhs.true37.i146.i.if.end6.i_crit_edge:       ; preds = %land.lhs.true37.i146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end44.i147.i:                                  ; preds = %land.lhs.true37.i146.i.if.end44.i147.i_crit_edge, %land.lhs.true31.i142.i.if.end44.i147.i_crit_edge, %land.lhs.true25.i138.i.if.end44.i147.i_crit_edge, %land.lhs.true19.i134.i.if.end44.i147.i_crit_edge, %land.lhs.true13.i130.i.if.end44.i147.i_crit_edge, %if.then3.i.if.end44.i147.i_crit_edge
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end44.i147.i, %land.lhs.true37.i146.i.if.end6.i_crit_edge, %land.lhs.true.i126.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %tobool16.not.i = phi i1 [ false, %if.end44.i147.i ], [ true, %land.lhs.true37.i146.i.if.end6.i_crit_edge ], [ true, %land.lhs.true.i126.i.if.end6.i_crit_edge ], [ false, %if.end.i.if.end6.i_crit_edge ]
  %tobool10.not.i = phi i1 [ true, %if.end44.i147.i ], [ false, %land.lhs.true37.i146.i.if.end6.i_crit_edge ], [ false, %land.lhs.true.i126.i.if.end6.i_crit_edge ], [ true, %if.end.i.if.end6.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else15.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %fw_ver.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 3
  %80 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fw_ver.i, align 4
  %fw_ver7.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 3
  %82 = ptrtoint ptr %fw_ver7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fw_ver7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp8.i = icmp eq i32 %81, %83
  br i1 %cmp8.i, label %land.lhs.true9.i, label %if.else15.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.end70.i_crit_edge, label %lor.lhs.false.i

land.lhs.true9.i.if.end70.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %fw_ver11.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %84 = ptrtoint ptr %fw_ver11.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fw_ver11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %81)
  %cmp13.i = icmp ne i32 %85, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18.i = icmp eq i32 %21, 0
  %or.cond.i = and i1 %cmp18.i, %tobool16.not.i
  %or.cond172.i = and i1 %or.cond.i, %cmp13.i
  br i1 %or.cond172.i, label %lor.lhs.false.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.if.end70.i_crit_edge

lor.lhs.false.i.if.end70.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

lor.lhs.false.i.if.end.i.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.else15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18.old.i = icmp eq i32 %21, 0
  %or.cond.old.i = and i1 %cmp18.old.i, %tobool16.not.i
  br i1 %or.cond.old.i, label %if.else15.i.if.end.i.i_crit_edge, label %if.else15.i.if.end70.i_crit_edge

if.else15.i.if.end70.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.else15.i.if.end.i.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.else15.thread.i:                               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18155.i = icmp eq i32 %21, 0
  %or.cond156.i = and i1 %cmp18155.i, %tobool16.not.i
  br i1 %or.cond156.i, label %land.lhs.true19.thread.i, label %if.then38.i

land.lhs.true19.thread.i:                         ; preds = %if.else15.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_ver20157.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %86 = ptrtoint ptr %fw_ver20157.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fw_ver20157.i, align 4
  %fw_ver21158.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 3
  %88 = ptrtoint ptr %fw_ver21158.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fw_ver21158.i, align 4
  br label %if.then24.i

if.end.i.i:                                       ; preds = %if.else15.i.if.end.i.i_crit_edge, %lor.lhs.false.i.if.end.i.i_crit_edge
  %fw_ver20.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %90 = ptrtoint ptr %fw_ver20.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fw_ver20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %81)
  %cmp.i150.i = icmp sgt i32 %91, %81
  br i1 %cmp.i150.i, label %if.end.i.i.if.then24.i_crit_edge, label %if.end.i.i.if.end70.i_crit_edge

if.end.i.i.if.end70.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.end.i.i.if.then24.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end.i.i.if.then24.i_crit_edge, %land.lhs.true19.thread.i
  %92 = phi i32 [ %81, %if.end.i.i.if.then24.i_crit_edge ], [ %89, %land.lhs.true19.thread.i ]
  %93 = phi i32 [ %91, %if.end.i.i.if.then24.i_crit_edge ], [ %87, %land.lhs.true19.thread.i ]
  %reason.0.i.i = phi ptr [ @.str.126, %if.end.i.i.if.then24.i_crit_edge ], [ @.str.125, %land.lhs.true19.thread.i ]
  %94 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %96 = lshr i32 %92, 24
  %97 = lshr i32 %92, 16
  %and4.i.i = and i32 %97, 255
  %98 = lshr i32 %92, 8
  %and6.i.i = and i32 %98, 255
  %and8.i.i = and i32 %92, 255
  %99 = lshr i32 %93, 24
  %100 = lshr i32 %93, 16
  %and12.i.i = and i32 %100, 255
  %101 = lshr i32 %93, 8
  %and14.i.i = and i32 %101, 255
  %and16.i.i = and i32 %93, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.127, i32 noundef %96, i32 noundef %and4.i.i, i32 noundef %and6.i.i, i32 noundef %and8.i.i, ptr noundef nonnull %reason.0.i.i, i32 noundef %99, i32 noundef %and12.i.i, i32 noundef %and14.i.i, i32 noundef %and16.i.i) #15
  %pfn.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %102 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %pfn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %103)
  %cmp.i.i.i = icmp ult i8 %103, 8
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then24.i.if.end.i152.i_crit_edge

if.then24.i.if.end.i152.i_crit_edge:              ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i152.i

if.then.i.i.i:                                    ; preds = %if.then24.i
  %mb_mempool.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %104 = ptrtoint ptr %mb_mempool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mb_mempool.i.i.i, align 4
  %call.i.i.i = call noalias ptr @mempool_alloc(ptr noundef %105, i32 noundef 2592) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %106 = ptrtoint ptr %n_err_nomem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n_err_nomem.i.i.i, align 4
  %inc.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i, ptr %n_err_nomem.i.i.i, align 4
  br label %do.end31.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @csio_mb_reset(ptr noundef %hw, ptr noundef nonnull %call.i.i.i, i32 noundef 10000, i32 noundef 3, i32 noundef -2147483648, ptr noundef null) #12
  %call3.i.i.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end10.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.129) #15
  %110 = ptrtoint ptr %mb_mempool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mb_mempool.i.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i.i.i, ptr noundef %111) #12
  br label %do.end31.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %call8.i.i.i = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call.i.i.i) #12
  %112 = ptrtoint ptr %mb_mempool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mb_mempool.i.i.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i.i.i, ptr noundef %113) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp11.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %cmp11.i.i.i, label %if.end10.i.i.i.if.end.i152.i_crit_edge, label %if.end10.i.i.i.do.end31.i_crit_edge

if.end10.i.i.i.do.end31.i_crit_edge:              ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.end10.i.i.i.if.end.i152.i_crit_edge:           ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i152.i

if.end.i152.i:                                    ; preds = %if.end10.i.i.i.if.end.i152.i_crit_edge, %if.then24.i.if.end.i152.i_crit_edge
  %regstart.i.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %114 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %115, i32 31488
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  call void @arm_heavy_mb() #12
  %117 = or i32 %116, 16777216
  %118 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %119, i32 31488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i, i32 %117) #12, !srcloc !700
  %120 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %121, i32 31488
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  %123 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %124, i32 12472
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  call void @arm_heavy_mb() #12
  %126 = or i32 %125, 32
  %127 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr3.i5.i.i.i = getelementptr i8, ptr %128, i32 12472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i5.i.i.i, i32 %126) #12, !srcloc !700
  %129 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i6.i.i.i = getelementptr i8, ptr %130, i32 12472
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i6.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %first_page.i.i.i) #12
  %params.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %132 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %params.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i1.i.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i152.i.do.end.i4.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i152.i.do.end.i4.i.i_crit_edge:            ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i4.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i152.i
  %sf_nsec.i.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 1
  %134 = ptrtoint ptr %sf_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sf_nsec.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool2.not.i.i.i = icmp eq i32 %135, 0
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.do.end.i4.i.i_crit_edge, label %if.end.i5.i.i

lor.lhs.false.i.i.i.do.end.i4.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i4.i.i

do.end.i4.i.i:                                    ; preds = %lor.lhs.false.i.i.i.do.end.i4.i.i_crit_edge, %if.end.i152.i.do.end.i4.i.i_crit_edge
  %136 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev, align 8
  %dev.i3.i.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i3.i.i, ptr noundef nonnull @.str.131) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

if.end.i5.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fw_size.0)
  %tobool3.not.i.i.i = icmp eq i32 %fw_size.0, 0
  br i1 %tobool3.not.i.i.i, label %do.end7.i.i.i, label %if.end10.i6.i.i

do.end7.i.i.i:                                    ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev, align 8
  %dev9.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i.i, ptr noundef nonnull @.str.134) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

if.end10.i6.i.i:                                  ; preds = %if.end.i5.i.i
  %and.i.i.i = and i32 %fw_size.0, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end18.i.i.i, label %do.end15.i.i.i

do.end15.i.i.i:                                   ; preds = %if.end10.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev, align 8
  %dev17.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i.i, ptr noundef nonnull @.str.137) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

if.end18.i.i.i:                                   ; preds = %if.end10.i6.i.i
  %len512.i.i.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 2
  %142 = ptrtoint ptr %len512.i.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %len512.i.i.i, align 2
  %conv.i.i.i = zext i16 %143 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %fw_size.0)
  %cmp.not.i.i.i = icmp eq i32 %mul.i.i.i, %fw_size.0
  br i1 %cmp.not.i.i.i, label %if.end26.i.i.i, label %do.end23.i.i.i

do.end23.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev, align 8
  %dev25.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i.i.i, ptr noundef nonnull @.str.140) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

if.end26.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %fw_size.0)
  %cmp27.i.i.i = icmp ugt i32 %fw_size.0, 1048576
  br i1 %cmp27.i.i.i, label %do.end32.i.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fw_size.0)
  %cmp36144.not.i.i.i = icmp ult i32 %fw_size.0, 4
  br i1 %cmp36144.not.i.i.i, label %for.cond.preheader.i.i.i.do.end43.i.i.i_crit_edge, label %for.body.preheader.i.i.i

for.cond.preheader.i.i.i.do.end43.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i.i.i

for.body.preheader.i.i.i:                         ; preds = %for.cond.preheader.i.i.i
  %div139.i.i.i = lshr i32 %fw_size.0, 2
  br label %for.body.i.i.i

do.end32.i.i.i:                                   ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev, align 8
  %dev34.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i.i.i, ptr noundef nonnull @.str.143, i32 noundef 1048576) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.0146.i.i.i = phi i32 [ %inc.i7.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %csum.0145.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %arrayidx.i.i.i = getelementptr i32, ptr %fw_data.0, i32 %i.0146.i.i.i
  %148 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %149, %csum.0145.i.i.i
  %inc.i7.i.i = add nuw nsw i32 %i.0146.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i7.i.i, %div139.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i.i)
  %cmp38.not.i.i.i = icmp eq i32 %add.i.i.i, -1
  br i1 %cmp38.not.i.i.i, label %if.end46.i.i.i, label %for.end.i.i.i.do.end43.i.i.i_crit_edge

for.end.i.i.i.do.end43.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %for.end.i.i.i.do.end43.i.i.i_crit_edge, %for.cond.preheader.i.i.i.do.end43.i.i.i_crit_edge
  %csum.0.lcssa150.i.i.i = phi i32 [ %add.i.i.i, %for.end.i.i.i.do.end43.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.do.end43.i.i.i_crit_edge ]
  %150 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev, align 8
  %dev45.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i.i.i, ptr noundef nonnull @.str.146, i32 noundef %csum.0.lcssa150.i.i.i) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

if.end46.i.i.i:                                   ; preds = %for.end.i.i.i
  %div51.i.i.i = udiv i32 %133, %135
  %add52.i.i.i = add i32 %fw_size.0, -1
  %sub.i.i.i = add i32 %add52.i.i.i, %div51.i.i.i
  %div53.i.i.i = udiv i32 %sub.i.i.i, %div51.i.i.i
  %sub55.i.i.i = add i32 %div53.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub55.i.i.i)
  %cmp.not5.i.i.i.i = icmp slt i32 %sub55.i.i.i, 8
  br i1 %cmp.not5.i.i.i.i, label %if.end46.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge, label %if.end46.i.i.i.while.body.i.i.i.i_crit_edge

if.end46.i.i.i.while.body.i.i.i.i_crit_edge:      ; preds = %if.end46.i.i.i
  br label %while.body.i.i.i.i

if.end46.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge: ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_erase_sectors.exit.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end9.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end46.i.i.i.while.body.i.i.i.i_crit_edge
  %start.addr.06.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.end9.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 8, %if.end46.i.i.i.while.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp1.not.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.i.i.do.end.i.i.i.i_crit_edge

while.body.i.i.i.i.do.end.i.i.i.i_crit_edge:      ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i.i
  %shl.i.i.i.i = shl i32 %start.addr.06.i.i.i.i, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i, 216
  %call2.i.i.i.i = call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef %or.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %cmp3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge

if.end.i.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %call6.i.i.i.i = call fastcc i32 @csio_hw_flash_wait_op(ptr noundef %hw, i32 noundef 14, i32 noundef 500) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %cmp7.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %cmp7.not.i.i.i.i, label %if.end9.i.i.i.i, label %if.end5.i.i.i.i.do.end.i.i.i.i_crit_edge

if.end5.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %inc.i.i.i.i = add i32 %start.addr.06.i.i.i.i, 1
  %cmp.not.i.i.i.i = icmp sgt i32 %inc.i.i.i.i, %sub55.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end9.i.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge, label %if.end9.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end9.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i.i

if.end9.i.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge: ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_erase_sectors.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end5.i.i.i.i.do.end.i.i.i.i_crit_edge, %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge, %while.body.i.i.i.i.do.end.i.i.i.i_crit_edge
  %ret.1.ph.i.i.i.i = phi i32 [ %call6.i.i.i.i, %if.end5.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call2.i.i.i.i, %if.end.i.i.i.i.do.end.i.i.i.i_crit_edge ], [ %call.i.i.i.i, %while.body.i.i.i.i.do.end.i.i.i.i_crit_edge ]
  %152 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.154, i32 noundef %start.addr.06.i.i.i.i, i32 noundef %ret.1.ph.i.i.i.i) #15
  br label %csio_hw_flash_erase_sectors.exit.i.i.i

csio_hw_flash_erase_sectors.exit.i.i.i:           ; preds = %do.end.i.i.i.i, %if.end9.i.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge, %if.end46.i.i.i.csio_hw_flash_erase_sectors.exit.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !745
  call void @arm_heavy_mb() #12
  %154 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %155, i32 103420
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i.i, i32 0) #12, !srcloc !700
  %156 = call ptr @memcpy(ptr %first_page.i.i.i, ptr %fw_data.0, i32 256)
  %fw_ver.i.i.i = getelementptr inbounds %struct.fw_hdr, ptr %first_page.i.i.i, i32 0, i32 3
  %157 = ptrtoint ptr %fw_ver.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 -1, ptr %fw_ver.i.i.i, align 1
  %call66.i.i.i = call fastcc i32 @csio_hw_write_flash(ptr noundef %hw, i32 noundef 524288, i32 noundef 256, ptr noundef nonnull %first_page.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %call66.i.i.i, 0
  br i1 %tobool67.not.i.i.i, label %csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge, label %csio_hw_flash_erase_sectors.exit.i.i.i.do.end88.i.i.i_crit_edge

csio_hw_flash_erase_sectors.exit.i.i.i.do.end88.i.i.i_crit_edge: ; preds = %csio_hw_flash_erase_sectors.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i.i.i

csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge: ; preds = %csio_hw_flash_erase_sectors.exit.i.i.i
  br label %for.cond71.i.i.i

for.cond71.i.i.i:                                 ; preds = %for.body73.i.i.i.for.cond71.i.i.i_crit_edge, %csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge
  %fw_data.addr.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %for.body73.i.i.i.for.cond71.i.i.i_crit_edge ], [ %fw_data.0, %csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge ]
  %size.addr.0.in.i.i.i = phi i32 [ %size.addr.0.i.i.i, %for.body73.i.i.i.for.cond71.i.i.i_crit_edge ], [ %fw_size.0, %csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge ]
  %addr.0.i.i.i = phi i32 [ %add74.i.i.i, %for.body73.i.i.i.for.cond71.i.i.i_crit_edge ], [ 524288, %csio_hw_flash_erase_sectors.exit.i.i.i.for.cond71.i.i.i_crit_edge ]
  %size.addr.0.i.i.i = add i32 %size.addr.0.in.i.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.i.i.i)
  %tobool72.not.i.i.i = icmp eq i32 %size.addr.0.i.i.i, 0
  br i1 %tobool72.not.i.i.i, label %out.i.i.i, label %for.body73.i.i.i

for.body73.i.i.i:                                 ; preds = %for.cond71.i.i.i
  %add74.i.i.i = add i32 %addr.0.i.i.i, 256
  %add.ptr.i.i.i = getelementptr i8, ptr %fw_data.addr.0.i.i.i, i32 256
  %call75.i.i.i = call fastcc i32 @csio_hw_write_flash(ptr noundef %hw, i32 noundef %add74.i.i.i, i32 noundef 256, ptr noundef %add.ptr.i.i.i) #12
  %tobool76.not.i.i.i = icmp eq i32 %call75.i.i.i, 0
  br i1 %tobool76.not.i.i.i, label %for.body73.i.i.i.for.cond71.i.i.i_crit_edge, label %for.body73.i.i.i.do.end88.i.i.i_crit_edge

for.body73.i.i.i.do.end88.i.i.i_crit_edge:        ; preds = %for.body73.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i.i.i

for.body73.i.i.i.for.cond71.i.i.i_crit_edge:      ; preds = %for.body73.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond71.i.i.i

out.i.i.i:                                        ; preds = %for.cond71.i.i.i
  %fw_ver82.i.i.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %call83.i.i.i = call fastcc i32 @csio_hw_write_flash(ptr noundef %hw, i32 noundef 524292, i32 noundef 4, ptr noundef %fw_ver82.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i.i.i)
  %tobool84.not.i.i.i = icmp eq i32 %call83.i.i.i, 0
  br i1 %tobool84.not.i.i.i, label %if.end4.i.i, label %out.i.i.i.do.end88.i.i.i_crit_edge

out.i.i.i.do.end88.i.i.i_crit_edge:               ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i.i.i

do.end88.i.i.i:                                   ; preds = %out.i.i.i.do.end88.i.i.i_crit_edge, %for.body73.i.i.i.do.end88.i.i.i_crit_edge, %csio_hw_flash_erase_sectors.exit.i.i.i.do.end88.i.i.i_crit_edge
  %ret.0142.i.i.i = phi i32 [ %call83.i.i.i, %out.i.i.i.do.end88.i.i.i_crit_edge ], [ %call66.i.i.i, %csio_hw_flash_erase_sectors.exit.i.i.i.do.end88.i.i.i_crit_edge ], [ %call75.i.i.i, %for.body73.i.i.i.do.end88.i.i.i_crit_edge ]
  %158 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev, align 8
  %dev90.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90.i.i.i, ptr noundef nonnull @.str.152, i32 noundef %ret.0142.i.i.i) #15
  br label %csio_hw_fw_dload.exit.thread.i.i

csio_hw_fw_dload.exit.thread.i.i:                 ; preds = %do.end88.i.i.i, %do.end43.i.i.i, %do.end32.i.i.i, %do.end23.i.i.i, %do.end15.i.i.i, %do.end7.i.i.i, %do.end.i4.i.i
  %retval.0.i.ph.i.i = phi i32 [ %ret.0142.i.i.i, %do.end88.i.i.i ], [ -22, %do.end.i4.i.i ], [ -22, %do.end7.i.i.i ], [ -22, %do.end43.i.i.i ], [ -22, %do.end32.i.i.i ], [ -22, %do.end23.i.i.i ], [ -22, %do.end15.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %first_page.i.i.i) #12
  br label %do.end31.i

if.end4.i.i:                                      ; preds = %out.i.i.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %first_page.i.i.i) #12
  %flags.i.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 16
  %160 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i10.not.i.i = icmp eq i32 %and.i.i, 0
  %162 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regstart.i.i.i.i, align 4
  br i1 %tobool.not.i10.not.i.i, label %if.then.i15.i.i, label %if.else.i.i.i

if.then.i15.i.i:                                  ; preds = %if.end4.i.i
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %163, i32 12472
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %165 = and i32 %164, -33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  call void @arm_heavy_mb() #12
  %166 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr3.i.i12.i.i = getelementptr i8, ptr %167, i32 12472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i12.i.i, i32 %165) #12, !srcloc !700
  %168 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i.i13.i.i = getelementptr i8, ptr %169, i32 12472
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i13.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.then.i15.i.i.do.body.i.i.i_crit_edge

if.then.i15.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.then.i15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i15.i.i
  %171 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr.i21.i.i.i = getelementptr i8, ptr %172, i32 31488
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %174 = and i32 %173, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  call void @arm_heavy_mb() #12
  %175 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr3.i23.i.i.i = getelementptr i8, ptr %176, i32 31488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i23.i.i.i, i32 %174) #12, !srcloc !700
  %177 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i24.i.i.i = getelementptr i8, ptr %178, i32 31488
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i24.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  call void @msleep(i32 noundef 100) #12
  %call.i16.i.i = call fastcc i32 @csio_do_reset(ptr noundef %hw, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i16.i.i, 0
  br i1 %cmp2.i.i.i, label %if.then1.i.i.i.if.end34.i_crit_edge, label %if.then1.i.i.i.do.body.i.i.i_crit_edge

if.then1.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

if.then1.i.i.i.if.end34.i_crit_edge:              ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

do.body.i.i.i:                                    ; preds = %if.then1.i.i.i.do.body.i.i.i_crit_edge, %if.then.i15.i.i.do.body.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !746
  call void @arm_heavy_mb() #12
  %180 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %181, i32 103464
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 50331648) #12, !srcloc !700
  call void @msleep(i32 noundef 2000) #12
  br label %if.end34.i

if.else.i.i.i:                                    ; preds = %if.end4.i.i
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %163, i32 31488
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %183 = and i32 %182, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  call void @arm_heavy_mb() #12
  %184 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr3.i28.i.i.i = getelementptr i8, ptr %185, i32 31488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i28.i.i.i, i32 %183) #12, !srcloc !700
  %186 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i29.i.i.i = getelementptr i8, ptr %187, i32 31488
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i29.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  br label %for.body.i18.i.i

for.body.i18.i.i:                                 ; preds = %if.end12.i.i.i.for.body.i18.i.i_crit_edge, %if.else.i.i.i
  %ms.030.i.i.i = phi i32 [ 0, %if.else.i.i.i ], [ %add.i19.i.i, %if.end12.i.i.i.for.body.i18.i.i_crit_edge ]
  %189 = ptrtoint ptr %regstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regstart.i.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %190, i32 12472
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #12, !srcloc !701
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !747
  %192 = and i32 %191, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool10.not.i.i.i = icmp eq i32 %192, 0
  br i1 %tobool10.not.i.i.i, label %for.body.i18.i.i.if.end34.i_crit_edge, label %if.end12.i.i.i

for.body.i18.i.i.if.end34.i_crit_edge:            ; preds = %for.body.i18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.end12.i.i.i:                                   ; preds = %for.body.i18.i.i
  call void @msleep(i32 noundef 100) #12
  %add.i19.i.i = add nuw nsw i32 %ms.030.i.i.i, 100
  %cmp5.i.i.i = icmp ult i32 %ms.030.i.i.i, 9900
  br i1 %cmp5.i.i.i, label %if.end12.i.i.i.for.body.i18.i.i_crit_edge, label %if.end12.i.i.i.do.end31.i_crit_edge

if.end12.i.i.i.do.end31.i_crit_edge:              ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.end12.i.i.i.for.body.i18.i.i_crit_edge:        ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i18.i.i

do.end31.i:                                       ; preds = %if.end12.i.i.i.do.end31.i_crit_edge, %csio_hw_fw_dload.exit.thread.i.i, %if.end10.i.i.i.do.end31.i_crit_edge, %do.end.i.i.i, %if.then2.i.i.i
  %retval.0.i153.ph.i = phi i32 [ -12, %if.then2.i.i.i ], [ -22, %do.end.i.i.i ], [ -22, %if.end10.i.i.i.do.end31.i_crit_edge ], [ %retval.0.i.ph.i.i, %csio_hw_fw_dload.exit.thread.i.i ], [ -110, %if.end12.i.i.i.do.end31.i_crit_edge ]
  %193 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.120, i32 noundef %retval.0.i153.ph.i) #15
  br label %csio_hw_prep_fw.exit

if.end34.i:                                       ; preds = %for.body.i18.i.i.if.end34.i_crit_edge, %do.body.i.i.i, %if.then1.i.i.i.if.end34.i_crit_edge
  %195 = call ptr @memcpy(ptr %call7.i, ptr %fw_data.0, i32 128)
  %196 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %reset, align 4
  br label %if.end70.i

if.then38.i:                                      ; preds = %if.else15.thread.i
  %fw_ver39.i = getelementptr inbounds %struct.fw_info, ptr %retval.0.i.ph, i32 0, i32 3, i32 3
  %197 = ptrtoint ptr %fw_ver39.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %fw_ver39.i, align 4
  %fw_ver40.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 3
  %199 = ptrtoint ptr %fw_ver40.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %fw_ver40.i, align 4
  br i1 %cmp2.not.i, label %if.then38.i.cond.end.i_crit_edge, label %cond.true.i

if.then38.i.cond.end.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  %fw_ver42.i = getelementptr inbounds %struct.fw_hdr, ptr %fw_data.0, i32 0, i32 3
  %201 = ptrtoint ptr %fw_ver42.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %fw_ver42.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then38.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %202, %cond.true.i ], [ 0, %if.then38.i.cond.end.i_crit_edge ]
  %203 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev, align 8
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %shr.i = lshr i32 %198, 24
  %shr48.i = lshr i32 %198, 16
  %and49.i = and i32 %shr48.i, 255
  %shr50.i = lshr i32 %198, 8
  %and51.i = and i32 %shr50.i, 255
  %and53.i = and i32 %198, 255
  %shr54.i = lshr i32 %200, 24
  %shr56.i = lshr i32 %200, 16
  %and57.i = and i32 %shr56.i, 255
  %shr58.i = lshr i32 %200, 8
  %and59.i = and i32 %shr58.i, 255
  %and61.i = and i32 %200, 255
  %shr62.i = lshr i32 %cond.i, 24
  %shr64.i = lshr i32 %cond.i, 16
  %and65.i = and i32 %shr64.i, 255
  %shr66.i = lshr i32 %cond.i, 8
  %and67.i = and i32 %shr66.i, 255
  %and69.i = and i32 %cond.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.123, i32 noundef %21, i32 noundef %shr.i, i32 noundef %and49.i, i32 noundef %and51.i, i32 noundef %and53.i, i32 noundef %shr54.i, i32 noundef %and57.i, i32 noundef %and59.i, i32 noundef %and61.i, i32 noundef %shr62.i, i32 noundef %and65.i, i32 noundef %and67.i, i32 noundef %and69.i) #15
  br label %csio_hw_prep_fw.exit

if.end70.i:                                       ; preds = %if.end34.i, %if.end.i.i.if.end70.i_crit_edge, %if.else15.i.if.end70.i_crit_edge, %lor.lhs.false.i.if.end70.i_crit_edge, %land.lhs.true9.i.if.end70.i_crit_edge
  %ret.0167.i = phi i32 [ %call.i, %land.lhs.true9.i.if.end70.i_crit_edge ], [ 0, %if.end34.i ], [ %call.i, %lor.lhs.false.i.if.end70.i_crit_edge ], [ %call.i, %if.end.i.i.if.end70.i_crit_edge ], [ %call.i, %if.else15.i.if.end70.i_crit_edge ]
  %fw_ver71.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 3
  %205 = ptrtoint ptr %fw_ver71.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fw_ver71.i, align 4
  %fwrev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 28
  %207 = ptrtoint ptr %fwrev.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %fwrev.i, align 8
  %tp_microcode_ver.i = getelementptr inbounds %struct.fw_hdr, ptr %call7.i, i32 0, i32 4
  %208 = ptrtoint ptr %tp_microcode_ver.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %tp_microcode_ver.i, align 8
  %tp_vers.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 29
  %210 = ptrtoint ptr %tp_vers.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %tp_vers.i, align 4
  br label %csio_hw_prep_fw.exit

csio_hw_prep_fw.exit:                             ; preds = %if.end70.i, %cond.end.i, %do.end31.i
  %ret.1.i = phi i32 [ %ret.0167.i, %if.end70.i ], [ -22, %cond.end.i ], [ %retval.0.i153.ph.i, %do.end31.i ]
  %211 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %fw, align 4
  %cmp31.not = icmp eq ptr %212, null
  br i1 %cmp31.not, label %csio_hw_prep_fw.exit.if.end34_crit_edge, label %if.then33

csio_hw_prep_fw.exit.if.end34_crit_edge:          ; preds = %csio_hw_prep_fw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %csio_hw_prep_fw.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @release_firmware(ptr noundef nonnull %212) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %csio_hw_prep_fw.exit.if.end34_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1.i, %if.end34 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_check_fwver(ptr nocapture noundef readonly %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %4)
  %cmp.i.not = icmp eq i16 %4, 24576
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true:                                    ; preds = %entry
  %fwrev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 28
  %5 = ptrtoint ptr %fwrev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fwrev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17837312, i32 %6)
  %cmp = icmp ult i32 %6, 17837312
  br i1 %cmp, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %shr.i = lshr i32 %6, 24
  %shr2.i = lshr i32 %6, 16
  %and3.i = and i32 %shr2.i, 255
  %shr5.i = lshr i32 %6, 8
  %and6.i = and i32 %shr5.i, 255
  %and9.i = and i32 %6, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.158, i32 noundef %shr.i, i32 noundef %and3.i, i32 noundef %and6.i, i32 noundef %and9.i) #15
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_check_fwconfig(ptr noundef %hw, ptr nocapture noundef writeonly %param) unnamed_addr #1 align 64 {
entry:
  %retval1 = alloca i32, align 4
  %_param = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #12
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval1, align 4, !annotation !734
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_param) #12
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %1 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %3 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %_param to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17629184, ptr %_param, align 4
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %6 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfn, align 8
  %conv = zext i8 %7 to i32
  call void @csio_mb_params(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %conv, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %_param, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #12
  %call2 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.159) #15
  %10 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %11) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @csio_mb_process_read_params_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1, i32 noundef 1, ptr noundef nonnull %_param) #12
  %12 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %pdev13 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev13, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.162, i32 noundef %13) #15
  %16 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %17) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %19) #12
  %20 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_param, align 4
  %22 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end12, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %if.end16 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_param) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_use_fwconfig(ptr noundef %hw, i32 noundef %reset, ptr nocapture noundef %fw_cfg_param) unnamed_addr #1 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  %last.i = alloca %union.anon.88, align 4
  %path = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %path) #12
  %0 = call ptr @memset(ptr %path, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool.not = icmp eq i32 %reset, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @csio_do_reset(ptr noundef %hw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end2_crit_edge, label %if.then.if.end85_crit_edge

if.then.if.end85_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #12
  %1 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !734
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 20480
  %.str.116..str.115.i = select i1 %cmp.i.not.i, ptr @.str.115, ptr @.str.116
  %call3.i = call i32 @request_firmware(ptr noundef nonnull %cf.i, ptr noundef nonnull %.str.116..str.115.i, ptr noundef %dev1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %csio_hw_flash_config.exit.thread, label %if.end8.i

csio_hw_flash_config.exit.thread:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.174, ptr noundef nonnull %.str.116..str.115.i, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  br label %if.then6

if.end8.i:                                        ; preds = %if.end2
  %9 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %rem.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp9.not.i = icmp eq i32 %rem.i, 0
  %sub.i = sub nuw nsw i32 4, %rem.i
  %spec.select.i = select i1 %cmp9.not.i, i32 0, i32 %sub.i
  %add.i = add i32 %spec.select.i, %12
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #18
  %cmp17.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp17.i, label %if.end8.i.csio_hw_flash_config.exit_crit_edge, label %if.end20.i

if.end8.i.csio_hw_flash_config.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_config.exit

if.end20.i:                                       ; preds = %if.end8.i
  %13 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %19 = call ptr @memcpy(ptr %call9.i.i.i, ptr %16, i32 %18)
  %call22.i = call fastcc i32 @csio_hw_check_fwconfig(ptr noundef %hw, ptr noundef %fw_cfg_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end20.i.csio_hw_flash_config.exit_crit_edge

if.end20.i.csio_hw_flash_config.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_config.exit

if.end26.i:                                       ; preds = %if.end20.i
  %20 = ptrtoint ptr %fw_cfg_param to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_cfg_param, align 4
  %shr.i = lshr i32 %21, 8
  %and27.i = and i32 %shr.i, 255
  %and29.i = shl i32 %21, 16
  %shl.i = and i32 %and29.i, 16711680
  %22 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add31.i = add i32 %25, %spec.select.i
  %chip_ops.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 52
  %26 = ptrtoint ptr %chip_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_ops.i.i, align 4
  %chip_memory_rw.i.i = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %chip_memory_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_memory_rw.i.i, align 4
  %call.i.i = call i32 %29(ptr noundef %hw, i32 noundef 6, i32 noundef %and27.i, i32 noundef %shl.i, i32 noundef %add31.i, ptr noundef nonnull %call9.i.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp33.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp33.i, label %land.lhs.true.i, label %if.end26.i.csio_hw_flash_config.exit_crit_edge

if.end26.i.csio_hw_flash_config.exit_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_config.exit

land.lhs.true.i:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp35.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp35.not.i, label %land.lhs.true.i.do.end53.i_crit_edge, label %if.then37.i

land.lhs.true.i.do.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i) #12
  %30 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %last.i, align 4, !annotation !734
  %31 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and40.i = and i32 %34, -4
  %shr41.i = lshr i32 %34, 2
  %arrayidx.i = getelementptr i32, ptr %call9.i.i.i, i32 %shr41.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  store i32 %36, ptr %last.i, align 4
  br i1 %cmp9.not.i, label %if.then37.i.if.end47.i_crit_edge, label %for.body.preheader.i

if.then37.i.if.end47.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

for.body.preheader.i:                             ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep.i = getelementptr i8, ptr %last.i, i32 %sub.i
  %umax.i = call i32 @llvm.umax.i32(i32 %sub.i, i32 3) #12
  %37 = add nsw i32 %rem.i, -3
  %38 = add nsw i32 %37, %umax.i
  %39 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %38)
  br label %if.end47.i

if.end47.i:                                       ; preds = %for.body.preheader.i, %if.then37.i.if.end47.i_crit_edge
  %add45.i = add i32 %and40.i, %shl.i
  %40 = ptrtoint ptr %chip_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip_ops.i.i, align 4
  %chip_memory_rw.i93.i = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %chip_memory_rw.i93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip_memory_rw.i93.i, align 4
  %call.i94.i = call i32 %43(ptr noundef %hw, i32 noundef 6, i32 noundef %and27.i, i32 noundef %add45.i, i32 noundef 4, ptr noundef nonnull %last.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp48.i = icmp eq i32 %call.i94.i, 0
  br i1 %cmp48.i, label %if.end47.i.do.end53.i_crit_edge, label %if.end47.i.csio_hw_flash_config.exit_crit_edge

if.end47.i.csio_hw_flash_config.exit_crit_edge:   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_flash_config.exit

if.end47.i.do.end53.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.end47.i.do.end53.i_crit_edge, %land.lhs.true.i.do.end53.i_crit_edge
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55.i, ptr noundef nonnull @.str.177, ptr noundef nonnull %.str.116..str.115.i) #15
  %call56.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 64, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull %.str.116..str.115.i) #12
  br label %csio_hw_flash_config.exit

csio_hw_flash_config.exit:                        ; preds = %do.end53.i, %if.end47.i.csio_hw_flash_config.exit_crit_edge, %if.end26.i.csio_hw_flash_config.exit_crit_edge, %if.end20.i.csio_hw_flash_config.exit_crit_edge, %if.end8.i.csio_hw_flash_config.exit_crit_edge
  %retval.1.i.i98.i = phi ptr [ %call9.i.i.i, %do.end53.i ], [ %call9.i.i.i, %if.end47.i.csio_hw_flash_config.exit_crit_edge ], [ null, %if.end8.i.csio_hw_flash_config.exit_crit_edge ], [ %call9.i.i.i, %if.end20.i.csio_hw_flash_config.exit_crit_edge ], [ %call9.i.i.i, %if.end26.i.csio_hw_flash_config.exit_crit_edge ]
  %ret.1.i = phi i32 [ 0, %do.end53.i ], [ %call.i94.i, %if.end47.i.csio_hw_flash_config.exit_crit_edge ], [ -12, %if.end8.i.csio_hw_flash_config.exit_crit_edge ], [ -12, %if.end20.i.csio_hw_flash_config.exit_crit_edge ], [ %call.i.i, %if.end26.i.csio_hw_flash_config.exit_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i.i98.i) #12
  %46 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cf.i, align 4
  call void @release_firmware(ptr noundef %47) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp5.not = icmp eq i32 %ret.1.i, 0
  br i1 %cmp5.not, label %if.else, label %csio_hw_flash_config.exit.if.then6_crit_edge

csio_hw_flash_config.exit.if.then6_crit_edge:     ; preds = %csio_hw_flash_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %csio_hw_flash_config.exit.if.then6_crit_edge, %csio_hw_flash_config.exit.thread
  %chip_ops = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 52
  %48 = ptrtoint ptr %chip_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip_ops, align 4
  %chip_flash_cfg_addr = getelementptr inbounds %struct.csio_hw_chip_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %chip_flash_cfg_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_flash_cfg_addr, align 4
  %call7 = call i32 %51(ptr noundef %hw) #12
  br label %if.end11

if.else:                                          ; preds = %csio_hw_flash_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %fw_cfg_param to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_cfg_param, align 4
  %and10 = shl i32 %53, 16
  %shl = and i32 %and10, 16711680
  %phi.bo = and i32 %and10, -150994944
  %phi.bo183 = or i32 %phi.bo, 134217731
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %mtype.0 = phi i32 [ 201326595, %if.then6 ], [ %phi.bo183, %if.else ]
  %maddr.0 = phi i32 [ %call7, %if.then6 ], [ %shl, %if.else ]
  %config_name.0 = phi ptr [ @.str.164, %if.then6 ], [ %path, %if.else ]
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %54 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mb_mempool, align 4
  %call12 = call noalias ptr @mempool_alloc(ptr noundef %55, i32 noundef 2592) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %56 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %mb = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 1
  %58 = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 1, i32 1
  %59 = call ptr @memset(ptr %58, i32 0, i32 56)
  %60 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call12, ptr %call12, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call12, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call12, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 3
  %62 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10000, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 6
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 5
  %64 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 2
  %65 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 48, ptr %mb_size, align 8
  %66 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 130023424, ptr %mb, align 4
  %shr18 = and i32 %maddr.0, -65536
  %or21 = or i32 %mtype.0, %shr18
  %cfvalid_to_len16 = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 1
  %67 = ptrtoint ptr %cfvalid_to_len16 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or21, ptr %cfvalid_to_len16, align 4
  %call22 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end15.if.then83_crit_edge

if.end15.if.then83_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.end25:                                         ; preds = %if.end15
  %call26 = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 2
  br i1 %cmp27, label %do.body29, label %if.end25.if.end44_crit_edge

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body29:                                        ; preds = %if.end25
  %68 = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 1, i32 1
  %69 = call ptr @memset(ptr %68, i32 0, i32 56)
  %70 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call12, ptr %call12, align 4
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call12, ptr %prev.i, align 4
  %72 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10000, ptr %tmo, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %hw, ptr %priv, align 4
  %74 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %mb_cbfn, align 8
  %75 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 48, ptr %mb_size, align 8
  %76 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 130023424, ptr %mb, align 4
  %77 = ptrtoint ptr %cfvalid_to_len16 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %cfvalid_to_len16, align 4
  %call39 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.body29.if.then83_crit_edge

do.body29.if.then83_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.end42:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call12) #12
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end25.if.end44_crit_edge
  %rv.0 = phi i32 [ %call43, %if.end42 ], [ %call26, %if.end25.if.end44_crit_edge ]
  %config_name.1 = phi ptr [ @.str.165, %if.end42 ], [ %config_name.0, %if.end25.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0)
  %cmp45.not = icmp eq i32 %rv.0, 0
  br i1 %cmp45.not, label %if.end47, label %if.end44.if.then83_crit_edge

if.end44.if.then83_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.end47:                                         ; preds = %if.end44
  %finiver48 = getelementptr inbounds %struct.csio_mb, ptr %call12, i32 0, i32 1, i32 5
  %78 = ptrtoint ptr %finiver48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %finiver48, align 4
  %finicsum49 = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 16
  %80 = ptrtoint ptr %finicsum49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %finicsum49, align 4
  %cfcsum50 = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 14
  %82 = ptrtoint ptr %cfcsum50 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cfcsum50, align 4
  %84 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 127926272, ptr %mb, align 4
  %85 = ptrtoint ptr %cfvalid_to_len16 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %cfvalid_to_len16, align 4
  %call53 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end47.if.then83_crit_edge

if.end47.if.then83_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.end56:                                         ; preds = %if.end47
  %call57 = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end60, label %if.end56.if.then83_crit_edge

if.end56.if.then83_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp61.not = icmp eq i32 %81, %83
  br i1 %cmp61.not, label %if.end60.if.end66_crit_edge, label %do.end65

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.166, i32 noundef %81, i32 noundef %83) #15
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %if.end60.if.end66_crit_edge
  %fcoecaps.i = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 13
  %88 = ptrtoint ptr %fcoecaps.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %fcoecaps.i, align 2
  %conv.i = zext i16 %89 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end66.csio_hw_validate_caps.exit_crit_edge, label %if.end.i

if.end66.csio_hw_validate_caps.exit_crit_edge:    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_validate_caps.exit

if.end.i:                                         ; preds = %if.end66
  %and2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.csio_hw_validate_caps.exit_crit_edge, label %if.end70

if.end.i.csio_hw_validate_caps.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_validate_caps.exit

csio_hw_validate_caps.exit:                       ; preds = %if.end.i.csio_hw_validate_caps.exit_crit_edge, %if.end66.csio_hw_validate_caps.exit_crit_edge
  %.str.184.sink.i = phi ptr [ @.str.181, %if.end66.csio_hw_validate_caps.exit_crit_edge ], [ @.str.184, %if.end.i.csio_hw_validate_caps.exit_crit_edge ]
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull %.str.184.sink.i) #15
  br label %if.then83

if.end70:                                         ; preds = %if.end.i
  %92 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call12, ptr noundef %93) #12
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 4
  %or72 = or i32 %95, 256
  store i32 %or72, ptr %flags, align 4
  %call73 = call fastcc i32 @csio_get_device_params(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end76, label %if.end70.if.end85_crit_edge

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call void @csio_wr_sge_init(ptr noundef %hw) #12
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %hw, i32 0, i32 1
  %96 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sm_state.i, align 4
  call void %97(ptr noundef %hw, i32 noundef 2) #12
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.169, ptr noundef %config_name.1, i32 noundef %79, i32 noundef %83) #15
  br label %cleanup

if.then83:                                        ; preds = %csio_hw_validate_caps.exit, %if.end56.if.then83_crit_edge, %if.end47.if.then83_crit_edge, %if.end44.if.then83_crit_edge, %do.body29.if.then83_crit_edge, %if.end15.if.then83_crit_edge
  %rv.1.ph = phi i32 [ -22, %if.end47.if.then83_crit_edge ], [ -22, %do.body29.if.then83_crit_edge ], [ -22, %if.end15.if.then83_crit_edge ], [ -22, %csio_hw_validate_caps.exit ], [ %call57, %if.end56.if.then83_crit_edge ], [ %rv.0, %if.end44.if.then83_crit_edge ]
  %100 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call12, ptr noundef %101) #12
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end70.if.end85_crit_edge, %if.then.if.end85_crit_edge
  %rv.1182 = phi i32 [ %rv.1.ph, %if.then83 ], [ %call, %if.then.if.end85_crit_edge ], [ %call73, %if.end70.if.end85_crit_edge ]
  %flags86 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %102 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags86, align 4
  %and87 = and i32 %103, -257
  store i32 %and87, ptr %flags86, align 4
  %pdev91 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %104 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev91, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev92, ptr noundef nonnull @.str.172, i32 noundef %rv.1182) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end76, %if.then14
  %retval.0 = phi i32 [ %rv.1182, %if.end85 ], [ 0, %if.end76 ], [ -12, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %path) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_get_device_params(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  %retval2 = alloca i32, align 4
  %param = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval2) #12
  %0 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retval2, align 4, !annotation !734
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %param) #12
  %1 = getelementptr inbounds [6 x i32], ptr %param, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i32], ptr %param, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i32], ptr %param, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i32], ptr %param, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i32], ptr %param, i32 0, i32 5
  %portid = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 0, i32 2
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %portid, align 4
  %portid.1 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 1, i32 2
  %7 = ptrtoint ptr %portid.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %portid.1, align 4
  %portid.2 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 2, i32 2
  %8 = ptrtoint ptr %portid.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %portid.2, align 4
  %portid.3 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 3, i32 2
  %9 = ptrtoint ptr %portid.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %portid.3, align 4
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %10 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %11, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %12 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_err_nomem, align 4
  %inc3 = add i32 %13, 1
  store i32 %inc3, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16842752, ptr %param, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777216, ptr %1, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 36372480, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 36438016, ptr %3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 36241408, ptr %4, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 36306944, ptr %5, align 4
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %20 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pfn, align 8
  %conv = zext i8 %21 to i32
  call void @csio_mb_params(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, i32 noundef %conv, i32 noundef 0, i32 noundef 6, ptr noundef nonnull %param, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #12
  %call10 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.159) #15
  %24 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %25) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @csio_mb_process_read_params_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval2, i32 noundef 6, ptr noundef nonnull %param) #12
  %26 = ptrtoint ptr %retval2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp16.not = icmp eq i32 %27, 0
  br i1 %cmp16.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %pdev22 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %28 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev22, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.162, i32 noundef %27) #15
  %30 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %31) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %param, align 4
  %port_vec = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 35
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %vpd = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33
  %36 = ptrtoint ptr %vpd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %vpd, align 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %fw_eq_start = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %fw_eq_start to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fw_eq_start, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %4, align 4
  %fw_iq_start = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %fw_iq_start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fw_iq_start, align 4
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %45 = and i32 %44, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %.not = icmp eq i32 %45, 1
  br i1 %.not, label %if.end25.if.end43_crit_edge, label %if.then34

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %5, align 4
  %sub = sub i32 %47, %41
  %48 = trunc i32 %sub to i8
  %conv37 = add i8 %48, 1
  %cfg_niq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 50
  %49 = ptrtoint ptr %cfg_niq to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv37, ptr %cfg_niq, align 1
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  %sub40 = sub i32 %51, %38
  %52 = trunc i32 %sub40 to i8
  %conv42 = add i8 %52, 1
  %cfg_neq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 49
  %53 = ptrtoint ptr %cfg_neq to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv42, ptr %cfg_neq, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.end25.if.end43_crit_edge
  %54 = load i32, ptr @csio_port_mask, align 4
  %and45 = and i32 %54, %33
  %55 = ptrtoint ptr %port_vec to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and45, ptr %port_vec, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %and45) #12
  %conv364 = trunc i32 %call.i to i8
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %56 = ptrtoint ptr %num_pports to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv364, ptr %num_pports, align 8
  %conv367 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv367)
  %cmp368464.not = icmp eq i32 %conv367, 0
  br i1 %cmp368464.not, label %if.end43.for.end383_crit_edge, label %while.cond.preheader.lr.ph

if.end43.for.end383_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end383

while.cond.preheader.lr.ph:                       ; preds = %if.end43
  %57 = ptrtoint ptr %port_vec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port_vec, align 4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %j.0466 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc375, %while.end.while.cond.preheader_crit_edge ]
  %i.1465 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc382, %while.end.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %j.1 = phi i32 [ %inc375, %while.cond.while.cond_crit_edge ], [ %j.0466, %while.cond.preheader ]
  %shl = shl nuw i32 1, %j.1
  %and372 = and i32 %58, %shl
  %cmp373 = icmp eq i32 %and372, 0
  %inc375 = add i32 %j.1, 1
  br i1 %cmp373, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv377 = trunc i32 %j.1 to i8
  %portid380 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %i.1465, i32 2
  %59 = ptrtoint ptr %portid380 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv377, ptr %portid380, align 4
  %inc382 = add nuw nsw i32 %i.1465, 1
  %exitcond.not = icmp eq i32 %inc382, %conv367
  br i1 %exitcond.not, label %while.end.for.end383_crit_edge, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.end.for.end383_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end383

for.end383:                                       ; preds = %while.end.for.end383_crit_edge, %if.end43.for.end383_crit_edge
  %60 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %61) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end383, %do.end21, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %for.end383 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval2) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_config_device_caps(ptr noundef %hw) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %0 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_err_nomem = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 15
  %2 = ptrtoint ptr %n_err_nomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_err_nomem, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %n_err_nomem, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @csio_mb_caps_config(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null) #12
  %call2 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.189) #15
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %pdev11 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.192, i32 noundef %call6) #15
  br label %out

if.end13:                                         ; preds = %if.end5
  %mb.i = getelementptr inbounds %struct.csio_mb, ptr %call, i32 0, i32 1
  %fcoecaps.i = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb.i, i32 0, i32 13
  %8 = ptrtoint ptr %fcoecaps.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fcoecaps.i, align 2
  %conv.i = zext i16 %9 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.csio_hw_validate_caps.exit_crit_edge, label %if.end.i

if.end13.csio_hw_validate_caps.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_validate_caps.exit

if.end.i:                                         ; preds = %if.end13
  %and2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.csio_hw_validate_caps.exit_crit_edge, label %if.end17

if.end.i.csio_hw_validate_caps.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_hw_validate_caps.exit

csio_hw_validate_caps.exit:                       ; preds = %if.end.i.csio_hw_validate_caps.exit_crit_edge, %if.end13.csio_hw_validate_caps.exit_crit_edge
  %.str.184.sink.i = phi ptr [ @.str.181, %if.end13.csio_hw_validate_caps.exit_crit_edge ], [ @.str.184, %if.end.i.csio_hw_validate_caps.exit_crit_edge ]
  %pdev8.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev8.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull %.str.184.sink.i) #15
  br label %out

if.end17:                                         ; preds = %if.end.i
  %fw_state = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  %12 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp18 = icmp eq i32 %13, 1
  br i1 %cmp18, label %if.end17.out_crit_edge, label %if.end20

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end17
  tail call void @csio_mb_caps_config(ptr noundef %hw, ptr noundef nonnull %call, i32 noundef 10000, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #12
  %call21 = tail call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %pdev27 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev27, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.195) #15
  br label %out

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @csio_mb_fw_retval(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end29.out_crit_edge, label %do.end35

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %pdev36 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.198, i32 noundef %call30) #15
  br label %out

out:                                              ; preds = %do.end35, %if.end29.out_crit_edge, %do.end26, %if.end17.out_crit_edge, %csio_hw_validate_caps.exit, %do.end10, %do.end
  %rv.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %csio_hw_validate_caps.exit ], [ 0, %do.end26 ], [ 0, %do.end35 ], [ 0, %if.end17.out_crit_edge ], [ 0, %if.end29.out_crit_edge ]
  %18 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %rv.0, %out ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_wr_sge_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_sf1_write(ptr nocapture noundef readonly %hw, i32 noundef %byte_cnt, i32 noundef %cont, i32 noundef %lock, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 103420
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !748
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool2.not = icmp eq i32 %.mask, 0
  br i1 %tobool2.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !749
  tail call void @arm_heavy_mb() #12
  %3 = tail call i32 @llvm.bswap.i32(i32 %val)
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 103416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #12, !srcloc !700
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !750
  tail call void @arm_heavy_mb() #12
  %shl = shl i32 %cont, 3
  %sub = shl i32 %byte_cnt, 1
  %shl9 = add i32 %sub, -2
  %shl11 = shl i32 %lock, 4
  %or = or i32 %shl9, %shl
  %or10 = or i32 %or, %shl11
  %or12 = or i32 %or10, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %7 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regstart, align 4
  %add.ptr14 = getelementptr i8, ptr %8, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %6) #12, !srcloc !700
  %9 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regstart, align 4
  %add.ptr23.i = getelementptr i8, ptr %10, i32 103420
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27.i = icmp eq i32 %12, 0
  br i1 %cmp27.i, label %do.body.return_crit_edge, label %if.end5.i.preheader

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.preheader:                              ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #12
  %14 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regstart, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 103420
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.end5.i.preheader.return_crit_edge, label %if.end5.i.1

if.end5.i.preheader.return_crit_edge:             ; preds = %if.end5.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.1:                                      ; preds = %if.end5.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  %19 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regstart, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %20, i32 103420
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %22 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.1 = icmp eq i32 %22, 0
  br i1 %cmp.i.1, label %if.end5.i.1.return_crit_edge, label %if.end5.i.2

if.end5.i.1.return_crit_edge:                     ; preds = %if.end5.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.2:                                      ; preds = %if.end5.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #12
  %24 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regstart, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %25, i32 103420
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.2 = icmp eq i32 %27, 0
  br i1 %cmp.i.2, label %if.end5.i.2.return_crit_edge, label %if.end5.i.3

if.end5.i.2.return_crit_edge:                     ; preds = %if.end5.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.3:                                      ; preds = %if.end5.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #12
  %29 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regstart, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %30, i32 103420
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %32 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.3 = icmp eq i32 %32, 0
  br i1 %cmp.i.3, label %if.end5.i.3.return_crit_edge, label %if.end5.i.4

if.end5.i.3.return_crit_edge:                     ; preds = %if.end5.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.4:                                      ; preds = %if.end5.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #12
  %34 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regstart, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %35, i32 103420
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %37 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.4 = icmp eq i32 %37, 0
  br i1 %cmp.i.4, label %if.end5.i.4.return_crit_edge, label %if.end5.i.5

if.end5.i.4.return_crit_edge:                     ; preds = %if.end5.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.5:                                      ; preds = %if.end5.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #12
  %39 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regstart, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %40, i32 103420
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %42 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.5 = icmp eq i32 %42, 0
  br i1 %cmp.i.5, label %if.end5.i.5.return_crit_edge, label %if.end5.i.6

if.end5.i.5.return_crit_edge:                     ; preds = %if.end5.i.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.6:                                      ; preds = %if.end5.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #12
  %44 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regstart, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %45, i32 103420
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %47 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.6 = icmp eq i32 %47, 0
  br i1 %cmp.i.6, label %if.end5.i.6.return_crit_edge, label %if.end5.i.7

if.end5.i.6.return_crit_edge:                     ; preds = %if.end5.i.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.7:                                      ; preds = %if.end5.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #12
  %49 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regstart, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %50, i32 103420
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %52 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.7 = icmp eq i32 %52, 0
  br i1 %cmp.i.7, label %if.end5.i.7.return_crit_edge, label %if.end5.i.8

if.end5.i.7.return_crit_edge:                     ; preds = %if.end5.i.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5.i.8:                                      ; preds = %if.end5.i.7
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #12
  %54 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regstart, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %55, i32 103420
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %57 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.8 = icmp eq i32 %57, 0
  %spec.select = select i1 %cmp.i.8, i32 0, i32 -11
  br label %return

return:                                           ; preds = %if.end5.i.8, %if.end5.i.7.return_crit_edge, %if.end5.i.6.return_crit_edge, %if.end5.i.5.return_crit_edge, %if.end5.i.4.return_crit_edge, %if.end5.i.3.return_crit_edge, %if.end5.i.2.return_crit_edge, %if.end5.i.1.return_crit_edge, %if.end5.i.preheader.return_crit_edge, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %if.end5.i.preheader.return_crit_edge ], [ 0, %if.end5.i.1.return_crit_edge ], [ 0, %if.end5.i.2.return_crit_edge ], [ 0, %if.end5.i.3.return_crit_edge ], [ 0, %if.end5.i.4.return_crit_edge ], [ 0, %if.end5.i.5.return_crit_edge ], [ 0, %if.end5.i.6.return_crit_edge ], [ 0, %if.end5.i.7.return_crit_edge ], [ %spec.select, %if.end5.i.8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_sf1_read(ptr nocapture noundef readonly %hw, i32 noundef %byte_cnt, i32 noundef %cont, i32 noundef %lock, ptr nocapture noundef writeonly %valp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 103420
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !751
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool2.not = icmp eq i32 %.mask, 0
  br i1 %tobool2.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !752
  tail call void @arm_heavy_mb() #12
  %shl = shl i32 %lock, 4
  %shl5 = shl i32 %cont, 3
  %sub = shl i32 %byte_cnt, 1
  %shl6 = add i32 %sub, -2
  %or = or i32 %shl6, %shl5
  %or7 = or i32 %or, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %3) #12, !srcloc !700
  %6 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regstart, align 4
  %add.ptr23.i = getelementptr i8, ptr %7, i32 103420
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i = icmp eq i32 %9, 0
  br i1 %cmp27.i, label %do.body.if.then12_crit_edge, label %if.end5.i.preheader

do.body.if.then12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.preheader:                              ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #12
  %11 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regstart, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 103420
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end5.i.preheader.if.then12_crit_edge, label %if.end5.i.1

if.end5.i.preheader.if.then12_crit_edge:          ; preds = %if.end5.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.1:                                      ; preds = %if.end5.i.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #12
  %16 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regstart, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %17, i32 103420
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.1 = icmp eq i32 %19, 0
  br i1 %cmp.i.1, label %if.end5.i.1.if.then12_crit_edge, label %if.end5.i.2

if.end5.i.1.if.then12_crit_edge:                  ; preds = %if.end5.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.2:                                      ; preds = %if.end5.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #12
  %21 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regstart, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %22, i32 103420
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.2 = icmp eq i32 %24, 0
  br i1 %cmp.i.2, label %if.end5.i.2.if.then12_crit_edge, label %if.end5.i.3

if.end5.i.2.if.then12_crit_edge:                  ; preds = %if.end5.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.3:                                      ; preds = %if.end5.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #12
  %26 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regstart, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %27, i32 103420
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %29 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.3 = icmp eq i32 %29, 0
  br i1 %cmp.i.3, label %if.end5.i.3.if.then12_crit_edge, label %if.end5.i.4

if.end5.i.3.if.then12_crit_edge:                  ; preds = %if.end5.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.4:                                      ; preds = %if.end5.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #12
  %31 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regstart, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %32, i32 103420
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %34 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.4 = icmp eq i32 %34, 0
  br i1 %cmp.i.4, label %if.end5.i.4.if.then12_crit_edge, label %if.end5.i.5

if.end5.i.4.if.then12_crit_edge:                  ; preds = %if.end5.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.5:                                      ; preds = %if.end5.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #12
  %36 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regstart, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %37, i32 103420
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %39 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.5 = icmp eq i32 %39, 0
  br i1 %cmp.i.5, label %if.end5.i.5.if.then12_crit_edge, label %if.end5.i.6

if.end5.i.5.if.then12_crit_edge:                  ; preds = %if.end5.i.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.6:                                      ; preds = %if.end5.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #12
  %41 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regstart, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %42, i32 103420
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %44 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.6 = icmp eq i32 %44, 0
  br i1 %cmp.i.6, label %if.end5.i.6.if.then12_crit_edge, label %if.end5.i.7

if.end5.i.6.if.then12_crit_edge:                  ; preds = %if.end5.i.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.7:                                      ; preds = %if.end5.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #12
  %46 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regstart, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %47, i32 103420
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %49 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.7 = icmp eq i32 %49, 0
  br i1 %cmp.i.7, label %if.end5.i.7.if.then12_crit_edge, label %if.end5.i.8

if.end5.i.7.if.then12_crit_edge:                  ; preds = %if.end5.i.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.end5.i.8:                                      ; preds = %if.end5.i.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #12
  %51 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regstart, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %52, i32 103420
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #12, !srcloc !701
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %54 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.8 = icmp eq i32 %54, 0
  br i1 %cmp.i.8, label %if.end5.i.8.if.then12_crit_edge, label %if.end5.i.8.cleanup_crit_edge

if.end5.i.8.cleanup_crit_edge:                    ; preds = %if.end5.i.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.i.8.if.then12_crit_edge:                  ; preds = %if.end5.i.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %if.end5.i.8.if.then12_crit_edge, %if.end5.i.7.if.then12_crit_edge, %if.end5.i.6.if.then12_crit_edge, %if.end5.i.5.if.then12_crit_edge, %if.end5.i.4.if.then12_crit_edge, %if.end5.i.3.if.then12_crit_edge, %if.end5.i.2.if.then12_crit_edge, %if.end5.i.1.if.then12_crit_edge, %if.end5.i.preheader.if.then12_crit_edge, %do.body.if.then12_crit_edge
  %55 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regstart, align 4
  %add.ptr16 = getelementptr i8, ptr %56, i32 103416
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12, !srcloc !701
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !753
  %59 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %valp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end5.i.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ -11, %if.end5.i.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_read_flash(ptr nocapture noundef readonly %hw, i32 noundef %addr, i32 noundef %nwords, ptr nocapture noundef writeonly %data, i32 noundef %byte_oriented) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nwords, 2
  %add = add i32 %mul, %addr
  %params = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ule i32 %add, %1
  %and = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = or i32 %addr, 184549376
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 4, i32 noundef 1, i32 noundef 0, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @csio_hw_sf1_read(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %for.cond.preheader, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nwords)
  %tobool8.not44 = icmp eq i32 %nwords, 0
  br i1 %tobool8.not44, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %data.addr.046 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %if.end19.for.body_crit_edge ]
  %nwords.addr.045 = phi i32 [ %nwords, %for.body.lr.ph ], [ %dec, %if.end19.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nwords.addr.045)
  %cmp9 = icmp ne i32 %nwords.addr.045, 1
  %conv = zext i1 %cmp9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nwords.addr.045)
  %cmp10 = icmp eq i32 %nwords.addr.045, 1
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call fastcc i32 @csio_hw_sf1_read(ptr noundef %hw, i32 noundef 4, i32 noundef %conv, i32 noundef %conv11, ptr noundef %data.addr.046)
  br i1 %cmp10, label %do.body, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !754
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !700
  br label %if.end16

if.end16:                                         ; preds = %do.body, %for.body.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool17.not = icmp eq i32 %call12, 0
  br i1 %tobool17.not, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %dec = add i32 %nwords.addr.045, -1
  %incdec.ptr = getelementptr i32, ptr %data.addr.046, i32 1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call12, %if.end16.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_hello(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_process_hello_rsp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_seeprom_read(ptr nocapture noundef readonly %hw, i32 noundef %addr, ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %val, align 2
  %vpd_cap_addr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42, i32 2, i32 2
  %1 = ptrtoint ptr %vpd_cap_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vpd_cap_addr, align 4
  %3 = and i32 %addr, -32765
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %add = add i32 %2, 2
  %conv = trunc i32 %addr to i16
  %call = tail call i32 @pci_write_config_word(ptr noundef %6, i32 noundef %add, i16 noundef zeroext %conv) #12
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %attempts.0 = phi i32 [ 40, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 2147480) #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call3 = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef %add, ptr noundef nonnull %val) #12
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not = icmp slt i16 %11, 0
  %dec = add nsw i32 %attempts.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  %or.cond33 = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond33, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool10.not = icmp sgt i16 %11, -1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106, i32 noundef %addr) #15
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %add18 = add i32 %2, 4
  %call19 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef %add18, ptr noundef %data) #12
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %do.end14 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_write_flash(ptr nocapture noundef readonly %hw, i32 noundef %addr, i32 noundef %n, ptr nocapture noundef readonly %data) unnamed_addr #1 align 64 {
entry:
  %buf = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %and = and i32 %addr, 255
  %params = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 42
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %addr)
  %cmp.not = icmp ule i32 %2, %addr
  %add = add i32 %and, %n
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp1 = icmp ugt i32 %add, 256
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.do.body41_crit_edge

if.end.do.body41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.end4:                                          ; preds = %if.end
  %3 = or i32 %addr, 33554432
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %call5 = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 4, i32 noundef 1, i32 noundef 1, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %for.cond.preheader, label %if.end4.do.body41_crit_edge

if.end4.do.body41_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

for.cond.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not92 = icmp eq i32 %n, 0
  br i1 %tobool.not92, label %for.cond.preheader.for.end21_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.cond:                                         ; preds = %for.end.loopexit
  %uglygep = getelementptr i8, ptr %data.addr.093, i32 %5
  %sub = sub i32 %left.094, %5
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.cond.for.end21_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end21_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %left.094 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %n, %for.cond.preheader.for.body_crit_edge ]
  %data.addr.093 = phi ptr [ %uglygep, %for.cond.for.body_crit_edge ], [ %data, %for.cond.preheader.for.body_crit_edge ]
  %5 = tail call i32 @llvm.umin.i32(i32 %left.094, i32 4)
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body
  %val.090 = phi i32 [ %add13, %for.body12.for.body12_crit_edge ], [ 0, %for.body ]
  %i.089 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.body ]
  %data.addr.188 = phi ptr [ %incdec.ptr, %for.body12.for.body12_crit_edge ], [ %data.addr.093, %for.body ]
  %shl = shl i32 %val.090, 8
  %incdec.ptr = getelementptr i8, ptr %data.addr.188, i32 1
  %6 = ptrtoint ptr %data.addr.188 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.addr.188, align 1
  %conv = zext i8 %7 to i32
  %add13 = or i32 %shl, %conv
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

for.end.loopexit:                                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %left.094)
  %cmp14 = icmp ugt i32 %left.094, 4
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef %5, i32 noundef %conv15, i32 noundef 1, i32 noundef %add13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %for.end.loopexit.do.body41_crit_edge

for.end.loopexit.do.body41_crit_edge:             ; preds = %for.end.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

for.end21:                                        ; preds = %for.cond.for.end21_crit_edge, %for.cond.preheader.for.end21_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %for.cond.preheader.for.end21_crit_edge ], [ %uglygep, %for.cond.for.end21_crit_edge ]
  %call22 = tail call fastcc i32 @csio_hw_flash_wait_op(ptr noundef %hw, i32 noundef 8, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body, label %for.end21.do.body41_crit_edge

for.end21.do.body41_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

do.body:                                          ; preds = %for.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !755
  tail call void @arm_heavy_mb() #12
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !700
  %and26 = and i32 %addr, -256
  %call27 = call fastcc i32 @csio_hw_read_flash(ptr noundef %hw, i32 noundef %and26, i32 noundef 64, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %do.body
  %idx.neg = sub i32 0, %n
  %add.ptr31 = getelementptr i8, ptr %data.addr.0.lcssa, i32 %idx.neg
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %and
  %bcmp = call i32 @bcmp(ptr %add.ptr31, ptr %add.ptr33, i32 %n) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool35.not = icmp eq i32 %bcmp, 0
  br i1 %tobool35.not, label %if.end30.cleanup_crit_edge, label %do.end39

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.156, i32 noundef %addr) #15
  br label %cleanup

do.body41:                                        ; preds = %for.end21.do.body41_crit_edge, %for.end.loopexit.do.body41_crit_edge, %if.end4.do.body41_crit_edge, %if.end.do.body41_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.do.body41_crit_edge ], [ %call5, %if.end4.do.body41_crit_edge ], [ %call22, %for.end21.do.body41_crit_edge ], [ %call16, %for.end.loopexit.do.body41_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !756
  tail call void @arm_heavy_mb() #12
  %regstart44 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %regstart44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regstart44, align 4
  %add.ptr45 = getelementptr i8, ptr %13, i32 103420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #12, !srcloc !700
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %do.end39, %if.end30.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.body41 ], [ -22, %do.end39 ], [ -22, %entry.cleanup_crit_edge ], [ %call27, %do.body.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csio_hw_flash_wait_op(ptr nocapture noundef readonly %hw, i32 noundef %attempts, i32 noundef %delay) unnamed_addr #1 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !734
  %call19 = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp.not20 = icmp eq i32 %call19, 0
  br i1 %cmp.not20, label %entry.if.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then11.if.end_crit_edge, %entry.if.end_crit_edge
  %attempts.addr.021 = phi i32 [ %dec, %if.then11.if.end_crit_edge ], [ %attempts, %entry.if.end_crit_edge ]
  %call1 = call fastcc i32 @csio_hw_sf1_read(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %dec = add i32 %attempts.addr.021, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  tail call void @msleep(i32 noundef %delay) #12
  %call = tail call fastcc i32 @csio_hw_sf1_write(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 5)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then11.if.end_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.if.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup:                                          ; preds = %if.then11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %entry.cleanup_crit_edge ], [ -11, %if.end6.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_caps_config(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_bye(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_cancel_all(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_completions(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_mb_tmo_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_mgmt_tmo_handler(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %active_q = getelementptr i8, ptr %t, i32 -32
  %2 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.042 = load ptr, ptr %active_q, align 4
  %cmp.i.not43 = icmp eq ptr %tmp1.042, %active_q
  br i1 %cmp.i.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp1.044 = phi ptr [ %tmp1.0, %for.inc.for.body_crit_edge ], [ %tmp1.042, %entry.for.body_crit_edge ]
  %tmo = getelementptr inbounds %struct.csio_ioreq, ptr %tmp1.044, i32 0, i32 4
  %3 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmo, align 8
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 1000)
  %6 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %4)
  %tobool6.not = icmp ult i32 %4, 1001
  br i1 %tobool6.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %tmp1.044, i32 0, i32 1
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp1.044) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %11 = ptrtoint ptr %tmp1.044 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmp1.044, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %tmp1.044 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tmp1.044, ptr %tmp1.044, align 4
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tmp1.044, ptr %prev, align 4
  %io_cbfn = getelementptr inbounds %struct.csio_ioreq, ptr %tmp1.044, i32 0, i32 11
  %17 = ptrtoint ptr %io_cbfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_cbfn, align 64
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %list_del_init.exit.for.inc_crit_edge, label %if.then8

list_del_init.exit.for.inc_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then8:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wr_status = getelementptr inbounds %struct.csio_ioreq, ptr %tmp1.044, i32 0, i32 7
  %19 = ptrtoint ptr %wr_status to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -110, ptr %wr_status, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void %18(ptr noundef %21, ptr noundef %tmp1.044) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %list_del_init.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %tmp1.1 = phi ptr [ %tmp1.044, %for.body.for.inc_crit_edge ], [ %8, %if.then8 ], [ %8, %list_del_init.exit.for.inc_crit_edge ]
  %22 = ptrtoint ptr %tmp1.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp1.0 = load ptr, ptr %tmp1.1, align 4
  %cmp.i.not = icmp eq ptr %tmp1.0, %active_q
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %active_q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %active_q, align 4
  %cmp.i40.not = icmp eq ptr %24, %active_q
  br i1 %cmp.i40.not, label %for.end.if.end19_crit_edge, label %if.then16

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 100
  %call18 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end.if.end19_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %lock21 = getelementptr inbounds %struct.csio_hw, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock21) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

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

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 365)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 365)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !201, !203, !204, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !285, !286, !287, !288, !290, !291, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !523, !524, !525, !527, !528, !529, !531, !533, !534, !535, !536, !538, !539, !540, !541, !542, !544, !545, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !569, !570, !571, !573, !574, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !660, !661, !662, !664, !666, !668, !670, !672, !674, !676, !677, !678, !679, !681, !682, !683, !685, !687, !688}
!llvm.module.flags = !{!690, !691, !692, !693, !694, !695, !696, !697}
!llvm.ident = !{!698}

!0 = !{ptr @csio_dbg_level, !1, !"csio_dbg_level", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 50, i32 5}
!2 = !{ptr @csio_port_mask, !3, !"csio_port_mask", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 51, i32 14}
!4 = !{ptr @csio_msi, !5, !"csio_msi", i1 false, i1 false}
!5 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 57, i32 5}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2767, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @csio_hw_fatal_err._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @csio_hw_fatal_err._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3125, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @csio_handle_intr_status._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @csio_handle_intr_status._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3128, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @csio_handle_intr_status._entry.7, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @csio_handle_intr_status._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3795, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @csio_enqueue_evt._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @csio_enqueue_evt._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4026, i32 6}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @csio_evtq_worker._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @csio_evtq_worker._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4043, i32 5}
!38 = !{ptr @csio_evtq_worker._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @csio_evtq_worker._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @csio_hw_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4348, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4354, i32 19}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4395, i32 4}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @csio_hw_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @csio_hw_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @dev_num, !51, !"dev_num", i1 false, i1 false}
!51 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 60, i32 12}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2621, i32 4}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @csio_hw_initialize._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @csio_hw_initialize._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2627, i32 4}
!59 = !{ptr @csio_hw_initialize._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @csio_hw_initialize._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2637, i32 3}
!63 = !{ptr @csio_hw_initialize._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @csio_hw_initialize._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2646, i32 3}
!67 = !{ptr @csio_hw_initialize._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @csio_hw_initialize._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2656, i32 4}
!71 = !{ptr @csio_hw_initialize._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @csio_hw_initialize._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1890, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @csio_get_fcoe_resinfo._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @csio_get_fcoe_resinfo._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1898, i32 3}
!80 = !{ptr @csio_get_fcoe_resinfo._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @csio_get_fcoe_resinfo._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1806, i32 5}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @csio_enable_ports._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @csio_enable_ports._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1822, i32 4}
!89 = !{ptr @csio_enable_ports._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @csio_enable_ports._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1831, i32 4}
!93 = !{ptr @csio_enable_ports._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @csio_enable_ports._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1846, i32 4}
!97 = !{ptr @csio_enable_ports._entry.51, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @csio_enable_ports._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1854, i32 4}
!101 = !{ptr @csio_enable_ports._entry.54, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @csio_enable_ports._entry_ptr.56, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2496, i32 3}
!105 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @csio_hw_configure._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @csio_hw_configure._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2512, i32 31}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2547, i32 4}
!112 = !{ptr @csio_hw_configure._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @csio_hw_configure._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2558, i32 4}
!116 = !{ptr @csio_hw_configure._entry.63, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @csio_hw_configure._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @csio_hw_configure._entry.66, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2563, i32 4}
!120 = !{ptr @csio_hw_configure._entry_ptr.67, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 899, i32 3}
!123 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @csio_hw_dev_ready._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @csio_hw_dev_ready._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"supported_flash", i1 false, i1 false}
!127 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 770, i32 4}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 861, i32 3}
!130 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @csio_hw_get_flash_params._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @csio_hw_get_flash_params._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 872, i32 3}
!135 = !{ptr @csio_hw_get_flash_params._entry.72, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @csio_hw_get_flash_params._entry_ptr.74, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 622, i32 2}
!139 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @csio_hw_print_fw_version._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @csio_hw_print_fw_version._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 940, i32 3}
!144 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @csio_do_hello._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @csio_do_hello._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 946, i32 3}
!149 = !{ptr @csio_do_hello._entry.79, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @csio_do_hello._entry_ptr.81, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1030, i32 21}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1033, i32 21}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1036, i32 21}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1039, i32 21}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1044, i32 3}
!161 = !{ptr @csio_do_hello._entry.86, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @csio_do_hello._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1047, i32 3}
!165 = !{ptr @csio_do_hello._entry.89, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @csio_do_hello._entry_ptr.91, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 352, i32 2}
!169 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @csio_hw_get_vpd_params._entry, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @csio_hw_get_vpd_params._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 357, i32 3}
!175 = !{ptr @csio_hw_get_vpd_params._entry.95, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @csio_hw_get_vpd_params._entry_ptr.97, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 361, i32 2}
!179 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @csio_hw_get_vpd_params._entry.99, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @csio_hw_get_vpd_params._entry_ptr.101, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 362, i32 2}
!184 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @csio_hw_get_vpd_params._entry.103, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @csio_hw_get_vpd_params._entry_ptr.105, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.106, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 229, i32 3}
!189 = !{ptr @.str.107, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @csio_hw_seeprom_read._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @csio_hw_seeprom_read._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2423, i32 3}
!194 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @csio_hw_flash_fw._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @csio_hw_flash_fw._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2437, i32 17}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2439, i32 17}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2442, i32 3}
!203 = !{ptr @csio_hw_flash_fw._entry.112, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @csio_hw_flash_fw._entry_ptr.114, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2276, i32 14}
!207 = !{ptr @.str.116, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2289, i32 14}
!209 = !{ptr @fw_info_array, !210, !"fw_info_array", i1 false, i1 false}
!210 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2273, i32 23}
!211 = !{ptr @.str.117, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2332, i32 3}
!213 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @csio_hw_prep_fw._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @csio_hw_prep_fw._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2358, i32 4}
!218 = !{ptr @csio_hw_prep_fw._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @csio_hw_prep_fw._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2376, i32 3}
!222 = !{ptr @csio_hw_prep_fw._entry.122, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @csio_hw_prep_fw._entry_ptr.124, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2251, i32 12}
!226 = !{ptr @.str.126, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2256, i32 12}
!228 = !{ptr @.str.127, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2263, i32 2}
!230 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @csio_should_install_fs_fw._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @csio_should_install_fs_fw._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1202, i32 4}
!235 = !{ptr @.str.130, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @csio_hw_fw_halt._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @csio_hw_fw_halt._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.131, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 680, i32 3}
!240 = !{ptr @.str.132, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @csio_hw_fw_dload._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @csio_hw_fw_dload._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.134, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 685, i32 3}
!245 = !{ptr @csio_hw_fw_dload._entry.133, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @csio_hw_fw_dload._entry_ptr.135, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.137, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 690, i32 3}
!249 = !{ptr @csio_hw_fw_dload._entry.136, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @csio_hw_fw_dload._entry_ptr.138, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.140, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 695, i32 3}
!253 = !{ptr @csio_hw_fw_dload._entry.139, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @csio_hw_fw_dload._entry_ptr.141, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.143, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 700, i32 3}
!257 = !{ptr @csio_hw_fw_dload._entry.142, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @csio_hw_fw_dload._entry_ptr.144, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.146, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 709, i32 3}
!261 = !{ptr @csio_hw_fw_dload._entry.145, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @csio_hw_fw_dload._entry_ptr.147, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.149, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 722, i32 3}
!265 = !{ptr @csio_hw_fw_dload._entry.148, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @csio_hw_fw_dload._entry_ptr.150, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.152, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 757, i32 3}
!269 = !{ptr @csio_hw_fw_dload._entry.151, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @csio_hw_fw_dload._entry_ptr.153, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.154, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 613, i32 3}
!273 = !{ptr @.str.155, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @csio_hw_flash_erase_sectors._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @csio_hw_flash_erase_sectors._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.156, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 568, i32 3}
!278 = !{ptr @.str.157, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @csio_hw_write_flash._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @csio_hw_write_flash._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.158, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2464, i32 32}
!283 = !{ptr @.str.159, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1947, i32 3}
!285 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @csio_hw_check_fwconfig._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @csio_hw_check_fwconfig._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.162, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1955, i32 3}
!290 = !{ptr @csio_hw_check_fwconfig._entry.161, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @csio_hw_check_fwconfig._entry_ptr.163, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.164, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2084, i32 17}
!294 = !{ptr @.str.165, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2141, i32 17}
!296 = !{ptr @.str.166, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2171, i32 3}
!298 = !{ptr @.str.167, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @csio_hw_use_fwconfig._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @csio_hw_use_fwconfig._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.169, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2206, i32 2}
!303 = !{ptr @csio_hw_use_fwconfig._entry.168, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @csio_hw_use_fwconfig._entry_ptr.170, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.172, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2218, i32 2}
!307 = !{ptr @csio_hw_use_fwconfig._entry.171, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @csio_hw_use_fwconfig._entry_ptr.173, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.174, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1985, i32 3}
!311 = !{ptr @.str.175, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @csio_hw_flash_config._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @csio_hw_flash_config._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.177, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2025, i32 3}
!316 = !{ptr @csio_hw_flash_config._entry.176, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @csio_hw_flash_config._entry_ptr.178, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.179, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2026, i32 22}
!320 = !{ptr @.str.180, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 2026, i32 30}
!322 = !{ptr @.str.181, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1151, i32 3}
!324 = !{ptr @.str.182, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @csio_hw_validate_caps._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @csio_hw_validate_caps._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.184, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1156, i32 3}
!329 = !{ptr @csio_hw_validate_caps._entry.183, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @csio_hw_validate_caps._entry_ptr.185, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.186, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1389, i32 3}
!333 = !{ptr @csio_get_device_params._entry, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @csio_get_device_params._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @csio_get_device_params._entry.187, !336, !"_entry", i1 false, i1 false}
!336 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1397, i32 3}
!337 = !{ptr @csio_get_device_params._entry_ptr.188, !336, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.189, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1459, i32 3}
!340 = !{ptr @.str.190, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @csio_config_device_caps._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @csio_config_device_caps._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.192, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1465, i32 3}
!345 = !{ptr @csio_config_device_caps._entry.191, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @csio_config_device_caps._entry_ptr.193, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.195, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1485, i32 3}
!349 = !{ptr @csio_config_device_caps._entry.194, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @csio_config_device_caps._entry_ptr.196, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.198, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1491, i32 3}
!353 = !{ptr @csio_config_device_caps._entry.197, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @csio_config_device_caps._entry_ptr.199, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.200, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1125, i32 3}
!357 = !{ptr @.str.201, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @csio_do_reset._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @csio_do_reset._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.203, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1132, i32 3}
!362 = !{ptr @csio_do_reset._entry.202, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @csio_do_reset._entry_ptr.204, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.205, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 1077, i32 3}
!366 = !{ptr @.str.206, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @csio_do_bye._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @csio_do_bye._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.207, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3056, i32 3}
!371 = !{ptr @.str.208, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @csio_hws_removing._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @csio_hws_removing._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.209, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3214, i32 20}
!376 = !{ptr @.str.210, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3215, i32 19}
!378 = !{ptr @.str.211, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3216, i32 19}
!380 = !{ptr @.str.212, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3217, i32 19}
!382 = !{ptr @.str.213, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3218, i32 21}
!384 = !{ptr @.str.214, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3219, i32 24}
!386 = !{ptr @.str.215, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3220, i32 25}
!388 = !{ptr @csio_cim_intr_handler.cim_intr_info, !389, !"cim_intr_info", i1 false, i1 false}
!389 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3213, i32 26}
!390 = !{ptr @.str.216, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3224, i32 21}
!392 = !{ptr @.str.217, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3225, i32 20}
!394 = !{ptr @.str.218, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3226, i32 17}
!396 = !{ptr @.str.219, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3227, i32 17}
!398 = !{ptr @.str.220, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3228, i32 19}
!400 = !{ptr @.str.221, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3229, i32 19}
!402 = !{ptr @.str.222, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3230, i32 21}
!404 = !{ptr @.str.223, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3231, i32 21}
!406 = !{ptr @.str.224, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3232, i32 21}
!408 = !{ptr @.str.225, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3233, i32 22}
!410 = !{ptr @.str.226, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3234, i32 22}
!412 = !{ptr @.str.227, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3235, i32 22}
!414 = !{ptr @.str.228, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3236, i32 23}
!416 = !{ptr @.str.229, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3237, i32 23}
!418 = !{ptr @.str.230, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3238, i32 23}
!420 = !{ptr @.str.231, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3239, i32 23}
!422 = !{ptr @.str.232, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3240, i32 20}
!424 = !{ptr @.str.233, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3241, i32 20}
!426 = !{ptr @.str.234, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3242, i32 20}
!428 = !{ptr @.str.235, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3243, i32 20}
!430 = !{ptr @.str.236, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3244, i32 19}
!432 = !{ptr @.str.237, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3245, i32 19}
!434 = !{ptr @.str.238, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3246, i32 19}
!436 = !{ptr @.str.239, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3247, i32 19}
!438 = !{ptr @.str.240, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3248, i32 24}
!440 = !{ptr @.str.241, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3249, i32 24}
!442 = !{ptr @.str.242, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3250, i32 19}
!444 = !{ptr @.str.243, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3251, i32 21}
!446 = !{ptr @csio_cim_intr_handler.cim_upintr_info, !447, !"cim_upintr_info", i1 false, i1 false}
!447 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3223, i32 26}
!448 = !{ptr @.str.244, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3401, i32 15}
!450 = !{ptr @csio_mps_intr_handler.mps_rx_intr_info, !451, !"mps_rx_intr_info", i1 false, i1 false}
!451 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3400, i32 26}
!452 = !{ptr @.str.245, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3405, i32 25}
!454 = !{ptr @.str.246, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3406, i32 17}
!456 = !{ptr @.str.247, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3407, i32 33}
!458 = !{ptr @.str.248, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3409, i32 33}
!460 = !{ptr @.str.249, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3411, i32 15}
!462 = !{ptr @.str.250, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3412, i32 17}
!464 = !{ptr @.str.251, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3413, i32 15}
!466 = !{ptr @csio_mps_intr_handler.mps_tx_intr_info, !467, !"mps_tx_intr_info", i1 false, i1 false}
!467 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3404, i32 26}
!468 = !{ptr @.str.252, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3417, i32 27}
!470 = !{ptr @.str.253, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3418, i32 27}
!472 = !{ptr @.str.254, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3420, i32 17}
!474 = !{ptr @csio_mps_intr_handler.mps_trc_intr_info, !475, !"mps_trc_intr_info", i1 false, i1 false}
!475 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3416, i32 26}
!476 = !{ptr @.str.255, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3424, i32 15}
!478 = !{ptr @csio_mps_intr_handler.mps_stat_sram_intr_info, !479, !"mps_stat_sram_intr_info", i1 false, i1 false}
!479 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3423, i32 26}
!480 = !{ptr @.str.256, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3428, i32 14}
!482 = !{ptr @csio_mps_intr_handler.mps_stat_tx_intr_info, !483, !"mps_stat_tx_intr_info", i1 false, i1 false}
!483 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3427, i32 26}
!484 = !{ptr @.str.257, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3432, i32 15}
!486 = !{ptr @csio_mps_intr_handler.mps_stat_rx_intr_info, !487, !"mps_stat_rx_intr_info", i1 false, i1 false}
!487 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3431, i32 26}
!488 = !{ptr @.str.258, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3436, i32 18}
!490 = !{ptr @.str.259, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3437, i32 18}
!492 = !{ptr @.str.260, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3438, i32 17}
!494 = !{ptr @csio_mps_intr_handler.mps_cls_intr_info, !495, !"mps_cls_intr_info", i1 false, i1 false}
!495 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3435, i32 26}
!496 = !{ptr @.str.261, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3545, i32 24}
!498 = !{ptr @.str.262, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3546, i32 24}
!500 = !{ptr @.str.263, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3547, i32 24}
!502 = !{ptr @.str.264, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3548, i32 24}
!504 = !{ptr @csio_ncsi_intr_handler.ncsi_intr_info, !505, !"ncsi_intr_info", i1 false, i1 false}
!505 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3544, i32 26}
!506 = !{ptr @.str.265, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3581, i32 18}
!508 = !{ptr @.str.266, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3582, i32 17}
!510 = !{ptr @csio_pl_intr_handler.pl_intr_info, !511, !"pl_intr_info", i1 false, i1 false}
!511 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3580, i32 26}
!512 = !{ptr @.str.267, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3529, i32 24}
!514 = !{ptr @.str.268, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3530, i32 24}
!516 = !{ptr @.str.269, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3531, i32 22}
!518 = !{ptr @csio_smb_intr_handler.smb_intr_info, !519, !"smb_intr_info", i1 false, i1 false}
!519 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3528, i32 26}
!520 = !{ptr @.str.270, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3568, i32 3}
!522 = !{ptr @.str.271, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @csio_xgmac_intr_handler._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @csio_xgmac_intr_handler._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.273, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3570, i32 3}
!527 = !{ptr @csio_xgmac_intr_handler._entry.272, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @csio_xgmac_intr_handler._entry_ptr.274, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @csio_mem_intr_handler.name, !530, !"name", i1 false, i1 false}
!530 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3473, i32 20}
!531 = !{ptr @.str.275, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3487, i32 3}
!533 = !{ptr @.str.276, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @csio_mem_intr_handler._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @csio_mem_intr_handler._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.278, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3492, i32 3}
!538 = !{ptr @csio_mem_intr_handler._entry.277, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @csio_mem_intr_handler._entry_ptr.279, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.280, !537, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @.str.281, !537, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @.str.283, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3496, i32 3}
!544 = !{ptr @csio_mem_intr_handler._entry.282, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @csio_mem_intr_handler._entry_ptr.284, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.285, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3372, i32 16}
!548 = !{ptr @.str.286, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3373, i32 13}
!550 = !{ptr @.str.287, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3374, i32 18}
!552 = !{ptr @.str.288, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3375, i32 19}
!554 = !{ptr @.str.289, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3376, i32 19}
!556 = !{ptr @csio_le_intr_handler.le_intr_info, !557, !"le_intr_info", i1 false, i1 false}
!557 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3371, i32 26}
!558 = !{ptr @csio_le_intr_handler.t6_le_intr_info, !559, !"t6_le_intr_info", i1 false, i1 false}
!559 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3380, i32 26}
!560 = !{ptr @.str.290, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3144, i32 17}
!562 = !{ptr @.str.291, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3145, i32 23}
!564 = !{ptr @csio_tp_intr_handler.tp_intr_info, !565, !"tp_intr_info", i1 false, i1 false}
!565 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3143, i32 26}
!566 = !{ptr @.str.292, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3511, i32 3}
!568 = !{ptr @.str.293, !567, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @csio_ma_intr_handler._entry, !567, !"_entry", i1 false, i1 false}
!570 = !{ptr @csio_ma_intr_handler._entry_ptr, !567, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.295, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3515, i32 3}
!573 = !{ptr @csio_ma_intr_handler._entry.294, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @csio_ma_intr_handler._entry_ptr.296, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.297, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3308, i32 23}
!577 = !{ptr @.str.298, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3309, i32 23}
!579 = !{ptr @.str.299, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3310, i32 23}
!581 = !{ptr @.str.300, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3311, i32 25}
!583 = !{ptr @.str.301, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3312, i32 16}
!585 = !{ptr @.str.302, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3313, i32 24}
!587 = !{ptr @.str.303, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3314, i32 29}
!589 = !{ptr @.str.304, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3316, i32 24}
!591 = !{ptr @.str.305, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3317, i32 30}
!593 = !{ptr @csio_pmtx_intr_handler.pmtx_intr_info, !594, !"pmtx_intr_info", i1 false, i1 false}
!594 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3307, i32 26}
!595 = !{ptr @.str.306, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3331, i32 25}
!597 = !{ptr @.str.307, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3332, i32 15}
!599 = !{ptr @.str.308, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3333, i32 24}
!601 = !{ptr @.str.309, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3334, i32 29}
!603 = !{ptr @.str.310, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3336, i32 24}
!605 = !{ptr @.str.311, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3337, i32 30}
!607 = !{ptr @csio_pmrx_intr_handler.pmrx_intr_info, !608, !"pmrx_intr_info", i1 false, i1 false}
!608 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3330, i32 26}
!609 = !{ptr @.str.312, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3271, i32 16}
!611 = !{ptr @.str.313, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3272, i32 15}
!613 = !{ptr @csio_ulprx_intr_handler.ulprx_intr_info, !614, !"ulprx_intr_info", i1 false, i1 false}
!614 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3270, i32 26}
!615 = !{ptr @.str.314, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3351, i32 24}
!617 = !{ptr @.str.315, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3352, i32 23}
!619 = !{ptr @.str.316, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3353, i32 25}
!621 = !{ptr @.str.317, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3354, i32 26}
!623 = !{ptr @.str.318, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3355, i32 26}
!625 = !{ptr @.str.319, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3356, i32 26}
!627 = !{ptr @csio_cplsw_intr_handler.cplsw_intr_info, !628, !"cplsw_intr_info", i1 false, i1 false}
!628 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3350, i32 26}
!629 = !{ptr @.str.320, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3162, i32 5}
!631 = !{ptr @.str.321, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3164, i32 5}
!633 = !{ptr @.str.322, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3165, i32 25}
!635 = !{ptr @.str.323, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3166, i32 23}
!637 = !{ptr @.str.324, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3168, i32 5}
!639 = !{ptr @.str.325, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3169, i32 25}
!641 = !{ptr @.str.326, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3171, i32 25}
!643 = !{ptr @.str.327, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3173, i32 25}
!645 = !{ptr @.str.328, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3175, i32 25}
!647 = !{ptr @.str.329, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3178, i32 5}
!649 = !{ptr @.str.330, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3180, i32 5}
!651 = !{ptr @.str.331, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3181, i32 25}
!653 = !{ptr @.str.332, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3182, i32 24}
!655 = !{ptr @csio_sge_intr_handler.sge_intr_info, !656, !"sge_intr_info", i1 false, i1 false}
!656 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3160, i32 26}
!657 = !{ptr @.str.333, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3189, i32 3}
!659 = !{ptr @.str.334, !658, !"<string literal>", i1 false, i1 false}
!660 = !{ptr @csio_sge_intr_handler._entry, !658, !"_entry", i1 false, i1 false}
!661 = !{ptr @csio_sge_intr_handler._entry_ptr, !658, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @.str.335, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3286, i32 26}
!664 = !{ptr @.str.336, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3288, i32 26}
!666 = !{ptr @.str.337, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3290, i32 26}
!668 = !{ptr @.str.338, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3292, i32 26}
!670 = !{ptr @.str.339, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3294, i32 16}
!672 = !{ptr @csio_ulptx_intr_handler.ulptx_intr_info, !673, !"ulptx_intr_info", i1 false, i1 false}
!673 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3285, i32 26}
!674 = !{ptr @.str.340, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3960, i32 3}
!676 = !{ptr @.str.341, !675, !"<string literal>", i1 false, i1 false}
!677 = !{ptr @csio_process_fwevtq_entry._entry, !675, !"_entry", i1 false, i1 false}
!678 = !{ptr @csio_process_fwevtq_entry._entry_ptr, !675, !"_entry_ptr", i1 false, i1 false}
!679 = !{ptr @.str.342, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 3838, i32 3}
!681 = !{ptr @csio_enqueue_evt_lock._entry, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @csio_enqueue_evt_lock._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @csio_t5_fcoe_adapters, !684, !"csio_t5_fcoe_adapters", i1 false, i1 false}
!684 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 63, i32 36}
!685 = !{ptr @csio_mgmtm_init.__key, !686, !"__key", i1 false, i1 false}
!686 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 4190, i32 2}
!687 = !{ptr @.str.343, !686, !"<string literal>", i1 false, i1 false}
!688 = distinct !{null, !689, !"csio_evtq_sz", i1 false, i1 false}
!689 = !{!"../drivers/scsi/csiostor/csio_hw.c", i32 54, i32 17}
!690 = !{i32 1, !"wchar_size", i32 2}
!691 = !{i32 1, !"min_enum_size", i32 4}
!692 = !{i32 8, !"branch-target-enforcement", i32 0}
!693 = !{i32 8, !"sign-return-address", i32 0}
!694 = !{i32 8, !"sign-return-address-all", i32 0}
!695 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!696 = !{i32 7, !"uwtable", i32 1}
!697 = !{i32 7, !"frame-pointer", i32 2}
!698 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!699 = !{i64 2156437890}
!700 = !{i64 5092795}
!701 = !{i64 5093213}
!702 = !{i64 2156237391}
!703 = !{i64 2156238312}
!704 = !{i64 2156239195}
!705 = !{i64 2156239551}
!706 = !{i64 2156240406}
!707 = !{i64 2156240762}
!708 = !{i64 2156241638}
!709 = !{i64 2156431182}
!710 = !{i64 2156432179}
!711 = !{i64 2156432656}
!712 = !{i64 2156440261}
!713 = !{i64 2156443993}
!714 = !{i64 2156478683}
!715 = !{i64 2156454962}
!716 = !{i64 2156455836}
!717 = !{i64 2156465551}
!718 = !{i64 2156468234}
!719 = !{i64 2156468965}
!720 = !{i64 2156471658}
!721 = !{i64 2156445814}
!722 = !{i64 2156446485}
!723 = !{i64 2156448673}
!724 = !{i64 2156449339}
!725 = !{i64 2156481923}
!726 = !{i64 2156483735}
!727 = !{i64 2156473303}
!728 = !{i64 2156477660}
!729 = !{i64 2156456688}
!730 = !{i64 2156459716}
!731 = !{i64 2156460166}
!732 = !{i64 2156464571}
!733 = !{i64 2156308122}
!734 = !{!"auto-init"}
!735 = !{i64 2156293441}
!736 = !{i64 2156405803}
!737 = !{i64 2156288186}
!738 = !{i64 2156301241}
!739 = !{i64 2156423851}
!740 = !{i64 2156424832}
!741 = !{i64 2156425829}
!742 = !{i64 2156426589}
!743 = !{i64 2156427344}
!744 = !{i64 2156429244}
!745 = !{i64 2156270122}
!746 = !{i64 2156320435}
!747 = !{i64 2156321449}
!748 = !{i64 2156260736}
!749 = !{i64 2156261138}
!750 = !{i64 2156261962}
!751 = !{i64 2156258325}
!752 = !{i64 2156258931}
!753 = !{i64 2156260055}
!754 = !{i64 2156262869}
!755 = !{i64 2156264816}
!756 = !{i64 2156267644}
