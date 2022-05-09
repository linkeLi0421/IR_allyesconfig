; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_mb.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_mb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mb = type { %struct.list_head, [8 x i64], i32, i32, %struct.completion, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fw_cmd_hdr = type { i32, i32 }
%struct.fw_hello_cmd = type { i32, i32, i32, i32 }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.fw_bye_cmd = type { i32, i32, i64 }
%struct.fw_reset_cmd = type { i32, i32, i32, i32 }
%struct.fw_params_cmd = type { i32, i32, [7 x %struct.fw_params_param] }
%struct.fw_params_param = type { i32, i32 }
%struct.fw_ldst_cmd = type { i32, i32, %union.fw_ldst }
%union.fw_ldst = type { %struct.fw_ldst_func, [32 x i8] }
%struct.fw_ldst_func = type { i8, i8, i16, i32, i64, i64 }
%struct.fw_ldst_pcie = type { i8, i8, i8, i8, i8, i8, i16, [12 x i32] }
%struct.fw_caps_config_cmd = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32 }
%struct.fw_port_cmd = type { i32, i32, %union.fw_port }
%union.fw_port = type { %struct.fw_port_info }
%struct.fw_port_info = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i64 }
%struct.fw_port_info32 = type { i32, i32, i32, i32, i32, i32 }
%struct.fw_initialize_cmd = type { i32, i32, i64 }
%struct.csio_iq_params = type { i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64 }
%struct.fw_iq_cmd = type { i32, i32, i16, i16, i16, i16, i32, i16, i16, i64, i32, i16, i16, i64, i32, i16, i16, i64 }
%struct.csio_eq_params = type { i8, i8, i8, i16, i32, i8, i16, i8, i8, i8, i16, i64 }
%struct.fw_eq_ofld_cmd = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.fw_fcoe_link_cmd = type { i32, i32, i32, i8, i8, i16, i8, i8, i16, i32, i16, [6 x i8], [8 x i8], [8 x i8] }
%struct.fw_fcoe_res_info_cmd = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_fcoe_vnp_cmd = type { i32, i32, i32, i32, i16, [6 x i8], [8 x i8], [8 x i8], [16 x i8], [8 x i8] }
%struct.fw_fcoe_fcf_cmd = type { i32, i32, i16, [6 x i8], [8 x i8], [8 x i8], i16, i16, i8, [3 x i8], i32, i32, i8, i8, [6 x i8], i64 }
%struct.fw_fcoe_stats_cmd = type { i32, i32, %union.fw_fcoe_stats }
%union.fw_fcoe_stats = type { %struct.fw_fcoe_port_stats }
%struct.fw_fcoe_port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fw_fcoe_port_cmd_params = type { i8, i8, i8 }
%struct.fw_fcoe_stats_ctl = type { i8, i8, i16, i32, i64, i64, i64, i64, i64, i64 }
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
%struct.fw_debug_cmd = type { i32, i32, %union.fw_debug }
%union.fw_debug = type { %struct.fw_debug_assert }
%struct.fw_debug_assert = type { i32, i32, i32, i32, [8 x i8], [8 x i8], i64 }

@csio_mb_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid tmo: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_mb_issue\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/csiostor/csio_mb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_mb_issue._entry_ptr = internal global ptr @csio_mb_issue._entry, section ".printk_index", align 4
@csio_mb_issue._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot issue mailbox in interrupt mode 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@csio_mb_issue._entry_ptr.7 = internal global ptr @csio_mb_issue._entry.5, section ".printk_index", align 4
@csio_mb_issue._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't own Mailbox %x op:0x%x owner:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@csio_mb_issue._entry_ptr.10 = internal global ptr @csio_mb_issue._entry.8, section ".printk_index", align 4
@csio_mb_issue._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No outstanding driver mailbox as well\0A\00", [57 x i8] zeroinitializer }, align 32
@csio_mb_issue._entry_ptr.13 = internal global ptr @csio_mb_issue._entry.11, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csio_mb_issue._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Mailbox %x op:0x%x timed out!\0A\00", [33 x i8] zeroinitializer }, align 32
@csio_mb_issue._entry_ptr.16 = internal global ptr @csio_mb_issue._entry.14, section ".printk_index", align 4
@csio_mb_fwevt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unhandled FW_PORT_CMD action: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_mb_fwevt_handler\00", [42 x i8] zeroinitializer }, align 32
@csio_mb_fwevt_handler._entry_ptr = internal global ptr @csio_mb_fwevt_handler._entry, section ".printk_index", align 4
@csio_mb_fwevt_handler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1448, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Port:%x - LINK %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@csio_mb_fwevt_handler._entry_ptr.22 = internal global ptr @csio_mb_fwevt_handler._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@csio_mb_isr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1511, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Stray mailbox interrupt recvd, mailbox data not valid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_mb_isr_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@csio_mb_isr_handler._entry_ptr = internal global ptr @csio_mb_isr_handler._entry, section ".printk_index", align 4
@csio_mbm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&mbm->timer)\00", [18 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed.mod_str = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LR\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ER\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TWINAX\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"active TWINAX\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LRM\00", [28 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1385, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Port:%d - port module unplugged\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio_mb_portmod_changed\00", [40 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr = internal global ptr @csio_mb_portmod_changed._entry, section ".printk_index", align 4
@csio_mb_portmod_changed._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1388, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Port:%d - %s port module inserted\0A\00", [61 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr.39 = internal global ptr @csio_mb_portmod_changed._entry.37, section ".printk_index", align 4
@csio_mb_portmod_changed._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 1392, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Port:%d - unsupported optical port module inserted\0A\00", [44 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr.42 = internal global ptr @csio_mb_portmod_changed._entry.40, section ".printk_index", align 4
@csio_mb_portmod_changed._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 1396, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Port:%d - unknown port module inserted, forcing TWINAX\0A\00", [40 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr.45 = internal global ptr @csio_mb_portmod_changed._entry.43, section ".printk_index", align 4
@csio_mb_portmod_changed._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.2, i32 1398, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port:%d - transceiver module error\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr.48 = internal global ptr @csio_mb_portmod_changed._entry.46, section ".printk_index", align 4
@csio_mb_portmod_changed._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.2, i32 1401, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Port:%d - unknown module type %d inserted\0A\00", [53 x i8] zeroinitializer }, align 32
@csio_mb_portmod_changed._entry_ptr.51 = internal global ptr @csio_mb_portmod_changed._entry.49, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1136, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW print message:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"csio_mb_dump_fw_dbg\00", [44 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr = internal global ptr @csio_mb_dump_fw_dbg._entry, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1138, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09debug->dprtstridx = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.56 = internal global ptr @csio_mb_dump_fw_dbg._entry.54, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 1140, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09debug->dprtstrparam0 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.59 = internal global ptr @csio_mb_dump_fw_dbg._entry.57, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.2, i32 1142, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09debug->dprtstrparam1 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.62 = internal global ptr @csio_mb_dump_fw_dbg._entry.60, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.2, i32 1144, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09debug->dprtstrparam2 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.65 = internal global ptr @csio_mb_dump_fw_dbg._entry.63, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.2, i32 1146, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09debug->dprtstrparam3 = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.68 = internal global ptr @csio_mb_dump_fw_dbg._entry.66, section ".printk_index", align 4
@csio_mb_dump_fw_dbg._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.2, i32 1153, ptr @.str.71, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"FW assertion at %.16s:%u, val0 %#x, val1 %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@csio_mb_dump_fw_dbg._entry_ptr.72 = internal global ptr @csio_mb_dump_fw_dbg._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 27, i64 129]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 28, i64 29, i64 30]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1206, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1211, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1254, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1259, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1337, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1423, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1447, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1509, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1667, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"mod_str\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1378, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 9 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1379, i32 54 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1385, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1387, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1390, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1394, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1398, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1400, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1136, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1137, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1139, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1141, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1143, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1145, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [35 x i8] c"../drivers/scsi/csiostor/csio_mb.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1149, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @csio_mb_dump_fw_dbg._entry, ptr @csio_mb_dump_fw_dbg._entry.54, ptr @csio_mb_dump_fw_dbg._entry.57, ptr @csio_mb_dump_fw_dbg._entry.60, ptr @csio_mb_dump_fw_dbg._entry.63, ptr @csio_mb_dump_fw_dbg._entry.66, ptr @csio_mb_dump_fw_dbg._entry.69, ptr @csio_mb_dump_fw_dbg._entry_ptr, ptr @csio_mb_dump_fw_dbg._entry_ptr.56, ptr @csio_mb_dump_fw_dbg._entry_ptr.59, ptr @csio_mb_dump_fw_dbg._entry_ptr.62, ptr @csio_mb_dump_fw_dbg._entry_ptr.65, ptr @csio_mb_dump_fw_dbg._entry_ptr.68, ptr @csio_mb_dump_fw_dbg._entry_ptr.72, ptr @csio_mb_fwevt_handler._entry, ptr @csio_mb_fwevt_handler._entry.19, ptr @csio_mb_fwevt_handler._entry_ptr, ptr @csio_mb_fwevt_handler._entry_ptr.22, ptr @csio_mb_isr_handler._entry, ptr @csio_mb_isr_handler._entry_ptr, ptr @csio_mb_issue._entry, ptr @csio_mb_issue._entry.11, ptr @csio_mb_issue._entry.14, ptr @csio_mb_issue._entry.5, ptr @csio_mb_issue._entry.8, ptr @csio_mb_issue._entry_ptr, ptr @csio_mb_issue._entry_ptr.10, ptr @csio_mb_issue._entry_ptr.13, ptr @csio_mb_issue._entry_ptr.16, ptr @csio_mb_issue._entry_ptr.7, ptr @csio_mb_portmod_changed._entry, ptr @csio_mb_portmod_changed._entry.37, ptr @csio_mb_portmod_changed._entry.40, ptr @csio_mb_portmod_changed._entry.43, ptr @csio_mb_portmod_changed._entry.46, ptr @csio_mb_portmod_changed._entry.49, ptr @csio_mb_portmod_changed._entry_ptr, ptr @csio_mb_portmod_changed._entry_ptr.39, ptr @csio_mb_portmod_changed._entry_ptr.42, ptr @csio_mb_portmod_changed._entry_ptr.45, ptr @csio_mb_portmod_changed._entry_ptr.48, ptr @csio_mb_portmod_changed._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @csio_mbm_init.__key, ptr @.str.28, ptr @csio_mb_portmod_changed.mod_str, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_issue._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_issue._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_issue._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_issue._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_fwevt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_fwevt_handler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_isr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mbm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed.mod_str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_portmod_changed._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_mb_dump_fw_dbg._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_mb_fw_retval(ptr nocapture noundef readonly %mbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %lo = getelementptr inbounds %struct.fw_cmd_hdr, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lo, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  ret i32 %and
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_hello(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i32 noundef %m_mbox, i32 noundef %a_mbox, i32 noundef %master, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %mb, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 77594624, ptr %mb, align 4
  %retval_len16 = getelementptr inbounds %struct.fw_hello_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %retval_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %master)
  %cmp2 = icmp eq i32 %master, 2
  %phi.bo = shl i32 %m_mbox, 24
  %spec.select = select i1 %cmp2, i32 268435456, i32 0
  %spec.select23 = select i1 %cmp2, i32 %phi.bo, i32 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %cmp = icmp eq i32 %master, 0
  %shl = select i1 %cmp, i32 536870912, i32 0
  %shl9 = shl i32 %a_mbox, 20
  %or = or i32 %shl9, %spec.select
  %or8 = or i32 %or, %shl
  %or10 = or i32 %or8, %spec.select23
  %or12 = or i32 %or10, 65536
  %err_to_clearinit = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %err_to_clearinit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or12, ptr %err_to_clearinit, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_mb_process_hello_rsp(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %retval, ptr nocapture noundef writeonly %state, ptr nocapture noundef writeonly %mpfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %retval_len16 = getelementptr inbounds %struct.fw_hello_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retval_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fwrev = getelementptr inbounds %struct.fw_hello_cmd, ptr %mb, i32 0, i32 3
  %3 = ptrtoint ptr %fwrev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwrev, align 4
  %fwrev1 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 28
  %5 = ptrtoint ptr %fwrev1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fwrev1, align 8
  %err_to_clearinit = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %err_to_clearinit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_to_clearinit, align 4
  %shr2 = lshr i32 %7, 24
  %8 = trunc i32 %shr2 to i8
  %conv = and i8 %8, 15
  %9 = ptrtoint ptr %mpfn to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %mpfn, align 1
  %and4 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %10 = lshr i32 %7, 30
  %11 = and i32 %10, 2
  %.sink = select i1 %tobool.not, i32 %11, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %state, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_bye(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 94371840, ptr %mb, align 8
  %retval_len16 = getelementptr inbounds %struct.fw_bye_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %retval_len16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_reset(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i32 noundef %reset, i32 noundef %halt, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 60817408, ptr %mb, align 4
  %retval_len16 = getelementptr inbounds %struct.fw_reset_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %retval_len16, align 4
  %val = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %reset, ptr %val, align 4
  %halt_pkd = getelementptr inbounds %struct.fw_reset_cmd, ptr %mb, i32 0, i32 3
  %11 = ptrtoint ptr %halt_pkd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %halt, ptr %halt_pkd, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_params(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i32 noundef %pf, i32 noundef %vf, i32 noundef %nparams, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %val, i1 noundef zeroext %wr, ptr noundef %cbfn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %param = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %or = select i1 %wr, i32 144703488, i32 146800640
  %shl = shl i32 %pf, 8
  %or2 = or i32 %shl, %vf
  %or4 = or i32 %or2, %or
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or4, ptr %mb, align 4
  %retval_len16 = getelementptr inbounds %struct.fw_params_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %retval_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nparams)
  %tobool6.not32 = icmp eq i32 %nparams, 0
  br i1 %wr, label %while.cond.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %tobool6.not32, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool6.not32, label %while.cond.preheader.if.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %p.036 = phi ptr [ %incdec.ptr9, %while.body.while.body_crit_edge ], [ %param, %while.cond.preheader.while.body_crit_edge ]
  %nparams.addr.035 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nparams, %while.cond.preheader.while.body_crit_edge ]
  %params.addr.034 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %params, %while.cond.preheader.while.body_crit_edge ]
  %val.addr.033 = phi ptr [ %incdec.ptr7, %while.body.while.body_crit_edge ], [ %val, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %nparams.addr.035, -1
  %incdec.ptr = getelementptr i32, ptr %params.addr.034, i32 1
  %10 = ptrtoint ptr %params.addr.034 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %params.addr.034, align 4
  %incdec.ptr7 = getelementptr i32, ptr %val.addr.033, i32 1
  %12 = ptrtoint ptr %val.addr.033 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.addr.033, align 4
  %incdec.ptr8 = getelementptr i32, ptr %p.036, i32 1
  %14 = ptrtoint ptr %p.036 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %p.036, align 4
  %incdec.ptr9 = getelementptr i32, ptr %p.036, i32 2
  %15 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %incdec.ptr8, align 4
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.131 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %param, %for.cond.preheader.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %params.addr.129 = phi ptr [ %incdec.ptr10, %for.body.for.body_crit_edge ], [ %params, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr10 = getelementptr i32, ptr %params.addr.129, i32 1
  %16 = ptrtoint ptr %params.addr.129 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params.addr.129, align 4
  %18 = ptrtoint ptr %p.131 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %p.131, align 4
  %inc = add nuw i32 %i.030, 1
  %add.ptr = getelementptr i32, ptr %p.131, i32 2
  %exitcond.not = icmp eq i32 %inc, %nparams
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %while.body.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_process_read_params_rsp(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %retval, i32 noundef %nparams, ptr nocapture noundef writeonly %val) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %retval_len16 = getelementptr inbounds %struct.fw_params_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retval_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nparams)
  %cmp27 = icmp ne i32 %nparams, 0
  %or.cond = and i1 %cmp, %cmp27
  br i1 %or.cond, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %param = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %val1 = getelementptr inbounds %struct.fw_params_param, ptr %param, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %p.010 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %val1, %for.body.preheader ]
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.addr.08 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %val, %for.body.preheader ]
  %3 = ptrtoint ptr %p.010 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p.010, align 4
  %incdec.ptr = getelementptr i32, ptr %val.addr.08, i32 1
  %5 = ptrtoint ptr %val.addr.08 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val.addr.08, align 4
  %inc = add nuw i32 %i.09, 1
  %add.ptr = getelementptr i32, ptr %p.010, i32 2
  %exitcond.not = icmp eq i32 %inc, %nparams
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_ldst(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i32 noundef %reg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 29360169, ptr %mb, align 8
  %cycles_to_len16 = getelementptr inbounds %struct.fw_ldst_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %cycles_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %cycles_to_len16, align 4
  %u = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %select_naccess = getelementptr inbounds %struct.fw_ldst_pcie, ptr %u, i32 0, i32 4
  %10 = ptrtoint ptr %select_naccess to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %select_naccess, align 4
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %11 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pfn, align 8
  %13 = or i8 %12, 16
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %u, align 8
  %conv4 = trunc i32 %reg to i8
  %r = getelementptr inbounds %struct.fw_ldst_pcie, ptr %u, i32 0, i32 2
  %15 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %r, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_caps_config(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i1 noundef zeroext %wr, i1 noundef zeroext %init, i1 noundef zeroext %tgt, i1 noundef zeroext %cofld, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  br i1 %wr, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i32 [ 127926272, %entry.if.end_crit_edge ], [ 130023424, %if.then ]
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo4 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo4, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 48, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %mb, align 4
  %cfvalid_to_len16 = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %cfvalid_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cfvalid_to_len16, align 4
  br i1 %wr, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %fcoecaps = getelementptr inbounds %struct.fw_caps_config_cmd, ptr %mb, i32 0, i32 13
  %spec.select = select i1 %cofld, i16 4, i16 0
  %10 = zext i1 %init to i16
  %spec.select42 = or i16 %spec.select, %10
  %11 = ptrtoint ptr %fcoecaps to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %spec.select42, ptr %fcoecaps, align 2
  br i1 %tgt, label %if.then23, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then23:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %fcoecaps to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fcoecaps, align 2
  %14 = or i16 %13, 2
  store i16 %14, ptr %fcoecaps, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_port(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, i8 noundef zeroext %portid, i1 noundef zeroext %wr, i32 noundef %fc, i16 noundef zeroext %fw_caps, ptr noundef %cbfn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mb, i32 0, i32 64)
  %1 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %3 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %5 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %6 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %mb_size, align 8
  %or = select i1 %wr, i32 462422016, i32 465567744
  %conv = zext i8 %portid to i32
  %or2 = or i32 %or, %conv
  %7 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or2, ptr %mb, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %fw_caps)
  %cmp10 = icmp eq i16 %fw_caps, 1
  br i1 %wr, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or8 = select i1 %cmp10, i32 196610, i32 655362
  %action_to_len16 = getelementptr inbounds %struct.fw_port_cmd, ptr %mb, i32 0, i32 1
  %8 = ptrtoint ptr %action_to_len16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or8, ptr %action_to_len16, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %or14 = select i1 %cmp10, i32 65538, i32 589826
  %action_to_len1615 = getelementptr inbounds %struct.fw_port_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %action_to_len1615 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or14, ptr %action_to_len1615, align 4
  br i1 %cmp10, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i16 @fwcaps32_to_caps16(i32 noundef %fc) #12
  %conv20 = zext i16 %call to i32
  %u = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv20, ptr %u, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %u21 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %u21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %fc, ptr %u21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fwcaps32_to_caps16(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_process_read_port_rsp(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %retval, i16 noundef zeroext %fw_caps, ptr nocapture noundef writeonly %pcaps, ptr nocapture noundef writeonly %acaps) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %action_to_len16 = getelementptr inbounds %struct.fw_port_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %action_to_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action_to_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %fw_caps)
  %cmp1 = icmp eq i16 %fw_caps, 1
  %u = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pcap = getelementptr inbounds %struct.fw_port_info, ptr %u, i32 0, i32 1
  %3 = ptrtoint ptr %pcap to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcap, align 4
  %call = tail call i32 @fwcaps16_to_caps32(i16 noundef zeroext %4) #12
  %5 = ptrtoint ptr %pcaps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %pcaps, align 4
  %acap = getelementptr inbounds %struct.fw_port_info, ptr %u, i32 0, i32 2
  %6 = ptrtoint ptr %acap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %acap, align 2
  %call5 = tail call i32 @fwcaps16_to_caps32(i16 noundef zeroext %7) #12
  br label %if.end8.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pcaps32 = getelementptr inbounds %struct.fw_port_info32, ptr %u, i32 0, i32 3
  %8 = ptrtoint ptr %pcaps32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcaps32, align 4
  %10 = ptrtoint ptr %pcaps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pcaps, align 4
  %acaps32 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %acaps32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %acaps32, align 8
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.else, %if.then3
  %call5.sink = phi i32 [ %call5, %if.then3 ], [ %12, %if.else ]
  %13 = ptrtoint ptr %acaps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5.sink, ptr %acaps, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwcaps16_to_caps32(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_initialize(ptr noundef %hw, ptr noundef %mbp, i32 noundef %tmo, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tmo, ptr %tmo1, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 111149056, ptr %mb, align 8
  %retval_len16 = getelementptr inbounds %struct.fw_initialize_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %retval_len16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_iq_alloc_write(ptr nocapture noundef readonly %hw, ptr noundef %mbp, ptr noundef %priv, i32 noundef %mb_tmo, ptr noundef readonly %iq_params, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mb.i, i32 0, i32 64)
  %1 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbp, ptr %prev.i.i, align 4
  %tmo.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %3 = ptrtoint ptr %tmo.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mb_tmo, ptr %tmo.i, align 4
  %priv1.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1.i, align 4
  %mb_cbfn.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %5 = ptrtoint ptr %mb_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn, ptr %mb_cbfn.i, align 8
  %mb_size.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %6 = ptrtoint ptr %mb_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %mb_size.i, align 8
  %7 = ptrtoint ptr %iq_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %iq_params, align 8
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv.i = zext i8 %bf.clear.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %vfn.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 1
  %8 = ptrtoint ptr %vfn.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vfn.i, align 1
  %conv2.i = zext i8 %9 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %or4.i = or i32 %or.i, 277872640
  %10 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or4.i, ptr %mb.i, align 8
  %alloc_to_len16.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 1
  %11 = ptrtoint ptr %alloc_to_len16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2147483644, ptr %alloc_to_len16.i, align 4
  %viid.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 6
  %12 = ptrtoint ptr %viid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %viid.i, align 2
  %conv5.i = zext i8 %13 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %type.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 7
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 1
  %conv7.i = zext i8 %15 to i32
  %shl8.i = shl i32 %conv7.i, 29
  %or9.i = or i32 %shl8.i, %shl6.i
  %iqasynch.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 8
  %16 = ptrtoint ptr %iqasynch.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iqasynch.i, align 4
  %conv10.i = zext i8 %17 to i32
  %shl11.i = shl i32 %conv10.i, 28
  %or12.i = or i32 %or9.i, %shl11.i
  %type_to_iqandstindex.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %type_to_iqandstindex.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or12.i, ptr %type_to_iqandstindex.i, align 8
  %fl0size.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 40
  %19 = ptrtoint ptr %fl0size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fl0size.i, align 4
  %fl0size13.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 12
  %21 = ptrtoint ptr %fl0size13.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %fl0size13.i, align 2
  %fl1size.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 54
  %22 = ptrtoint ptr %fl1size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %fl1size.i, align 4
  store i16 %23, ptr %fl0size13.i, align 2
  %flags.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %25, 10
  %and.lobit.i = and i32 %and.i, 1
  %26 = xor i32 %and.lobit.i, 1
  %bf.load.i8 = load i8, ptr %iq_params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i8)
  %tobool.not.i = icmp sgt i8 %bf.load.i8, -1
  %bf.lshr5.i = lshr i8 %bf.load.i8, 3
  %bf.clear.i9 = and i8 %bf.lshr5.i, 7
  %conv6.i = zext i8 %bf.clear.i9 to i32
  %shl.i10 = shl nuw nsw i32 %conv6.i, 8
  %27 = ptrtoint ptr %vfn.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vfn.i, align 1
  %conv7.i12 = zext i8 %28 to i32
  %or.i13 = or i32 %shl.i10, %conv7.i12
  %or9.i14 = or i32 %or.i, %or.i13
  %or10.i = or i32 %or9.i14, 279969792
  %29 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or10.i, ptr %mb.i, align 8
  %or12.i16 = select i1 %tobool.not.i, i32 -2013265916, i32 -1879048188
  %30 = ptrtoint ptr %alloc_to_len16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or12.i16, ptr %alloc_to_len16.i, align 4
  %iqid.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 3
  %31 = ptrtoint ptr %iqid.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %iqid.i, align 4
  %iqid14.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 3
  %33 = ptrtoint ptr %iqid14.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %iqid14.i, align 2
  %fl0id.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 4
  %34 = ptrtoint ptr %fl0id.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fl0id.i, align 2
  %fl0id19.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 4
  %36 = ptrtoint ptr %fl0id19.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %fl0id19.i, align 4
  %fl1id.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 5
  %37 = ptrtoint ptr %fl1id.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %fl1id.i, align 8
  %fl1id24.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 5
  %39 = ptrtoint ptr %fl1id24.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %fl1id24.i, align 2
  %iqandst.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 10
  %40 = ptrtoint ptr %iqandst.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iqandst.i, align 2
  %conv28.i = zext i8 %41 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 15
  %iqanus.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 11
  %42 = ptrtoint ptr %iqanus.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iqanus.i, align 1
  %conv30.i = zext i8 %43 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 14
  %iqanud.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 12
  %44 = ptrtoint ptr %iqanud.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %iqanud.i, align 8
  %conv33.i = zext i8 %45 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 12
  %iqandstindex.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 13
  %46 = ptrtoint ptr %iqandstindex.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %iqandstindex.i, align 2
  %conv36.i = zext i16 %47 to i32
  %or32.i = or i32 %shl29.i, %or12.i
  %or35.i = or i32 %or32.i, %shl31.i
  %or38.i = or i32 %or35.i, %shl34.i
  %or39.i = or i32 %or38.i, %conv36.i
  %48 = ptrtoint ptr %type_to_iqandstindex.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or39.i, ptr %type_to_iqandstindex.i, align 8
  %iqpciech.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 15
  %49 = ptrtoint ptr %iqpciech.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iqpciech.i, align 1
  %conv40.i = zext i8 %50 to i16
  %shl41.i = shl i16 %conv40.i, 12
  %iqdcaen.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 16
  %51 = ptrtoint ptr %iqdcaen.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iqdcaen.i, align 2
  %conv42.i = zext i8 %52 to i16
  %shl43.i = shl i16 %conv42.i, 11
  %or44.i = or i16 %shl43.i, %shl41.i
  %iqdcacpu.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 17
  %53 = ptrtoint ptr %iqdcacpu.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %iqdcacpu.i, align 1
  %conv45.i = zext i8 %54 to i16
  %shl46.i = shl nuw nsw i16 %conv45.i, 6
  %iqintcntthresh.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 18
  %55 = ptrtoint ptr %iqintcntthresh.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %iqintcntthresh.i, align 8
  %conv48.i = zext i8 %56 to i16
  %shl49.i = shl nuw nsw i16 %conv48.i, 4
  %iqcprio.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 20
  %57 = ptrtoint ptr %iqcprio.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iqcprio.i, align 2
  %conv51.i = zext i8 %58 to i16
  %shl52.i = shl nuw nsw i16 %conv51.i, 2
  %iqesize.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 21
  %59 = ptrtoint ptr %iqesize.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %iqesize.i, align 1
  %conv54.i = zext i8 %60 to i16
  %or47.masked.i = or i16 %or44.i, %shl46.i
  %or50.masked.i = or i16 %or47.masked.i, %shl49.i
  %or53.masked.i = or i16 %or50.masked.i, %shl52.i
  %conv58.i = or i16 %or53.masked.i, %conv54.i
  %iqdroprss_to_iqesize.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 7
  %61 = ptrtoint ptr %iqdroprss_to_iqesize.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %iqdroprss_to_iqesize.i, align 4
  %or60.i = or i16 %conv58.i, %62
  store i16 %or60.i, ptr %iqdroprss_to_iqesize.i, align 4
  %iqsize.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 22
  %63 = ptrtoint ptr %iqsize.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %iqsize.i, align 4
  %iqsize63.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 8
  %65 = ptrtoint ptr %iqsize63.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %iqsize63.i, align 2
  %or654.i = or i16 %66, %64
  store i16 %or654.i, ptr %iqsize63.i, align 2
  %iqaddr.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 23
  %67 = ptrtoint ptr %iqaddr.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %iqaddr.i, align 8
  %iqaddr67.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %69 = ptrtoint ptr %iqaddr67.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %iqaddr67.i, align 8
  %or68.i = or i64 %70, %68
  store i64 %or68.i, ptr %iqaddr67.i, align 8
  %71 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.i = icmp eq i8 %72, 0
  br i1 %cmp.i, label %if.then71.i, label %entry.if.end78.i_crit_edge

entry.if.end78.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

if.then71.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %iqflintiqhsen.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 24
  %73 = ptrtoint ptr %iqflintiqhsen.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %iqflintiqhsen.i, align 8
  %conv72.i = zext i8 %74 to i32
  %shl73.i = shl i32 %conv72.i, 28
  %iqflintcongen.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 26
  %75 = ptrtoint ptr %iqflintcongen.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iqflintcongen.i, align 2
  %conv74.i = zext i8 %76 to i32
  %shl75.i = shl i32 %conv74.i, 27
  %iqns_to_fl0congen.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %iqns_to_fl0congen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iqns_to_fl0congen.i, align 8
  %or76.i = or i32 %78, %shl73.i
  %or77.i = or i32 %or76.i, %shl75.i
  store i32 %or77.i, ptr %iqns_to_fl0congen.i, align 8
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then71.i, %entry.if.end78.i_crit_edge
  %79 = ptrtoint ptr %fl0size.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %fl0size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool80.not.i = icmp eq i16 %80, 0
  br i1 %tobool80.not.i, label %if.end78.i.csio_mb_iq_write.exit_crit_edge, label %land.lhs.true.i

if.end78.i.csio_mb_iq_write.exit_crit_edge:       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_mb_iq_write.exit

land.lhs.true.i:                                  ; preds = %if.end78.i
  %fl0addr.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 41
  %81 = ptrtoint ptr %fl0addr.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %fl0addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool81.not.i = icmp eq i64 %82, 0
  br i1 %tobool81.not.i, label %land.lhs.true.i.csio_mb_iq_write.exit_crit_edge, label %land.lhs.true82.i

land.lhs.true.i.csio_mb_iq_write.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_mb_iq_write.exit

land.lhs.true82.i:                                ; preds = %land.lhs.true.i
  %83 = ptrtoint ptr %fl0id.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %fl0id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %84)
  %cmp85.not.i = icmp eq i16 %84, -1
  br i1 %cmp85.not.i, label %land.lhs.true82.i.csio_mb_iq_write.exit_crit_edge, label %if.then87.i

land.lhs.true82.i.csio_mb_iq_write.exit_crit_edge: ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csio_mb_iq_write.exit

if.then87.i:                                      ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #14
  %fl0hostfcmode.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 29
  %85 = ptrtoint ptr %fl0hostfcmode.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fl0hostfcmode.i, align 8
  %conv88.i = zext i8 %86 to i32
  %shl89.i = shl nuw nsw i32 %conv88.i, 4
  %fl0cprio.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 30
  %87 = ptrtoint ptr %fl0cprio.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fl0cprio.i, align 1
  %conv90.i = zext i8 %88 to i32
  %shl91.i = shl nuw nsw i32 %conv90.i, 3
  %shl93.i = shl nuw nsw i32 %26, 6
  %or92.i = or i32 %shl89.i, %shl93.i
  %or94.i = or i32 %or92.i, %shl91.i
  %shl95.i = shl nuw nsw i32 %26, 12
  %or96.i = or i32 %or94.i, %shl95.i
  %fl0paden.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 31
  %89 = ptrtoint ptr %fl0paden.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fl0paden.i, align 2
  %conv97.i = zext i8 %90 to i32
  %shl98.i = shl nuw nsw i32 %conv97.i, 2
  %fl0packen.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 32
  %91 = ptrtoint ptr %fl0packen.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fl0packen.i, align 1
  %conv100.i = zext i8 %92 to i32
  %shl101.i = shl nuw nsw i32 %conv100.i, 1
  %iqns_to_fl0congen103.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 4
  %93 = ptrtoint ptr %iqns_to_fl0congen103.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %iqns_to_fl0congen103.i, align 8
  %or99.i = or i32 %94, %shl98.i
  %or102.i = or i32 %or99.i, %shl101.i
  %or104.i = or i32 %or102.i, %or96.i
  store i32 %or104.i, ptr %iqns_to_fl0congen103.i, align 8
  %fl0dcaen.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 34
  %95 = ptrtoint ptr %fl0dcaen.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %fl0dcaen.i, align 1
  %conv105.i = zext i8 %96 to i16
  %shl106.i = shl i16 %conv105.i, 15
  %fl0dcacpu.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 35
  %97 = ptrtoint ptr %fl0dcacpu.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %fl0dcacpu.i, align 2
  %conv107.i = zext i8 %98 to i16
  %shl108.i = shl i16 %conv107.i, 10
  %or109.i = or i16 %shl108.i, %shl106.i
  %fl0fbmin.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 36
  %99 = ptrtoint ptr %fl0fbmin.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %fl0fbmin.i, align 1
  %conv110.i = zext i8 %100 to i16
  %shl111.i = shl nuw nsw i16 %conv110.i, 7
  %fl0fbmax.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 37
  %101 = ptrtoint ptr %fl0fbmax.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fl0fbmax.i, align 8
  %conv113.i = zext i8 %102 to i16
  %shl114.i = shl nuw nsw i16 %conv113.i, 4
  %fl0cidxfthresh.i = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 39
  %103 = ptrtoint ptr %fl0cidxfthresh.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fl0cidxfthresh.i, align 2
  %conv116.i = zext i8 %104 to i16
  %or112.masked.i = or i16 %or109.i, %shl111.i
  %or115.masked.i = or i16 %or112.masked.i, %shl114.i
  %conv120.i = or i16 %or115.masked.i, %conv116.i
  %fl0dcaen_to_fl0cidxfthresh.i = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb.i, i32 0, i32 11
  %105 = ptrtoint ptr %fl0dcaen_to_fl0cidxfthresh.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %fl0dcaen_to_fl0cidxfthresh.i, align 4
  %or122.i = or i16 %conv120.i, %106
  store i16 %or122.i, ptr %fl0dcaen_to_fl0cidxfthresh.i, align 4
  %107 = ptrtoint ptr %fl0size.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %fl0size.i, align 4
  %or1285.i = or i16 %108, %23
  %109 = ptrtoint ptr %fl0size13.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %or1285.i, ptr %fl0size13.i, align 2
  %110 = ptrtoint ptr %fl0addr.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %fl0addr.i, align 8
  %fl0addr131.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 5
  %112 = ptrtoint ptr %fl0addr131.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %fl0addr131.i, align 8
  %or132.i = or i64 %113, %111
  store i64 %or132.i, ptr %fl0addr131.i, align 8
  br label %csio_mb_iq_write.exit

csio_mb_iq_write.exit:                            ; preds = %if.then87.i, %land.lhs.true82.i.csio_mb_iq_write.exit_crit_edge, %land.lhs.true.i.csio_mb_iq_write.exit_crit_edge, %if.end78.i.csio_mb_iq_write.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_mb_iq_alloc_write_rsp(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %ret_val, ptr nocapture noundef writeonly %iq_params) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %alloc_to_len16 = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc_to_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %ret_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %ret_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %physiqid = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %physiqid, align 8
  %physiqid1 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 2
  %5 = ptrtoint ptr %physiqid1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %physiqid1, align 2
  %iqid = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 3
  %6 = ptrtoint ptr %iqid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %iqid, align 2
  %iqid2 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 3
  %8 = ptrtoint ptr %iqid2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %iqid2, align 4
  %fl0id = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 4
  %9 = ptrtoint ptr %fl0id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fl0id, align 4
  %fl0id3 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 4
  %11 = ptrtoint ptr %fl0id3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %fl0id3, align 2
  %fl1id = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 5
  %12 = ptrtoint ptr %fl1id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fl1id, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fl0id6 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 4
  %14 = ptrtoint ptr %fl0id6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %fl0id6, align 2
  %iqid7 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 3
  %15 = ptrtoint ptr %iqid7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %iqid7, align 4
  %physiqid8 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 2
  %16 = ptrtoint ptr %physiqid8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %physiqid8, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i16 [ %13, %if.then ], [ 0, %if.else ]
  %17 = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %17, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_iq_free(ptr nocapture noundef readnone %hw, ptr noundef %mbp, ptr noundef %priv, i32 noundef %mb_tmo, ptr nocapture noundef readonly %iq_params, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mb, i32 0, i32 64)
  %1 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %3 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %5 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %6 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %mb_size, align 8
  %7 = ptrtoint ptr %iq_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %iq_params, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 7
  %conv = zext i8 %bf.clear to i32
  %shl = shl nuw nsw i32 %conv, 8
  %vfn = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 1
  %8 = ptrtoint ptr %vfn to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vfn, align 1
  %conv2 = zext i8 %9 to i32
  %or = or i32 %shl, %conv2
  %or4 = or i32 %or, 277872640
  %10 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or4, ptr %mb, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 1
  %11 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1073741828, ptr %alloc_to_len16, align 4
  %type = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 7
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %conv5 = zext i8 %13 to i32
  %shl6 = shl i32 %conv5, 29
  %type_to_iqandstindex = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %type_to_iqandstindex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl6, ptr %type_to_iqandstindex, align 8
  %iqid = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 3
  %15 = ptrtoint ptr %iqid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %iqid, align 4
  %iqid7 = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 3
  %17 = ptrtoint ptr %iqid7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %iqid7, align 2
  %fl0id = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 4
  %18 = ptrtoint ptr %fl0id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fl0id, align 2
  %fl0id8 = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 4
  %20 = ptrtoint ptr %fl0id8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %fl0id8, align 4
  %fl1id = getelementptr inbounds %struct.csio_iq_params, ptr %iq_params, i32 0, i32 5
  %21 = ptrtoint ptr %fl1id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fl1id, align 8
  %fl1id9 = getelementptr inbounds %struct.fw_iq_cmd, ptr %mb, i32 0, i32 5
  %23 = ptrtoint ptr %fl1id9 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %fl1id9, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_eq_ofld_alloc_write(ptr nocapture noundef readnone %hw, ptr noundef %mbp, ptr noundef %priv, i32 noundef %mb_tmo, ptr nocapture noundef readonly %eq_ofld_params, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mb.i, i32 0, i32 64)
  %1 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbp, ptr %prev.i.i, align 4
  %tmo.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %3 = ptrtoint ptr %tmo.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mb_tmo, ptr %tmo.i, align 4
  %priv1.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1.i, align 4
  %mb_cbfn.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %5 = ptrtoint ptr %mb_cbfn.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn, ptr %mb_cbfn.i, align 8
  %mb_size.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %6 = ptrtoint ptr %mb_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %mb_size.i, align 8
  %7 = ptrtoint ptr %eq_ofld_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eq_ofld_params, align 8
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %vfn.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 1
  %9 = ptrtoint ptr %vfn.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vfn.i, align 1
  %conv2.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %or4.i = or i32 %or.i, 563085312
  %11 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or4.i, ptr %mb.i, align 8
  %alloc_to_len16.i = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %mb.i, i32 0, i32 1
  %12 = ptrtoint ptr %alloc_to_len16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2147483646, ptr %alloc_to_len16.i, align 4
  %eqstart.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 2
  %13 = ptrtoint ptr %eqstart.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %eqstart.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %14 = ptrtoint ptr %eq_ofld_params to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eq_ofld_params, align 8
  %conv3.i = zext i8 %15 to i32
  %shl.i8 = shl nuw nsw i32 %conv3.i, 8
  %16 = ptrtoint ptr %vfn.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vfn.i, align 1
  %conv4.i = zext i8 %17 to i32
  %or.i10 = or i32 %or.i, %conv4.i
  %or6.i = or i32 %or.i10, %shl.i8
  %or7.i = or i32 %or6.i, 565182464
  %18 = ptrtoint ptr %mb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or7.i, ptr %mb.i, align 8
  %or9.i = select i1 %tobool.not.i, i32 -2013265918, i32 -1879048190
  %19 = ptrtoint ptr %alloc_to_len16.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or9.i, ptr %alloc_to_len16.i, align 4
  %eqid.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 4
  %20 = ptrtoint ptr %eqid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eqid.i, align 8
  %eqid_pkd.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %eqid_pkd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %eqid_pkd.i, align 8
  %hostfcmode.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 5
  %23 = ptrtoint ptr %hostfcmode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load12.i = load i8, ptr %hostfcmode.i, align 4
  %bf.lshr13.i = lshr i8 %bf.load12.i, 6
  %conv14.i = zext i8 %bf.lshr13.i to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 20
  %bf.lshr17.i = lshr i8 %bf.load12.i, 5
  %bf.clear.i = and i8 %bf.lshr17.i, 1
  %conv18.i = zext i8 %bf.clear.i to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 19
  %or20.i = or i32 %shl19.i, %shl15.i
  %bf.lshr22.i = lshr i8 %bf.load12.i, 2
  %bf.clear23.i = and i8 %bf.lshr22.i, 7
  %conv24.i = zext i8 %bf.clear23.i to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 16
  %or26.i = or i32 %or20.i, %shl25.i
  %iqid.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 6
  %24 = ptrtoint ptr %iqid.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %iqid.i, align 2
  %conv27.i = zext i16 %25 to i32
  %or29.i = or i32 %or26.i, %conv27.i
  %fetchszm_to_iqid.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %fetchszm_to_iqid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or29.i, ptr %fetchszm_to_iqid.i, align 8
  %dcaen.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 7
  %27 = ptrtoint ptr %dcaen.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load31.i = load i8, ptr %dcaen.i, align 8
  %trunc.i = zext i8 %bf.load31.i to i32
  %rev.i = shl nuw i32 %trunc.i, 24
  %or40.i = and i32 %rev.i, -67108864
  %fbmin.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 8
  %28 = ptrtoint ptr %fbmin.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load41.i = load i8, ptr %fbmin.i, align 1
  %bf.lshr42.i = lshr i8 %bf.load41.i, 5
  %conv43.i = zext i8 %bf.lshr42.i to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 23
  %or45.i = or i32 %shl44.i, %or40.i
  %bf.lshr47.i = lshr i8 %bf.load41.i, 2
  %bf.clear48.i = and i8 %bf.lshr47.i, 7
  %conv49.i = zext i8 %bf.clear48.i to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 20
  %or51.i = or i32 %or45.i, %shl50.i
  %bf.lshr53.i = lshr i8 %bf.load41.i, 1
  %bf.clear54.i = and i8 %bf.lshr53.i, 1
  %conv55.i = zext i8 %bf.clear54.i to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 19
  %or57.i = or i32 %or51.i, %shl56.i
  %cidxfthresh.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 9
  %29 = ptrtoint ptr %cidxfthresh.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load58.i = load i8, ptr %cidxfthresh.i, align 2
  %bf.lshr59.i = lshr i8 %bf.load58.i, 5
  %conv60.i = zext i8 %bf.lshr59.i to i32
  %shl61.i = shl nuw nsw i32 %conv60.i, 16
  %or62.i = or i32 %or57.i, %shl61.i
  %eqsize.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 10
  %30 = ptrtoint ptr %eqsize.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %eqsize.i, align 4
  %conv63.i = zext i16 %31 to i32
  %or65.i = or i32 %or62.i, %conv63.i
  %dcaen_to_eqsize.i = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %mb.i, i32 0, i32 5
  %32 = ptrtoint ptr %dcaen_to_eqsize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or65.i, ptr %dcaen_to_eqsize.i, align 4
  %eqaddr.i = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 11
  %33 = ptrtoint ptr %eqaddr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %eqaddr.i, align 8
  %eqaddr67.i = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %eqaddr67.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %eqaddr67.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_mb_eq_ofld_alloc_write_rsp(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %ret_val, ptr nocapture noundef writeonly %eq_ofld_params) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %alloc_to_len16 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc_to_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %ret_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %ret_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eqid_pkd = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %eqid_pkd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eqid_pkd, align 8
  %and2 = and i32 %4, 1048575
  %eqid = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 4
  %5 = ptrtoint ptr %eqid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %eqid, align 8
  %physeqid_pkd = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %mb, i32 0, i32 3
  %6 = ptrtoint ptr %physeqid_pkd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %physeqid_pkd, align 4
  %conv = trunc i32 %7 to i16
  %physeqid = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 3
  %8 = ptrtoint ptr %physeqid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %physeqid, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eqid5 = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 4
  %9 = ptrtoint ptr %eqid5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %eqid5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_eq_ofld_free(ptr nocapture noundef readnone %hw, ptr noundef %mbp, ptr noundef %priv, i32 noundef %mb_tmo, ptr nocapture noundef readonly %eq_ofld_params, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = call ptr @memset(ptr %mb, i32 0, i32 64)
  %1 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %3 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv1 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv1, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %5 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %6 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %mb_size, align 8
  %7 = ptrtoint ptr %eq_ofld_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eq_ofld_params, align 8
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %vfn = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 1
  %9 = ptrtoint ptr %vfn to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vfn, align 1
  %conv2 = zext i8 %10 to i32
  %or = or i32 %shl, %conv2
  %or4 = or i32 %or, 563085312
  %11 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or4, ptr %mb, align 8
  %alloc_to_len16 = getelementptr inbounds %struct.fw_eq_ofld_cmd, ptr %mb, i32 0, i32 1
  %12 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1073741826, ptr %alloc_to_len16, align 4
  %eqid = getelementptr inbounds %struct.csio_eq_params, ptr %eq_ofld_params, i32 0, i32 4
  %13 = ptrtoint ptr %eqid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eqid, align 8
  %eqid_pkd = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %eqid_pkd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %eqid_pkd, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_write_fcoe_link_cond_init_mb(ptr noundef %ln, ptr noundef %mbp, i32 noundef %mb_tmo, i8 noundef zeroext %port_id, i32 noundef %sub_opcode, i8 noundef zeroext %cos, i1 noundef zeroext %link_status, i32 noundef %fcfi, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %link_status to i8
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %mb, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ln, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 48, ptr %mb_size, align 8
  %conv = zext i8 %port_id to i32
  %or = or i32 %conv, 849346560
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mb, align 4
  %shl1 = shl i32 %sub_opcode, 24
  %or3 = or i32 %shl1, %fcfi
  %sub_opcode_fcfi = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %sub_opcode_fcfi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or3, ptr %sub_opcode_fcfi, align 4
  %lstatus = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %mb, i32 0, i32 4
  %10 = ptrtoint ptr %lstatus to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %lstatus, align 1
  %retval_len16 = getelementptr inbounds %struct.fw_fcoe_link_cmd, ptr %mb, i32 0, i32 1
  %11 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %retval_len16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_read_res_info_init_mb(ptr noundef %hw, ptr noundef %mbp, i32 noundef %mb_tmo, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 48, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 834666496, ptr %mb, align 4
  %retval_len16 = getelementptr inbounds %struct.fw_fcoe_res_info_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %retval_len16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_vnp_alloc_init_mb(ptr noundef %ln, ptr noundef %mbp, i32 noundef %mb_tmo, i32 noundef %fcfi, i32 noundef %vnpi, i16 noundef zeroext %iqid, ptr noundef readonly %vnport_wwnn, ptr noundef readonly %vnport_wwpn, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %mb, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ln, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %or = or i32 %fcfi, 865075200
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mb, align 4
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483644, ptr %alloc_to_len16, align 4
  %gen_wwn_to_vnpi = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %gen_wwn_to_vnpi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vnpi, ptr %gen_wwn_to_vnpi, align 4
  %iqid2 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %iqid2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %iqid, ptr %iqid2, align 4
  %12 = ptrtoint ptr %vnport_wwnn to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %vnport_wwnn, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not = icmp eq i64 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %vnport_wwpn to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %vnport_wwpn, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool4.not = icmp eq i64 %15, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or6 = or i32 %vnpi, 4194304
  %16 = ptrtoint ptr %gen_wwn_to_vnpi to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or6, ptr %gen_wwn_to_vnpi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool7.not = icmp eq ptr %vnport_wwnn, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vnport_wwnn9 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %vnport_wwnn to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %vnport_wwnn, align 1
  %19 = ptrtoint ptr %vnport_wwnn9 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %vnport_wwnn9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %vnport_wwpn, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %vnport_wwpn14 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %vnport_wwpn to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %vnport_wwpn, align 1
  %22 = ptrtoint ptr %vnport_wwpn14 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %vnport_wwpn14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_vnp_read_init_mb(ptr noundef %ln, ptr noundef %mbp, i32 noundef %mb_tmo, i32 noundef %fcfi, i32 noundef %vnpi, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %mb, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ln, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %or = or i32 %fcfi, 868220928
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mb, align 4
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %alloc_to_len16, align 4
  %gen_wwn_to_vnpi = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %gen_wwn_to_vnpi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vnpi, ptr %gen_wwn_to_vnpi, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_vnp_free_init_mb(ptr noundef %ln, ptr noundef %mbp, i32 noundef %mb_tmo, i32 noundef %fcfi, i32 noundef %vnpi, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %mb, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ln, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %or = or i32 %fcfi, 865075200
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mb, align 4
  %alloc_to_len16 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %alloc_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1073741828, ptr %alloc_to_len16, align 4
  %gen_wwn_to_vnpi = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %gen_wwn_to_vnpi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %vnpi, ptr %gen_wwn_to_vnpi, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_read_fcf_init_mb(ptr noundef %ln, ptr noundef %mbp, i32 noundef %mb_tmo, i32 noundef %portid, i32 noundef %fcfi, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ln, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %or = or i32 %fcfi, 952107008
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %mb, align 8
  %retval_len16 = getelementptr inbounds %struct.fw_fcoe_fcf_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %retval_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %retval_len16, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fcoe_read_portparams_init_mb(ptr noundef %hw, ptr noundef %mbp, i32 noundef %mb_tmo, ptr nocapture noundef readonly %portparams, ptr noundef %cbfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %0 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mbp, ptr %mbp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbp, ptr %prev.i, align 4
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %4 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mb_tmo, ptr %tmo, align 4
  %priv = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %hw, ptr %priv, align 4
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %6 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cbfn, ptr %mb_cbfn, align 8
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %7 = ptrtoint ptr %mb_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %mb_size, align 8
  %8 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 935329792, ptr %mb, align 8
  %free_to_len16 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, ptr %mb, i32 0, i32 1
  %9 = ptrtoint ptr %free_to_len16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %free_to_len16, align 4
  %nstats = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 2
  %10 = ptrtoint ptr %nstats to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nstats, align 1
  %shl = shl i8 %11, 4
  %12 = ptrtoint ptr %portparams to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %portparams, align 1
  %or = or i8 %shl, %13
  %u = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or, ptr %u, align 8
  %idx = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 1
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %idx, align 1
  %17 = or i8 %16, -128
  %port_valid_ix = getelementptr inbounds %struct.fw_fcoe_stats_ctl, ptr %u, i32 0, i32 1
  %18 = ptrtoint ptr %port_valid_ix to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %port_valid_ix, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_mb_process_portparams_rsp(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %mbp, ptr nocapture noundef writeonly %retval, ptr nocapture noundef readonly %portparams, ptr nocapture noundef writeonly %portstats) local_unnamed_addr #8 align 64 {
entry:
  %stats = alloca %struct.fw_fcoe_port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stats) #12
  %free_to_len16 = getelementptr inbounds %struct.fw_fcoe_stats_cmd, ptr %mb, i32 0, i32 1
  %0 = ptrtoint ptr %free_to_len16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_to_len16, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %2 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %retval, align 4
  %3 = call ptr @memset(ptr %stats, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then:                                          ; preds = %entry
  %idx = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 1
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idx, align 1
  %conv = zext i8 %5 to i32
  %sub = shl nuw nsw i32 %conv, 3
  %mul = add nsw i32 %sub, -8
  %add.ptr = getelementptr i8, ptr %stats, i32 %mul
  %add.ptr1 = getelementptr %struct.csio_mb, ptr %mbp, i32 0, i32 1, i32 2
  %nstats = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, ptr %portparams, i32 0, i32 2
  %6 = ptrtoint ptr %nstats to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nstats, align 1
  %conv2 = zext i8 %7 to i32
  %mul3 = shl nuw nsw i32 %conv2, 3
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr1, i32 %mul3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp6 = icmp eq i8 %5, 1
  br i1 %cmp6, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 8
  %11 = ptrtoint ptr %portstats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %portstats, align 8
  %tx_bcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 1
  %12 = ptrtoint ptr %tx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bcast_frames, align 8
  %tx_bcast_frames10 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 1
  %14 = ptrtoint ptr %tx_bcast_frames10 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %tx_bcast_frames10, align 8
  %tx_mcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 2
  %15 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_mcast_bytes, align 8
  %tx_mcast_bytes11 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 2
  %17 = ptrtoint ptr %tx_mcast_bytes11 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tx_mcast_bytes11, align 8
  %tx_mcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 3
  %18 = ptrtoint ptr %tx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_mcast_frames, align 8
  %tx_mcast_frames12 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 3
  %20 = ptrtoint ptr %tx_mcast_frames12 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %tx_mcast_frames12, align 8
  %tx_ucast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 4
  %21 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_ucast_bytes, align 8
  %tx_ucast_bytes13 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 4
  %23 = ptrtoint ptr %tx_ucast_bytes13 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_ucast_bytes13, align 8
  %tx_ucast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 5
  %24 = ptrtoint ptr %tx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_ucast_frames, align 8
  %tx_ucast_frames14 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 5
  %26 = ptrtoint ptr %tx_ucast_frames14 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tx_ucast_frames14, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %cmp17 = icmp eq i8 %28, 7
  br i1 %cmp17, label %if.then19, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_drop_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 6
  %29 = ptrtoint ptr %tx_drop_frames to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_drop_frames, align 8
  %tx_drop_frames20 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 6
  %31 = ptrtoint ptr %tx_drop_frames20 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_drop_frames20, align 8
  %tx_offload_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 7
  %32 = ptrtoint ptr %tx_offload_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_offload_bytes, align 8
  %tx_offload_bytes21 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 7
  %34 = ptrtoint ptr %tx_offload_bytes21 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tx_offload_bytes21, align 8
  %tx_offload_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 8
  %35 = ptrtoint ptr %tx_offload_frames to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_offload_frames, align 8
  %tx_offload_frames22 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 8
  %37 = ptrtoint ptr %tx_offload_frames22 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %tx_offload_frames22, align 8
  %rx_bcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 9
  %38 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_bcast_bytes, align 8
  %rx_bcast_bytes23 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 9
  %40 = ptrtoint ptr %rx_bcast_bytes23 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %rx_bcast_bytes23, align 8
  %rx_bcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 10
  %41 = ptrtoint ptr %rx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_bcast_frames, align 8
  %rx_bcast_frames24 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 10
  %43 = ptrtoint ptr %rx_bcast_frames24 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_bcast_frames24, align 8
  %rx_mcast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 11
  %44 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_mcast_bytes, align 8
  %rx_mcast_bytes25 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 11
  %46 = ptrtoint ptr %rx_mcast_bytes25 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %rx_mcast_bytes25, align 8
  %47 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr = load i8, ptr %idx, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end.if.end26_crit_edge
  %48 = phi i8 [ %.pr, %if.then19 ], [ %28, %if.end.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %48)
  %cmp29 = icmp eq i8 %48, 13
  br i1 %cmp29, label %if.then31, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %rx_mcast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 12
  %49 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rx_mcast_frames, align 8
  %rx_mcast_frames32 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 12
  %51 = ptrtoint ptr %rx_mcast_frames32 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %rx_mcast_frames32, align 8
  %rx_ucast_bytes = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 13
  %52 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_ucast_bytes, align 8
  %rx_ucast_bytes33 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 13
  %54 = ptrtoint ptr %rx_ucast_bytes33 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %rx_ucast_bytes33, align 8
  %rx_ucast_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 14
  %55 = ptrtoint ptr %rx_ucast_frames to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_ucast_frames, align 8
  %rx_ucast_frames34 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 14
  %57 = ptrtoint ptr %rx_ucast_frames34 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %rx_ucast_frames34, align 8
  %rx_err_frames = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %stats, i32 0, i32 15
  %58 = ptrtoint ptr %rx_err_frames to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_err_frames, align 8
  %rx_err_frames35 = getelementptr inbounds %struct.fw_fcoe_port_stats, ptr %portstats, i32 0, i32 15
  %60 = ptrtoint ptr %rx_err_frames35 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %rx_err_frames35, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end26.if.end37_crit_edge, %entry.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stats) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_intr_enable(ptr nocapture noundef readonly %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @arm_heavy_mb() #12
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 111240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #12, !srcloc !124
  %2 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regstart, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 111240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_intr_disable(ptr nocapture noundef readonly %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 111240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !124
  %2 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regstart, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 111240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_mb_issue(ptr noundef %hw, ptr noundef %mbp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mb = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 1
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %0 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pfn, align 8
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %add2 = add nuw nsw i32 %mul, 123520
  %add7 = add nuw nsw i32 %mul, 123456
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 2
  %2 = ptrtoint ptr %mb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mb_size, align 8
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 5
  %4 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mb_cbfn, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmo = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %6 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp9 = icmp ult i32 %7, 5
  br i1 %cmp9, label %do.end, label %if.end26

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %7) #15
  br label %error_out

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = and i32 %11, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %12)
  %.not = icmp eq i32 %12, 514
  br i1 %.not, label %if.end26.thread, label %do.end19

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pdev20 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %mb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mb, align 8
  %conv24 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.6, i32 noundef %conv24) #15
  br label %error_out

if.end26:                                         ; preds = %if.then
  %mcurrent = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 6
  %17 = ptrtoint ptr %mcurrent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcurrent, align 4
  %cmp27.not = icmp eq ptr %18, null
  br i1 %cmp27.not, label %if.end26.if.end35_crit_edge, label %if.end26.error_out_crit_edge

if.end26.error_out_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end26.thread:                                  ; preds = %if.else
  %mcurrent304 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 6
  %19 = ptrtoint ptr %mcurrent304 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcurrent304, align 4
  %cmp27.not305 = icmp eq ptr %20, null
  br i1 %cmp27.not305, label %if.end26.thread.if.end35_crit_edge, label %if.else34

if.end26.thread.if.end35_crit_edge:               ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else34:                                        ; preds = %if.end26.thread
  %req_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 4
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mbp, ptr noundef %22, ptr noundef %req_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.else34.list_add_tail.exit_crit_edge

if.else34.list_add_tail.exit_crit_edge:           ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mbp, ptr %prev.i, align 4
  %24 = ptrtoint ptr %mbp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %req_q, ptr %mbp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mbp, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %mbp, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else34.list_add_tail.exit_crit_edge
  %n_activeq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 2
  %27 = ptrtoint ptr %n_activeq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_activeq, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %n_activeq, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end26.thread.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %mcurrent306 = phi ptr [ %mcurrent304, %if.end26.thread.if.end35_crit_edge ], [ %mcurrent, %if.end26.if.end35_crit_edge ]
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %29 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %add2
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !125
  %32 = lshr i32 %31, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  %and37 = and i32 %32, 3
  %33 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and37, label %if.end35.for.end_crit_edge [
    i32 2, label %if.end35.if.end86_crit_edge
    i32 0, label %for.body
  ]

if.end35.if.end86_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end35
  %34 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regstart, align 4
  %add.ptr48 = getelementptr i8, ptr %35, i32 %add2
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #12, !srcloc !125
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %and53 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp41 = icmp eq i32 %and53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and37)
  %cmp43 = icmp ult i32 %and37, 2
  %or.cond300 = select i1 %cmp41, i1 %cmp43, i1 false
  br i1 %or.cond300, label %for.body.1, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.body.1:                                       ; preds = %for.body
  %38 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regstart, align 4
  %add.ptr48.1 = getelementptr i8, ptr %39, i32 %add2
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.1) #12, !srcloc !125
  %41 = lshr i32 %40, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %and53.1 = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.1)
  %cmp41.1 = icmp eq i32 %and53.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp43.1 = icmp eq i32 %and37, 0
  %or.cond300.1 = select i1 %cmp41.1, i1 %cmp43.1, i1 false
  br i1 %or.cond300.1, label %for.body.2, label %for.body.1.for.end.loopexit_crit_edge

for.body.1.for.end.loopexit_crit_edge:            ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regstart, align 4
  %add.ptr48.2 = getelementptr i8, ptr %43, i32 %add2
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.2) #12, !srcloc !125
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  %and53.2 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.2)
  %cmp41.2 = icmp eq i32 %and53.2, 0
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.2, %for.body.1.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %and53.lcssa = phi i32 [ %and53, %for.body.for.end.loopexit_crit_edge ], [ %and53.1, %for.body.1.for.end.loopexit_crit_edge ], [ %and53.2, %for.body.2 ]
  %cmp41.lcssa323 = phi i1 [ %cmp41, %for.body.for.end.loopexit_crit_edge ], [ %cmp41.1, %for.body.1.for.end.loopexit_crit_edge ], [ %cmp41.2, %for.body.2 ]
  %phi.sel = select i1 %cmp41.lcssa323, i32 -110, i32 -16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end35.for.end_crit_edge
  %owner.0.lcssa = phi i32 [ %and53.lcssa, %for.end.loopexit ], [ %and37, %if.end35.for.end_crit_edge ]
  %cmp41.lcssa = phi i32 [ %phi.sel, %for.end.loopexit ], [ -16, %if.end35.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %owner.0.lcssa)
  %cmp55 = icmp eq i32 %owner.0.lcssa, 2
  br i1 %cmp55, label %for.end.if.end86_crit_edge, label %if.then57

for.end.if.end86_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then57:                                        ; preds = %for.end
  %46 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mb_cbfn, align 8
  %cmp59 = icmp eq ptr %47, null
  br i1 %cmp59, label %if.then57.error_out_crit_edge, label %if.else63

if.then57.error_out_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.else63:                                        ; preds = %if.then57
  %48 = ptrtoint ptr %mcurrent306 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mcurrent306, align 4
  %cmp65 = icmp eq ptr %49, null
  br i1 %cmp65, label %do.end70, label %if.else63.if.end86_crit_edge

if.else63.if.end86_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end70:                                         ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #14
  %pdev71 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %50 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev71, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pfn, align 8
  %conv74 = zext i8 %53 to i32
  %54 = ptrtoint ptr %mb to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mb, align 8
  %conv77 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.9, i32 noundef %conv74, i32 noundef %conv77, i32 noundef %owner.0.lcssa) #15
  %56 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev71, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.12) #15
  br label %error_out

if.end86:                                         ; preds = %if.else63.if.end86_crit_edge, %for.end.if.end86_crit_edge, %if.end35.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp88311 = icmp sgt i32 %3, 0
  br i1 %cmp88311, label %if.end86.for.body90_crit_edge, label %if.end86.for.end96_crit_edge

if.end86.for.end96_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end96

if.end86.for.body90_crit_edge:                    ; preds = %if.end86
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %if.end86.for.body90_crit_edge
  %i.1313 = phi i32 [ %add95, %for.body90.for.body90_crit_edge ], [ 0, %if.end86.for.body90_crit_edge ]
  %cmd.0312 = phi ptr [ %incdec.ptr, %for.body90.for.body90_crit_edge ], [ %mb, %if.end86.for.body90_crit_edge ]
  %58 = ptrtoint ptr %cmd.0312 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cmd.0312, align 8
  %60 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regstart, align 4
  %add92 = add i32 %i.1313, %add7
  %add.ptr93 = getelementptr i8, ptr %61, i32 %add92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i64 %59 to i32
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %62) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  tail call void @arm_heavy_mb() #12
  %shr.i = lshr i64 %59, 32
  %conv3.i = trunc i64 %shr.i to i32
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #12
  %add.ptr.i = getelementptr i8, ptr %add.ptr93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %63) #12, !srcloc !124
  %incdec.ptr = getelementptr i64, ptr %cmd.0312, i32 1
  %add95 = add i32 %i.1313, 8
  %cmp88 = icmp slt i32 %add95, %3
  br i1 %cmp88, label %for.body90.for.body90_crit_edge, label %for.body90.for.end96_crit_edge

for.body90.for.end96_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end96

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body90

for.end96:                                        ; preds = %for.body90.for.end96_crit_edge, %if.end86.for.end96_crit_edge
  %64 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mb_cbfn, align 8
  %cmp98.not = icmp eq ptr %65, null
  br i1 %cmp98.not, label %do.body112, label %if.then100

if.then100:                                       ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %mcurrent306 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %mbp, ptr %mcurrent306, align 4
  %timer = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %tmo102 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %68 = ptrtoint ptr %tmo102 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tmo102, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %69) #12
  %add104 = add i32 %call2.i, %67
  %call105 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add104) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regstart, align 4
  %add.ptr110 = getelementptr i8, ptr %71, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 218103808) #12, !srcloc !124
  br label %if.end117

do.body112:                                       ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regstart, align 4
  %add.ptr116 = getelementptr i8, ptr %73, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 150994944) #12, !srcloc !124
  br label %if.end117

if.end117:                                        ; preds = %do.body112, %if.then100
  %74 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regstart, align 4
  %add.ptr121 = getelementptr i8, ptr %75, i32 %add2
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @arm_heavy_mb() #12
  %stats128 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8
  %77 = ptrtoint ptr %stats128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %stats128, align 4
  %inc129 = add i32 %78, 1
  store i32 %inc129, ptr %stats128, align 4
  %79 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mb_cbfn, align 8
  %tobool131.not = icmp eq ptr %80, null
  br i1 %tobool131.not, label %for.cond136.preheader, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond136.preheader:                            ; preds = %if.end117
  %tmo137 = getelementptr inbounds %struct.csio_mb, ptr %mbp, i32 0, i32 3
  %81 = ptrtoint ptr %tmo137 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tmo137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp138315.not = icmp eq i32 %82, 0
  br i1 %cmp138315.not, label %for.cond136.preheader.for.end197_crit_edge, label %for.cond136.preheader.while.cond.preheader_crit_edge

for.cond136.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond136.preheader
  br label %while.cond.preheader

for.cond136.preheader.for.end197_crit_edge:       ; preds = %for.cond136.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end197

while.cond.preheader:                             ; preds = %for.inc195.while.cond.preheader_crit_edge, %for.cond136.preheader.while.cond.preheader_crit_edge
  %ii.0316 = phi i32 [ %add196, %for.inc195.while.cond.preheader_crit_edge ], [ 0, %for.cond136.preheader.while.cond.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #12
  %88 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regstart, align 4
  %add.ptr145 = getelementptr i8, ptr %89, i32 %add2
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #12, !srcloc !125
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %and150 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and150)
  %cmp151 = icmp eq i32 %and150, 2
  br i1 %cmp151, label %if.then153, label %while.cond.preheader.for.inc195_crit_edge

while.cond.preheader.for.inc195_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc195

if.then153:                                       ; preds = %while.cond.preheader
  %and154 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body157, label %if.end162

do.body157:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call void @arm_heavy_mb() #12
  %92 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regstart, align 4
  %add.ptr161 = getelementptr i8, ptr %93, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 0) #12, !srcloc !124
  br label %for.inc195

if.end162:                                        ; preds = %if.then153
  %94 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regstart, align 4
  %add.ptr164 = getelementptr i8, ptr %95, i32 %add7
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i301 = getelementptr i8, ptr %add.ptr164, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %98 = and i32 %97, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %98)
  %cond222 = icmp eq i32 %98, 129
  br i1 %cond222, label %sw.bb, label %for.cond168.preheader

for.cond168.preheader:                            ; preds = %if.end162
  br i1 %cmp88311, label %for.cond168.preheader.for.body171_crit_edge, label %for.cond168.preheader.do.body180_crit_edge

for.cond168.preheader.do.body180_crit_edge:       ; preds = %for.cond168.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

for.cond168.preheader.for.body171_crit_edge:      ; preds = %for.cond168.preheader
  br label %for.body171

sw.bb:                                            ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mb_debug_cmd_handler(ptr noundef %hw)
  br label %for.inc195

for.body171:                                      ; preds = %for.body171.for.body171_crit_edge, %for.cond168.preheader.for.body171_crit_edge
  %i.2319 = phi i32 [ %add178, %for.body171.for.body171_crit_edge ], [ 0, %for.cond168.preheader.for.body171_crit_edge ]
  %cmd.1318 = phi ptr [ %incdec.ptr176, %for.body171.for.body171_crit_edge ], [ %mb, %for.cond168.preheader.for.body171_crit_edge ]
  %99 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regstart, align 4
  %add173 = add i32 %i.2319, %add7
  %add.ptr174 = getelementptr i8, ptr %100, i32 %add173
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i302 = getelementptr i8, ptr %add.ptr174, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %103 = zext i32 %102 to i64
  %104 = zext i32 %101 to i64
  %105 = shl nuw i64 %104, 32
  %106 = or i64 %105, %103
  %107 = tail call i64 @llvm.bswap.i64(i64 %106) #12
  %incdec.ptr176 = getelementptr i64, ptr %cmd.1318, i32 1
  %108 = ptrtoint ptr %cmd.1318 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %cmd.1318, align 8
  %add178 = add i32 %i.2319, 8
  %cmp169 = icmp slt i32 %add178, %3
  br i1 %cmp169, label %for.body171.for.body171_crit_edge, label %for.body171.do.body180_crit_edge

for.body171.do.body180_crit_edge:                 ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

for.body171.for.body171_crit_edge:                ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body171

do.body180:                                       ; preds = %for.body171.do.body180_crit_edge, %for.cond168.preheader.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regstart, align 4
  %add.ptr184 = getelementptr i8, ptr %110, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 0) #12, !srcloc !124
  %lo.i = getelementptr inbounds %struct.fw_cmd_hdr, ptr %mb, i32 0, i32 1
  %111 = ptrtoint ptr %lo.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lo.i, align 4
  %113 = and i32 %112, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp186.not = icmp eq i32 %113, 0
  br i1 %cmp186.not, label %do.body180.if.end191_crit_edge, label %if.then188

do.body180.if.end191_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then188:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #14
  %n_err = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 6
  %114 = ptrtoint ptr %n_err to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %n_err, align 4
  %inc190 = add i32 %115, 1
  store i32 %inc190, ptr %n_err, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %do.body180.if.end191_crit_edge
  %n_rsp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 1
  %116 = ptrtoint ptr %n_rsp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %n_rsp, align 4
  %inc193 = add i32 %117, 1
  store i32 %inc193, ptr %n_rsp, align 4
  br label %cleanup

for.inc195:                                       ; preds = %sw.bb, %do.body157, %while.cond.preheader.for.inc195_crit_edge
  %add196 = add i32 %ii.0316, 5
  %118 = ptrtoint ptr %tmo137 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tmo137, align 4
  %cmp138 = icmp ult i32 %add196, %119
  br i1 %cmp138, label %for.inc195.while.cond.preheader_crit_edge, label %for.inc195.for.end197_crit_edge

for.inc195.for.end197_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end197

for.inc195.while.cond.preheader_crit_edge:        ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.end197:                                       ; preds = %for.inc195.for.end197_crit_edge, %for.cond136.preheader.for.end197_crit_edge
  %n_tmo = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 4
  %120 = ptrtoint ptr %n_tmo to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %n_tmo, align 4
  %inc199 = add i32 %121, 1
  store i32 %inc199, ptr %n_tmo, align 4
  %pdev203 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %122 = ptrtoint ptr %pdev203 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev203, align 8
  %dev204 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pfn, align 8
  %conv206 = zext i8 %125 to i32
  %126 = ptrtoint ptr %mb to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %mb, align 1
  %conv207 = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev204, ptr noundef nonnull @.str.15, i32 noundef %conv206, i32 noundef %conv207) #15
  br label %cleanup

error_out:                                        ; preds = %do.end70, %if.then57.error_out_crit_edge, %if.end26.error_out_crit_edge, %do.end19, %do.end
  %rv.0 = phi i32 [ -22, %do.end ], [ -22, %do.end70 ], [ -22, %do.end19 ], [ -16, %if.end26.error_out_crit_edge ], [ %cmp41.lcssa, %if.then57.error_out_crit_edge ]
  %n_err209 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 6
  %128 = ptrtoint ptr %n_err209 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %n_err209, align 4
  %inc210 = add i32 %129, 1
  store i32 %inc210, ptr %n_err209, align 4
  br label %cleanup

cleanup:                                          ; preds = %error_out, %for.end197, %if.end191, %if.end117.cleanup_crit_edge, %list_add_tail.exit
  %retval.0 = phi i32 [ %rv.0, %error_out ], [ 0, %list_add_tail.exit ], [ 0, %if.end191 ], [ -110, %for.end197 ], [ 0, %if.end117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_mb_debug_cmd_handler(ptr nocapture noundef readonly %hw) unnamed_addr #6 align 64 {
entry:
  %cmd = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #12
  %0 = getelementptr inbounds i8, ptr %cmd, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %2 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfn, align 8
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %add6 = add nuw nsw i32 %mul, 123456
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #12
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cmd, align 8
  %14 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regstart, align 4
  %add8.1 = add nuw nsw i32 %mul, 123464
  %add.ptr.1 = getelementptr i8, ptr %15, i32 %add8.1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr.1, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %18 = zext i32 %17 to i64
  %19 = zext i32 %16 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #12
  %arrayidx.1 = getelementptr inbounds [8 x i64], ptr %cmd, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx.1, align 8
  %24 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regstart, align 4
  %add8.2 = add nuw nsw i32 %mul, 123472
  %add.ptr.2 = getelementptr i8, ptr %25, i32 %add8.2
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr.2, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  %arrayidx.2 = getelementptr inbounds [8 x i64], ptr %cmd, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx.2, align 8
  %34 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regstart, align 4
  %add8.3 = add nuw nsw i32 %mul, 123480
  %add.ptr.3 = getelementptr i8, ptr %35, i32 %add8.3
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i.3 = getelementptr i8, ptr %add.ptr.3, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %38 = zext i32 %37 to i64
  %39 = zext i32 %36 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #12
  %arrayidx.3 = getelementptr inbounds [8 x i64], ptr %cmd, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx.3, align 8
  %44 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regstart, align 4
  %add8.4 = add nuw nsw i32 %mul, 123488
  %add.ptr.4 = getelementptr i8, ptr %45, i32 %add8.4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i.4 = getelementptr i8, ptr %add.ptr.4, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %48 = zext i32 %47 to i64
  %49 = zext i32 %46 to i64
  %50 = shl nuw i64 %49, 32
  %51 = or i64 %50, %48
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #12
  %arrayidx.4 = getelementptr inbounds [8 x i64], ptr %cmd, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx.4, align 8
  %54 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regstart, align 4
  %add8.5 = add nuw nsw i32 %mul, 123496
  %add.ptr.5 = getelementptr i8, ptr %55, i32 %add8.5
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i.5 = getelementptr i8, ptr %add.ptr.5, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %58 = zext i32 %57 to i64
  %59 = zext i32 %56 to i64
  %60 = shl nuw i64 %59, 32
  %61 = or i64 %60, %58
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #12
  %arrayidx.5 = getelementptr inbounds [8 x i64], ptr %cmd, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx.5, align 8
  %add1 = add nuw nsw i32 %mul, 123520
  call fastcc void @csio_mb_dump_fw_dbg(ptr noundef %hw, ptr noundef nonnull %cmd)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regstart, align 4
  %add.ptr11 = getelementptr i8, ptr %65, i32 %add1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 218103808) #12, !srcloc !124
  %66 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regstart, align 4
  %add.ptr13 = getelementptr i8, ptr %67, i32 %add1
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  call void @arm_heavy_mb() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_completions(ptr noundef %hw, ptr noundef %cbfn_q) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cbfn_q, align 4
  %cmp.i.not22 = icmp eq ptr %1, %cbfn_q
  br i1 %cmp.i.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %n_rsp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 1
  %n_err = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %19, %if.end12.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %mb.i = getelementptr inbounds %struct.csio_mb, ptr %2, i32 0, i32 1
  %lo.i = getelementptr inbounds %struct.fw_cmd_hdr, ptr %mb.i, i32 0, i32 1
  %11 = ptrtoint ptr %lo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lo.i, align 4
  %shr.i = lshr i32 %12, 8
  %trunc = trunc i32 %shr.i to i8
  %13 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc, label %list_del_init.exit.if.end8.sink.split_crit_edge [
    i8 -1, label %list_del_init.exit.if.end8_crit_edge
    i8 0, label %if.then5
  ]

list_del_init.exit.if.end8_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

list_del_init.exit.if.end8.sink.split_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.sink.split

if.then5:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then5, %list_del_init.exit.if.end8.sink.split_crit_edge
  %n_rsp.sink23 = phi ptr [ %n_rsp, %if.then5 ], [ %n_err, %list_del_init.exit.if.end8.sink.split_crit_edge ]
  %14 = ptrtoint ptr %n_rsp.sink23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_rsp.sink23, align 4
  %inc7 = add i32 %15, 1
  store i32 %inc7, ptr %n_rsp.sink23, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %list_del_init.exit.if.end8_crit_edge
  %mb_cbfn = getelementptr inbounds %struct.csio_mb, ptr %2, i32 0, i32 5
  %16 = ptrtoint ptr %mb_cbfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mb_cbfn, align 8
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %17(ptr noundef %hw, ptr noundef %2) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %18 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cbfn_q, align 4
  %cmp.i.not = icmp eq ptr %19, %cbfn_q
  br i1 %cmp.i.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_mb_fwevt_handler(ptr nocapture noundef %hw, ptr noundef %cmd) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 27, label %if.then
    i8 -127, label %if.then72
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 8
  %5 = trunc i32 %4 to i8
  %conv2 = and i8 %5, 15
  %action_to_len16 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %action_to_len16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action_to_len16, align 4
  %shr3 = lshr i32 %7, 16
  %trunc = trunc i32 %shr3 to i16
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %trunc, label %do.end [
    i16 3, label %if.then17
    i16 10, label %if.else
  ]

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %shr3) #15
  br label %cleanup

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %u, align 8
  %call = tail call i32 @lstatus_to_fwcap(i32 noundef %12) #12
  br label %if.end37

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %u25 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %u25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %u25, align 8
  %shr26 = lshr i32 %14, 8
  %linkattr32 = getelementptr inbounds %struct.fw_port_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %linkattr32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %linkattr32, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then17
  %.sink = phi i32 [ %14, %if.else ], [ %12, %if.then17 ]
  %mod_type.0.in.in = phi i32 [ %shr26, %if.else ], [ %12, %if.then17 ]
  %linkattr.0 = phi i32 [ %16, %if.else ], [ %call, %if.then17 ]
  %shr30 = lshr i32 %.sink, 31
  %conv32 = trunc i32 %shr30 to i8
  %idxprom34 = zext i8 %conv2 to i32
  %link_status36 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom34, i32 3
  %17 = ptrtoint ptr %link_status36 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv32, ptr %link_status36, align 1
  %mod_type.0.in = trunc i32 %mod_type.0.in.in to i8
  %mod_type.0 = and i8 %mod_type.0.in, 31
  %call38 = tail call i32 @fwcap_to_fwspeed(i32 noundef %linkattr.0) #12
  %conv39 = trunc i32 %call38 to i16
  %link_speed = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom34, i32 4
  %18 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv39, ptr %link_speed, align 2
  %pdev46 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %19 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev46, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %link_status52 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom34, i32 3
  %21 = ptrtoint ptr %link_status52 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_status52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.20, i32 noundef %idxprom34, ptr noundef nonnull %cond) #15
  %mod_type58 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom34, i32 6
  %23 = ptrtoint ptr %mod_type58 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mod_type58, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %mod_type.0, i8 %24)
  %cmp60.not = icmp eq i8 %mod_type.0, %24
  br i1 %cmp60.not, label %if.end37.cleanup_crit_edge, label %if.then62

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then62:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %mod_type58 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %mod_type.0, ptr %mod_type58, align 2
  tail call fastcc void @csio_mb_portmod_changed(ptr noundef %hw, i8 noundef zeroext %conv2)
  br label %cleanup

if.then72:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mb_dump_fw_dbg(ptr noundef %hw, ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.then62, %if.end37.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %if.then72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lstatus_to_fwcap(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwcap_to_fwspeed(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_mb_portmod_changed(ptr nocapture noundef readonly %hw, i8 noundef zeroext %port_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %port_id to i32
  %mod_type = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 41, i32 %idxprom, i32 6
  %0 = ptrtoint ptr %mod_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mod_type, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp = icmp eq i8 %1, 31
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %idxprom) #15
  br label %if.end65

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp5 = icmp ult i8 %1, 7
  br i1 %cmp5, label %do.end10, label %if.else17

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pdev11 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %arrayidx16 = getelementptr [7 x ptr], ptr @csio_mb_portmod_changed.mod_str, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.38, i32 noundef %idxprom, ptr noundef %7) #15
  br label %if.end65

if.else17:                                        ; preds = %if.else
  %8 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %1, label %do.end56 [
    i8 30, label %do.end25
    i8 29, label %do.end37
    i8 28, label %do.end49
  ]

do.end25:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %pdev26 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.41, i32 noundef %idxprom) #15
  br label %if.end65

do.end37:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %pdev38 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39, ptr noundef nonnull @.str.44, i32 noundef %idxprom) #15
  br label %if.end65

do.end49:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %pdev50 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.47, i32 noundef %idxprom) #15
  br label %if.end65

do.end56:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %pdev57 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev57, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.50, i32 noundef %idxprom, i32 noundef %conv) #15
  br label %if.end65

if.end65:                                         ; preds = %do.end56, %do.end49, %do.end37, %do.end25, %do.end10, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_mb_dump_fw_dbg(ptr nocapture noundef readonly %hw, ptr noundef %cmd) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br i1 %cmp, label %do.end, label %do.end32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.52) #15
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %u = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 8
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.55, i32 noundef %conv) #15
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %dprtstrparam0 = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %dprtstrparam0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dprtstrparam0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.58, i32 noundef %11) #15
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %dprtstrparam1 = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %dprtstrparam1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dprtstrparam1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.61, i32 noundef %15) #15
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dprtstrparam2 = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %dprtstrparam2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dprtstrparam2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.64, i32 noundef %19) #15
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %dprtstrparam3 = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %dprtstrparam3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dprtstrparam3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.67, i32 noundef %23) #15
  br label %if.end

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %filename_0_7 = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 4
  %line = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %line, align 4
  %x = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %x, align 8
  %y = getelementptr inbounds %struct.fw_debug_cmd, ptr %cmd, i32 0, i32 2, i32 0, i32 3
  %28 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef %filename_0_7, i32 noundef %25, i32 noundef %27, i32 noundef %29) #15
  br label %if.end

if.end:                                           ; preds = %do.end32, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_mb_isr_handler(ptr noundef %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mcurrent = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 6
  %0 = ptrtoint ptr %mcurrent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcurrent, align 4
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %2 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pfn, align 8
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %add2 = add nuw nsw i32 %mul, 123520
  %add7 = add nuw nsw i32 %mul, 123456
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 111552
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %7 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regstart, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 111244
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %10 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %n_mbint_unexp = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 9
  %12 = ptrtoint ptr %n_mbint_unexp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_mbint_unexp, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n_mbint_unexp, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regstart, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 111244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 2048) #12, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regstart, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 111552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 33554432) #12, !srcloc !124
  %18 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regstart, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 %add2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !125
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %and32 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and32)
  %cmp = icmp eq i32 %and32, 2
  br i1 %cmp, label %if.then34, label %if.else

if.then34:                                        ; preds = %do.body
  %and35 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end40, label %if.end53

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regstart, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #12, !srcloc !124
  %26 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regstart, align 4
  %add.ptr49 = getelementptr i8, ptr %27, i32 %add2
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  br label %cleanup

if.end53:                                         ; preds = %if.then34
  %29 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regstart, align 4
  %add.ptr55 = getelementptr i8, ptr %30, i32 %add7
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i = getelementptr i8, ptr %add.ptr55, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %33 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %33)
  %cond = icmp eq i32 %33, 129
  br i1 %cond, label %sw.bb, label %do.body59

sw.bb:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @csio_mb_debug_cmd_handler(ptr noundef %hw)
  br label %cleanup

do.body59:                                        ; preds = %if.end53
  %cmp60.not = icmp eq ptr %1, null
  br i1 %cmp60.not, label %do.body66, label %do.end74, !prof !152

do.body66:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/csiostor/csio_mb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1531, 0\0A.popsection", ""() #12, !srcloc !153
  unreachable

do.end74:                                         ; preds = %do.body59
  %mb_size = getelementptr inbounds %struct.csio_mb, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %mb_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mb_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp75152 = icmp sgt i32 %35, 0
  br i1 %cmp75152, label %for.body.preheader, label %do.end74.do.body82_crit_edge

do.end74.do.body82_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

for.body.preheader:                               ; preds = %do.end74
  %mb = getelementptr inbounds %struct.csio_mb, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %cmd.0154 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %mb, %for.body.preheader ]
  %i.0153 = phi i32 [ %add81, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %36 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regstart, align 4
  %add78 = add i32 %i.0153, %add7
  %add.ptr79 = getelementptr i8, ptr %37, i32 %add78
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  %add.ptr.i151 = getelementptr i8, ptr %add.ptr79, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  %40 = zext i32 %39 to i64
  %41 = zext i32 %38 to i64
  %42 = shl nuw i64 %41, 32
  %43 = or i64 %42, %40
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #12
  %incdec.ptr = getelementptr i64, ptr %cmd.0154, i32 1
  %45 = ptrtoint ptr %cmd.0154 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %cmd.0154, align 8
  %add81 = add i32 %i.0153, 8
  %cmp75 = icmp slt i32 %add81, %35
  br i1 %cmp75, label %for.body.for.body_crit_edge, label %for.body.do.body82_crit_edge

for.body.do.body82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body82:                                        ; preds = %for.body.do.body82_crit_edge, %do.end74.do.body82_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regstart, align 4
  %add.ptr86 = getelementptr i8, ptr %47, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 0) #12, !srcloc !124
  %48 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regstart, align 4
  %add.ptr90 = getelementptr i8, ptr %49, i32 %add2
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #12, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %51 = ptrtoint ptr %mcurrent to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %mcurrent, align 4
  %cbfn_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 5
  %prev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 5, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %53, ptr noundef %cbfn_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body82.list_add_tail.exit_crit_edge

do.body82.list_add_tail.exit_crit_edge:           ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %prev.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cbfn_q, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %1, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body82.list_add_tail.exit_crit_edge
  %n_cbfnq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 3
  %58 = ptrtoint ptr %n_cbfnq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_cbfnq, align 4
  %inc96 = add i32 %59, 1
  store i32 %inc96, ptr %n_cbfnq, align 4
  %call97 = tail call i32 @csio_enqueue_evt(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %1, i16 noundef zeroext 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then99

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then99:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %n_evt_drop = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 2
  %60 = ptrtoint ptr %n_evt_drop to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_evt_drop, align 8
  %inc101 = add i32 %61, 1
  store i32 %inc101, ptr %n_evt_drop, align 8
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %n_int_stray = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 55, i32 12
  %62 = ptrtoint ptr %n_int_stray to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_int_stray, align 8
  %inc104 = add i32 %63, 1
  store i32 %inc104, ptr %n_int_stray, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then99, %list_add_tail.exit.cleanup_crit_edge, %sw.bb, %do.end40, %if.then
  %retval.0 = phi i32 [ -22, %sw.bb ], [ -22, %do.end40 ], [ -22, %if.else ], [ -22, %if.then ], [ 0, %if.then99 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_enqueue_evt(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @csio_mb_tmo_handler(ptr nocapture noundef %hw) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mcurrent = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 6
  %0 = ptrtoint ptr %mcurrent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcurrent, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mb = getelementptr inbounds %struct.csio_mb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mcurrent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mcurrent, align 4
  %n_tmo = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 4
  %3 = ptrtoint ptr %n_tmo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_tmo, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %n_tmo, align 4
  %lo = getelementptr inbounds %struct.fw_cmd_hdr, ptr %mb, i32 0, i32 1
  %5 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 28160, ptr %lo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mb_cancel_all(ptr noundef %hw, ptr noundef %cbfn_q) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mcurrent = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 6
  %0 = ptrtoint ptr %mcurrent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcurrent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %timer = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %cbfn_q) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn_q, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %1, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %8 = ptrtoint ptr %mcurrent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mcurrent, align 4
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  %req_q = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 4
  %9 = ptrtoint ptr %req_q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %req_q, align 4
  %cmp.i.not = icmp eq ptr %10, %req_q
  br i1 %cmp.i.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %11 = ptrtoint ptr %req_q to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %req_q, align 4
  %cmp.i.not.i = icmp eq ptr %12, %req_q
  br i1 %cmp.i.not.i, label %if.then6.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.then6.list_splice_tail_init.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i45, align 4
  %prev2.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 4, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i46 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i46, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cbfn_q, ptr %16, align 4
  store ptr %16, ptr %prev.i45, align 4
  %20 = ptrtoint ptr %req_q to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %req_q, ptr %req_q, align 4
  store ptr %req_q, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.then6.list_splice_tail_init.exit_crit_edge
  %n_activeq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 2
  %21 = ptrtoint ptr %n_activeq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %n_activeq, align 4
  br label %if.end8

if.end8:                                          ; preds = %list_splice_tail_init.exit, %if.end.if.end8_crit_edge
  %cbfn_q9 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %cbfn_q9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cbfn_q9, align 4
  %cmp.i47.not = icmp eq ptr %23, %cbfn_q9
  br i1 %cmp.i47.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  %24 = ptrtoint ptr %cbfn_q9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %cbfn_q9, align 4
  %cmp.i.not.i49 = icmp eq ptr %25, %cbfn_q9
  br i1 %cmp.i.not.i49, label %if.then12.list_splice_tail_init.exit54_crit_edge, label %if.then.i53

if.then12.list_splice_tail_init.exit54_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit54

if.then.i53:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i50, align 4
  %prev2.i.i51 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 5, i32 1
  %28 = ptrtoint ptr %prev2.i.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev2.i.i51, align 4
  %prev3.i.i52 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i52, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %27, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cbfn_q, ptr %29, align 4
  store ptr %29, ptr %prev.i50, align 4
  %33 = ptrtoint ptr %cbfn_q9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %cbfn_q9, ptr %cbfn_q9, align 4
  store ptr %cbfn_q9, ptr %prev2.i.i51, align 4
  br label %list_splice_tail_init.exit54

list_splice_tail_init.exit54:                     ; preds = %if.then.i53, %if.then12.list_splice_tail_init.exit54_crit_edge
  %n_cbfnq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 3
  %34 = ptrtoint ptr %n_cbfnq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %n_cbfnq, align 4
  br label %if.end15

if.end15:                                         ; preds = %list_splice_tail_init.exit54, %if.end8.if.end15_crit_edge
  %35 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %cbfn_q, align 4
  %cmp.i55.not = icmp eq ptr %36, %cbfn_q
  br i1 %cmp.i55.not, label %if.end15.cleanup_crit_edge, label %for.cond.preheader

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end15
  %37 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.059 = load ptr, ptr %cbfn_q, align 4
  %cmp.i57.not60 = icmp eq ptr %tmp.059, %cbfn_q
  br i1 %cmp.i57.not60, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n_cancel = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 8, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tmp.061 = phi ptr [ %tmp.059, %for.body.lr.ph ], [ %tmp.0, %for.body.for.body_crit_edge ]
  %mb = getelementptr inbounds %struct.csio_mb, ptr %tmp.061, i32 0, i32 1
  %38 = ptrtoint ptr %n_cancel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_cancel, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %n_cancel, align 4
  %lo = getelementptr inbounds %struct.fw_cmd_hdr, ptr %mb, i32 0, i32 1
  %40 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65280, ptr %lo, align 4
  %41 = ptrtoint ptr %tmp.061 to i32
  call void @__asan_load4_noabort(i32 %41)
  %tmp.0 = load ptr, ptr %tmp.061, align 4
  %cmp.i57.not = icmp eq ptr %tmp.0, %cbfn_q
  br i1 %cmp.i57.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_mbm_init(ptr noundef %mbm, ptr noundef %hw, ptr noundef %timer_fn) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 3
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %hw1, align 4
  %timer = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef %timer_fn, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @csio_mbm_init.__key) #12
  %req_q = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 4
  %1 = ptrtoint ptr %req_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %req_q, ptr %req_q, align 4
  %prev.i = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %req_q, ptr %prev.i, align 4
  %cbfn_q = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 5
  %3 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %cbfn_q, ptr %cbfn_q, align 4
  %prev.i6 = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbfn_q, ptr %prev.i6, align 4
  %intr_idx = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 1
  %5 = ptrtoint ptr %intr_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %intr_idx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_mbm_exit(ptr noundef %mbm) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.csio_mbm, ptr %mbm, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1206, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @csio_mb_issue._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @csio_mb_issue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1211, i32 3}
!10 = !{ptr @csio_mb_issue._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @csio_mb_issue._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1254, i32 6}
!14 = !{ptr @csio_mb_issue._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @csio_mb_issue._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1259, i32 6}
!18 = !{ptr @csio_mb_issue._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @csio_mb_issue._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1337, i32 2}
!22 = !{ptr @csio_mb_issue._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @csio_mb_issue._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1423, i32 4}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @csio_mb_fwevt_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @csio_mb_fwevt_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1447, i32 3}
!31 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @csio_mb_fwevt_handler._entry.19, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @csio_mb_fwevt_handler._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.24, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1509, i32 4}
!38 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @csio_mb_isr_handler._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @csio_mb_isr_handler._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @csio_mbm_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1667, i32 2}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 9}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 15}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 21}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 27}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 37}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1379, i32 54}
!57 = !{ptr @csio_mb_portmod_changed.mod_str, !58, !"mod_str", i1 false, i1 false}
!58 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1378, i32 15}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1385, i32 3}
!61 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @csio_mb_portmod_changed._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @csio_mb_portmod_changed._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1387, i32 3}
!66 = !{ptr @csio_mb_portmod_changed._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @csio_mb_portmod_changed._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1390, i32 3}
!70 = !{ptr @csio_mb_portmod_changed._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @csio_mb_portmod_changed._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1394, i32 3}
!74 = !{ptr @csio_mb_portmod_changed._entry.43, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @csio_mb_portmod_changed._entry_ptr.45, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1398, i32 3}
!78 = !{ptr @csio_mb_portmod_changed._entry.46, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @csio_mb_portmod_changed._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1400, i32 3}
!82 = !{ptr @csio_mb_portmod_changed._entry.49, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @csio_mb_portmod_changed._entry_ptr.51, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1136, i32 3}
!86 = !{ptr @.str.53, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @csio_mb_dump_fw_dbg._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1137, i32 3}
!91 = !{ptr @csio_mb_dump_fw_dbg._entry.54, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.56, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1139, i32 3}
!95 = !{ptr @csio_mb_dump_fw_dbg._entry.57, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.59, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.61, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1141, i32 3}
!99 = !{ptr @csio_mb_dump_fw_dbg._entry.60, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.62, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1143, i32 3}
!103 = !{ptr @csio_mb_dump_fw_dbg._entry.63, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.65, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1145, i32 3}
!107 = !{ptr @csio_mb_dump_fw_dbg._entry.66, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.68, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.70, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/csiostor/csio_mb.c", i32 1149, i32 3}
!111 = !{ptr @.str.71, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @csio_mb_dump_fw_dbg._entry.69, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @csio_mb_dump_fw_dbg._entry_ptr.72, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2156207174}
!124 = !{i64 6059851}
!125 = !{i64 6060269}
!126 = !{i64 2156208240}
!127 = !{i64 2156208734}
!128 = !{i64 2156209797}
!129 = !{i64 2156231371}
!130 = !{i64 2156232389}
!131 = !{i64 2155728877}
!132 = !{i64 2155729250}
!133 = !{i64 2156237935}
!134 = !{i64 2156238834}
!135 = !{i64 2156239837}
!136 = !{i64 2156239985}
!137 = !{i64 2156241979}
!138 = !{i64 2156242472}
!139 = !{i64 2155728057}
!140 = !{i64 2155728507}
!141 = !{i64 2156244192}
!142 = !{i64 2156225172}
!143 = !{i64 2156226226}
!144 = !{i64 2156226374}
!145 = !{i64 2156265776}
!146 = !{i64 2156266581}
!147 = !{i64 2156267217}
!148 = !{i64 2156267976}
!149 = !{i64 2156268904}
!150 = !{i64 2156272104}
!151 = !{i64 2156272978}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2156273779, i64 2156274276, i64 2156273816, i64 2156273872, i64 2156273906, i64 2156273930, i64 2156273971, i64 2156273992, i64 2156274020, i64 2156274054}
!154 = !{i64 2156275584}
!155 = !{i64 2156276458}
