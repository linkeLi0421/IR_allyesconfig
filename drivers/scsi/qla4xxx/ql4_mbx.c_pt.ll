; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_mbx.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%union.anon.174 = type { ptr }
%struct.addr_ctrl_blk = type { i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i32, [4 x i8], i16, i8, i8, [8 x i8], [4 x i8], [12 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], i16, i16, [4 x i8], [32 x i8], [22 x i8], i16, i8, i8, [6 x i8], [4 x i8], i8, [11 x i8], [20 x i8], i8, [11 x i8], [224 x i8], [32 x i8], i32, i16, i16, i16, i16, i8, i16, [16 x i8], i16, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], i32, i32, i32, i8, i8, [18 x i8], i32, [140 x i8] }
%struct.dev_db_entry = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, [16 x i8], [32 x i8], [32 x i8], i16, i16, i16, i8, i16, [54 x i8], [224 x i8], [16 x i8], [16 x i8], i16, i16, i16, i8, i8, i32, i32, [43 x i8], i16, i16 }
%struct.ddb_entry = type { ptr, ptr, ptr, i16, i32, i16, %struct.dev_db_entry, ptr, ptr, i32, i16, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i16 }
%struct.srb = type { %struct.list_head, ptr, ptr, i16, i8, ptr, i32, %struct.kref, i8, i16, i16, i16, i16, ptr, i16, i16 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ql4_chap_table = type { i16, i8, i8, [100 x i8], [256 x i8], i16, i16 }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla_endpoint = type { ptr, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.211 }
%union.anon.211 = type { ptr, [124 x i8] }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.185, [0 x i8] }
%union.anon.185 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }

@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_mailbox_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"scsi%ld: %s: Invalid mbx_cmd or mbx_sts pointer\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_mailbox_command\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla4xxx/ql4_mbx.c\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr = internal global ptr @qla4xxx_mailbox_command._entry, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"scsi%ld: %s: prematurely completing mbx cmd as adapter removal detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.7 = internal global ptr @qla4xxx_mailbox_command._entry.3, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014scsi%ld: %s: Perm failure on EEH, timeout MBX Exiting.\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.10 = internal global ptr @qla4xxx_mailbox_command._entry.8, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi%ld: %s: mbox_sem failed\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.13 = internal global ptr @qla4xxx_mailbox_command._entry.11, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"scsi%ld: %s: prematurely completing mbx cmd as firmware recovery detected\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.16 = internal global ptr @qla4xxx_mailbox_command._entry.14, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"scsi%ld: %s: H/W is in failed state, do not send any mailbox commands\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.19 = internal global ptr @qla4xxx_mailbox_command._entry.17, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla4xxx_mailbox_command._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 211, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.22 = internal global ptr @qla4xxx_mailbox_command._entry.20, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"scsi%ld: Mailbox Cmd 0x%08X timed out, Scheduling Adapter Reset\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.25 = internal global ptr @qla4xxx_mailbox_command._entry.23, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 221, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disabling pause transmit on port 0 & 1.\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.28 = internal global ptr @qla4xxx_mailbox_command._entry.26, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 227, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" %s: disabling pause transmit on port 0 & 1.\0A\00", [50 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.31 = internal global ptr @qla4xxx_mailbox_command._entry.29, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"scsi%ld: %s: Cmd = %08X, ISP BUSY\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.34 = internal global ptr @qla4xxx_mailbox_command._entry.32, section ".printk_index", align 4
@qla4xxx_mailbox_command._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"scsi%ld: %s: FAILED, MBOX CMD = %08X, MBOX STS = %08X %08X %08X %08X %08X %08X %08X %08X\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_command._entry_ptr.37 = internal global ptr @qla4xxx_mailbox_command._entry.35, section ".printk_index", align 4
@qla4xxx_get_minidump_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 306, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"scsi%ld: %s: Cmd = %08X, mbx[0] = 0x%04x, mbx[1] = 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4xxx_get_minidump_template\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_get_minidump_template._entry_ptr = internal global ptr @qla4xxx_get_minidump_template._entry, section ".printk_index", align 4
@qla4xxx_req_template_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 335, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"%s: sts[0]=0x%04x, template  size=0x%04x, size_cm_02=0x%04x, size_cm_04=0x%04x, size_cm_08=0x%04x, size_cm_10=0x%04x, size_cm_FF=0x%04x, version=0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4xxx_req_template_size\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_req_template_size._entry_ptr = internal global ptr @qla4xxx_req_template_size._entry, section ".printk_index", align 4
@qla4xxx_req_template_size._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Error sts[0]=0x%04x, mbx[1]=0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_req_template_size._entry_ptr.44 = internal global ptr @qla4xxx_req_template_size._entry.42, section ".printk_index", align 4
@qla4xxx_mailbox_premature_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 352, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scsi%ld: %s: set FW RECOVERY!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qla4xxx_mailbox_premature_completion\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_premature_completion._entry_ptr = internal global ptr @qla4xxx_mailbox_premature_completion._entry, section ".printk_index", align 4
@qla4xxx_mailbox_premature_completion._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 359, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"scsi%ld: %s: Due to fw recovery, doing premature completion of mbx cmd\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_premature_completion._entry_ptr.49 = internal global ptr @qla4xxx_mailbox_premature_completion._entry.47, section ".printk_index", align 4
@qla4xxx_mailbox_premature_completion._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 365, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"scsi%ld: %s: Due to fw recovery, doing premature completion of polling mbx cmd\0A\00", [48 x i8] zeroinitializer }, align 32
@qla4xxx_mailbox_premature_completion._entry_ptr.52 = internal global ptr @qla4xxx_mailbox_premature_completion._entry.50, section ".printk_index", align 4
@qla4xxx_get_ifcb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014scsi%ld: %s: MBOX_CMD_GET_INIT_FW_CTRL_BLOCK failed w/ status %04X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qla4xxx_get_ifcb\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_get_ifcb._entry_ptr = internal global ptr @qla4xxx_get_ifcb._entry, section ".printk_index", align 4
@qla4xxx_update_local_ifcb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014scsi%ld: %s: Failed to get init_fw_ctrl_blk\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4xxx_update_local_ifcb\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_update_local_ifcb._entry_ptr = internal global ptr @qla4xxx_update_local_ifcb._entry, section ".printk_index", align 4
@qla4xxx_initialize_fw_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld: %s: Unable to alloc init_cb\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4xxx_initialize_fw_cb\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_initialize_fw_cb._entry_ptr = internal global ptr @qla4xxx_initialize_fw_cb._entry, section ".printk_index", align 4
@qla4xxx_initialize_fw_cb._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014scsi%ld: %s: Failed to set init_fw_ctrl_blk\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4xxx_initialize_fw_cb._entry_ptr.61 = internal global ptr @qla4xxx_initialize_fw_cb._entry.59, section ".printk_index", align 4
@qla4xxx_initialize_fw_cb._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"scsi%ld: %s: Failed to update local ifcb\0A\00", [54 x i8] zeroinitializer }, align 32
@qla4xxx_initialize_fw_cb._entry_ptr.64 = internal global ptr @qla4xxx_initialize_fw_cb._entry.62, section ".printk_index", align 4
@qla4xxx_get_dhcp_ip_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.65, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4xxx_get_dhcp_ip_address\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_get_dhcp_ip_address._entry_ptr = internal global ptr @qla4xxx_get_dhcp_ip_address._entry, section ".printk_index", align 4
@qla4xxx_get_dhcp_ip_address._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi%ld: %s: Failed to get init_fw_ctrl_blk\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4xxx_get_dhcp_ip_address._entry_ptr.68 = internal global ptr @qla4xxx_get_dhcp_ip_address._entry.66, section ".printk_index", align 4
@qla4xxx_get_firmware_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"scsi%ld: %s: MBOX_CMD_GET_FW_STATE failed w/ status %04X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_get_firmware_state\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_get_firmware_state._entry_ptr = internal global ptr @qla4xxx_get_firmware_state._entry, section ".printk_index", align 4
@qla4xxx_get_firmware_state._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi%ld: %s firmware_state=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4xxx_get_firmware_state._entry_ptr.73 = internal global ptr @qla4xxx_get_firmware_state._entry.71, section ".printk_index", align 4
@qla4xxx_get_firmware_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"scsi%ld: %s: MBOX_CMD_GET_FW_STATUS failed w/ status %04X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4xxx_get_firmware_status\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_get_firmware_status._entry_ptr = internal global ptr @qla4xxx_get_firmware_status._entry, section ".printk_index", align 4
@qla4xxx_get_firmware_status._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 794, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: firmware IOCBs available = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_get_firmware_status._entry_ptr.78 = internal global ptr @qla4xxx_get_firmware_status._entry.76, section ".printk_index", align 4
@qla4xxx_get_firmware_status._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Setting IOCB's to = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_get_firmware_status._entry_ptr.81 = internal global ptr @qla4xxx_get_firmware_status._entry.79, section ".printk_index", align 4
@qla4xxx_get_fwddb_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld: %s: ddb [%d] out of range.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_get_fwddb_entry\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_get_fwddb_entry._entry_ptr = internal global ptr @qla4xxx_get_fwddb_entry._entry, section ".printk_index", align 4
@qla4xxx_get_fwddb_entry._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"scsi%ld: %s: MBOX_CMD_GET_DATABASE_ENTRY failed with status 0x%04X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_get_fwddb_entry._entry_ptr.86 = internal global ptr @qla4xxx_get_fwddb_entry._entry.84, section ".printk_index", align 4
@qla4xxx_get_fwddb_entry._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"scsi%ld: %s: ddb mismatch [%d] != [%d].\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_get_fwddb_entry._entry_ptr.89 = internal global ptr @qla4xxx_get_fwddb_entry._entry.87, section ".printk_index", align 4
@qla4xxx_get_fwddb_entry._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 877, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: DDB[%d] MB0 %04x Tot %d Next %d State %04x ConnErr %08x %pI6 :%04d \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4xxx_get_fwddb_entry._entry_ptr.92 = internal global ptr @qla4xxx_get_fwddb_entry._entry.90, section ".printk_index", align 4
@qla4xxx_get_fwddb_entry._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 886, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: DDB[%d] MB0 %04x Tot %d Next %d State %04x ConnErr %08x %pI4 :%04d \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4xxx_get_fwddb_entry._entry_ptr.95 = internal global ptr @qla4xxx_get_fwddb_entry._entry.93, section ".printk_index", align 4
@qla4xxx_conn_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 931, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: status = %d mbx0 = 0x%x mbx1 = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_conn_open\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_conn_open._entry_ptr = internal global ptr @qla4xxx_conn_open._entry, section ".printk_index", align 4
@qla4xxx_set_ddb_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scsi%ld: %s: status=%d mbx0=0x%x mbx4=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_set_ddb_entry\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_set_ddb_entry._entry_ptr = internal global ptr @qla4xxx_set_ddb_entry._entry, section ".printk_index", align 4
@qla4xxx_session_logout_ddb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 994, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: MBOX_CMD_CONN_CLOSE_SESS_LOGOUT failed sts %04X %04X\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_session_logout_ddb\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_session_logout_ddb._entry_ptr = internal global ptr @qla4xxx_session_logout_ddb._entry, section ".printk_index", align 4
@qla4xxx_get_crash_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"scsi%ld: %s: ERROR: Unable to retrieve size!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4xxx_get_crash_record\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_get_crash_record._entry_ptr = internal global ptr @qla4xxx_get_crash_record._entry, section ".printk_index", align 4
@qla4xxx_get_crash_record._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi%ld: %s: ERROR: Crash record size is 0!\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4xxx_get_crash_record._entry_ptr.106 = internal global ptr @qla4xxx_get_crash_record._entry.104, section ".printk_index", align 4
@qla4xxx_get_conn_event_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"scsi%ld: %s: ERROR: Unable to retrieve event log!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_get_conn_event_log\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_get_conn_event_log._entry_ptr = internal global ptr @qla4xxx_get_conn_event_log._entry, section ".printk_index", align 4
@qla4xxx_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014scsi%ld:%d:%llu: abort task FAILED: mbx0=%04X, mb1=%04X, mb2=%04X, mb3=%04X, mb4=%04X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_abort_task\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_abort_task._entry_ptr = internal global ptr @qla4xxx_abort_task._entry, section ".printk_index", align 4
@qla4xxx_reset_lun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"scsi%ld:%d:%llu: lun reset issued\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_reset_lun\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_reset_lun._entry_ptr = internal global ptr @qla4xxx_reset_lun._entry, section ".printk_index", align 4
@qla4xxx_reset_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi%ld:%d: target reset issued\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_reset_target\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_reset_target._entry_ptr = internal global ptr @qla4xxx_reset_target._entry, section ".printk_index", align 4
@qla4xxx_get_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"scsi%ld: %s: MBOX_CMD_READ_FLASH, failed w/ status %04X %04X, offset %08x, len %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_get_flash\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_get_flash._entry_ptr = internal global ptr @qla4xxx_get_flash._entry, section ".printk_index", align 4
@qla4xxx_about_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1343, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Unable to alloc memory for about_fw\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4xxx_about_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_about_firmware._entry_ptr = internal global ptr @qla4xxx_about_firmware._entry, section ".printk_index", align 4
@qla4xxx_about_firmware._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.118, ptr @.str.2, i32 1360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: MBOX_CMD_ABOUT_FW failed w/ status %04X\0A\00", [51 x i8] zeroinitializer }, align 32
@qla4xxx_about_firmware._entry_ptr.122 = internal global ptr @qla4xxx_about_firmware._entry.120, section ".printk_index", align 4
@qla4xxx_get_default_ddb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi%ld: %s: failed status %04X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_get_default_ddb\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_get_default_ddb._entry_ptr = internal global ptr @qla4xxx_get_default_ddb._entry, section ".printk_index", align 4
@qla4xxx_req_ddb_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1435, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: failed status %04X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_req_ddb_entry\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_req_ddb_entry._entry_ptr = internal global ptr @qla4xxx_req_ddb_entry._entry, section ".printk_index", align 4
@qla4xxx_clear_ddb_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.127, ptr @.str.2, i32 1458, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_clear_ddb_entry\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_clear_ddb_entry._entry_ptr = internal global ptr @qla4xxx_clear_ddb_entry._entry, section ".printk_index", align 4
@qla4xxx_set_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1485, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: MBOX_CMD_WRITE_FLASH failed w/ status %04X, mbx1 %04X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_set_flash\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_set_flash._entry_ptr = internal global ptr @qla4xxx_set_flash._entry, section ".printk_index", align 4
@qla4xxx_bootdb_by_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1506, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:Invalid DDB index %d\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_bootdb_by_index\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_bootdb_by_index._entry_ptr = internal global ptr @qla4xxx_bootdb_by_index._entry, section ".printk_index", align 4
@qla4xxx_bootdb_by_index._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 1513, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi%ld: %s: Get Flashfailed\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_bootdb_by_index._entry_ptr.134 = internal global ptr @qla4xxx_bootdb_by_index._entry.132, section ".printk_index", align 4
@qla4xxx_flashdb_by_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.135, ptr @.str.2, i32 1555, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4xxx_flashdb_by_index\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_flashdb_by_index._entry_ptr = internal global ptr @qla4xxx_flashdb_by_index._entry, section ".printk_index", align 4
@qla4xxx_flashdb_by_index._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1562, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scsi%ld: %s: Get Flash failed\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_flashdb_by_index._entry_ptr.138 = internal global ptr @qla4xxx_flashdb_by_index._entry.136, section ".printk_index", align 4
@qla4xxx_get_chap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1607, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chap Cookie: x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qla4xxx_get_chap\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_get_chap._entry_ptr = internal global ptr @qla4xxx_get_chap._entry, section ".printk_index", align 4
@qla4xxx_get_chap._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 1610, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No valid chap entry found\0A\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_get_chap._entry_ptr.143 = internal global ptr @qla4xxx_get_chap._entry.141, section ".printk_index", align 4
@qla4xxx_get_uni_chap_at_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1699, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Do not have CHAP table cache\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4xxx_get_uni_chap_at_index\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_get_uni_chap_at_index._entry_ptr = internal global ptr @qla4xxx_get_uni_chap_at_index._entry, section ".printk_index", align 4
@qla4xxx_get_uni_chap_at_index._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1705, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No memory for username & secret\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4xxx_get_uni_chap_at_index._entry_ptr.148 = internal global ptr @qla4xxx_get_uni_chap_at_index._entry.146, section ".printk_index", align 4
@qla4xxx_get_uni_chap_at_index._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 1717, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid Chap index\0A\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_get_uni_chap_at_index._entry_ptr.151 = internal global ptr @qla4xxx_get_uni_chap_at_index._entry.149, section ".printk_index", align 4
@qla4xxx_get_uni_chap_at_index._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 1730, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unidirectional entry not set\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_get_uni_chap_at_index._entry_ptr.154 = internal global ptr @qla4xxx_get_uni_chap_at_index._entry.152, section ".printk_index", align 4
@qla4xxx_get_chap_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.155, ptr @.str.2, i32 1774, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4xxx_get_chap_index\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_get_chap_index._entry_ptr = internal global ptr @qla4xxx_get_chap_index._entry, section ".printk_index", align 4
@qla4xxx_get_chap_index._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 1779, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Do not have username and psw\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_get_chap_index._entry_ptr.158 = internal global ptr @qla4xxx_get_chap_index._entry.156, section ".printk_index", align 4
@qla4xxx_conn_close_sess_logout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: MBOX_CMD_CONN_CLOSE option %04x failed w/ status %04X %04X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4xxx_conn_close_sess_logout\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_conn_close_sess_logout._entry_ptr = internal global ptr @qla4xxx_conn_close_sess_logout._entry, section ".printk_index", align 4
@qla4xxx_disable_acb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 1908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: MBOX_CMD_DISABLE_ACB failed w/ status %04X %04X %04X\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4xxx_disable_acb\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_disable_acb._entry_ptr = internal global ptr @qla4xxx_disable_acb._entry, section ".printk_index", align 4
@qla4xxx_disable_acb._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 1924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Disable ACB Completion not received\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_disable_acb._entry_ptr.165 = internal global ptr @qla4xxx_disable_acb._entry.163, section ".printk_index", align 4
@qla4xxx_get_acb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 1951, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: MBOX_CMD_GET_ACB failed w/ status %04X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qla4xxx_get_acb\00", [16 x i8] zeroinitializer }, align 32
@qla4xxx_get_acb._entry_ptr = internal global ptr @qla4xxx_get_acb._entry, section ".printk_index", align 4
@qla4xxx_set_acb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1973, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: MBOX_CMD_SET_ACB failed w/ status %04X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qla4xxx_set_acb\00", [16 x i8] zeroinitializer }, align 32
@qla4xxx_set_acb._entry_ptr = internal global ptr @qla4xxx_set_acb._entry, section ".printk_index", align 4
@qla4xxx_set_param_ddbentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 2003, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unable to allocate dma buffer.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_set_param_ddbentry\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_set_param_ddbentry._entry_ptr = internal global ptr @qla4xxx_set_param_ddbentry._entry, section ".printk_index", align 4
@qla4xxx_set_param_ddbentry._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 2025, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ISID [%pmR]\0A\00", [19 x i8] zeroinitializer }, align 32
@qla4xxx_set_param_ddbentry._entry_ptr.174 = internal global ptr @qla4xxx_set_param_ddbentry._entry.172, section ".printk_index", align 4
@qla4xxx_set_param_ddbentry._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.2, i32 2051, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Destination Address [%pI4]: index [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_set_param_ddbentry._entry_ptr.177 = internal global ptr @qla4xxx_set_param_ddbentry._entry.175, section ".printk_index", align 4
@qla4xxx_set_param_ddbentry._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 2061, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Destination Address [%pI6]: index [%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_set_param_ddbentry._entry_ptr.180 = internal global ptr @qla4xxx_set_param_ddbentry._entry.178, section ".printk_index", align 4
@qla4xxx_set_param_ddbentry._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.2, i32 2065, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to get IP Address\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_set_param_ddbentry._entry_ptr.183 = internal global ptr @qla4xxx_set_param_ddbentry._entry.181, section ".printk_index", align 4
@qla4xxx_get_mgmt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 2161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: MBOX_CMD_GET_MANAGEMENT_DATA failed w/ status %04X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_get_mgmt_data\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_get_mgmt_data._entry_ptr = internal global ptr @qla4xxx_get_mgmt_data._entry, section ".printk_index", align 4
@qla4xxx_get_ip_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 2183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: MBOX_CMD_GET_IP_ADDR_STATE failed w/ status %04X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_get_ip_state\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_get_ip_state._entry_ptr = internal global ptr @qla4xxx_get_ip_state._entry, section ".printk_index", align 4
@qla4xxx_get_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.188, ptr @.str.2, i32 2210, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_get_nvram\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_get_nvram._entry_ptr = internal global ptr @qla4xxx_get_nvram._entry, section ".printk_index", align 4
@qla4xxx_set_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.189, ptr @.str.2, i32 2236, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4xxx_set_nvram\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_set_nvram._entry_ptr = internal global ptr @qla4xxx_set_nvram._entry, section ".printk_index", align 4
@qla4xxx_restore_factory_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.190, ptr @.str.2, i32 2262, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4xxx_restore_factory_defaults\00", [63 x i8] zeroinitializer }, align 32
@qla4xxx_restore_factory_defaults._entry_ptr = internal global ptr @qla4xxx_restore_factory_defaults._entry, section ".printk_index", align 4
@qla4_8xxx_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 2288, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid parameter 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4_8xxx_set_param\00", [44 x i8] zeroinitializer }, align 32
@qla4_8xxx_set_param._entry_ptr = internal global ptr @qla4_8xxx_set_param._entry, section ".printk_index", align 4
@qla4_8xxx_set_param._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.193, ptr @.str.2, i32 2297, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_set_param._entry_ptr.195 = internal global ptr @qla4_8xxx_set_param._entry.194, section ".printk_index", align 4
@qla4_83xx_post_idc_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.196, ptr @.str.2, i32 2328, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_83xx_post_idc_ack\00", [41 x i8] zeroinitializer }, align 32
@qla4_83xx_post_idc_ack._entry_ptr = internal global ptr @qla4_83xx_post_idc_ack._entry, section ".printk_index", align 4
@qla4_83xx_post_idc_ack._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.2, i32 2330, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: IDC ACK posted\0A\00", [44 x i8] zeroinitializer }, align 32
@qla4_83xx_post_idc_ack._entry_ptr.199 = internal global ptr @qla4_83xx_post_idc_ack._entry.197, section ".printk_index", align 4
@qla4_84xx_config_acb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 2348, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Unable to alloc acb\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4_84xx_config_acb\00", [43 x i8] zeroinitializer }, align 32
@qla4_84xx_config_acb._entry_ptr = internal global ptr @qla4_84xx_config_acb._entry, section ".printk_index", align 4
@qla4_84xx_config_acb._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 2369, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@qla4_84xx_config_acb._entry_ptr.203 = internal global ptr @qla4_84xx_config_acb._entry.202, section ".printk_index", align 4
@qla4_84xx_config_acb._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.201, ptr @.str.2, i32 2379, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Can't set ACB, Saved ACB not available\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4_84xx_config_acb._entry_ptr.206 = internal global ptr @qla4_84xx_config_acb._entry.204, section ".printk_index", align 4
@qla4_84xx_config_acb._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.201, ptr @.str.2, i32 2393, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Invalid ACB Configuration\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_84xx_config_acb._entry_ptr.209 = internal global ptr @qla4_84xx_config_acb._entry.207, section ".printk_index", align 4
@qla4_84xx_config_acb._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.201, ptr @.str.2, i32 2406, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@qla4_84xx_config_acb._entry_ptr.212 = internal global ptr @qla4_84xx_config_acb._entry.210, section ".printk_index", align 4
@.str.213 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUCCEEDED\00", [22 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@qla4_83xx_get_port_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.215, ptr @.str.2, i32 2427, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_get_port_config\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_get_port_config._entry_ptr = internal global ptr @qla4_83xx_get_port_config._entry, section ".printk_index", align 4
@qla4_83xx_set_port_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.216, ptr @.str.2, i32 2448, ptr @.str.119, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_set_port_config\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_set_port_config._entry_ptr = internal global ptr @qla4_83xx_set_port_config._entry, section ".printk_index", align 4
@qla4xxx_set_ifcb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014scsi%ld: %s: MBOX_CMD_INITIALIZE_FIRMWARE failed w/ status %04X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qla4xxx_set_ifcb\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_set_ifcb._entry_ptr = internal global ptr @qla4xxx_set_ifcb._entry, section ".printk_index", align 4
@qla4_84xx_extend_idc_tmo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.219, ptr @.str.2, i32 1883, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_84xx_extend_idc_tmo\00", [39 x i8] zeroinitializer }, align 32
@qla4_84xx_extend_idc_tmo._entry_ptr = internal global ptr @qla4_84xx_extend_idc_tmo._entry, section ".printk_index", align 4
@qla4_84xx_extend_idc_tmo._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.2, i32 1887, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: IDC timeout extended by %d secs\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4_84xx_extend_idc_tmo._entry_ptr.222 = internal global ptr @qla4_84xx_extend_idc_tmo._entry.220, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"5.04.00-k6\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_set_ipaddr_state = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\01\02\06\03\04", [26 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_update_local_ip = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\01\02\06\03\04", [26 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_update_local_ip.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\01\02\06\03\04", [26 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_update_local_ip.224 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\01\02\06\03\04", [26 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_update_local_ip.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\01\02\06\03\04", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 16400, i64 16418, i64 16434, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.231 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.233 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 94, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 101, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 111, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 128, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 137, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 147, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 208, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 214, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 220, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 226, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 252, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 258, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 303, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 331, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 339, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 351, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 357, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 363, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 410, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 591, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 631, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 676, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 684, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 712, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 720, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 753, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 761, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 784, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 792, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 804, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 839, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 856, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 862, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 870, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 879, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 929, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 968, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 991, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1026, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1032, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1110, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1202, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1229, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1274, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1314, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1342, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1358, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1411, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1434, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1457, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1483, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1504, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1512, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1553, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1561, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1606, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1610, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1699, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1705, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1717, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1730, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1774, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1779, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1847, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1906, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1923, i32 5 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1949, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1971, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2001, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2025, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2048, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2058, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2063, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2158, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2181, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2208, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2234, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2260, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2287, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2296, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2327, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2330, i32 9 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2348, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2368, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2378, i32 4 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2392, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2404, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2426, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 2447, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 388, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1881, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.909 = private constant [34 x i8] c"../drivers/scsi/qla4xxx/ql4_mbx.c\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.909, i32 1886, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [38 x i8] c"switch.table.qla4xxx_set_ipaddr_state\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [37 x i8] c"switch.table.qla4xxx_update_local_ip\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [41 x i8] c"switch.table.qla4xxx_update_local_ip.223\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [41 x i8] c"switch.table.qla4xxx_update_local_ip.224\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [41 x i8] c"switch.table.qla4xxx_update_local_ip.225\00", align 1
@llvm.compiler.used = appending global [322 x ptr] [ptr @qla4_83xx_get_port_config._entry, ptr @qla4_83xx_get_port_config._entry_ptr, ptr @qla4_83xx_post_idc_ack._entry, ptr @qla4_83xx_post_idc_ack._entry.197, ptr @qla4_83xx_post_idc_ack._entry_ptr, ptr @qla4_83xx_post_idc_ack._entry_ptr.199, ptr @qla4_83xx_set_port_config._entry, ptr @qla4_83xx_set_port_config._entry_ptr, ptr @qla4_84xx_config_acb._entry, ptr @qla4_84xx_config_acb._entry.202, ptr @qla4_84xx_config_acb._entry.204, ptr @qla4_84xx_config_acb._entry.207, ptr @qla4_84xx_config_acb._entry.210, ptr @qla4_84xx_config_acb._entry_ptr, ptr @qla4_84xx_config_acb._entry_ptr.203, ptr @qla4_84xx_config_acb._entry_ptr.206, ptr @qla4_84xx_config_acb._entry_ptr.209, ptr @qla4_84xx_config_acb._entry_ptr.212, ptr @qla4_84xx_extend_idc_tmo._entry, ptr @qla4_84xx_extend_idc_tmo._entry.220, ptr @qla4_84xx_extend_idc_tmo._entry_ptr, ptr @qla4_84xx_extend_idc_tmo._entry_ptr.222, ptr @qla4_8xxx_set_param._entry, ptr @qla4_8xxx_set_param._entry.194, ptr @qla4_8xxx_set_param._entry_ptr, ptr @qla4_8xxx_set_param._entry_ptr.195, ptr @qla4xxx_abort_task._entry, ptr @qla4xxx_abort_task._entry_ptr, ptr @qla4xxx_about_firmware._entry, ptr @qla4xxx_about_firmware._entry.120, ptr @qla4xxx_about_firmware._entry_ptr, ptr @qla4xxx_about_firmware._entry_ptr.122, ptr @qla4xxx_bootdb_by_index._entry, ptr @qla4xxx_bootdb_by_index._entry.132, ptr @qla4xxx_bootdb_by_index._entry_ptr, ptr @qla4xxx_bootdb_by_index._entry_ptr.134, ptr @qla4xxx_clear_ddb_entry._entry, ptr @qla4xxx_clear_ddb_entry._entry_ptr, ptr @qla4xxx_conn_close_sess_logout._entry, ptr @qla4xxx_conn_close_sess_logout._entry_ptr, ptr @qla4xxx_conn_open._entry, ptr @qla4xxx_conn_open._entry_ptr, ptr @qla4xxx_disable_acb._entry, ptr @qla4xxx_disable_acb._entry.163, ptr @qla4xxx_disable_acb._entry_ptr, ptr @qla4xxx_disable_acb._entry_ptr.165, ptr @qla4xxx_flashdb_by_index._entry, ptr @qla4xxx_flashdb_by_index._entry.136, ptr @qla4xxx_flashdb_by_index._entry_ptr, ptr @qla4xxx_flashdb_by_index._entry_ptr.138, ptr @qla4xxx_get_acb._entry, ptr @qla4xxx_get_acb._entry_ptr, ptr @qla4xxx_get_chap._entry, ptr @qla4xxx_get_chap._entry.141, ptr @qla4xxx_get_chap._entry_ptr, ptr @qla4xxx_get_chap._entry_ptr.143, ptr @qla4xxx_get_chap_index._entry, ptr @qla4xxx_get_chap_index._entry.156, ptr @qla4xxx_get_chap_index._entry_ptr, ptr @qla4xxx_get_chap_index._entry_ptr.158, ptr @qla4xxx_get_conn_event_log._entry, ptr @qla4xxx_get_conn_event_log._entry_ptr, ptr @qla4xxx_get_crash_record._entry, ptr @qla4xxx_get_crash_record._entry.104, ptr @qla4xxx_get_crash_record._entry_ptr, ptr @qla4xxx_get_crash_record._entry_ptr.106, ptr @qla4xxx_get_default_ddb._entry, ptr @qla4xxx_get_default_ddb._entry_ptr, ptr @qla4xxx_get_dhcp_ip_address._entry, ptr @qla4xxx_get_dhcp_ip_address._entry.66, ptr @qla4xxx_get_dhcp_ip_address._entry_ptr, ptr @qla4xxx_get_dhcp_ip_address._entry_ptr.68, ptr @qla4xxx_get_firmware_state._entry, ptr @qla4xxx_get_firmware_state._entry.71, ptr @qla4xxx_get_firmware_state._entry_ptr, ptr @qla4xxx_get_firmware_state._entry_ptr.73, ptr @qla4xxx_get_firmware_status._entry, ptr @qla4xxx_get_firmware_status._entry.76, ptr @qla4xxx_get_firmware_status._entry.79, ptr @qla4xxx_get_firmware_status._entry_ptr, ptr @qla4xxx_get_firmware_status._entry_ptr.78, ptr @qla4xxx_get_firmware_status._entry_ptr.81, ptr @qla4xxx_get_flash._entry, ptr @qla4xxx_get_flash._entry_ptr, ptr @qla4xxx_get_fwddb_entry._entry, ptr @qla4xxx_get_fwddb_entry._entry.84, ptr @qla4xxx_get_fwddb_entry._entry.87, ptr @qla4xxx_get_fwddb_entry._entry.90, ptr @qla4xxx_get_fwddb_entry._entry.93, ptr @qla4xxx_get_fwddb_entry._entry_ptr, ptr @qla4xxx_get_fwddb_entry._entry_ptr.86, ptr @qla4xxx_get_fwddb_entry._entry_ptr.89, ptr @qla4xxx_get_fwddb_entry._entry_ptr.92, ptr @qla4xxx_get_fwddb_entry._entry_ptr.95, ptr @qla4xxx_get_ifcb._entry, ptr @qla4xxx_get_ifcb._entry_ptr, ptr @qla4xxx_get_ip_state._entry, ptr @qla4xxx_get_ip_state._entry_ptr, ptr @qla4xxx_get_mgmt_data._entry, ptr @qla4xxx_get_mgmt_data._entry_ptr, ptr @qla4xxx_get_minidump_template._entry, ptr @qla4xxx_get_minidump_template._entry_ptr, ptr @qla4xxx_get_nvram._entry, ptr @qla4xxx_get_nvram._entry_ptr, ptr @qla4xxx_get_uni_chap_at_index._entry, ptr @qla4xxx_get_uni_chap_at_index._entry.146, ptr @qla4xxx_get_uni_chap_at_index._entry.149, ptr @qla4xxx_get_uni_chap_at_index._entry.152, ptr @qla4xxx_get_uni_chap_at_index._entry_ptr, ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.148, ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.151, ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.154, ptr @qla4xxx_initialize_fw_cb._entry, ptr @qla4xxx_initialize_fw_cb._entry.59, ptr @qla4xxx_initialize_fw_cb._entry.62, ptr @qla4xxx_initialize_fw_cb._entry_ptr, ptr @qla4xxx_initialize_fw_cb._entry_ptr.61, ptr @qla4xxx_initialize_fw_cb._entry_ptr.64, ptr @qla4xxx_mailbox_command._entry, ptr @qla4xxx_mailbox_command._entry.11, ptr @qla4xxx_mailbox_command._entry.14, ptr @qla4xxx_mailbox_command._entry.17, ptr @qla4xxx_mailbox_command._entry.20, ptr @qla4xxx_mailbox_command._entry.23, ptr @qla4xxx_mailbox_command._entry.26, ptr @qla4xxx_mailbox_command._entry.29, ptr @qla4xxx_mailbox_command._entry.3, ptr @qla4xxx_mailbox_command._entry.32, ptr @qla4xxx_mailbox_command._entry.35, ptr @qla4xxx_mailbox_command._entry.8, ptr @qla4xxx_mailbox_command._entry_ptr, ptr @qla4xxx_mailbox_command._entry_ptr.10, ptr @qla4xxx_mailbox_command._entry_ptr.13, ptr @qla4xxx_mailbox_command._entry_ptr.16, ptr @qla4xxx_mailbox_command._entry_ptr.19, ptr @qla4xxx_mailbox_command._entry_ptr.22, ptr @qla4xxx_mailbox_command._entry_ptr.25, ptr @qla4xxx_mailbox_command._entry_ptr.28, ptr @qla4xxx_mailbox_command._entry_ptr.31, ptr @qla4xxx_mailbox_command._entry_ptr.34, ptr @qla4xxx_mailbox_command._entry_ptr.37, ptr @qla4xxx_mailbox_command._entry_ptr.7, ptr @qla4xxx_mailbox_premature_completion._entry, ptr @qla4xxx_mailbox_premature_completion._entry.47, ptr @qla4xxx_mailbox_premature_completion._entry.50, ptr @qla4xxx_mailbox_premature_completion._entry_ptr, ptr @qla4xxx_mailbox_premature_completion._entry_ptr.49, ptr @qla4xxx_mailbox_premature_completion._entry_ptr.52, ptr @qla4xxx_req_ddb_entry._entry, ptr @qla4xxx_req_ddb_entry._entry_ptr, ptr @qla4xxx_req_template_size._entry, ptr @qla4xxx_req_template_size._entry.42, ptr @qla4xxx_req_template_size._entry_ptr, ptr @qla4xxx_req_template_size._entry_ptr.44, ptr @qla4xxx_reset_lun._entry, ptr @qla4xxx_reset_lun._entry_ptr, ptr @qla4xxx_reset_target._entry, ptr @qla4xxx_reset_target._entry_ptr, ptr @qla4xxx_restore_factory_defaults._entry, ptr @qla4xxx_restore_factory_defaults._entry_ptr, ptr @qla4xxx_session_logout_ddb._entry, ptr @qla4xxx_session_logout_ddb._entry_ptr, ptr @qla4xxx_set_acb._entry, ptr @qla4xxx_set_acb._entry_ptr, ptr @qla4xxx_set_ddb_entry._entry, ptr @qla4xxx_set_ddb_entry._entry_ptr, ptr @qla4xxx_set_flash._entry, ptr @qla4xxx_set_flash._entry_ptr, ptr @qla4xxx_set_ifcb._entry, ptr @qla4xxx_set_ifcb._entry_ptr, ptr @qla4xxx_set_nvram._entry, ptr @qla4xxx_set_nvram._entry_ptr, ptr @qla4xxx_set_param_ddbentry._entry, ptr @qla4xxx_set_param_ddbentry._entry.172, ptr @qla4xxx_set_param_ddbentry._entry.175, ptr @qla4xxx_set_param_ddbentry._entry.178, ptr @qla4xxx_set_param_ddbentry._entry.181, ptr @qla4xxx_set_param_ddbentry._entry_ptr, ptr @qla4xxx_set_param_ddbentry._entry_ptr.174, ptr @qla4xxx_set_param_ddbentry._entry_ptr.177, ptr @qla4xxx_set_param_ddbentry._entry_ptr.180, ptr @qla4xxx_set_param_ddbentry._entry_ptr.183, ptr @qla4xxx_update_local_ifcb._entry, ptr @qla4xxx_update_local_ifcb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.196, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.221, ptr @str, ptr @switch.table.qla4xxx_set_ipaddr_state, ptr @switch.table.qla4xxx_update_local_ip, ptr @switch.table.qla4xxx_update_local_ip.223, ptr @switch.table.qla4xxx_update_local_ip.224, ptr @switch.table.qla4xxx_update_local_ip.225], section "llvm.metadata"
@0 = internal global [230 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_command._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_minidump_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_req_template_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_req_template_size._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_premature_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_premature_completion._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mailbox_premature_completion._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_ifcb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_local_ifcb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_initialize_fw_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_initialize_fw_cb._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_initialize_fw_cb._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_dhcp_ip_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_dhcp_ip_address._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_firmware_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_firmware_state._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_firmware_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_firmware_status._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_firmware_status._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_fwddb_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_fwddb_entry._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_fwddb_entry._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_fwddb_entry._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_fwddb_entry._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_conn_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_ddb_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_session_logout_ddb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_crash_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_crash_record._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_conn_event_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_reset_lun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_reset_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_about_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_about_firmware._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_default_ddb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_req_ddb_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_clear_ddb_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bootdb_by_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bootdb_by_index._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_flashdb_by_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_flashdb_by_index._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_chap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_chap._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_uni_chap_at_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_uni_chap_at_index._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_uni_chap_at_index._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_uni_chap_at_index._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_chap_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_chap_index._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_conn_close_sess_logout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_disable_acb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_disable_acb._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_acb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_acb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_param_ddbentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_param_ddbentry._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_param_ddbentry._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_param_ddbentry._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_param_ddbentry._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_mgmt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_ip_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_restore_factory_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_set_param._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_idc_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_idc_ack._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_config_acb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_config_acb._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_config_acb._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_config_acb._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_config_acb._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_get_port_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_set_port_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_set_ifcb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_extend_idc_tmo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_84xx_extend_idc_tmo._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_set_ipaddr_state to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_update_local_ip to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_update_local_ip.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_update_local_ip.224 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_update_local_ip.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_queue_mbox_cmd(ptr nocapture noundef readonly %ha, ptr nocapture noundef readonly %mbx_cmd, i32 noundef %in_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %in_count)
  %cmp33 = icmp sgt i32 %in_count, 1
  br i1 %cmp33, label %do.body.lr.ph, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body.lr.ph:                                    ; preds = %entry
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.034 = phi i32 [ 1, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  tail call void @arm_heavy_mb() #11
  %arrayidx = getelementptr i32, ptr %mbx_cmd, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %arrayidx1 = getelementptr [8 x i32], ptr %4, i32 0, i32 %i.034
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1, i32 %2) #11, !srcloc !420
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %in_count
  br i1 %exitcond.not, label %do.body.do.body2_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body.do.body2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2:                                         ; preds = %do.body.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_cmd, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %reg6 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %8 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !420
  %10 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg6, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg6, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 1073758208) #11, !srcloc !420
  %15 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg6, align 4
  %ctrl_status21 = getelementptr inbounds %struct.isp_reg, ptr %16, i32 0, i32 3
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status21) #11, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_process_mbox_intr(ptr noundef %ha, i32 noundef %out_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #11, !srcloc !422
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  %and = and i32 %3, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %out_count to i8
  %mbox_status_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 78
  %4 = ptrtoint ptr %mbox_status_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %conv, ptr %mbox_status_count, align 128
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %5 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %8(ptr noundef %ha, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext %inCount, i8 noundef zeroext %outCount, ptr noundef %mbx_cmd, ptr noundef %mbx_sts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mbx_cmd, null
  %tobool1.not = icmp eq ptr %mbx_sts, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %1 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end6.if.end44_crit_edge [
    i16 16434, label %if.end6.if.then9_crit_edge
    i16 16418, label %if.end6.if.then9_crit_edge435
    i16 16400, label %if.end6.if.then9_crit_edge436
    i16 -32734, label %if.end6.land.lhs.true_crit_edge
    i16 -32718, label %if.end6.land.lhs.true_crit_edge437
    i16 -32702, label %if.end6.land.lhs.true_crit_edge438
  ]

if.end6.land.lhs.true_crit_edge438:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end6.land.lhs.true_crit_edge437:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end6.if.then9_crit_edge436:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end6.if.then9_crit_edge435:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.end6.if.end44_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then9:                                         ; preds = %if.end6.if.then9_crit_edge, %if.end6.if.then9_crit_edge435, %if.end6.if.then9_crit_edge436
  %8 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ha, align 4
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.then9.if.end44_crit_edge, label %do.body14

if.then9.if.end44_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.body14:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %11 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp15 = icmp eq i32 %11, 2
  br i1 %cmp15, label %do.end19, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %host_no20 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %12 = ptrtoint ptr %host_no20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no20, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %13, ptr noundef nonnull @.str.1) #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end6.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge437, %if.end6.land.lhs.true_crit_edge438
  %14 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %ha, align 4
  %16 = and i32 %15, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not = icmp eq i32 %16, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end44_crit_edge, label %do.body32

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.body32:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %17 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp33 = icmp eq i32 %17, 2
  br i1 %cmp33, label %do.end37, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %host_no39 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %18 = ptrtoint ptr %host_no39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no39, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %19, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.then9.if.end44_crit_edge, %if.end6.if.end44_crit_edge
  %mbox_sem = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 77
  tail call void @mutex_lock_nested(ptr noundef %mbox_sem, i32 noundef 0) #11
  %20 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ha, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not424 = icmp eq i32 %22, 0
  br i1 %tobool48.not424, label %if.end44.if.then49_crit_edge, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  br label %if.end52

if.end44.if.then49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.then49:                                        ; preds = %if.end68.if.then49_crit_edge, %if.end44.if.then49_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %ha) #11
  tail call void @mutex_unlock(ptr noundef %mbox_sem) #11
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i395 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device.i.i395 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device.i.i395, align 2
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.226)
  switch i16 %26, label %if.then49.do.body103_crit_edge [
    i16 -32734, label %if.then49.if.then71_crit_edge
    i16 -32718, label %if.then49.if.then71_crit_edge439
    i16 -32702, label %if.then49.if.then71_crit_edge440
  ]

if.then49.if.then71_crit_edge440:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then49.if.then71_crit_edge439:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then49.if.then71_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then49.do.body103_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103

if.end52:                                         ; preds = %if.end68.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %dec425 = phi i32 [ %dec, %if.end68.if.end52_crit_edge ], [ 5999, %if.end44.if.end52_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec425)
  %tobool54.not = icmp eq i32 %dec425, 0
  br i1 %tobool54.not, label %do.body56, label %if.end68

do.body56:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %28 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp57 = icmp eq i32 %28, 2
  br i1 %cmp57, label %do.end61, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end61:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %host_no63 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %29 = ptrtoint ptr %host_no63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_no63, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %30, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end68:                                         ; preds = %if.end52
  tail call void @msleep(i32 noundef 10) #11
  %dec = add nsw i32 %dec425, -1
  tail call void @mutex_lock_nested(ptr noundef %mbox_sem, i32 noundef 0) #11
  %31 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %ha, align 4
  %33 = and i32 %32, 4
  %tobool48.not = icmp eq i32 %33, 0
  br i1 %tobool48.not, label %if.end68.if.then49_crit_edge, label %if.end68.if.end52_crit_edge

if.end68.if.end52_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end68.if.then49_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.then71:                                        ; preds = %if.then49.if.then71_crit_edge, %if.then49.if.then71_crit_edge439, %if.then49.if.then71_crit_edge440
  %34 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %ha, align 4
  %36 = and i32 %35, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool74.not = icmp eq i32 %36, 0
  br i1 %tobool74.not, label %if.end88, label %do.body76

do.body76:                                        ; preds = %if.then71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %37 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp77 = icmp eq i32 %37, 2
  br i1 %cmp77, label %do.end81, label %do.body76.mbox_exit_crit_edge

do.body76.mbox_exit_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbox_exit

do.end81:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %host_no84 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %38 = ptrtoint ptr %host_no84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_no84, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev83, ptr noundef nonnull @.str.15, i32 noundef %39, ptr noundef nonnull @.str.1) #14
  br label %mbox_exit

if.end88:                                         ; preds = %if.then71
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %40 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %41, i32 0, i32 20
  %42 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idc_lock, align 4
  %call89 = tail call i32 %43(ptr noundef %ha) #11
  %44 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %48 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %49, i32 4
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %47(ptr noundef %ha, i32 noundef %51) #11
  %52 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %53, i32 0, i32 21
  %54 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %idc_unlock, align 4
  tail call void %55(ptr noundef %ha) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp92 = icmp eq i32 %call.i, 6
  br i1 %cmp92, label %do.end96, label %if.end88.do.body103_crit_edge

if.end88.do.body103_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i.i, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %host_no99 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %58 = ptrtoint ptr %host_no99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %host_no99, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev98, ptr noundef nonnull @.str.18, i32 noundef %59, ptr noundef nonnull @.str.1) #14
  br label %mbox_exit

do.body103:                                       ; preds = %if.end88.do.body103_crit_edge, %if.then49.do.body103_crit_edge
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #11
  %mbox_status_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 78
  %60 = ptrtoint ptr %mbox_status_count to i32
  call void @__asan_store1_noabort(i32 %60)
  store volatile i8 %outCount, ptr %mbox_status_count, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %outCount)
  %cmp114426.not = icmp eq i8 %outCount, 0
  br i1 %cmp114426.not, label %do.body103.for.end_crit_edge, label %for.body.preheader

do.body103.for.end_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %do.body103
  %wide.trip.count = zext i8 %outCount to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 79, i32 %indvars.iv
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body103.for.end_crit_edge
  %conv113.le.pre-phi = phi i32 [ 0, %do.body103.for.end_crit_edge ], [ %wide.trip.count, %for.body.for.end_crit_edge ]
  %isp_ops116 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %62 = ptrtoint ptr %isp_ops116 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %isp_ops116, align 4
  %queue_mailbox_command = getelementptr inbounds %struct.isp_operations, ptr %63, i32 0, i32 23
  %64 = ptrtoint ptr %queue_mailbox_command to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %queue_mailbox_command, align 4
  %conv117 = zext i8 %inCount to i32
  tail call void %65(ptr noundef %ha, ptr noundef nonnull %mbx_cmd, i32 noundef %conv117) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call107) #11
  br i1 %cmp114426.not, label %for.end.mbox_exit_crit_edge, label %if.end123

for.end.mbox_exit_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbox_exit

if.end123:                                        ; preds = %for.end
  %66 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i400 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %device.i.i400 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %device.i.i400, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.227)
  switch i16 %69, label %if.else.i [
    i16 -32718, label %if.end123.if.then.i_crit_edge
    i16 -32702, label %if.end123.if.then.i_crit_edge441
  ]

if.end123.if.then.i_crit_edge441:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end123.if.then.i_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end123.if.then.i_crit_edge, %if.end123.if.then.i_crit_edge441
  %71 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %ha, align 4
  %73 = and i32 %72, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i = icmp eq i32 %73, 0
  br i1 %tobool4.not.i, label %if.then.i.if.then126_crit_edge, label %land.lhs.true.i

if.then.i.if.then126_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %ha, align 4
  %76 = lshr i32 %75, 29
  %.lobit.i = and i32 %76, 1
  %77 = xor i32 %.lobit.i, 1
  br label %qla4xxx_is_intr_poll_mode.exit

if.else.i:                                        ; preds = %if.end123
  %78 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %ha, align 4
  %80 = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool11.not.i = icmp eq i32 %80, 0
  br i1 %tobool11.not.i, label %if.else.i.if.then126_crit_edge, label %land.lhs.true12.i

if.else.i.if.then126_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

land.lhs.true12.i:                                ; preds = %if.else.i
  %81 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %ha, align 4
  %83 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool15.not.i = icmp eq i32 %83, 0
  br i1 %tobool15.not.i, label %land.lhs.true12.i.if.then126_crit_edge, label %land.lhs.true16.i

land.lhs.true12.i.if.then126_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

land.lhs.true16.i:                                ; preds = %land.lhs.true12.i
  %84 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %ha, align 4
  %and1.i41.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i41.i)
  %tobool19.not.i = icmp eq i32 %and1.i41.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true16.i.if.then126_crit_edge, label %land.lhs.true20.i

land.lhs.true16.i.if.then126_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

land.lhs.true20.i:                                ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %ha, align 4
  %88 = lshr i32 %87, 12
  %.lobit48.i = and i32 %88, 1
  br label %qla4xxx_is_intr_poll_mode.exit

qla4xxx_is_intr_poll_mode.exit:                   ; preds = %land.lhs.true20.i, %land.lhs.true.i
  %rval.0.i = phi i32 [ %77, %land.lhs.true.i ], [ %.lobit48.i, %land.lhs.true20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0.i)
  %tobool125.not = icmp eq i32 %rval.0.i, 0
  br i1 %tobool125.not, label %if.else, label %qla4xxx_is_intr_poll_mode.exit.if.then126_crit_edge

qla4xxx_is_intr_poll_mode.exit.if.then126_crit_edge: ; preds = %qla4xxx_is_intr_poll_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

if.then126:                                       ; preds = %qla4xxx_is_intr_poll_mode.exit.if.then126_crit_edge, %land.lhs.true16.i.if.then126_crit_edge, %land.lhs.true12.i.if.then126_crit_edge, %if.else.i.if.then126_crit_edge, %if.then.i.if.then126_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %90 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %ha, align 4
  %92 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp130428 = icmp eq i32 %92, 0
  br i1 %cmp130428, label %while.body132.lr.ph, label %if.then126.if.end158_crit_edge

if.then126.if.end158_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

while.body132.lr.ph:                              ; preds = %if.then126
  %add.neg = sub i32 -6000, %89
  br label %while.body132

while.body132:                                    ; preds = %do.body138.while.body132_crit_edge, %while.body132.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp133 = icmp sgt i32 %sub, -1
  br i1 %cmp133, label %while.body132.if.end158_crit_edge, label %do.body138

while.body132.if.end158_crit_edge:                ; preds = %while.body132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

do.body138:                                       ; preds = %while.body132
  %call146 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #11
  %94 = ptrtoint ptr %isp_ops116 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %isp_ops116, align 4
  %process_mailbox_interrupt = getelementptr inbounds %struct.isp_operations, ptr %95, i32 0, i32 24
  %96 = ptrtoint ptr %process_mailbox_interrupt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %process_mailbox_interrupt, align 4
  tail call void %97(ptr noundef %ha, i32 noundef %conv113.le.pre-phi) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call146) #11
  tail call void @msleep(i32 noundef 10) #11
  %98 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %ha, align 4
  %100 = and i32 %99, 8
  %cmp130 = icmp eq i32 %100, 0
  br i1 %cmp130, label %do.body138.while.body132_crit_edge, label %do.body138.if.end158_crit_edge

do.body138.if.end158_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

do.body138.while.body132_crit_edge:               ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body132

if.else:                                          ; preds = %qla4xxx_is_intr_poll_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 18, ptr noundef %ha) #11
  %mbx_intr_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 112
  %call156 = tail call i32 @wait_for_completion_timeout(ptr noundef %mbx_intr_comp, i32 noundef 6000) #11
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %ha) #11
  br label %if.end158

if.end158:                                        ; preds = %if.else, %do.body138.if.end158_crit_edge, %while.body132.if.end158_crit_edge, %if.then126.if.end158_crit_edge
  %101 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %ha, align 4
  %103 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool161.not = icmp eq i32 %103, 0
  br i1 %tobool161.not, label %if.then162, label %for.body235.preheader

if.then162:                                       ; preds = %if.end158
  %104 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i402 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %device.i.i402 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %device.i.i402, align 2
  %108 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.228)
  switch i16 %107, label %if.then162.do.end186_crit_edge [
    i16 -32734, label %if.then162.land.lhs.true165_crit_edge
    i16 -32718, label %if.then162.land.lhs.true165_crit_edge442
    i16 -32702, label %if.then162.land.lhs.true165_crit_edge443
  ]

if.then162.land.lhs.true165_crit_edge443:         ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true165

if.then162.land.lhs.true165_crit_edge442:         ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true165

if.then162.land.lhs.true165_crit_edge:            ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true165

if.then162.do.end186_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end186

land.lhs.true165:                                 ; preds = %if.then162.land.lhs.true165_crit_edge, %if.then162.land.lhs.true165_crit_edge442, %if.then162.land.lhs.true165_crit_edge443
  %109 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %ha, align 4
  %111 = and i32 %110, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool168.not = icmp eq i32 %111, 0
  br i1 %tobool168.not, label %land.lhs.true165.do.end186_crit_edge, label %do.body170

land.lhs.true165.do.end186_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end186

do.body170:                                       ; preds = %land.lhs.true165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %112 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp171 = icmp eq i32 %112, 2
  br i1 %cmp171, label %do.end176, label %do.body170.mbox_exit_crit_edge

do.body170.mbox_exit_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbox_exit

do.end176:                                        ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  %dev178 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %host_no179 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %113 = ptrtoint ptr %host_no179 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %host_no179, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev178, ptr noundef nonnull @.str.15, i32 noundef %114, ptr noundef nonnull @.str.1) #14
  br label %mbox_exit

do.end186:                                        ; preds = %land.lhs.true165.do.end186_crit_edge, %if.then162.do.end186_crit_edge
  %dev188 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %host_no189 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %115 = ptrtoint ptr %host_no189 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %host_no189, align 4
  %117 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mbx_cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev188, ptr noundef nonnull @.str.24, i32 noundef %116, i32 noundef %118) #14
  %mailbox_timeout_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28
  %119 = ptrtoint ptr %mailbox_timeout_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mailbox_timeout_count, align 8
  %inc191 = add i32 %120, 1
  store i32 %inc191, ptr %mailbox_timeout_count, align 8
  %121 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %mbx_sts, align 4
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags) #11
  %122 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i.i, align 8
  %device.i408 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %device.i408 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %device.i408, align 2
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.229)
  switch i16 %125, label %do.end186.mbox_exit_crit_edge [
    i16 -32734, label %do.end198
    i16 -32718, label %do.end186.do.end210_crit_edge
    i16 -32702, label %do.end186.do.end210_crit_edge444
  ]

do.end186.do.end210_crit_edge444:                 ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end210

do.end186.do.end210_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end210

do.end186.mbox_exit_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %mbox_exit

do.end198:                                        ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #13
  %dev200 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev200, ptr noundef nonnull @.str.27) #14
  tail call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef 106954904, i32 noundef 9) #11
  br label %mbox_exit

do.end210:                                        ; preds = %do.end186.do.end210_crit_edge, %do.end186.do.end210_crit_edge444
  %dev212 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev212, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1) #14
  tail call void @qla4_83xx_disable_pause(ptr noundef %ha) #11
  br label %mbox_exit

for.body235.preheader:                            ; preds = %if.end158
  %call225 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #11
  %umax = call i8 @llvm.umax.i8(i8 %outCount, i8 1)
  %wide.trip.count433 = zext i8 %umax to i32
  br label %for.body235

for.body235:                                      ; preds = %for.body235.for.body235_crit_edge, %for.body235.preheader
  %indvars.iv431 = phi i32 [ 0, %for.body235.preheader ], [ %indvars.iv.next432, %for.body235.for.body235_crit_edge ]
  %arrayidx238 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 79, i32 %indvars.iv431
  %127 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %arrayidx238, align 4
  %arrayidx240 = getelementptr i32, ptr %mbx_sts, i32 %indvars.iv431
  %129 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx240, align 4
  %indvars.iv.next432 = add nuw nsw i32 %indvars.iv431, 1
  %exitcond434.not = icmp eq i32 %indvars.iv.next432, %wide.trip.count433
  br i1 %exitcond434.not, label %for.end243, label %for.body235.for.body235_crit_edge

for.body235.for.body235_crit_edge:                ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body235

for.end243:                                       ; preds = %for.body235
  %mbox_status244 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 79
  %130 = ptrtoint ptr %mbox_status244 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %mbox_status244, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %131, label %do.end259 [
    i32 16384, label %for.end243.sw.epilog_crit_edge
    i32 4096, label %for.end243.sw.epilog_crit_edge445
    i32 7, label %do.end250
  ]

for.end243.sw.epilog_crit_edge445:                ; preds = %for.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.end243.sw.epilog_crit_edge:                   ; preds = %for.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end250:                                        ; preds = %for.end243
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev.i.i, align 8
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %host_no253 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %135 = ptrtoint ptr %host_no253 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %host_no253, align 4
  %137 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mbx_cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev252, ptr noundef nonnull @.str.33, i32 noundef %136, ptr noundef nonnull @.str.1, i32 noundef %138) #14
  %mailbox_timeout_count255 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 28
  %139 = ptrtoint ptr %mailbox_timeout_count255 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mailbox_timeout_count255, align 8
  %inc256 = add i32 %140, 1
  store i32 %inc256, ptr %mailbox_timeout_count255, align 8
  br label %sw.epilog

do.end259:                                        ; preds = %for.end243
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pdev.i.i, align 8
  %dev261 = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %host_no262 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %143 = ptrtoint ptr %host_no262 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %host_no262, align 4
  %145 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mbx_cmd, align 4
  %147 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mbx_sts, align 4
  %arrayidx265 = getelementptr i32, ptr %mbx_sts, i32 1
  %149 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx265, align 4
  %arrayidx266 = getelementptr i32, ptr %mbx_sts, i32 2
  %151 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx266, align 4
  %arrayidx267 = getelementptr i32, ptr %mbx_sts, i32 3
  %153 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx267, align 4
  %arrayidx268 = getelementptr i32, ptr %mbx_sts, i32 4
  %155 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx268, align 4
  %arrayidx269 = getelementptr i32, ptr %mbx_sts, i32 5
  %157 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx269, align 4
  %arrayidx270 = getelementptr i32, ptr %mbx_sts, i32 6
  %159 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx270, align 4
  %arrayidx271 = getelementptr i32, ptr %mbx_sts, i32 7
  %161 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx271, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev261, ptr noundef nonnull @.str.36, i32 noundef %144, ptr noundef nonnull @.str.1, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %160, i32 noundef %162) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end259, %do.end250, %for.end243.sw.epilog_crit_edge, %for.end243.sw.epilog_crit_edge445
  %status.0 = phi i32 [ 1, %do.end259 ], [ 1, %do.end250 ], [ 0, %for.end243.sw.epilog_crit_edge ], [ 0, %for.end243.sw.epilog_crit_edge445 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call225) #11
  br label %mbox_exit

mbox_exit:                                        ; preds = %sw.epilog, %do.end210, %do.end198, %do.end186.mbox_exit_crit_edge, %do.end176, %do.body170.mbox_exit_crit_edge, %for.end.mbox_exit_crit_edge, %do.end96, %do.end81, %do.body76.mbox_exit_crit_edge
  %status.1 = phi i32 [ 1, %do.end81 ], [ 1, %do.body76.mbox_exit_crit_edge ], [ 1, %do.end96 ], [ %status.0, %sw.epilog ], [ 1, %do.end176 ], [ 1, %do.body170.mbox_exit_crit_edge ], [ 1, %do.end198 ], [ 1, %do.end210 ], [ 0, %for.end.mbox_exit_crit_edge ], [ 1, %do.end186.mbox_exit_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %mbox_sem, i32 noundef 0) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %ha) #11
  tail call void @mutex_unlock(ptr noundef %mbox_sem) #11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %ha) #11
  br label %cleanup

cleanup:                                          ; preds = %mbox_exit, %do.end61, %do.body56.cleanup_crit_edge, %do.end37, %do.body32.cleanup_crit_edge, %do.end19, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %mbox_exit ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end19 ], [ 1, %do.body14.cleanup_crit_edge ], [ 1, %do.end37 ], [ 1, %do.body32.cleanup_crit_edge ], [ 1, %do.end61 ], [ 1, %do.body56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_82xx_wr_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_disable_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_minidump_template(ptr noundef %ha, i32 noundef %phys_addr) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %mbox_cmd, i32 24
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %9 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 297, ptr %mbox_cmd, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %phys_addr, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %2, align 4
  %fw_dump_tmplt_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 110
  %13 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_dump_tmplt_size, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %4, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %17 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp13 = icmp eq i32 %17, 2
  br i1 %cmp13, label %do.end, label %do.body.if.end22_crit_edge

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %20 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no, align 4
  %22 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox_cmd, align 4
  %24 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mbox_sts, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %21, ptr noundef nonnull @.str.39, i32 noundef %23, i32 noundef %25, i32 noundef %27) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_req_template_size(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %10 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %11 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 297, ptr %mbox_cmd, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end24

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %fw_dump_tmplt_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 110
  %15 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fw_dump_tmplt_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %16 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp5 = icmp eq i32 %16, 2
  br i1 %cmp5, label %do.end, label %if.then.do.end17_crit_edge

if.then.do.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox_sts, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %6, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %20, i32 noundef %14, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.then.do.end17_crit_edge
  %33 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_dump_tmplt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp19 = icmp eq i32 %34, 0
  %spec.select = zext i1 %cmp19 to i32
  br label %if.end29

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev25 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %35 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mbox_sts, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev26, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %38, i32 noundef %40) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %do.end17
  %status.0 = phi i32 [ 1, %do.end24 ], [ %spec.select, %do.end17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_mailbox_premature_completion(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 19, ptr noundef %ha) #11
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %3, ptr noundef nonnull @.str.46) #14
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ha, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ha, align 4
  %9 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mbx_intr_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 112
  tail call void @complete(ptr noundef %mbx_intr_comp) #11
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %ha) #11
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else, %if.then5
  %.str.48.sink = phi ptr [ @.str.48, %if.then5 ], [ @.str.51, %if.else ]
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev9, ptr noundef nonnull %.str.48.sink, i32 noundef %13, ptr noundef nonnull @.str.46) #14
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @qla4xxx_get_ifcb(ptr noundef %ha, ptr noundef %mbox_cmd, ptr noundef %mbox_sts, i32 noundef %init_fw_cb_dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 97, ptr %mbox_cmd, align 4
  %arrayidx2 = getelementptr i32, ptr %mbox_cmd, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %init_fw_cb_dma, ptr %arrayidx2, align 4
  %arrayidx6 = getelementptr i32, ptr %mbox_cmd, i32 3
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %mbox_cmd, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 768, ptr %arrayidx7, align 4
  %call = tail call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef %mbox_cmd, ptr noundef %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp9 = icmp eq i32 %7, 2
  br i1 %cmp9, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %10 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_sts, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %9, ptr noundef nonnull @.str.54, i32 noundef %11) #14
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %do.body.return_crit_edge ], [ 1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @qla4xxx_set_ipaddr_state(i8 noundef zeroext %fw_ipaddr_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %fw_ipaddr_state, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.qla4xxx_set_ipaddr_state, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %ipaddr_state.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %ipaddr_state.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @qla4xxx_update_local_ifcb(ptr noundef %ha, ptr noundef %mbox_cmd, ptr noundef %mbox_sts, ptr noundef %init_fw_cb, i32 noundef %init_fw_cb_dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 97, ptr %mbox_cmd, align 4
  %arrayidx2.i = getelementptr i32, ptr %mbox_cmd, i32 2
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %init_fw_cb_dma, ptr %arrayidx2.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %mbox_cmd, i32 3
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %mbox_cmd, i32 4
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 768, ptr %arrayidx7.i, align 4
  %call.i = tail call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef %mbox_cmd, ptr noundef %mbox_sts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp10 = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %do.body9, label %do.body.i

do.body.i:                                        ; preds = %entry
  br i1 %cmp10, label %do.body, label %do.body.i.return_crit_edge

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %do.body.i
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %8 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no.i, align 4
  %10 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_sts, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %9, ptr noundef nonnull @.str.54, i32 noundef %11) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp2 = icmp eq i32 %.pr, 2
  br i1 %cmp2, label %do.end, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no.i, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %13, ptr noundef nonnull @.str.56) #14
  br label %return

do.body9:                                         ; preds = %entry
  br i1 %cmp10, label %if.then12, label %do.body9.do.end14_crit_edge

do.body9.do.end14_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @qla4xxx_dump_buffer(ptr noundef %init_fw_cb, i32 noundef 768) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %do.body9.do.end14_crit_edge
  %acb_version = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 27
  %14 = ptrtoint ptr %acb_version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %acb_version, align 2
  %acb_version15 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 82
  %16 = ptrtoint ptr %acb_version15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %acb_version15, align 8
  %fw_options = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 2
  %17 = ptrtoint ptr %fw_options to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fw_options, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %firmware_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 36
  %20 = ptrtoint ptr %firmware_options to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %firmware_options, align 4
  %hb_interval = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 8
  %21 = ptrtoint ptr %hb_interval to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hb_interval, align 4
  %heartbeat_interval = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 39
  %23 = ptrtoint ptr %heartbeat_interval to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %heartbeat_interval, align 2
  %name_string = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 38
  %iscsi_name = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 64
  %24 = call ptr @memcpy(ptr %name_string, ptr %iscsi_name, i32 224)
  %def_timeout = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 29
  %25 = ptrtoint ptr %def_timeout to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %def_timeout, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %def_timeout17 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 120
  %28 = ptrtoint ptr %def_timeout17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %def_timeout17, align 4
  tail call fastcc void @qla4xxx_update_local_ip(ptr noundef %ha, ptr noundef %init_fw_cb)
  br label %return

return:                                           ; preds = %do.end14, %do.end, %do.body.return_crit_edge, %do.body.i.return_crit_edge
  %retval.0 = phi i8 [ 0, %do.end14 ], [ 1, %do.body.return_crit_edge ], [ 1, %do.end ], [ 1, %do.body.i.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_dump_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qla4xxx_update_local_ip(ptr noundef %ha, ptr noundef readonly %init_fw_cb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ipv4_tcp_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 22
  %0 = ptrtoint ptr %ipv4_tcp_opts to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ipv4_tcp_opts, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %ip_config = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113
  %tcp_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 1
  %3 = ptrtoint ptr %tcp_options to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %tcp_options, align 2
  %ipv4_ip_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 23
  %4 = ptrtoint ptr %ipv4_ip_opts to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ipv4_ip_opts, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %ip_config to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %ip_config, align 4
  %ipv4_addr_state = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 40
  %8 = ptrtoint ptr %ipv4_addr_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ipv4_addr_state, align 2
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 6
  br i1 %10, label %switch.lookup, label %entry.qla4xxx_set_ipaddr_state.exit_crit_edge

entry.qla4xxx_set_ipaddr_state.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_ipaddr_state.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.qla4xxx_update_local_ip, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %qla4xxx_set_ipaddr_state.exit

qla4xxx_set_ipaddr_state.exit:                    ; preds = %switch.lookup, %entry.qla4xxx_set_ipaddr_state.exit_crit_edge
  %ipaddr_state.0.i = phi i8 [ 0, %entry.qla4xxx_set_ipaddr_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %ipv4_addr_state3 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 3
  %13 = ptrtoint ptr %ipv4_addr_state3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %ipaddr_state.0.i, ptr %ipv4_addr_state3, align 2
  %eth_mtu_size = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 6
  %14 = ptrtoint ptr %eth_mtu_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %eth_mtu_size, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %eth_mtu_size5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 18
  %17 = ptrtoint ptr %eth_mtu_size5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %eth_mtu_size5, align 4
  %ipv4_port = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 35
  %18 = ptrtoint ptr %ipv4_port to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ipv4_port, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %ipv4_port7 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 19
  %21 = ptrtoint ptr %ipv4_port7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %ipv4_port7, align 2
  %acb_version = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 82
  %22 = ptrtoint ptr %acb_version to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %acb_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp = icmp eq i8 %23, 2
  br i1 %cmp, label %if.then, label %qla4xxx_set_ipaddr_state.exit.if.end_crit_edge

qla4xxx_set_ipaddr_state.exit.if.end_crit_edge:   ; preds = %qla4xxx_set_ipaddr_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %qla4xxx_set_ipaddr_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ipv6_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 68
  %24 = ptrtoint ptr %ipv6_opts to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ipv6_opts, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv9 = zext i16 %26 to i32
  %ipv6_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 7
  %27 = ptrtoint ptr %ipv6_options to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv9, ptr %ipv6_options, align 4
  %ipv6_addtl_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 69
  %28 = ptrtoint ptr %ipv6_addtl_opts to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ipv6_addtl_opts, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv11 = zext i16 %30 to i32
  %ipv6_addl_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 8
  %31 = ptrtoint ptr %ipv6_addl_options to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv11, ptr %ipv6_addl_options, align 4
  %ipv6_tcp_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 70
  %32 = ptrtoint ptr %ipv6_tcp_opts to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ipv6_tcp_opts, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %ipv6_tcp_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 22
  %35 = ptrtoint ptr %ipv6_tcp_options to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %ipv6_tcp_options, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %qla4xxx_set_ipaddr_state.exit.if.end_crit_edge
  %ip_address = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 4
  %ipv4_addr = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 38
  %36 = ptrtoint ptr %ipv4_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ipv4_addr, align 4
  %38 = ptrtoint ptr %ip_address to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %ip_address, align 1
  %subnet_mask = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 5
  %ipv4_subnet = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 43
  %39 = ptrtoint ptr %ipv4_subnet to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ipv4_subnet, align 4
  %41 = ptrtoint ptr %subnet_mask to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %subnet_mask, align 1
  %gateway = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 6
  %ipv4_gw_addr = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 45
  %42 = ptrtoint ptr %ipv4_gw_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ipv4_gw_addr, align 4
  %44 = ptrtoint ptr %gateway to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %gateway, align 1
  %ipv4_vlan_tag = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 39
  %45 = ptrtoint ptr %ipv4_vlan_tag to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ipv4_vlan_tag, align 4
  %ipv4_vlan_tag23 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 2
  %47 = ptrtoint ptr %ipv4_vlan_tag23 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %ipv4_vlan_tag23, align 4
  %control = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 1
  %48 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %control, align 1
  %control25 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 21
  %50 = ptrtoint ptr %control25 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %control25, align 2
  %ipv4_tcp_wsf = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 56
  %51 = ptrtoint ptr %ipv4_tcp_wsf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ipv4_tcp_wsf, align 1
  %tcp_wsf = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 23
  %53 = ptrtoint ptr %tcp_wsf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tcp_wsf, align 2
  %ipv4_tos = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 25
  %54 = ptrtoint ptr %ipv4_tos to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ipv4_tos, align 4
  %ipv4_tos28 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 25
  %56 = ptrtoint ptr %ipv4_tos28 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ipv4_tos28, align 4
  %ipv4_cacheid = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 41
  %57 = ptrtoint ptr %ipv4_cacheid to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ipv4_cacheid, align 1
  %ipv4_cache_id = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 26
  %59 = ptrtoint ptr %ipv4_cache_id to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ipv4_cache_id, align 1
  %ipv4_dhcp_alt_cid_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 62
  %60 = ptrtoint ptr %ipv4_dhcp_alt_cid_len to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ipv4_dhcp_alt_cid_len, align 4
  %ipv4_alt_cid_len = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 28
  %62 = ptrtoint ptr %ipv4_alt_cid_len to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ipv4_alt_cid_len, align 1
  %ipv4_alt_cid = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 29
  %ipv4_dhcp_alt_cid = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 63
  %63 = call ptr @memcpy(ptr %ipv4_alt_cid, ptr %ipv4_dhcp_alt_cid, i32 11)
  %ipv4_dhcp_vid_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 59
  %64 = ptrtoint ptr %ipv4_dhcp_vid_len to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ipv4_dhcp_vid_len, align 4
  %ipv4_vid_len = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 30
  %66 = ptrtoint ptr %ipv4_vid_len to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %ipv4_vid_len, align 1
  %ipv4_vid = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 31
  %ipv4_dhcp_vid = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 60
  %67 = call ptr @memcpy(ptr %ipv4_vid, ptr %ipv4_dhcp_vid, i32 11)
  %ipv4_ttl = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 26
  %68 = ptrtoint ptr %ipv4_ttl to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ipv4_ttl, align 1
  %ipv4_ttl39 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 32
  %70 = ptrtoint ptr %ipv4_ttl39 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %ipv4_ttl39, align 1
  %def_timeout = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 29
  %71 = ptrtoint ptr %def_timeout to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %def_timeout, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %def_timeout41 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 41
  %74 = ptrtoint ptr %def_timeout41 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %def_timeout41, align 4
  %abort_timer = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 55
  %75 = ptrtoint ptr %abort_timer to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %abort_timer, align 4
  %abort_timer43 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 42
  %77 = ptrtoint ptr %abort_timer43 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %abort_timer43, align 2
  %iscsi_opts = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 21
  %78 = ptrtoint ptr %iscsi_opts to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %iscsi_opts, align 4
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %iscsi_options = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 43
  %81 = ptrtoint ptr %iscsi_options to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %iscsi_options, align 4
  %iscsi_max_pdu_size = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 24
  %82 = ptrtoint ptr %iscsi_max_pdu_size to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %iscsi_max_pdu_size, align 2
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %iscsi_max_pdu_size46 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 44
  %85 = ptrtoint ptr %iscsi_max_pdu_size46 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %iscsi_max_pdu_size46, align 2
  %iscsi_fburst_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 30
  %86 = ptrtoint ptr %iscsi_fburst_len to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %iscsi_fburst_len, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %iscsi_first_burst_len = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 45
  %89 = ptrtoint ptr %iscsi_first_burst_len to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %iscsi_first_burst_len, align 4
  %iscsi_max_outstnd_r2t = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 33
  %90 = ptrtoint ptr %iscsi_max_outstnd_r2t to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %iscsi_max_outstnd_r2t, align 4
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %iscsi_max_outstnd_r2t49 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 46
  %93 = ptrtoint ptr %iscsi_max_outstnd_r2t49 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %iscsi_max_outstnd_r2t49, align 2
  %iscsi_max_burst_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 36
  %94 = ptrtoint ptr %iscsi_max_burst_len to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %iscsi_max_burst_len, align 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %iscsi_max_burst_len51 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 47
  %97 = ptrtoint ptr %iscsi_max_burst_len51 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %iscsi_max_burst_len51, align 4
  %iscsi_name = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 48
  %iscsi_name54 = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 64
  %98 = call ptr @memcpy(ptr %iscsi_name, ptr %iscsi_name54, i32 224)
  %ipv6_options.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 7
  %99 = ptrtoint ptr %ipv6_options.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ipv6_options.i, align 4
  %101 = and i32 %100, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not = icmp eq i32 %101, 0
  br i1 %tobool.not, label %if.end.if.end122_crit_edge, label %if.then57

if.end.if.end122_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then57:                                        ; preds = %if.end
  %ipv6_lnk_lcl_addr_state = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 75
  %102 = ptrtoint ptr %ipv6_lnk_lcl_addr_state to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ipv6_lnk_lcl_addr_state, align 2
  %switch.tableidx249 = add i8 %103, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx249)
  %104 = icmp ult i8 %switch.tableidx249, 6
  br i1 %104, label %switch.lookup248, label %if.then57.qla4xxx_set_ipaddr_state.exit231_crit_edge

if.then57.qla4xxx_set_ipaddr_state.exit231_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_ipaddr_state.exit231

switch.lookup248:                                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %105 = sext i8 %switch.tableidx249 to i32
  %switch.gep250 = getelementptr inbounds [6 x i8], ptr @switch.table.qla4xxx_update_local_ip.223, i32 0, i32 %105
  %106 = ptrtoint ptr %switch.gep250 to i32
  call void @__asan_load1_noabort(i32 %106)
  %switch.load251 = load i8, ptr %switch.gep250, align 1
  br label %qla4xxx_set_ipaddr_state.exit231

qla4xxx_set_ipaddr_state.exit231:                 ; preds = %switch.lookup248, %if.then57.qla4xxx_set_ipaddr_state.exit231_crit_edge
  %ipaddr_state.0.i230 = phi i8 [ 0, %if.then57.qla4xxx_set_ipaddr_state.exit231_crit_edge ], [ %switch.load251, %switch.lookup248 ]
  %ipv6_link_local_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 9
  %107 = ptrtoint ptr %ipv6_link_local_state to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %ipaddr_state.0.i230, ptr %ipv6_link_local_state, align 4
  %ipv6_addr0_state = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 76
  %108 = ptrtoint ptr %ipv6_addr0_state to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ipv6_addr0_state, align 1
  %switch.tableidx253 = add i8 %109, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx253)
  %110 = icmp ult i8 %switch.tableidx253, 6
  br i1 %110, label %switch.lookup252, label %qla4xxx_set_ipaddr_state.exit231.qla4xxx_set_ipaddr_state.exit239_crit_edge

qla4xxx_set_ipaddr_state.exit231.qla4xxx_set_ipaddr_state.exit239_crit_edge: ; preds = %qla4xxx_set_ipaddr_state.exit231
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_ipaddr_state.exit239

switch.lookup252:                                 ; preds = %qla4xxx_set_ipaddr_state.exit231
  call void @__sanitizer_cov_trace_pc() #13
  %111 = sext i8 %switch.tableidx253 to i32
  %switch.gep254 = getelementptr inbounds [6 x i8], ptr @switch.table.qla4xxx_update_local_ip.224, i32 0, i32 %111
  %112 = ptrtoint ptr %switch.gep254 to i32
  call void @__asan_load1_noabort(i32 %112)
  %switch.load255 = load i8, ptr %switch.gep254, align 1
  br label %qla4xxx_set_ipaddr_state.exit239

qla4xxx_set_ipaddr_state.exit239:                 ; preds = %switch.lookup252, %qla4xxx_set_ipaddr_state.exit231.qla4xxx_set_ipaddr_state.exit239_crit_edge
  %ipaddr_state.0.i238 = phi i8 [ 0, %qla4xxx_set_ipaddr_state.exit231.qla4xxx_set_ipaddr_state.exit239_crit_edge ], [ %switch.load255, %switch.lookup252 ]
  %ipv6_addr0_state62 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 10
  %113 = ptrtoint ptr %ipv6_addr0_state62 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %ipaddr_state.0.i238, ptr %ipv6_addr0_state62, align 1
  %ipv6_addr1_state = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 77
  %114 = ptrtoint ptr %ipv6_addr1_state to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ipv6_addr1_state, align 4
  %switch.tableidx257 = add i8 %115, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx257)
  %116 = icmp ult i8 %switch.tableidx257, 6
  br i1 %116, label %switch.lookup256, label %qla4xxx_set_ipaddr_state.exit239.qla4xxx_set_ipaddr_state.exit247_crit_edge

qla4xxx_set_ipaddr_state.exit239.qla4xxx_set_ipaddr_state.exit247_crit_edge: ; preds = %qla4xxx_set_ipaddr_state.exit239
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_ipaddr_state.exit247

switch.lookup256:                                 ; preds = %qla4xxx_set_ipaddr_state.exit239
  call void @__sanitizer_cov_trace_pc() #13
  %117 = sext i8 %switch.tableidx257 to i32
  %switch.gep258 = getelementptr inbounds [6 x i8], ptr @switch.table.qla4xxx_update_local_ip.225, i32 0, i32 %117
  %118 = ptrtoint ptr %switch.gep258 to i32
  call void @__asan_load1_noabort(i32 %118)
  %switch.load259 = load i8, ptr %switch.gep258, align 1
  br label %qla4xxx_set_ipaddr_state.exit247

qla4xxx_set_ipaddr_state.exit247:                 ; preds = %switch.lookup256, %qla4xxx_set_ipaddr_state.exit239.qla4xxx_set_ipaddr_state.exit247_crit_edge
  %ipaddr_state.0.i246 = phi i8 [ 0, %qla4xxx_set_ipaddr_state.exit239.qla4xxx_set_ipaddr_state.exit247_crit_edge ], [ %switch.load259, %switch.lookup256 ]
  %ipv6_addr1_state65 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 11
  %119 = ptrtoint ptr %ipv6_addr1_state65 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %ipaddr_state.0.i246, ptr %ipv6_addr1_state65, align 2
  %120 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 12
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %120, align 1
  %ipv6_link_local_addr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 14
  %122 = ptrtoint ptr %ipv6_link_local_addr to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -2, ptr %ipv6_link_local_addr, align 4
  %arrayidx84 = getelementptr [16 x i8], ptr %ipv6_link_local_addr, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -128, ptr %arrayidx84, align 1
  %arrayidx88 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 14, i32 0, i32 0, i32 2
  %ipv6_if_id = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 81
  %124 = ptrtoint ptr %ipv6_if_id to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %ipv6_if_id, align 4
  %126 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %125, ptr %arrayidx88, align 4
  %ipv6_addr0 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 15
  %ipv6_addr091 = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 82
  %127 = call ptr @memcpy(ptr %ipv6_addr0, ptr %ipv6_addr091, i32 16)
  %ipv6_addr1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 16
  %ipv6_addr194 = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 83
  %128 = call ptr @memcpy(ptr %ipv6_addr1, ptr %ipv6_addr194, i32 16)
  %ipv6_default_router_addr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17
  %ipv6_dflt_rtr_addr = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 73
  %129 = call ptr @memcpy(ptr %ipv6_default_router_addr, ptr %ipv6_dflt_rtr_addr, i32 16)
  %ipv6_vlan_tag = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 74
  %130 = ptrtoint ptr %ipv6_vlan_tag to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %ipv6_vlan_tag, align 4
  %ipv6_vlan_tag99 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 13
  %132 = ptrtoint ptr %ipv6_vlan_tag99 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %ipv6_vlan_tag99, align 4
  %ipv6_port = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 67
  %133 = ptrtoint ptr %ipv6_port to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %ipv6_port, align 4
  %135 = tail call i16 @llvm.bswap.i16(i16 %134)
  %ipv6_port101 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 20
  %136 = ptrtoint ptr %ipv6_port101 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %ipv6_port101, align 4
  %ipv6_cache_id = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 88
  %137 = ptrtoint ptr %ipv6_cache_id to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ipv6_cache_id, align 1
  %ipv6_cache_id103 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 27
  %139 = ptrtoint ptr %ipv6_cache_id103 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %ipv6_cache_id103, align 2
  %ipv6_flow_lbl = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 72
  %140 = ptrtoint ptr %ipv6_flow_lbl to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ipv6_flow_lbl, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %141)
  %ipv6_flow_lbl105 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 33
  %143 = ptrtoint ptr %ipv6_flow_lbl105 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %ipv6_flow_lbl105, align 4
  %ipv6_traffic_class = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 79
  %144 = ptrtoint ptr %ipv6_traffic_class to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ipv6_traffic_class, align 2
  %ipv6_traffic_class107 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 34
  %146 = ptrtoint ptr %ipv6_traffic_class107 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %ipv6_traffic_class107, align 2
  %ipv6_hop_limit = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 80
  %147 = ptrtoint ptr %ipv6_hop_limit to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ipv6_hop_limit, align 1
  %ipv6_hop_limit109 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 35
  %149 = ptrtoint ptr %ipv6_hop_limit109 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %ipv6_hop_limit109, align 1
  %ipv6_nd_reach_time = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 84
  %150 = ptrtoint ptr %ipv6_nd_reach_time to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ipv6_nd_reach_time, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  %ipv6_nd_reach_time111 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 36
  %153 = ptrtoint ptr %ipv6_nd_reach_time111 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ipv6_nd_reach_time111, align 4
  %ipv6_nd_rexmit_timer = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 85
  %154 = ptrtoint ptr %ipv6_nd_rexmit_timer to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ipv6_nd_rexmit_timer, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155)
  %ipv6_nd_rexmit_timer113 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 37
  %157 = ptrtoint ptr %ipv6_nd_rexmit_timer113 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %ipv6_nd_rexmit_timer113, align 4
  %ipv6_nd_stale_timeout = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 86
  %158 = ptrtoint ptr %ipv6_nd_stale_timeout to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ipv6_nd_stale_timeout, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  %ipv6_nd_stale_timeout115 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 38
  %161 = ptrtoint ptr %ipv6_nd_stale_timeout115 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %ipv6_nd_stale_timeout115, align 4
  %ipv6_dup_addr_detect_count = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 87
  %162 = ptrtoint ptr %ipv6_dup_addr_detect_count to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ipv6_dup_addr_detect_count, align 4
  %ipv6_dup_addr_detect_count117 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 39
  %164 = ptrtoint ptr %ipv6_dup_addr_detect_count117 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %ipv6_dup_addr_detect_count117, align 4
  %ipv6_gw_advrt_mtu = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 90
  %165 = ptrtoint ptr %ipv6_gw_advrt_mtu to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ipv6_gw_advrt_mtu, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166)
  %ipv6_gw_advrt_mtu119 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 40
  %168 = ptrtoint ptr %ipv6_gw_advrt_mtu119 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %ipv6_gw_advrt_mtu119, align 4
  %ipv6_tcp_wsf = getelementptr inbounds %struct.addr_ctrl_blk, ptr %init_fw_cb, i32 0, i32 71
  %169 = ptrtoint ptr %ipv6_tcp_wsf to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ipv6_tcp_wsf, align 4
  %ipv6_tcp_wsf121 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 24
  %171 = ptrtoint ptr %ipv6_tcp_wsf121 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %ipv6_tcp_wsf121, align 1
  br label %if.end122

if.end122:                                        ; preds = %qla4xxx_set_ipaddr_state.exit247, %if.end.if.end122_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_initialize_fw_cb(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %init_fw_cb_dma = alloca i32, align 4
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_fw_cb_dma) #11
  %0 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %init_fw_cb_dma, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 768, ptr noundef nonnull %init_fw_cb_dma, i32 noundef 3264, i32 noundef 0) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %do.end, label %do.body.exit_init_fw_cb_no_free_crit_edge

do.body.exit_init_fw_cb_no_free_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb_no_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %9, ptr noundef nonnull @.str.58) #14
  br label %exit_init_fw_cb_no_free

if.end7:                                          ; preds = %entry
  %10 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_fw_cb_dma, align 4
  %12 = call ptr @memset(ptr %1, i32 0, i32 28)
  %13 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %14 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 97, ptr %mbox_cmd, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %2, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 768, ptr %4, align 4
  %call.i132 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.not.i = icmp eq i32 %call.i132, 0
  br i1 %cmp.not.i, label %if.end13, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %17 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp9.i = icmp eq i32 %17, 2
  br i1 %cmp9.i, label %do.end.i, label %do.body.i.exit_init_fw_cb_crit_edge

do.body.i.exit_init_fw_cb_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %18 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no.i, align 4
  %20 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbox_sts, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %19, ptr noundef nonnull @.str.54, i32 noundef %21) #14
  br label %exit_init_fw_cb

if.end13:                                         ; preds = %if.end7
  %request_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 69
  %22 = ptrtoint ptr %request_out to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %request_out, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %rqq_consumer_idx = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %rqq_consumer_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %rqq_consumer_idx, align 4
  %response_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 70
  %26 = ptrtoint ptr %response_in to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %response_in, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %compq_producer_idx = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %compq_producer_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %compq_producer_idx, align 2
  %rqq_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 13
  %30 = ptrtoint ptr %rqq_len to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4, ptr %rqq_len, align 4
  %compq_len = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %compq_len to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16384, ptr %compq_len, align 2
  %request_dma = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 60
  %32 = ptrtoint ptr %request_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %request_dma, align 16
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %rqq_addr_lo = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 15
  %35 = ptrtoint ptr %rqq_addr_lo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rqq_addr_lo, align 4
  %rqq_addr_hi = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 16
  %36 = ptrtoint ptr %rqq_addr_hi to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rqq_addr_hi, align 4
  %response_dma = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 63
  %37 = ptrtoint ptr %response_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %response_dma, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %compq_addr_lo = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 17
  %40 = ptrtoint ptr %compq_addr_lo to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %compq_addr_lo, align 4
  %compq_addr_hi = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 18
  %41 = ptrtoint ptr %compq_addr_hi to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %compq_addr_hi, align 4
  %shadow_regs_dma = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 66
  %42 = ptrtoint ptr %shadow_regs_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %shadow_regs_dma, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %shdwreg_addr_lo = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 19
  %45 = ptrtoint ptr %shdwreg_addr_lo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %shdwreg_addr_lo, align 4
  %shdwreg_addr_hi = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 20
  %46 = ptrtoint ptr %shdwreg_addr_hi to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %shdwreg_addr_hi, align 4
  %fw_options = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %fw_options to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %fw_options, align 2
  %49 = or i16 %48, 24576
  store i16 %49, ptr %fw_options, align 2
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device.i.i, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.231)
  switch i16 %53, label %if.end13.if.end42_crit_edge [
    i16 -32734, label %if.end13.if.then37_crit_edge
    i16 -32718, label %if.end13.if.then37_crit_edge147
    i16 -32702, label %if.end13.if.then37_crit_edge148
  ]

if.end13.if.then37_crit_edge148:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end13.if.then37_crit_edge147:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end13.if.then37_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.end13.if.then37_crit_edge, %if.end13.if.then37_crit_edge147, %if.end13.if.then37_crit_edge148
  %55 = or i16 %48, 24704
  %56 = ptrtoint ptr %fw_options to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %fw_options, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end13.if.end42_crit_edge
  %57 = ptrtoint ptr %fw_options to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_options, align 2
  %59 = and i16 %58, -4097
  store i16 %59, ptr %fw_options, align 2
  %add_fw_options = getelementptr inbounds %struct.addr_ctrl_blk, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %add_fw_options to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 516, ptr %add_fw_options, align 2
  %61 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %init_fw_cb_dma, align 4
  %63 = call ptr @memset(ptr %mbox_cmd, i32 0, i32 32)
  %64 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %65 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev, align 8
  %device.i.i134 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %device.i.i134 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device.i.i134, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %68)
  %cmp.i.not.i = icmp eq i16 %68, -32734
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end42.if.end.i_crit_edge

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %nx_db_wr_ptr.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 86
  %69 = ptrtoint ptr %nx_db_wr_ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nx_db_wr_ptr.i, align 8
  call void @qla4_82xx_wr_32(ptr noundef %ha, i32 noundef %70, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end42.if.end.i_crit_edge
  %71 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 96, ptr %mbox_cmd, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %1, align 4
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %62, ptr %2, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %3, align 4
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 768, ptr %4, align 4
  %call9.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 6, i8 noundef zeroext 6, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.not.i136 = icmp eq i32 %call9.i, 0
  br i1 %cmp.not.i136, label %if.end74, label %do.body.i137

do.body.i137:                                     ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %76 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp12.i = icmp eq i32 %76, 2
  br i1 %cmp12.i, label %do.body61, label %do.body.i137.exit_init_fw_cb_crit_edge

do.body.i137.exit_init_fw_cb_crit_edge:           ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb

do.body61:                                        ; preds = %do.body.i137
  %host_no.i138 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %77 = ptrtoint ptr %host_no.i138 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %host_no.i138, align 4
  %79 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mbox_sts, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, i32 noundef %78, ptr noundef nonnull @.str.218, i32 noundef %80) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp62 = icmp eq i32 %.pr, 2
  br i1 %cmp62, label %do.end67, label %do.body61.exit_init_fw_cb_crit_edge

do.body61.exit_init_fw_cb_crit_edge:              ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %host_no.i138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %host_no.i138, align 4
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %82, ptr noundef nonnull @.str.58) #14
  br label %exit_init_fw_cb

if.end74:                                         ; preds = %if.end.i
  %83 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %init_fw_cb_dma, align 4
  %call77 = call zeroext i8 @qla4xxx_update_local_ifcb(ptr noundef %ha, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts, ptr noundef nonnull %call.i, i32 noundef %84)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call77)
  %cmp79.not = icmp eq i8 %call77, 0
  br i1 %cmp79.not, label %if.end74.exit_init_fw_cb_crit_edge, label %do.body82

if.end74.exit_init_fw_cb_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb

do.body82:                                        ; preds = %if.end74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %85 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp83 = icmp eq i32 %85, 2
  br i1 %cmp83, label %do.end88, label %do.body82.exit_init_fw_cb_crit_edge

do.body82.exit_init_fw_cb_crit_edge:              ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_init_fw_cb

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  %host_no90 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %86 = ptrtoint ptr %host_no90 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %host_no90, align 4
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %87, ptr noundef nonnull @.str.58) #14
  br label %exit_init_fw_cb

exit_init_fw_cb:                                  ; preds = %do.end88, %do.body82.exit_init_fw_cb_crit_edge, %if.end74.exit_init_fw_cb_crit_edge, %do.end67, %do.body61.exit_init_fw_cb_crit_edge, %do.body.i137.exit_init_fw_cb_crit_edge, %do.end.i, %do.body.i.exit_init_fw_cb_crit_edge
  %status.0 = phi i32 [ 1, %do.end67 ], [ 1, %do.body61.exit_init_fw_cb_crit_edge ], [ 1, %do.end88 ], [ 1, %do.body82.exit_init_fw_cb_crit_edge ], [ 0, %if.end74.exit_init_fw_cb_crit_edge ], [ 1, %do.body.i.exit_init_fw_cb_crit_edge ], [ 1, %do.end.i ], [ 1, %do.body.i137.exit_init_fw_cb_crit_edge ]
  %88 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev, align 8
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %init_fw_cb_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev97, i32 noundef 768, ptr noundef nonnull %call.i, i32 noundef %91, i32 noundef 0) #11
  br label %exit_init_fw_cb_no_free

exit_init_fw_cb_no_free:                          ; preds = %exit_init_fw_cb, %do.end, %do.body.exit_init_fw_cb_no_free_crit_edge
  %status.1 = phi i32 [ 1, %do.end ], [ 1, %do.body.exit_init_fw_cb_no_free_crit_edge ], [ %status.0, %exit_init_fw_cb ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_fw_cb_dma) #11
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_dhcp_ip_address(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %init_fw_cb_dma = alloca i32, align 4
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_fw_cb_dma) #11
  %0 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %init_fw_cb_dma, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 768, ptr noundef nonnull %init_fw_cb_dma, i32 noundef 3264, i32 noundef 0) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %4, ptr noundef nonnull @.str.65) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %8 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_fw_cb_dma, align 4
  %10 = call ptr @memset(ptr %7, i32 0, i32 28)
  %11 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %12 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 97, ptr %mbox_cmd, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %6, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 768, ptr %5, align 4
  %call.i37 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.not.i = icmp eq i32 %call.i37, 0
  br i1 %cmp.not.i, label %if.end22, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %15 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp9.i = icmp eq i32 %15, 2
  br i1 %cmp9.i, label %do.body7, label %do.body.i.do.end19_crit_edge

do.body.i.do.end19_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body7:                                         ; preds = %do.body.i
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %16 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no.i, align 4
  %18 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_sts, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %17, ptr noundef nonnull @.str.54, i32 noundef %19) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp8 = icmp eq i32 %.pr, 2
  br i1 %cmp8, label %do.end13, label %do.body7.do.end19_crit_edge

do.body7.do.end19_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no.i, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %21, ptr noundef nonnull @.str.65) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end13, %do.body7.do.end19_crit_edge, %do.body.i.do.end19_crit_edge
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %init_fw_cb_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev21, i32 noundef 768, ptr noundef nonnull %call.i, i32 noundef %25, i32 noundef 0) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qla4xxx_update_local_ip(ptr noundef %ha, ptr noundef nonnull %call.i)
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %init_fw_cb_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %init_fw_cb_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev24, i32 noundef 768, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end19 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_fw_cb_dma) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_firmware_state(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 105, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 4, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %4 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %7 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox_sts, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %6, ptr noundef nonnull @.str.70, i32 noundef %8) #14
  br label %cleanup

if.end10:                                         ; preds = %entry
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %firmware_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 43
  %14 = ptrtoint ptr %firmware_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %firmware_state, align 8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %board_id = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 35
  %17 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %board_id, align 8
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  %addl_fw_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 44
  %20 = ptrtoint ptr %addl_fw_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %addl_fw_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %21 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp15 = icmp eq i32 %21, 2
  br i1 %cmp15, label %do.end19, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %host_no21 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %22 = ptrtoint ptr %host_no21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no21, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %23, ptr noundef nonnull @.str.70, i32 noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_firmware_status(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 31, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %4 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %7 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox_sts, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %6, ptr noundef nonnull @.str.75, i32 noundef %8) #14
  br label %cleanup

if.end10:                                         ; preds = %entry
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %conv = trunc i32 %11 to i16
  %iocb_hiwat = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 5
  %12 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %iocb_hiwat, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13 = icmp eq i32 %13, 2
  br i1 %cmp13, label %do.end18, label %if.end10.do.end23_crit_edge

if.end10.do.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv20 = and i32 %11, 65535
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %conv20) #14
  %16 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_load2_noabort(i32 %16)
  %.pr = load i16, ptr %iocb_hiwat, align 2
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %if.end10.do.end23_crit_edge
  %17 = phi i16 [ %.pr, %do.end18 ], [ %conv, %if.end10.do.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp26 = icmp ugt i16 %17, 4
  br i1 %cmp26, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i16 %17, -4
  %18 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %sub, ptr %iocb_hiwat, align 2
  br label %cleanup

if.end32:                                         ; preds = %do.end23
  %19 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_load2_noabort(i32 %19)
  %.pr65 = load i16, ptr %iocb_hiwat, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr65)
  %cmp35 = icmp eq i16 %.pr65, 0
  br i1 %cmp35, label %if.then37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  %20 = ptrtoint ptr %iocb_hiwat to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %iocb_hiwat, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %21 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp40 = icmp eq i32 %21, 2
  br i1 %cmp40, label %do.end45, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %pdev46 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %22 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev46, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev47, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75, i32 noundef 256) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end32.thread, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end32.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_fwddb_entry(ptr noundef %ha, i16 noundef zeroext %fw_ddb_index, ptr noundef %fw_ddb_entry, i32 noundef %fw_ddb_entry_dma, ptr noundef writeonly %num_valid_ddb_entries, ptr noundef writeonly %next_ddb_index, ptr noundef writeonly %fw_ddb_device_state, ptr noundef writeonly %conn_err_detail, ptr noundef writeonly %tcp_source_port_num, ptr noundef writeonly %connection_id) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 6
  %conv = zext i16 %fw_ddb_index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %fw_ddb_index)
  %cmp = icmp ugt i16 %fw_ddb_index, 511
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %10 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2 = icmp eq i32 %10, 2
  br i1 %cmp2, label %do.end, label %do.body.exit_get_fwddb_crit_edge

do.body.exit_get_fwddb_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_get_fwddb

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %11 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %12, ptr noundef nonnull @.str.83, i32 noundef %conv) #14
  br label %exit_get_fwddb

if.end9:                                          ; preds = %entry
  %13 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %14 = call ptr @memset(ptr %13, i32 0, i32 12)
  %15 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %tobool.not = icmp eq ptr %fw_ddb_entry, null
  br i1 %tobool.not, label %if.end9.if.end11_crit_edge, label %if.then10

if.end9.if.end11_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call ptr @memset(ptr %fw_ddb_entry, i32 0, i32 512)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end9.if.end11_crit_edge
  %17 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %mbox_cmd, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %0, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fw_ddb_entry_dma, ptr %1, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %3, align 4
  %call24 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 7, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %do.body28, label %if.end42

do.body28:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %22 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp29 = icmp eq i32 %22, 2
  br i1 %cmp29, label %do.end34, label %do.body28.exit_get_fwddb_crit_edge

do.body28.exit_get_fwddb_crit_edge:               ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_get_fwddb

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %host_no36 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %23 = ptrtoint ptr %host_no36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_no36, align 4
  %25 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mbox_sts, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %24, ptr noundef nonnull @.str.83, i32 noundef %26) #14
  br label %exit_get_fwddb

if.end42:                                         ; preds = %if.end11
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp45.not = icmp eq i32 %28, %conv
  br i1 %cmp45.not, label %if.end63, label %do.body48

do.body48:                                        ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %29 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp49 = icmp eq i32 %29, 2
  br i1 %cmp49, label %do.end54, label %do.body48.exit_get_fwddb_crit_edge

do.body48.exit_get_fwddb_crit_edge:               ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_get_fwddb

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %host_no56 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %30 = ptrtoint ptr %host_no56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no56, align 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %31, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %28) #14
  br label %exit_get_fwddb

if.end63:                                         ; preds = %if.end42
  br i1 %tobool.not, label %if.end63.if.end99_crit_edge, label %if.then65

if.end63.if.end99_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %fw_ddb_entry to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fw_ddb_entry, align 4
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool68.not = icmp eq i16 %34, 0
  %pdev84 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %35 = ptrtoint ptr %pdev84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev84, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mbox_sts, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %8, align 4
  %ip_addr92 = getelementptr inbounds %struct.dev_db_entry, ptr %fw_ddb_entry, i32 0, i32 21
  %port94 = getelementptr inbounds %struct.dev_db_entry, ptr %fw_ddb_entry, i32 0, i32 17
  %47 = ptrtoint ptr %port94 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %port94, align 4
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %conv95 = zext i16 %49 to i32
  %iscsi_name96 = getelementptr inbounds %struct.dev_db_entry, ptr %fw_ddb_entry, i32 0, i32 30
  %.str.94..str.91 = select i1 %tobool68.not, ptr @.str.94, ptr @.str.91
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev85, ptr noundef nonnull %.str.94..str.91, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, ptr noundef %ip_addr92, i32 noundef %conv95, ptr noundef %iscsi_name96) #14
  br label %if.end99

if.end99:                                         ; preds = %if.then65, %if.end63.if.end99_crit_edge
  %tobool100.not = icmp eq ptr %num_valid_ddb_entries, null
  br i1 %tobool100.not, label %if.end99.if.end103_crit_edge, label %if.then101

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %52 = ptrtoint ptr %num_valid_ddb_entries to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num_valid_ddb_entries, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end99.if.end103_crit_edge
  %tobool104.not = icmp eq ptr %next_ddb_index, null
  br i1 %tobool104.not, label %if.end103.if.end107_crit_edge, label %if.then105

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %6, align 4
  %55 = ptrtoint ptr %next_ddb_index to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %next_ddb_index, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end103.if.end107_crit_edge
  %tobool108.not = icmp eq ptr %fw_ddb_device_state, null
  br i1 %tobool108.not, label %if.end107.if.end111_crit_edge, label %if.then109

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %7, align 4
  %58 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %fw_ddb_device_state, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end107.if.end111_crit_edge
  %tobool112.not = icmp eq ptr %conn_err_detail, null
  br i1 %tobool112.not, label %if.end111.if.end115_crit_edge, label %if.then113

if.end111.if.end115_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %8, align 4
  %61 = ptrtoint ptr %conn_err_detail to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %conn_err_detail, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end111.if.end115_crit_edge
  %tobool116.not = icmp eq ptr %tcp_source_port_num, null
  br i1 %tobool116.not, label %if.end115.if.end121_crit_edge, label %if.then117

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %9, align 4
  %shr119 = lshr i32 %63, 16
  %conv120 = trunc i32 %shr119 to i16
  %64 = ptrtoint ptr %tcp_source_port_num to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv120, ptr %tcp_source_port_num, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end115.if.end121_crit_edge
  %tobool122.not = icmp eq ptr %connection_id, null
  br i1 %tobool122.not, label %if.end121.exit_get_fwddb_crit_edge, label %if.then123

if.end121.exit_get_fwddb_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_get_fwddb

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %9, align 4
  %67 = trunc i32 %66 to i16
  %conv128 = and i16 %67, 255
  %68 = ptrtoint ptr %connection_id to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv128, ptr %connection_id, align 2
  br label %exit_get_fwddb

exit_get_fwddb:                                   ; preds = %if.then123, %if.end121.exit_get_fwddb_crit_edge, %do.end54, %do.body48.exit_get_fwddb_crit_edge, %do.end34, %do.body28.exit_get_fwddb_crit_edge, %do.end, %do.body.exit_get_fwddb_crit_edge
  %status.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.exit_get_fwddb_crit_edge ], [ 1, %do.end34 ], [ 1, %do.body28.exit_get_fwddb_crit_edge ], [ 1, %do.end54 ], [ 1, %do.body48.exit_get_fwddb_crit_edge ], [ 0, %if.then123 ], [ 0, %if.end121.exit_get_fwddb_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_conn_open(ptr noundef %ha, i16 noundef zeroext %fw_ddb_index) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %4 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 116, ptr %mbox_cmd, align 4
  %conv = zext i16 %fw_ddb_index to i32
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %6 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_sts, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %call, i32 noundef %11, i32 noundef %13) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_ddb_entry(ptr noundef %ha, i16 noundef zeroext %fw_ddb_index, i32 noundef %fw_ddb_entry_dma, ptr noundef writeonly %mbx_sts) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %8 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 99, ptr %mbox_cmd, align 4
  %conv = zext i16 %fw_ddb_index to i32
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fw_ddb_entry_dma, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  %tobool.not = icmp eq ptr %mbx_sts, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox_sts, align 4
  %15 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mbx_sts, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %16 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %do.end, label %do.body.do.end21_crit_edge

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  %19 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox_sts, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %18, ptr noundef nonnull @.str.99, i32 noundef %call, i32 noundef %20, i32 noundef %22) #14
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_session_logout_ddb(ptr noundef %ha, ptr noundef %ddb_entry, i32 noundef %options) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %5 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %6 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 86, ptr %mbox_cmd, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %7 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fw_ddb_index, align 4
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %options, ptr %1, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %11 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp6 = icmp eq i32 %11, 2
  br i1 %cmp6, label %do.end, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbox_sts, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %15, i32 noundef %17) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %18 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16389, i32 %19)
  %cmp15 = icmp eq i32 %19, 16389
  br i1 %cmp15, label %land.lhs.true, label %do.end13.if.end22_crit_edge

do.end13.if.end22_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %do.end13
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp18 = icmp eq i32 %21, 9
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 9
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %do.end13.if.end22_crit_edge, %entry.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_get_crash_record(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  %crash_record_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crash_record_dma) #11
  %2 = ptrtoint ptr %crash_record_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %crash_record_dma, align 4
  %3 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %6 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 118, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %do.end, label %do.body.if.end48_crit_edge

do.body.if.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %9, ptr noundef nonnull @.str.103) #14
  br label %if.end48

if.end9:                                          ; preds = %entry
  %10 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %do.body13, label %if.end25

do.body13:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp14 = icmp eq i32 %13, 2
  br i1 %cmp14, label %do.end18, label %do.body13.if.end48_crit_edge

do.body13.if.end48_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %host_no20 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %14 = ptrtoint ptr %host_no20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no20, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %15, ptr noundef nonnull @.str.103) #14
  br label %if.end48

if.end25:                                         ; preds = %if.end9
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull %crash_record_dma, i32 noundef 3264, i32 noundef 0) #11
  %cmp27 = icmp eq ptr %call.i, null
  br i1 %cmp27, label %if.end25.if.end48_crit_edge, label %if.then45

if.end25.if.end48_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %18 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 28)
  %20 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %21 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 118, ptr %mbox_cmd, align 4
  %22 = ptrtoint ptr %crash_record_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crash_record_dma, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %0, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %12, ptr %1, align 4
  %call40 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %crash_record_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crash_record_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev47, i32 noundef %12, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end25.if.end48_crit_edge, %do.end18, %do.body13.if.end48_crit_edge, %do.end, %do.body.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crash_record_dma) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_get_conn_event_log(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  %event_log_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event_log_dma) #11
  %2 = ptrtoint ptr %event_log_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %event_log_dma, align 4
  %3 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %6 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 119, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.if.end79_crit_edge

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.end.if.end79_crit_edge, label %if.end6

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end6:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull %event_log_dma, i32 noundef 3264, i32 noundef 0) #11
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %if.end6.if.end79_crit_edge, label %if.end10

if.end6.if.end79_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end10:                                         ; preds = %if.end6
  %12 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 28)
  %14 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %15 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 119, ptr %mbox_cmd, align 4
  %16 = ptrtoint ptr %event_log_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_log_dma, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %0, align 4
  %call20 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end32, label %do.body

do.body:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %19 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp24 = icmp eq i32 %19, 2
  br i1 %cmp24, label %do.end, label %do.body.if.then76_crit_edge

do.body.if.then76_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %20 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %21, ptr noundef nonnull @.str.108) #14
  br label %if.then76

if.end32:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %div = udiv i32 %9, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div)
  %cmp34 = icmp ugt i32 %23, %div
  br i1 %cmp34, label %do.end40, label %do.end40.thread

do.end40:                                         ; preds = %if.end32
  %rem = urem i32 %23, %div
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %24 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp41 = icmp eq i32 %24, 3
  br i1 %cmp41, label %if.then43, label %do.end40.if.then76_crit_edge

do.end40.if.then76_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

do.end40.thread:                                  ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %25 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp41130 = icmp ne i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp48125.not = icmp eq i32 %23, 0
  %or.cond = select i1 %cmp41130, i1 true, i1 %cmp48125.not
  br i1 %or.cond, label %do.end40.thread.if.then76_crit_edge, label %do.end40.thread.for.body.preheader_crit_edge

do.end40.thread.for.body.preheader_crit_edge:     ; preds = %do.end40.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end40.thread.if.then76_crit_edge:              ; preds = %do.end40.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp44 = icmp eq i32 %rem, 0
  br i1 %cmp44, label %if.then43.for.body.preheader_crit_edge, label %if.else

if.then43.for.body.preheader_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then43.for.body.preheader_crit_edge, %do.end40.thread.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv47127 = phi i32 [ %conv47, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0126 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul nuw nsw i32 %conv47127, 20
  %add.ptr = getelementptr i8, ptr %call.i, i32 %mul
  call void @qla4xxx_dump_buffer(ptr noundef %add.ptr, i32 noundef 20) #11
  %inc = add i8 %i.0126, 1
  %conv47 = zext i8 %inc to i32
  %cmp48 = icmp ugt i32 %23, %conv47
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.body.if.then76_crit_edge

for.body.if.then76_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %if.then43
  %conv53118 = and i32 %rem, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv53118)
  %cmp54119 = icmp ugt i32 %div, %conv53118
  br i1 %cmp54119, label %for.body56.preheader, label %if.else.for.body67.preheader_crit_edge

if.else.for.body67.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body67.preheader

for.body56.preheader:                             ; preds = %if.else
  %conv51 = trunc i32 %rem to i8
  br label %for.body56

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.body56.preheader
  %conv53121 = phi i32 [ %conv53, %for.body56.for.body56_crit_edge ], [ %conv53118, %for.body56.preheader ]
  %i.1120 = phi i8 [ %inc61, %for.body56.for.body56_crit_edge ], [ %conv51, %for.body56.preheader ]
  %mul58 = mul nuw nsw i32 %conv53121, 20
  %add.ptr59 = getelementptr i8, ptr %call.i, i32 %mul58
  call void @qla4xxx_dump_buffer(ptr noundef %add.ptr59, i32 noundef 20) #11
  %inc61 = add i8 %i.1120, 1
  %conv53 = zext i8 %inc61 to i32
  %cmp54 = icmp ugt i32 %div, %conv53
  br i1 %cmp54, label %for.body56.for.body56_crit_edge, label %for.body56.for.body67.preheader_crit_edge

for.body56.for.body67.preheader_crit_edge:        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body67.preheader

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body56

for.body67.preheader:                             ; preds = %for.body56.for.body67.preheader_crit_edge, %if.else.for.body67.preheader_crit_edge
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.body67.preheader
  %conv64124 = phi i32 [ %conv64, %for.body67.for.body67_crit_edge ], [ 0, %for.body67.preheader ]
  %i.2123 = phi i8 [ %inc72, %for.body67.for.body67_crit_edge ], [ 0, %for.body67.preheader ]
  %mul69 = mul nuw nsw i32 %conv64124, 20
  %add.ptr70 = getelementptr i8, ptr %call.i, i32 %mul69
  call void @qla4xxx_dump_buffer(ptr noundef %add.ptr70, i32 noundef 20) #11
  %inc72 = add i8 %i.2123, 1
  %conv64 = zext i8 %inc72 to i32
  %cmp65 = icmp ugt i32 %rem, %conv64
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.if.then76_crit_edge

for.body67.if.then76_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body67

if.then76:                                        ; preds = %for.body67.if.then76_crit_edge, %for.body.if.then76_crit_edge, %do.end40.thread.if.then76_crit_edge, %do.end40.if.then76_crit_edge, %do.end, %do.body.if.then76_crit_edge
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %event_log_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %event_log_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev78, i32 noundef %9, ptr noundef nonnull %call.i, i32 noundef %29, i32 noundef 0) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end6.if.end79_crit_edge, %if.end.if.end79_crit_edge, %entry.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event_log_dma) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_abort_task(ptr noundef %ha, ptr nocapture noundef readonly %srb) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %cmd1 = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 5
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1, align 4
  %6 = getelementptr inbounds i8, ptr %mbox_cmd, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %8 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #11
  %host_scribble = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 23
  %9 = ptrtoint ptr %host_scribble to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_scribble, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call3) #11
  %cmp7 = icmp eq ptr %10, inttoptr (i32 1024 to ptr)
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  %12 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %13 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %14 = ptrtoint ptr %10 to i32
  %15 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 21, ptr %mbox_cmd, align 4
  %ddb = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 2
  %16 = ptrtoint ptr %ddb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddb, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_ddb_index, align 4
  %conv9 = zext i16 %19 to i32
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv9, ptr %13, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %12, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %11, align 4
  %call15 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  %23 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mbox_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %24)
  %cmp17.not = icmp eq i32 %24, 16384
  br i1 %cmp17.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %25 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp21 = icmp eq i32 %25, 2
  br i1 %cmp21, label %do.end26, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %26 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %32 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lun, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %2, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %27, i32 noundef %31, i64 noundef %33, i32 noundef %24, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end26 ], [ 1, %if.then19.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_reset_lun(ptr noundef %ha, ptr nocapture noundef readonly %ddb_entry, i64 noundef %lun) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  %scsi_lun = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scsi_lun) #11
  %0 = ptrtoint ptr %scsi_lun to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scsi_lun, align 4, !annotation !427
  %1 = getelementptr inbounds [2 x i32], ptr %scsi_lun, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !427
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %3 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %6 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_ddb_index, align 4
  %conv = zext i16 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %5, i32 noundef %conv, i64 noundef %lun) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %10 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %mbox_cmd, i32 16
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %14 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  call void @int_to_scsilun(i64 noundef %lun, ptr noundef nonnull %scsi_lun) #11
  %15 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 22, ptr %mbox_cmd, align 4
  %fw_ddb_index4 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %16 = ptrtoint ptr %fw_ddb_index4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fw_ddb_index4, align 4
  %conv5 = zext i16 %17 to i32
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv5, ptr %11, align 4
  %19 = ptrtoint ptr %scsi_lun to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scsi_lun, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %10, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %9, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %8, align 4
  %call14 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  %28 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mbox_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %29)
  %switch.selectcmp.case1 = icmp ne i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 16389, i32 %29)
  %switch.selectcmp.case2 = icmp ne i32 %29, 16389
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %30 = zext i1 %not.switch.selectcmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scsi_lun) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_reset_target(ptr noundef %ha, ptr nocapture noundef readonly %ddb_entry) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %1 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host_no, align 4
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %3 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fw_ddb_index, align 4
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %2, i32 noundef %conv) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %9 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %10 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 23, ptr %mbox_cmd, align 4
  %fw_ddb_index4 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %11 = ptrtoint ptr %fw_ddb_index4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_ddb_index4, align 4
  %conv5 = zext i16 %12 to i32
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %6, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %5, align 4
  %call10 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  %15 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %16)
  %switch.selectcmp.case1 = icmp ne i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 16389, i32 %16)
  %switch.selectcmp.case2 = icmp ne i32 %16, 16389
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %17 = zext i1 %not.switch.selectcmp to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_flash(ptr noundef %ha, i32 noundef %dma_addr, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %8 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 38, ptr %mbox_cmd, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dma_addr, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %offset, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp12 = icmp eq i32 %13, 2
  br i1 %cmp12, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %14 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no, align 4
  %16 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox_sts, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %15, ptr noundef nonnull @.str.116, i32 noundef %17, i32 noundef %19, i32 noundef %offset, i32 noundef %len) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_about_firmware(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %about_fw_dma = alloca i32, align 4
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %about_fw_dma) #11
  %0 = ptrtoint ptr %about_fw_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %about_fw_dma, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 5
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 6
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %about_fw_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %5 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev4, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %12 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %13 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %mbox_cmd, align 4
  %14 = ptrtoint ptr %about_fw_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %about_fw_dma, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %9, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %8, align 4
  %call17 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end34, label %do.body21

do.body21:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp22 = icmp eq i32 %18, 2
  br i1 %cmp22, label %do.end27, label %do.body21.exit_about_fw_crit_edge

do.body21.exit_about_fw_crit_edge:                ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_about_fw

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev29, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118, i32 noundef %22) #14
  br label %exit_about_fw

if.end34:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %fw_info = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117
  %26 = ptrtoint ptr %fw_info to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %fw_info, align 4
  %fw_minor = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %fw_minor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fw_minor, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %fw_minor37 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 1
  %30 = ptrtoint ptr %fw_minor37 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %fw_minor37, align 2
  %fw_patch = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fw_patch, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %fw_patch39 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 2
  %34 = ptrtoint ptr %fw_patch39 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %fw_patch39, align 4
  %fw_build = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %fw_build to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fw_build, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %fw_build41 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 3
  %38 = ptrtoint ptr %fw_build41 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %fw_build41, align 2
  %fw_build_date = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 4
  %fw_build_date43 = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %fw_build_date, ptr %fw_build_date43, i32 16)
  %fw_build_time = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 5
  %fw_build_time47 = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 5
  %40 = call ptr @memcpy(ptr %fw_build_time, ptr %fw_build_time47, i32 16)
  %fw_build_user = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 6
  %fw_build_user51 = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 6
  %call53 = call ptr @skip_spaces(ptr noundef %fw_build_user51) #11
  %call54 = call ptr @strcpy(ptr noundef %fw_build_user, ptr noundef %call53) #15
  %fw_load_source = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %fw_load_source to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fw_load_source, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %fw_load_source56 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 7
  %44 = ptrtoint ptr %fw_load_source56 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %fw_load_source56, align 4
  %iscsi_major = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %iscsi_major to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %iscsi_major, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %iscsi_major58 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 9
  %48 = ptrtoint ptr %iscsi_major58 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %iscsi_major58, align 4
  %iscsi_minor = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 10
  %49 = ptrtoint ptr %iscsi_minor to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %iscsi_minor, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %iscsi_minor60 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 10
  %52 = ptrtoint ptr %iscsi_minor60 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %iscsi_minor60, align 2
  %bootload_major = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %bootload_major to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bootload_major, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %bootload_major62 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 11
  %56 = ptrtoint ptr %bootload_major62 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %bootload_major62, align 4
  %bootload_minor = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 12
  %57 = ptrtoint ptr %bootload_minor to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bootload_minor, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %bootload_minor64 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 12
  %60 = ptrtoint ptr %bootload_minor64 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %bootload_minor64, align 2
  %bootload_patch = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 13
  %61 = ptrtoint ptr %bootload_patch to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %bootload_patch, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %bootload_patch66 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 13
  %64 = ptrtoint ptr %bootload_patch66 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %bootload_patch66, align 4
  %bootload_build = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 14
  %65 = ptrtoint ptr %bootload_build to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bootload_build, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66)
  %bootload_build68 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 14
  %68 = ptrtoint ptr %bootload_build68 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %bootload_build68, align 2
  %extended_timestamp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 117, i32 15
  %extended_timestamp71 = getelementptr inbounds %struct.about_fw_info, ptr %call.i, i32 0, i32 15
  %call73 = call ptr @skip_spaces(ptr noundef %extended_timestamp71) #11
  %call74 = call ptr @strcpy(ptr noundef %extended_timestamp, ptr noundef %call73) #15
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %fw_uptime_secs = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 118
  %72 = ptrtoint ptr %fw_uptime_secs to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %fw_uptime_secs, align 4
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %2, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %fw_uptime_msecs = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 119
  %76 = ptrtoint ptr %fw_uptime_msecs to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %fw_uptime_msecs, align 16
  br label %exit_about_fw

exit_about_fw:                                    ; preds = %if.end34, %do.end27, %do.body21.exit_about_fw_crit_edge
  %status.0 = phi i32 [ 1, %do.end27 ], [ 1, %do.body21.exit_about_fw_crit_edge ], [ 0, %if.end34 ]
  %77 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %about_fw_dma to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %about_fw_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev78, i32 noundef 256, ptr noundef nonnull %call.i, i32 noundef %80, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_about_fw, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit_about_fw ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %about_fw_dma) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_default_ddb(ptr noundef %ha, i32 noundef %options, i32 noundef %dma_addr) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %3 = getelementptr inbounds i8, ptr %mbox_cmd, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %6 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 107, ptr %mbox_cmd, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %options, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dma_addr, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %10 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %11 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no, align 4
  %13 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox_sts, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %12, ptr noundef nonnull @.str.124, i32 noundef %14) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_req_ddb_entry(ptr noundef %ha, i32 noundef %ddb_index, ptr nocapture noundef writeonly %mbx_sts) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %4 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 98, ptr %mbox_cmd, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ddb_index, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %6 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %do.end, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i32 noundef %10) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  %11 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox_sts, align 4
  %13 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mbx_sts, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_clear_ddb_entry(ptr noundef %ha, i32 noundef %ddb_index) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %4 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 49, ptr %mbox_cmd, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ddb_index, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %6 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %do.end, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.127, i32 noundef %10) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_flash(ptr noundef %ha, i32 noundef %dma_addr, i32 noundef %offset, i32 noundef %length, i32 noundef %options) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %mbox_cmd, i32 24
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %9 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 37, ptr %mbox_cmd, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dma_addr, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %offset, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %length, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %options, ptr %4, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %do.body

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %15 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp13 = icmp eq i32 %15, 2
  br i1 %cmp13, label %do.end, label %do.body.if.end21_crit_edge

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_sts, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %19, i32 noundef %21) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_bootdb_by_index(ptr noundef %ha, ptr nocapture noundef %fw_ddb_entry, i32 noundef %fw_ddb_entry_dma, i16 noundef zeroext %ddb_index) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fw_ddb_entry, i32 0, i32 512)
  %conv = zext i16 %ddb_index to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %ddb_index)
  %cmp = icmp ugt i16 %ddb_index, 63
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %1 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %do.end, label %do.body.exit_bootdb_failed_crit_edge

do.body.exit_bootdb_failed_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_bootdb_failed

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef %conv) #14
  br label %exit_bootdb_failed

if.end9:                                          ; preds = %entry
  %mul = shl nuw nsw i32 %conv, 9
  %add = add nuw nsw i32 %mul, 83886080
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 20
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %11 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %12 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 38, ptr %mbox_cmd.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %fw_ddb_entry_dma, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %7, align 4
  %call.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end18, label %do.body.i

do.body.i:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %17 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp12.i = icmp eq i32 %17, 2
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.do.end15_crit_edge

do.body.i.do.end15_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %18 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no.i, align 4
  %20 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbox_sts.i, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %19, ptr noundef nonnull @.str.116, i32 noundef %21, i32 noundef %23, i32 noundef %add, i32 noundef 512) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end.i, %do.body.i.do.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %pdev16 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %24 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev16, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %26 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev17, ptr noundef nonnull @.str.133, i32 noundef %27, ptr noundef nonnull @.str.131) #14
  br label %exit_bootdb_failed

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %cookie = getelementptr inbounds %struct.dev_db_entry, ptr %fw_ddb_entry, i32 0, i32 41
  %28 = ptrtoint ptr %cookie to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28620, i16 %29)
  %cmp20 = icmp ne i16 %29, -28620
  %spec.select = zext i1 %cmp20 to i32
  br label %exit_bootdb_failed

exit_bootdb_failed:                               ; preds = %if.end18, %do.end15, %do.end, %do.body.exit_bootdb_failed_crit_edge
  %status.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.exit_bootdb_failed_crit_edge ], [ 1, %do.end15 ], [ %spec.select, %if.end18 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_flashdb_by_index(ptr noundef %ha, ptr nocapture noundef %fw_ddb_entry, i32 noundef %fw_ddb_entry_dma, i16 noundef zeroext %ddb_index) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fw_ddb_entry, i32 0, i32 512)
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device.i.i, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.232)
  switch i16 %4, label %if.else [
    i16 16434, label %entry.if.end9_crit_edge
    i16 16418, label %entry.if.end9_crit_edge58
    i16 16400, label %entry.if.end9_crit_edge59
  ]

entry.if.end9_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

entry.if.end9_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else:                                          ; preds = %entry
  %flt_region_ddb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 15
  %6 = ptrtoint ptr %flt_region_ddb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flt_region_ddb, align 4
  %shl = shl i32 %7, 2
  %add = add i32 %shl, -1912602624
  %port_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 42
  %8 = ptrtoint ptr %port_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp eq i16 %9, 1
  br i1 %cmp, label %if.then2, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %flt_ddb_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 16
  %10 = ptrtoint ptr %flt_ddb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flt_ddb_size, align 16
  %div54 = lshr i32 %11, 1
  %add4 = add i32 %div54, %add
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  %dev_db_start_offset.0 = phi i32 [ %add4, %if.then2 ], [ %add, %if.else.if.end_crit_edge ]
  %flt_ddb_size6 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 16
  %12 = ptrtoint ptr %flt_ddb_size6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flt_ddb_size6, align 16
  %div753 = lshr i32 %13, 1
  %add8 = add i32 %div753, %dev_db_start_offset.0
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge, %entry.if.end9_crit_edge58, %entry.if.end9_crit_edge59
  %dev_db_start_offset.1 = phi i32 [ %dev_db_start_offset.0, %if.end ], [ 83886080, %entry.if.end9_crit_edge ], [ 83886080, %entry.if.end9_crit_edge58 ], [ 83886080, %entry.if.end9_crit_edge59 ]
  %dev_db_end_offset.0 = phi i32 [ %add8, %if.end ], [ 83918847, %entry.if.end9_crit_edge ], [ 83918847, %entry.if.end9_crit_edge58 ], [ 83918847, %entry.if.end9_crit_edge59 ]
  %conv10 = zext i16 %ddb_index to i32
  %mul = shl nuw nsw i32 %conv10, 9
  %add11 = add i32 %dev_db_start_offset.1, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %dev_db_end_offset.0)
  %cmp12 = icmp ugt i32 %add11, %dev_db_end_offset.0
  br i1 %cmp12, label %do.body, label %if.end23

do.body:                                          ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp15 = icmp eq i32 %14, 2
  br i1 %cmp15, label %do.end, label %do.body.exit_fdb_failed_crit_edge

do.body.exit_fdb_failed_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fdb_failed

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.135, i32 noundef %conv10) #14
  br label %exit_fdb_failed

if.end23:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %15 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %19 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i, i32 0, i32 1
  %20 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 20
  %21 = call ptr @memset(ptr %20, i32 0, i32 12)
  %22 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %23 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 38, ptr %mbox_cmd.i, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %fw_ddb_entry_dma, ptr %15, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add11, ptr %17, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 512, ptr %18, align 4
  %call.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end33, label %do.body.i

do.body.i:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %28 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp12.i = icmp eq i32 %28, 2
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.do.end30_crit_edge

do.body.i.do.end30_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %29 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_no.i, align 4
  %31 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mbox_sts.i, align 4
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %19, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %30, ptr noundef nonnull @.str.116, i32 noundef %32, i32 noundef %34, i32 noundef %add11, i32 noundef 512) #14
  br label %do.end30

do.end30:                                         ; preds = %do.end.i, %do.body.i.do.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %37 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev32, ptr noundef nonnull @.str.137, i32 noundef %38, ptr noundef nonnull @.str.135) #14
  br label %exit_fdb_failed

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %cookie = getelementptr inbounds %struct.dev_db_entry, ptr %fw_ddb_entry, i32 0, i32 41
  %39 = ptrtoint ptr %cookie to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28620, i16 %40)
  %cmp35 = icmp ne i16 %40, -28620
  %spec.select = zext i1 %cmp35 to i32
  br label %exit_fdb_failed

exit_fdb_failed:                                  ; preds = %if.end33, %do.end30, %do.end, %do.body.exit_fdb_failed_crit_edge
  %status.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.exit_fdb_failed_crit_edge ], [ 1, %do.end30 ], [ %spec.select, %if.end33 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_chap(ptr noundef %ha, ptr noundef %username, ptr noundef %password, i16 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  %chap_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chap_dma) #11
  %0 = ptrtoint ptr %chap_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chap_dma, align 4, !annotation !427
  %chap_dma_pool = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 122
  %1 = ptrtoint ptr %chap_dma_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chap_dma_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3520, ptr noundef nonnull %chap_dma) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.233)
  switch i16 %6, label %if.else [
    i16 16434, label %if.end.if.then2_crit_edge
    i16 16418, label %if.end.if.then2_crit_edge72
    i16 16400, label %if.end.if.then2_crit_edge73
  ]

if.end.if.then2_crit_edge73:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.end.if.then2_crit_edge72:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %if.end.if.then2_crit_edge72, %if.end.if.then2_crit_edge73
  %conv = zext i16 %idx to i32
  %mul = mul nuw nsw i32 %conv, 364
  %or = or i32 %mul, 100663296
  br label %if.end13

if.else:                                          ; preds = %if.end
  %flt_region_chap = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 13
  %8 = ptrtoint ptr %flt_region_chap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flt_region_chap, align 4
  %shl = shl i32 %9, 2
  %add = add i32 %shl, -1912602624
  %port_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 42
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp4 = icmp eq i16 %11, 1
  br i1 %cmp4, label %if.then6, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %flt_chap_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %12 = ptrtoint ptr %flt_chap_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flt_chap_size, align 8
  %div67 = lshr i32 %13, 1
  %add8 = add i32 %div67, %add
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge
  %offset.0 = phi i32 [ %add8, %if.then6 ], [ %add, %if.else.if.end9_crit_edge ]
  %conv10 = zext i16 %idx to i32
  %mul11 = mul nuw nsw i32 %conv10, 364
  %add12 = add i32 %offset.0, %mul11
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %if.then2
  %offset.1 = phi i32 [ %or, %if.then2 ], [ %add12, %if.end9 ]
  %14 = ptrtoint ptr %chap_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chap_dma, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %16 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %17 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %19 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %20 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i, i32 0, i32 1
  %21 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 20
  %22 = call ptr @memset(ptr %21, i32 0, i32 12)
  %23 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %24 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 38, ptr %mbox_cmd.i, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %17, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %offset.1, ptr %18, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 364, ptr %19, align 4
  %call.i68 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.not.i = icmp eq i32 %call.i68, 0
  br i1 %cmp.not.i, label %do.body, label %do.body.i

do.body.i:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %29 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp12.i = icmp eq i32 %29, 2
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.qla4xxx_get_flash.exit.thread_crit_edge

do.body.i.qla4xxx_get_flash.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_get_flash.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %30 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no.i, align 4
  %32 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mbox_sts.i, align 4
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %20, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %31, ptr noundef nonnull @.str.116, i32 noundef %33, i32 noundef %35, i32 noundef %offset.1, i32 noundef 364) #14
  br label %qla4xxx_get_flash.exit.thread

qla4xxx_get_flash.exit.thread:                    ; preds = %do.end.i, %do.body.i.qla4xxx_get_flash.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  br label %exit_get_chap

do.body:                                          ; preds = %if.end13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp19 = icmp eq i32 %36, 2
  br i1 %cmp19, label %do.end, label %do.body.do.end26_crit_edge

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %cookie = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %cookie to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cookie, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv23 = zext i16 %41 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %conv23) #14
  br label %do.end26

do.end26:                                         ; preds = %do.end, %do.body.do.end26_crit_edge
  %cookie27 = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %cookie27 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cookie27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28096, i16 %43)
  %cmp29.not = icmp eq i16 %43, -28096
  br i1 %cmp29.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i.i, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev36, ptr noundef nonnull @.str.142) #14
  br label %exit_get_chap

if.end37:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  %secret = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 3
  %call38 = call i32 @strlcpy(ptr noundef %password, ptr noundef %secret, i32 noundef 100) #11
  %name = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 4
  %call40 = call i32 @strlcpy(ptr noundef %username, ptr noundef %name, i32 noundef 256) #11
  %46 = ptrtoint ptr %cookie27 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -28096, ptr %cookie27, align 2
  br label %exit_get_chap

exit_get_chap:                                    ; preds = %if.end37, %do.end34, %qla4xxx_get_flash.exit.thread
  %ret.0 = phi i32 [ 0, %do.end34 ], [ 0, %if.end37 ], [ -22, %qla4xxx_get_flash.exit.thread ]
  %47 = ptrtoint ptr %chap_dma_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chap_dma_pool, align 4
  %49 = ptrtoint ptr %chap_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chap_dma, align 4
  call void @dma_pool_free(ptr noundef %48, ptr noundef nonnull %call.i, i32 noundef %50) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_get_chap, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_get_chap ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chap_dma) #11
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_chap(ptr noundef %ha, ptr nocapture noundef readonly %username, ptr nocapture noundef readonly %password, i16 noundef zeroext %idx, i32 noundef %bidi) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  %chap_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chap_dma) #11
  %0 = ptrtoint ptr %chap_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chap_dma, align 4, !annotation !427
  %chap_dma_pool = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 122
  %1 = ptrtoint ptr %chap_dma_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chap_dma_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3520, ptr noundef nonnull %chap_dma) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.exit_set_chap_crit_edge, label %if.end

entry.exit_set_chap_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_set_chap

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bidi)
  %tobool.not = icmp eq i32 %bidi, 0
  %flags3 = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags3, align 2
  %. = select i1 %tobool.not, i8 -128, i8 64
  %5 = or i8 %4, %.
  store i8 %5, ptr %flags3, align 2
  %call8 = call i32 @strlen(ptr noundef %password) #15
  %conv9 = trunc i32 %call8 to i8
  %secret_len = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %secret_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %secret_len, align 1
  %secret = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 3
  %call10 = call ptr @strncpy(ptr noundef %secret, ptr noundef %password, i32 noundef 99)
  %name = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 4
  %call12 = call ptr @strncpy(ptr noundef %name, ptr noundef %username, i32 noundef 255)
  %cookie = getelementptr inbounds %struct.ql4_chap_table, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -28096, ptr %cookie, align 2
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i.i, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.234)
  switch i16 %11, label %if.else16 [
    i16 16434, label %if.end.if.end24_crit_edge
    i16 16418, label %if.end.if.end24_crit_edge65
    i16 16400, label %if.end.if.end24_crit_edge66
  ]

if.end.if.end24_crit_edge66:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.if.end24_crit_edge65:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else16:                                        ; preds = %if.end
  %flt_region_chap = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 13
  %13 = ptrtoint ptr %flt_region_chap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flt_region_chap, align 4
  %shl = shl i32 %14, 2
  %add = add i32 %shl, -1912602624
  %port_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 42
  %15 = ptrtoint ptr %port_num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %port_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp19 = icmp eq i16 %16, 1
  br i1 %cmp19, label %if.then21, label %if.else16.if.end24_crit_edge

if.else16.if.end24_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %flt_chap_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %17 = ptrtoint ptr %flt_chap_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flt_chap_size, align 8
  %div61 = lshr i32 %18, 1
  %add22 = add i32 %div61, %add
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else16.if.end24_crit_edge, %if.end.if.end24_crit_edge, %if.end.if.end24_crit_edge65, %if.end.if.end24_crit_edge66
  %offset.0 = phi i32 [ %add22, %if.then21 ], [ %add, %if.else16.if.end24_crit_edge ], [ 100663296, %if.end.if.end24_crit_edge ], [ 100663296, %if.end.if.end24_crit_edge65 ], [ 100663296, %if.end.if.end24_crit_edge66 ]
  %conv25 = zext i16 %idx to i32
  %mul = mul nuw nsw i32 %conv25, 364
  %add26 = add i32 %offset.0, %mul
  %19 = ptrtoint ptr %chap_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chap_dma, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %21 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %23 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %24 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  %25 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %26 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i, i32 0, i32 1
  %27 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 24
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %27, align 4
  %29 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %30 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 37, ptr %mbox_cmd.i, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %20, ptr %21, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %22, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add26, ptr %23, align 4
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 364, ptr %24, align 4
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %25, align 4
  %call.i62 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.not.i = icmp eq i32 %call.i62, 0
  br i1 %cmp.not.i, label %land.lhs.true, label %do.body.i

do.body.i:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp13.i = icmp eq i32 %36, 2
  br i1 %cmp13.i, label %do.end.i, label %do.body.i.qla4xxx_set_flash.exit.thread_crit_edge

do.body.i.qla4xxx_set_flash.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_flash.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mbox_sts.i, align 4
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %26, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %40, i32 noundef %42) #14
  br label %qla4xxx_set_flash.exit.thread

qla4xxx_set_flash.exit.thread:                    ; preds = %do.end.i, %do.body.i.qla4xxx_set_flash.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %chap_list = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 123
  %43 = ptrtoint ptr %chap_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chap_list, align 128
  %tobool30.not = icmp eq ptr %44, null
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.ql4_chap_table, ptr %44, i32 %conv25
  %45 = call ptr @memcpy(ptr %add.ptr, ptr %call.i, i32 364)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %qla4xxx_set_flash.exit.thread
  %spec.select = phi i32 [ -22, %qla4xxx_set_flash.exit.thread ], [ 0, %if.then31 ], [ 0, %land.lhs.true.if.end34_crit_edge ]
  %46 = ptrtoint ptr %chap_dma_pool to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chap_dma_pool, align 4
  %48 = ptrtoint ptr %chap_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chap_dma, align 4
  call void @dma_pool_free(ptr noundef %47, ptr noundef nonnull %call.i, i32 noundef %49) #11
  br label %exit_set_chap

exit_set_chap:                                    ; preds = %if.end34, %entry.exit_set_chap_crit_edge
  %ret.0 = phi i32 [ -12, %entry.exit_set_chap_crit_edge ], [ %spec.select, %if.end34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chap_dma) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_uni_chap_at_index(ptr noundef %ha, ptr noundef %username, ptr noundef %password, i16 noundef zeroext %chap_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chap_list = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 123
  %0 = ptrtoint ptr %chap_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chap_list, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.144) #14
  br label %exit_uni_chap

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %username, null
  %tobool2.not = icmp eq ptr %password, null
  %or.cond = or i1 %tobool1.not, %tobool2.not
  %pdev7 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %4 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev7, align 8
  br i1 %or.cond, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev8, ptr noundef nonnull @.str.147) #14
  br label %exit_uni_chap

if.end9:                                          ; preds = %if.end
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.235)
  switch i16 %7, label %if.end9.if.end13_crit_edge [
    i16 -32734, label %if.end9.if.then11_crit_edge
    i16 -32718, label %if.end9.if.then11_crit_edge59
    i16 -32702, label %if.end9.if.then11_crit_edge60
  ]

if.end9.if.then11_crit_edge60:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end9.if.then11_crit_edge59:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end9.if.then11_crit_edge59, %if.end9.if.then11_crit_edge60
  %flt_chap_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %9 = ptrtoint ptr %flt_chap_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flt_chap_size, align 8
  %div12 = udiv i32 %10, 728
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %max_chap_entries.0 = phi i32 [ %div12, %if.then11 ], [ 128, %if.end9.if.end13_crit_edge ]
  %conv = zext i16 %chap_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_chap_entries.0, i32 %conv)
  %cmp = icmp ult i32 %max_chap_entries.0, %conv
  br i1 %cmp, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev20, ptr noundef nonnull @.str.150) #14
  br label %exit_uni_chap

if.end21:                                         ; preds = %if.end13
  %chap_sem = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 124
  tail call void @mutex_lock_nested(ptr noundef %chap_sem, i32 noundef 0) #11
  %11 = ptrtoint ptr %chap_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chap_list, align 128
  %cookie = getelementptr %struct.ql4_chap_table, ptr %12, i32 %conv, i32 6
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cookie, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28096, i16 %14)
  %cmp25.not = icmp eq i16 %14, -28096
  br i1 %cmp25.not, label %if.end28, label %if.end21.exit_unlock_uni_chap_crit_edge

if.end21.exit_unlock_uni_chap_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock_uni_chap

if.end28:                                         ; preds = %if.end21
  %flags = getelementptr %struct.ql4_chap_table, ptr %12, i32 %conv, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool30.not = icmp sgt i8 %16, -1
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev7, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev36, ptr noundef nonnull @.str.153) #14
  br label %exit_unlock_uni_chap

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %secret = getelementptr %struct.ql4_chap_table, ptr %12, i32 %conv, i32 3
  %call38 = tail call i32 @strlcpy(ptr noundef nonnull %password, ptr noundef %secret, i32 noundef 100) #11
  %name = getelementptr %struct.ql4_chap_table, ptr %12, i32 %conv, i32 4
  %call40 = tail call i32 @strlcpy(ptr noundef nonnull %username, ptr noundef %name, i32 noundef 256) #11
  br label %exit_unlock_uni_chap

exit_unlock_uni_chap:                             ; preds = %if.end37, %do.end34, %if.end21.exit_unlock_uni_chap_crit_edge
  %rval.0 = phi i32 [ 0, %if.end37 ], [ 1, %do.end34 ], [ 1, %if.end21.exit_unlock_uni_chap_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %chap_sem) #11
  br label %exit_uni_chap

exit_uni_chap:                                    ; preds = %exit_unlock_uni_chap, %do.end18, %do.end6, %do.end
  %rval.1 = phi i32 [ 1, %do.end18 ], [ %rval.0, %exit_unlock_uni_chap ], [ 1, %do.end6 ], [ 1, %do.end ]
  ret i32 %rval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_chap_index(ptr noundef %ha, ptr noundef readonly %username, ptr noundef readonly %password, i32 noundef %bidi, ptr nocapture noundef writeonly %chap_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.236)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 -32734, label %entry.if.then_crit_edge
    i16 -32718, label %entry.if.then_crit_edge114
    i16 -32702, label %entry.if.then_crit_edge115
  ]

entry.if.then_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge114, %entry.if.then_crit_edge115
  %flt_chap_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 103, i32 14
  %5 = ptrtoint ptr %flt_chap_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flt_chap_size, align 8
  %div1 = udiv i32 %6, 728
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_chap_entries.0 = phi i32 [ %div1, %if.then ], [ 128, %entry.if.end_crit_edge ]
  %chap_list = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 123
  %7 = ptrtoint ptr %chap_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chap_list, align 128
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.144) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %username, null
  %tobool6.not = icmp eq ptr %password, null
  %or.cond = or i1 %tobool5.not, %tobool6.not
  br i1 %or.cond, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev12, ptr noundef nonnull @.str.157) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %chap_sem = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 124
  tail call void @mutex_lock_nested(ptr noundef %chap_sem, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_chap_entries.0)
  %cmp102.not = icmp eq i32 %max_chap_entries.0, 0
  br i1 %cmp102.not, label %if.end13.land.lhs.true49.thread_crit_edge, label %for.body.lr.ph

if.end13.land.lhs.true49.thread_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true49.thread

for.body.lr.ph:                                   ; preds = %if.end13
  %9 = ptrtoint ptr %chap_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chap_list, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bidi)
  %tobool25.not = icmp eq i32 %bidi, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %free_index.0105 = phi i32 [ -1, %for.body.lr.ph ], [ %free_index.1, %for.inc.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cookie = getelementptr %struct.ql4_chap_table, ptr %10, i32 %i.0103, i32 6
  %11 = ptrtoint ptr %cookie to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cookie, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28096, i16 %12)
  %cmp15.not = icmp eq i16 %12, -28096
  br i1 %cmp15.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0103)
  %cmp18 = icmp ugt i32 %i.0103, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_index.0105)
  %cmp20 = icmp eq i32 %free_index.0105, -1
  %or.cond97 = select i1 %cmp18, i1 %cmp20, i1 false
  %spec.select = select i1 %or.cond97, i32 %i.0103, i32 %free_index.0105
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %flags32 = getelementptr %struct.ql4_chap_table, ptr %10, i32 %i.0103, i32 1
  %13 = ptrtoint ptr %flags32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags32, align 2
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool28.not = icmp sgt i8 %14, -1
  br i1 %tobool28.not, label %if.then26.if.end38_crit_edge, label %if.then26.for.inc_crit_edge

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.else31:                                        ; preds = %if.end24
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %if.else31.if.end38_crit_edge, label %if.else31.for.inc_crit_edge

if.else31.for.inc_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else31.if.end38_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %if.else31.if.end38_crit_edge, %if.then26.if.end38_crit_edge
  %secret = getelementptr %struct.ql4_chap_table, ptr %10, i32 %i.0103, i32 3
  %call39 = tail call i32 @strncmp(ptr noundef %secret, ptr noundef nonnull %password, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %if.end38.for.inc_crit_edge

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true41:                                  ; preds = %if.end38
  %name = getelementptr %struct.ql4_chap_table, ptr %10, i32 %i.0103, i32 4
  %call43 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull %username, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end59.critedge, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true41.for.inc_crit_edge, %if.end38.for.inc_crit_edge, %if.else31.for.inc_crit_edge, %if.then26.for.inc_crit_edge, %if.then17
  %free_index.1 = phi i32 [ %free_index.0105, %if.then26.for.inc_crit_edge ], [ %free_index.0105, %if.end38.for.inc_crit_edge ], [ %free_index.0105, %land.lhs.true41.for.inc_crit_edge ], [ %free_index.0105, %if.else31.for.inc_crit_edge ], [ %spec.select, %if.then17 ]
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %max_chap_entries.0
  br i1 %exitcond.not, label %land.lhs.true49, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

land.lhs.true49:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_index.1)
  %cmp50.not = icmp eq i32 %free_index.1, -1
  br i1 %cmp50.not, label %land.lhs.true49.land.lhs.true49.thread_crit_edge, label %if.then52

land.lhs.true49.land.lhs.true49.thread_crit_edge: ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true49.thread

if.then52:                                        ; preds = %land.lhs.true49
  %conv53 = trunc i32 %free_index.1 to i16
  %call54 = tail call i32 @qla4xxx_set_chap(ptr noundef %ha, ptr noundef nonnull %username, ptr noundef nonnull %password, i16 noundef zeroext %conv53, i32 noundef %bidi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then52.if.end59_crit_edge, label %if.then52.land.lhs.true49.thread_crit_edge

if.then52.land.lhs.true49.thread_crit_edge:       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true49.thread

if.then52.if.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.end59.critedge:                                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  %conv46.c = trunc i32 %i.0103 to i16
  br label %if.end59

if.end59:                                         ; preds = %if.end59.critedge, %if.then52.if.end59_crit_edge
  %storemerge = phi i16 [ %conv46.c, %if.end59.critedge ], [ %conv53, %if.then52.if.end59_crit_edge ]
  %16 = ptrtoint ptr %chap_index to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %storemerge, ptr %chap_index, align 2
  tail call void @mutex_unlock(ptr noundef %chap_sem) #11
  br label %cleanup

land.lhs.true49.thread:                           ; preds = %if.then52.land.lhs.true49.thread_crit_edge, %land.lhs.true49.land.lhs.true49.thread_crit_edge, %if.end13.land.lhs.true49.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %chap_sem) #11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true49.thread, %if.end59, %do.end10, %do.end
  %retval.0 = phi i32 [ 1, %do.end10 ], [ 1, %do.end ], [ 1, %land.lhs.true49.thread ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_conn_close_sess_logout(ptr noundef %ha, i16 noundef zeroext %fw_ddb_index, i16 noundef zeroext %connection_id, i16 noundef zeroext %option) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 86, ptr %mbox_cmd, align 4
  %conv = zext i16 %fw_ddb_index to i32
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %0, align 4
  %conv2 = zext i16 %connection_id to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %1, align 4
  %conv4 = zext i16 %option to i32
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4, ptr %2, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %do.body

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %11 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %do.end, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbox_sts, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef %conv4, i32 noundef %15, i32 noundef %17) #14
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body.if.end18_crit_edge, %entry.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_disable_acb(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 28)
  %4 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %5 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 138, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %6 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %do.end, label %do.body.if.end29_crit_edge

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox_sts, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, i32 noundef %10, i32 noundef %12, i32 noundef %14) #14
  br label %if.end29

if.else:                                          ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32702, i16 %18)
  %cmp.i.not = icmp eq i16 %18, -32702
  br i1 %cmp.i.not, label %land.lhs.true, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %if.else
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  %19 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags, align 4
  %21 = and i32 %20, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true14

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true14:                                  ; preds = %land.lhs.true
  %22 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %23)
  %cmp16.not = icmp eq i32 %23, 16384
  br i1 %cmp16.not, label %land.lhs.true14.if.end29_crit_edge, label %if.then17

land.lhs.true14.if.end29_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then17:                                        ; preds = %land.lhs.true14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %24 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %25 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %26 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %27 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %28 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 20
  %29 = call ptr @memset(ptr %28, i32 0, i32 12)
  %30 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %31 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 258, ptr %mbox_cmd.i, align 4
  %idc_info.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147
  %32 = ptrtoint ptr %idc_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idc_info.i, align 8
  %and1.i37 = and i32 %33, -3841
  %or.i = or i32 %and1.i37, 2048
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %24, align 4
  %info1.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 1
  %35 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info1.i, align 4
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %25, align 4
  %info2.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 2
  %38 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %info2.i, align 8
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %26, align 4
  %info3.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 3
  %41 = ptrtoint ptr %info3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %info3.i, align 4
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %27, align 4
  %call.i = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.end18.i, label %do.body.i

do.body.i:                                        ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %44 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp10.i = icmp eq i32 %44, 2
  br i1 %cmp10.i, label %do.end.i, label %do.body.i.qla4_84xx_extend_idc_tmo.exit_crit_edge

do.body.i.qla4_84xx_extend_idc_tmo.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4_84xx_extend_idc_tmo.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %47 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no.i, align 4
  %49 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mbox_sts.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.i, ptr noundef nonnull @.str.123, i32 noundef %48, ptr noundef nonnull @.str.219, i32 noundef %50) #14
  br label %qla4_84xx_extend_idc_tmo.exit

do.end18.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev20.i, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.219, i32 noundef 8) #14
  br label %qla4_84xx_extend_idc_tmo.exit

qla4_84xx_extend_idc_tmo.exit:                    ; preds = %do.end18.i, %do.end.i, %do.body.i.qla4_84xx_extend_idc_tmo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %disable_acb_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 133
  %call19 = call i32 @wait_for_completion_timeout(ptr noundef %disable_acb_comp, i32 noundef 800) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end24, label %qla4_84xx_extend_idc_tmo.exit.if.end29_crit_edge

qla4_84xx_extend_idc_tmo.exit.if.end29_crit_edge: ; preds = %qla4_84xx_extend_idc_tmo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end24:                                         ; preds = %qla4_84xx_extend_idc_tmo.exit
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev26, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.162) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %qla4_84xx_extend_idc_tmo.exit.if.end29_crit_edge, %land.lhs.true14.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.else.if.end29_crit_edge, %do.end, %do.body.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_acb(ptr noundef %ha, i32 noundef %acb_dma, i32 noundef %acb_type, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 137, ptr %mbox_cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %acb_type, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %acb_dma, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %12 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp12 = icmp eq i32 %12, 2
  br i1 %cmp12, label %do.end, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, i32 noundef %16) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_acb(ptr noundef %ha, ptr noundef %mbox_cmd, ptr noundef %mbox_sts, i32 noundef %acb_dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 136, ptr %mbox_cmd, align 4
  %arrayidx1 = getelementptr i32, ptr %mbox_cmd, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx1, align 4
  %arrayidx3 = getelementptr i32, ptr %mbox_cmd, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %acb_dma, ptr %arrayidx3, align 4
  %arrayidx7 = getelementptr i32, ptr %mbox_cmd, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %mbox_cmd, i32 4
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 768, ptr %arrayidx8, align 4
  %call = tail call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef %mbox_cmd, ptr noundef %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp12 = icmp eq i32 %8, 2
  br i1 %cmp12, label %do.end, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox_sts, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef %12) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_param_ddbentry(ptr noundef %ha, ptr nocapture noundef readonly %ddb_entry, ptr nocapture noundef readonly %cls_conn, ptr noundef writeonly %mbx_sts) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i312 = alloca [8 x i32], align 4
  %mbox_sts.i313 = alloca [8 x i32], align 4
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  %fw_ddb_entry_dma = alloca i32, align 4
  %idx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ddb_entry_dma) #11
  %0 = ptrtoint ptr %fw_ddb_entry_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fw_ddb_entry_dma, align 4, !annotation !427
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idx) #11
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %idx, align 2, !annotation !427
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef nonnull %fw_ddb_entry_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %4 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %do.end, label %do.body.exit_set_param_no_free_crit_edge

do.body.exit_set_param_no_free_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_set_param_no_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev4, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #14
  br label %exit_set_param_no_free

if.end7:                                          ; preds = %entry
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %7 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dd_data, align 8
  %dd_data8 = getelementptr inbounds %struct.iscsi_conn, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dd_data8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data8, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %session, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %dst_addr9 = getelementptr inbounds %struct.qla_endpoint, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dst_addr9 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dst_addr9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %16)
  %cmp10 = icmp eq i16 %16, 10
  %spec.select = zext i1 %cmp10 to i32
  %17 = ptrtoint ptr %fw_ddb_entry_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fw_ddb_entry_dma, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %19 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %20 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %21 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %22 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 16
  %23 = call ptr @memset(ptr %22, i32 0, i32 16)
  %24 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %25 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 107, ptr %mbox_cmd.i, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %18, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %21, align 4
  %call.i311 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %cmp.not.i = icmp eq i32 %call.i311, 0
  br i1 %cmp.not.i, label %if.end18, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %29 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp11.i = icmp eq i32 %29, 2
  br i1 %cmp11.i, label %do.end.i, label %do.body.i.qla4xxx_get_default_ddb.exit.thread_crit_edge

do.body.i.qla4xxx_get_default_ddb.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_get_default_ddb.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %30 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no.i, align 4
  %32 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mbox_sts.i, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %31, ptr noundef nonnull @.str.124, i32 noundef %33) #14
  br label %qla4xxx_get_default_ddb.exit.thread

qla4xxx_get_default_ddb.exit.thread:              ; preds = %do.end.i, %do.body.i.qla4xxx_get_default_ddb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  br label %exit_set_param

if.end18:                                         ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %arrayidx = getelementptr %struct.dev_db_entry, ptr %call.i, i32 0, i32 15, i32 1
  %sess19 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %34 = ptrtoint ptr %sess19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sess19, align 4
  %target_id = getelementptr inbounds %struct.iscsi_cls_session, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %target_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %target_id, align 8
  %conv20 = trunc i32 %37 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv20)
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %40 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp22 = icmp eq i32 %40, 2
  br i1 %cmp22, label %do.end27, label %if.end18.do.end33_crit_edge

if.end18.do.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %isid = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 15
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev29, ptr noundef nonnull @.str.173, ptr noundef %isid) #14
  br label %do.end33

do.end33:                                         ; preds = %do.end27, %if.end18.do.end33_crit_edge
  %iscsi_options = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %iscsi_options to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %iscsi_options, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %iscsi_alias = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 22
  %46 = call ptr @memset(ptr %iscsi_alias, i32 0, i32 32)
  %iscsi_name = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 30
  %47 = call ptr @memset(ptr %iscsi_name, i32 0, i32 224)
  %targetname = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 30
  %48 = ptrtoint ptr %targetname to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %targetname, align 4
  %cmp36.not = icmp eq ptr %49, null
  br i1 %cmp36.not, label %do.end33.if.end46_crit_edge, label %if.then38

do.end33.if.end46_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then38:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = call i32 @strlen(ptr noundef nonnull %49) #15
  %50 = call i32 @llvm.umin.i32(i32 %call43, i32 224)
  %51 = call ptr @memcpy(ptr %iscsi_name, ptr %49, i32 %50)
  br label %if.end46

if.end46:                                         ; preds = %if.then38, %do.end33.if.end46_crit_edge
  %ip_addr = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 21
  %52 = call ptr @memset(ptr %ip_addr, i32 0, i32 16)
  %tgt_addr = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 23
  %53 = call ptr @memset(ptr %tgt_addr, i32 0, i32 32)
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 66, ptr %call.i, align 4
  %55 = ptrtoint ptr %dst_addr9 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dst_addr9, align 2
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.237)
  switch i16 %56, label %do.end103 [
    i16 2, label %if.then54
    i16 10, label %if.then76
  ]

if.then54:                                        ; preds = %if.end46
  %sin_addr = getelementptr inbounds %struct.qla_endpoint, ptr %14, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %sin_addr to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %sin_addr, align 1
  %60 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ip_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr9, i32 0, i32 1
  %61 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sin_port, align 2
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %port = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 17
  %64 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %65 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp58 = icmp eq i32 %65, 2
  br i1 %cmp58, label %if.then54.if.end107.sink.split_crit_edge, label %if.then54.if.end107_crit_edge

if.then54.if.end107_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then54.if.end107.sink.split_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.sink.split

if.then76:                                        ; preds = %if.end46
  %sin6_addr = getelementptr inbounds %struct.qla_endpoint, ptr %14, i32 0, i32 1, i32 0, i32 1, i32 4
  %66 = call ptr @memcpy(ptr %ip_addr, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr9, i32 0, i32 1
  %67 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sin6_port, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %port79 = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 17
  %70 = ptrtoint ptr %port79 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %port79, align 4
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 322, ptr %call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %72 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp85 = icmp eq i32 %72, 2
  br i1 %cmp85, label %if.then76.if.end107.sink.split_crit_edge, label %if.then76.if.end107_crit_edge

if.then76.if.end107_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then76.if.end107.sink.split_crit_edge:         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.sink.split

do.end103:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 8
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev105, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.171) #14
  br label %exit_set_param

if.end107.sink.split:                             ; preds = %if.then76.if.end107.sink.split_crit_edge, %if.then54.if.end107.sink.split_crit_edge
  %.str.179.sink = phi ptr [ @.str.176, %if.then54.if.end107.sink.split_crit_edge ], [ @.str.179, %if.then76.if.end107.sink.split_crit_edge ]
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %fw_ddb_index95 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %77 = ptrtoint ptr %fw_ddb_index95 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %fw_ddb_index95, align 4
  %conv96 = zext i16 %78 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev92, ptr noundef nonnull %.str.179.sink, ptr noundef nonnull @.str.171, ptr noundef %ip_addr, i32 noundef %conv96) #14
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %if.then76.if.end107_crit_edge, %if.then54.if.end107_crit_edge
  %username = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 26
  %79 = ptrtoint ptr %username to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %username, align 4
  %cmp108.not = icmp eq ptr %80, null
  br i1 %cmp108.not, label %if.end107.if.end131_crit_edge, label %land.lhs.true

if.end107.if.end131_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.lhs.true:                                    ; preds = %if.end107
  %password = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 28
  %81 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %password, align 4
  %cmp110.not = icmp eq ptr %82, null
  br i1 %cmp110.not, label %land.lhs.true.if.end131_crit_edge, label %if.then112

land.lhs.true.if.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then112:                                       ; preds = %land.lhs.true
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %83)
  %char0307 = load i8, ptr %80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0307)
  %tobool115.not = icmp eq i8 %char0307, 0
  br i1 %tobool115.not, label %if.then112.if.end131_crit_edge, label %land.lhs.true116

if.then112.if.end131_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

land.lhs.true116:                                 ; preds = %if.then112
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %84)
  %char0308 = load i8, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0308)
  %tobool119.not = icmp eq i8 %char0308, 0
  br i1 %tobool119.not, label %land.lhs.true116.if.end131_crit_edge, label %if.then120

land.lhs.true116.if.end131_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then120:                                       ; preds = %land.lhs.true116
  %call126 = call i32 @qla4xxx_get_chap_index(ptr noundef %ha, ptr noundef nonnull %80, ptr noundef nonnull %82, i32 noundef 0, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.then120.exit_set_param_crit_edge

if.then120.exit_set_param_crit_edge:              ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_set_param

if.end129:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  %85 = or i16 %45, 128
  %86 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %idx, align 2
  %88 = call i16 @llvm.bswap.i16(i16 %87)
  %chap_tbl_idx = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 34
  %89 = ptrtoint ptr %chap_tbl_idx to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %chap_tbl_idx, align 2
  br label %if.end131

if.end131:                                        ; preds = %if.end129, %land.lhs.true116.if.end131_crit_edge, %if.then112.if.end131_crit_edge, %land.lhs.true.if.end131_crit_edge, %if.end107.if.end131_crit_edge
  %iscsi_opts.0 = phi i16 [ %85, %if.end129 ], [ %45, %land.lhs.true116.if.end131_crit_edge ], [ %45, %if.then112.if.end131_crit_edge ], [ %45, %land.lhs.true.if.end131_crit_edge ], [ %45, %if.end107.if.end131_crit_edge ]
  %username_in = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 27
  %90 = ptrtoint ptr %username_in to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %username_in, align 4
  %cmp132.not = icmp eq ptr %91, null
  br i1 %cmp132.not, label %if.end131.if.end156_crit_edge, label %land.lhs.true134

if.end131.if.end156_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

land.lhs.true134:                                 ; preds = %if.end131
  %password_in = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 29
  %92 = ptrtoint ptr %password_in to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %password_in, align 4
  %cmp135.not = icmp eq ptr %93, null
  br i1 %cmp135.not, label %land.lhs.true134.if.end156_crit_edge, label %if.then137

land.lhs.true134.if.end156_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then137:                                       ; preds = %land.lhs.true134
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %94)
  %char0 = load i8, ptr %91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool140.not = icmp eq i8 %char0, 0
  br i1 %tobool140.not, label %if.then137.if.end156_crit_edge, label %land.lhs.true141

if.then137.if.end156_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

land.lhs.true141:                                 ; preds = %if.then137
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %95)
  %char0306 = load i8, ptr %93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0306)
  %tobool144.not = icmp eq i8 %char0306, 0
  br i1 %tobool144.not, label %land.lhs.true141.if.end156_crit_edge, label %if.then145

land.lhs.true141.if.end156_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then145:                                       ; preds = %land.lhs.true141
  %96 = or i16 %iscsi_opts.0, 16
  %call151 = call i32 @qla4xxx_get_chap_index(ptr noundef %ha, ptr noundef nonnull %91, ptr noundef nonnull %93, i32 noundef 1, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then145.if.end156_crit_edge, label %if.then145.exit_set_param_crit_edge

if.then145.exit_set_param_crit_edge:              ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_set_param

if.then145.if.end156_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.end156:                                        ; preds = %if.then145.if.end156_crit_edge, %land.lhs.true141.if.end156_crit_edge, %if.then137.if.end156_crit_edge, %land.lhs.true134.if.end156_crit_edge, %if.end131.if.end156_crit_edge
  %iscsi_opts.1 = phi i16 [ %96, %if.then145.if.end156_crit_edge ], [ %iscsi_opts.0, %land.lhs.true141.if.end156_crit_edge ], [ %iscsi_opts.0, %if.then137.if.end156_crit_edge ], [ %iscsi_opts.0, %land.lhs.true134.if.end156_crit_edge ], [ %iscsi_opts.0, %if.end131.if.end156_crit_edge ]
  %initial_r2t_en = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 14
  %97 = ptrtoint ptr %initial_r2t_en to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %initial_r2t_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool157.not = icmp eq i32 %98, 0
  %99 = or i16 %iscsi_opts.1, 1024
  %spec.select309 = select i1 %tobool157.not, i16 %iscsi_opts.1, i16 %99
  %imm_data_en = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 16
  %100 = ptrtoint ptr %imm_data_en to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %imm_data_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool163.not = icmp eq i32 %101, 0
  %102 = or i16 %spec.select309, 2048
  %iscsi_opts.3 = select i1 %tobool163.not, i16 %spec.select309, i16 %102
  %103 = call i16 @llvm.bswap.i16(i16 %iscsi_opts.3)
  %104 = ptrtoint ptr %iscsi_options to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %iscsi_options, align 4
  %max_recv_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %8, i32 0, i32 23
  %105 = ptrtoint ptr %max_recv_dlength to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_recv_dlength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool170.not = icmp eq i32 %106, 0
  br i1 %tobool170.not, label %if.end156.if.end174_crit_edge, label %if.then171

if.end156.if.end174_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then171:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %div305 = lshr i32 %106, 9
  %conv173 = trunc i32 %div305 to i16
  %107 = call i16 @llvm.bswap.i16(i16 %conv173)
  %iscsi_max_rcv_data_seg_len = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 7
  %108 = ptrtoint ptr %iscsi_max_rcv_data_seg_len to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %iscsi_max_rcv_data_seg_len, align 2
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end156.if.end174_crit_edge
  %max_r2t = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 15
  %109 = ptrtoint ptr %max_r2t to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %max_r2t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool175.not = icmp eq i16 %110, 0
  br i1 %tobool175.not, label %if.end174.if.end178_crit_edge, label %if.then176

if.end174.if.end178_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then176:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %111 = call i16 @llvm.bswap.i16(i16 %110)
  %iscsi_max_outsnd_r2t = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 13
  %112 = ptrtoint ptr %iscsi_max_outsnd_r2t to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %iscsi_max_outsnd_r2t, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.end174.if.end178_crit_edge
  %first_burst = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 17
  %113 = ptrtoint ptr %first_burst to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %first_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool179.not = icmp eq i32 %114, 0
  br i1 %tobool179.not, label %if.end178.if.end184_crit_edge, label %if.then180

if.end178.if.end184_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then180:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %div182304 = lshr i32 %114, 9
  %conv183 = trunc i32 %div182304 to i16
  %115 = call i16 @llvm.bswap.i16(i16 %conv183)
  %iscsi_first_burst_len = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 10
  %116 = ptrtoint ptr %iscsi_first_burst_len to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %iscsi_first_burst_len, align 2
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %if.end178.if.end184_crit_edge
  %max_burst = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 18
  %117 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool185.not = icmp eq i32 %118, 0
  br i1 %tobool185.not, label %if.end184.if.end190_crit_edge, label %if.then186

if.end184.if.end190_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %div188303 = lshr i32 %118, 9
  %conv189 = trunc i32 %div188303 to i16
  %119 = call i16 @llvm.bswap.i16(i16 %conv189)
  %iscsi_max_burst_len = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 18
  %120 = ptrtoint ptr %iscsi_max_burst_len to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %iscsi_max_burst_len, align 2
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %if.end184.if.end190_crit_edge
  %time2wait = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 19
  %121 = ptrtoint ptr %time2wait to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %time2wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool191.not = icmp eq i32 %122, 0
  br i1 %tobool191.not, label %if.end190.if.end195_crit_edge, label %if.then192

if.end190.if.end195_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then192:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  %conv194 = trunc i32 %122 to i16
  %123 = call i16 @llvm.bswap.i16(i16 %conv194)
  %iscsi_def_time2wait = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 11
  %124 = ptrtoint ptr %iscsi_def_time2wait to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %iscsi_def_time2wait, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end190.if.end195_crit_edge
  %time2retain = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 20
  %125 = ptrtoint ptr %time2retain to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %time2retain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool196.not = icmp eq i32 %126, 0
  br i1 %tobool196.not, label %if.end195.if.end200_crit_edge, label %if.then197

if.end195.if.end200_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then197:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  %conv199 = trunc i32 %126 to i16
  %127 = call i16 @llvm.bswap.i16(i16 %conv199)
  %iscsi_def_time2retain = getelementptr inbounds %struct.dev_db_entry, ptr %call.i, i32 0, i32 12
  %128 = ptrtoint ptr %iscsi_def_time2retain to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %iscsi_def_time2retain, align 2
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %if.end195.if.end200_crit_edge
  %fw_ddb_index201 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %129 = ptrtoint ptr %fw_ddb_index201 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %fw_ddb_index201, align 4
  %131 = ptrtoint ptr %fw_ddb_entry_dma to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fw_ddb_entry_dma, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i312) #11
  %133 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i312, i32 0, i32 1
  %134 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i312, i32 0, i32 2
  %135 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i312, i32 0, i32 3
  %136 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i312, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i313) #11
  %137 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i313, i32 0, i32 4
  %138 = getelementptr inbounds i8, ptr %mbox_cmd.i312, i32 20
  %139 = call ptr @memset(ptr %138, i32 0, i32 12)
  %140 = call ptr @memset(ptr %mbox_sts.i313, i32 0, i32 32)
  %141 = ptrtoint ptr %mbox_cmd.i312 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 99, ptr %mbox_cmd.i312, align 4
  %conv.i = zext i16 %130 to i32
  %142 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv.i, ptr %133, align 4
  %143 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %132, ptr %134, align 4
  %144 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %135, align 4
  %145 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 512, ptr %136, align 4
  %call.i314 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd.i312, ptr noundef nonnull %mbox_sts.i313) #11
  %tobool.not.i = icmp eq ptr %mbx_sts, null
  br i1 %tobool.not.i, label %if.end200.do.body.i315_crit_edge, label %if.then.i

if.end200.do.body.i315_crit_edge:                 ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i315

if.then.i:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %mbox_sts.i313 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mbox_sts.i313, align 4
  %148 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %mbx_sts, align 4
  br label %do.body.i315

do.body.i315:                                     ; preds = %if.then.i, %if.end200.do.body.i315_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %149 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i = icmp eq i32 %149, 2
  br i1 %cmp.i, label %do.end.i317, label %do.body.i315.qla4xxx_set_ddb_entry.exit_crit_edge

do.body.i315.qla4xxx_set_ddb_entry.exit_crit_edge: ; preds = %do.body.i315
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_set_ddb_entry.exit

do.end.i317:                                      ; preds = %do.body.i315
  call void @__sanitizer_cov_trace_pc() #13
  %host_no.i316 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %150 = ptrtoint ptr %host_no.i316 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %host_no.i316, align 4
  %152 = ptrtoint ptr %mbox_sts.i313 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mbox_sts.i313, align 4
  %154 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %137, align 4
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %151, ptr noundef nonnull @.str.99, i32 noundef %call.i314, i32 noundef %153, i32 noundef %155) #14
  br label %qla4xxx_set_ddb_entry.exit

qla4xxx_set_ddb_entry.exit:                       ; preds = %do.end.i317, %do.body.i315.qla4xxx_set_ddb_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i313) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i312) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %cmp203.not = icmp eq i32 %call.i314, 0
  %spec.select310 = select i1 %cmp203.not, i32 0, i32 -22
  br label %exit_set_param

exit_set_param:                                   ; preds = %qla4xxx_set_ddb_entry.exit, %if.then145.exit_set_param_crit_edge, %if.then120.exit_set_param_crit_edge, %do.end103, %qla4xxx_get_default_ddb.exit.thread
  %rval.2 = phi i32 [ 1, %if.then120.exit_set_param_crit_edge ], [ 1, %if.then145.exit_set_param_crit_edge ], [ -22, %do.end103 ], [ %spec.select310, %qla4xxx_set_ddb_entry.exit ], [ -22, %qla4xxx_get_default_ddb.exit.thread ]
  %156 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev, align 8
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %158 = ptrtoint ptr %fw_ddb_entry_dma to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fw_ddb_entry_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev208, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %159, i32 noundef 0) #11
  br label %exit_set_param_no_free

exit_set_param_no_free:                           ; preds = %exit_set_param, %do.end, %do.body.exit_set_param_no_free_crit_edge
  %rval.3 = phi i32 [ %rval.2, %exit_set_param ], [ -12, %do.end ], [ -12, %do.body.exit_set_param_no_free_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ddb_entry_dma) #11
  ret i32 %rval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_mgmt_data(ptr noundef %ha, i16 noundef zeroext %fw_ddb_index, i16 noundef zeroext %stats_size, i32 noundef %stats_dma) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30, ptr %mbox_cmd, align 4
  %conv = zext i16 %fw_ddb_index to i32
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %stats_dma, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %conv10 = zext i16 %stats_size to i32
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv10, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %12 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp15 = icmp eq i32 %12, 2
  br i1 %cmp15, label %do.end, label %do.body.if.end22_crit_edge

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, i32 noundef %16) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_ip_state(ptr noundef %ha, i32 noundef %acb_idx, i32 noundef %ip_idx, ptr nocapture noundef writeonly %sts) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %2 = getelementptr inbounds i8, ptr %mbox_cmd, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %5 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 145, ptr %mbox_cmd, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %acb_idx, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ip_idx, ptr %1, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 3, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp5 = icmp eq i32 %8, 2
  br i1 %cmp5, label %do.end, label %do.body.if.end11_crit_edge

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef %12) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  %13 = call ptr @memcpy(ptr %sts, ptr %mbox_sts, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_nvram(ptr noundef %ha, i32 noundef %nvram_dma, i32 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 120, ptr %mbox_cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nvram_dma, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %12 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp12 = icmp eq i32 %12, 2
  br i1 %cmp12, label %do.end, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %17 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %16, ptr noundef nonnull @.str.188, i32 noundef %18) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_set_nvram(ptr noundef %ha, i32 noundef %nvram_dma, i32 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 121, ptr %mbox_cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nvram_dma, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %12 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp12 = icmp eq i32 %12, 2
  br i1 %cmp12, label %do.end, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %17 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %16, ptr noundef nonnull @.str.189, i32 noundef %18) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_restore_factory_defaults(ptr noundef %ha, i32 noundef %region, i32 noundef %field0, i32 noundef %field1) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %3 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %6 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 135, ptr %mbox_cmd, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %region, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %field0, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %field1, ptr %2, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %10 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %do.end, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %13 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no, align 4
  %15 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %14, ptr noundef nonnull @.str.190, i32 noundef %16) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_set_param(ptr noundef %ha, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 89, ptr %mbox_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %param)
  %cmp = icmp eq i32 %param, 512
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %5, align 4
  %7 = call ptr @memcpy(ptr %4, ptr @str, i32 23)
  %call4 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 2, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %do.end9, label %if.then.exit_set_param_crit_edge

if.then.exit_set_param_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_set_param

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.193, i32 noundef %param) #14
  br label %exit_set_param

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pdev10 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev10, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev11, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.193, i32 noundef %13) #14
  br label %exit_set_param

exit_set_param:                                   ; preds = %do.end9, %do.end, %if.then.exit_set_param_crit_edge
  %status.0 = phi i32 [ 1, %do.end9 ], [ 0, %if.then.exit_set_param_crit_edge ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_post_idc_ack(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %4 = getelementptr inbounds i8, ptr %mbox_cmd, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %7 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 257, ptr %mbox_cmd, align 4
  %idc_info = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147
  %8 = ptrtoint ptr %idc_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idc_info, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %info1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 1
  %11 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info1, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  %info2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 2
  %14 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info2, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %info3 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 3
  %17 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info3, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  br i1 %cmp, label %do.end, label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.196, i32 noundef %23) #14
  br label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.196) #14
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_84xx_config_acb(ptr noundef %ha, i32 noundef %acb_config) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd.i = alloca [8 x i32], align 4
  %mbox_sts.i = alloca [8 x i32], align 4
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  %acb_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  %5 = call ptr @memset(ptr %mbox_cmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %6 = call ptr @memset(ptr %mbox_sts, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acb_dma) #11
  %7 = ptrtoint ptr %acb_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %acb_dma, align 4, !annotation !427
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 768, ptr noundef nonnull %acb_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev2, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201) #14
  br label %exit_config_acb

if.end:                                           ; preds = %entry
  %12 = call ptr @memset(ptr %call.i, i32 0, i32 768)
  %13 = zext i32 %acb_config to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %acb_config, label %do.end43 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %acb_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %acb_dma, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %16 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 1
  %17 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 3
  %19 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  %20 = getelementptr inbounds i8, ptr %mbox_cmd.i, i32 20
  %21 = call ptr @memset(ptr %20, i32 0, i32 12)
  %22 = call ptr @memset(ptr %mbox_sts.i, i32 0, i32 32)
  %23 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 137, ptr %mbox_cmd.i, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %16, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %17, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %18, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 768, ptr %19, align 4
  %call.i99 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd.i, ptr noundef nonnull %mbox_sts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.not.i = icmp eq i32 %call.i99, 0
  br i1 %cmp.not.i, label %if.end5, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %28 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp12.i = icmp eq i32 %28, 2
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.qla4xxx_get_acb.exit.thread_crit_edge

do.body.i.qla4xxx_get_acb.exit.thread_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qla4xxx_get_acb.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %mbox_sts.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mbox_sts.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev.i, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, i32 noundef %32) #14
  br label %qla4xxx_get_acb.exit.thread

qla4xxx_get_acb.exit.thread:                      ; preds = %do.end.i, %do.body.i.qla4xxx_get_acb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  br label %exit_free_acb

if.end5:                                          ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i) #11
  %call6 = call i32 @qla4xxx_disable_acb(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end5.exit_free_acb_crit_edge

if.end5.exit_free_acb_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_acb

if.end9:                                          ; preds = %if.end5
  %saved_acb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 148
  %33 = ptrtoint ptr %saved_acb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %saved_acb, align 8
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %if.end14, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end14:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 768) #16
  %36 = ptrtoint ptr %saved_acb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %saved_acb, align 8
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end20, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev22, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201) #14
  br label %exit_free_acb

if.end23:                                         ; preds = %if.end14.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %39 = phi ptr [ %call7.i.i, %if.end14.if.end23_crit_edge ], [ %34, %if.end9.if.end23_crit_edge ]
  %40 = call ptr @memcpy(ptr %39, ptr %call.i, i32 768)
  br label %exit_free_acb

sw.bb25:                                          ; preds = %if.end
  %saved_acb26 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 148
  %41 = ptrtoint ptr %saved_acb26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %saved_acb26, align 8
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev33, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.201) #14
  br label %exit_free_acb

if.end34:                                         ; preds = %sw.bb25
  %45 = call ptr @memcpy(ptr %call.i, ptr %42, i32 768)
  %46 = ptrtoint ptr %acb_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %acb_dma, align 4
  %48 = call ptr @memset(ptr %4, i32 0, i32 12)
  %49 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %50 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 136, ptr %mbox_cmd, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %0, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %47, ptr %1, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %2, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 768, ptr %3, align 4
  %call.i100 = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %cmp.not.i101, label %if.end34.exit_free_acb_crit_edge, label %do.body.i103

if.end34.exit_free_acb_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_acb

do.body.i103:                                     ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %55 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp12.i102 = icmp eq i32 %55, 2
  br i1 %cmp12.i102, label %do.end.i106, label %do.body.i103.exit_free_acb_crit_edge

do.body.i103.exit_free_acb_crit_edge:             ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_acb

do.end.i106:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  %dev.i105 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %dev.i105, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef %59) #14
  br label %exit_free_acb

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev45, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.201) #14
  br label %exit_free_acb

exit_free_acb:                                    ; preds = %do.end43, %do.end.i106, %do.body.i103.exit_free_acb_crit_edge, %if.end34.exit_free_acb_crit_edge, %do.end31, %if.end23, %do.end20, %if.end5.exit_free_acb_crit_edge, %qla4xxx_get_acb.exit.thread
  %rval.0 = phi i32 [ 0, %do.end43 ], [ 1, %do.end31 ], [ 1, %if.end5.exit_free_acb_crit_edge ], [ 0, %if.end23 ], [ 1, %do.end20 ], [ %call.i99, %qla4xxx_get_acb.exit.thread ], [ 0, %if.end34.exit_free_acb_crit_edge ], [ %call.i100, %do.body.i103.exit_free_acb_crit_edge ], [ %call.i100, %do.end.i106 ]
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %64 = ptrtoint ptr %acb_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %acb_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev47, i32 noundef 768, ptr noundef nonnull %call.i, i32 noundef %65, i32 noundef 0) #11
  br label %exit_config_acb

exit_config_acb:                                  ; preds = %exit_free_acb, %do.end
  %rval.1 = phi i32 [ %rval.0, %exit_free_acb ], [ 1, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %acb_config)
  %cmp48 = icmp eq i32 %acb_config, 1
  br i1 %cmp48, label %land.lhs.true, label %exit_config_acb.do.body55_crit_edge

exit_config_acb.do.body55_crit_edge:              ; preds = %exit_config_acb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

land.lhs.true:                                    ; preds = %exit_config_acb
  %saved_acb49 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 148
  %66 = ptrtoint ptr %saved_acb49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %saved_acb49, align 8
  %tobool50.not = icmp eq ptr %67, null
  br i1 %tobool50.not, label %land.lhs.true.do.body55_crit_edge, label %if.then51

land.lhs.true.do.body55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %67) #11
  %68 = ptrtoint ptr %saved_acb49 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %saved_acb49, align 8
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %land.lhs.true.do.body55_crit_edge, %exit_config_acb.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %69 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp56 = icmp eq i32 %69, 2
  br i1 %cmp56, label %do.end60, label %do.body55.do.end66_crit_edge

do.body55.do.end66_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.1)
  %cmp63 = icmp eq i32 %rval.1, 0
  %cond = select i1 %cmp63, ptr @.str.213, ptr @.str.214
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev62, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.201, ptr noundef nonnull %cond) #14
  br label %do.end66

do.end66:                                         ; preds = %do.end60, %do.body55.do.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acb_dma) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %rval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_get_port_config(ptr noundef %ha, ptr nocapture noundef writeonly %config) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %0 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %3 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 291, ptr %mbox_cmd, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %config, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.215, i32 noundef %11) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_set_port_config(ptr noundef %ha, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #11
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #11
  %1 = getelementptr inbounds i8, ptr %mbox_cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %3 = call ptr @memset(ptr %mbox_sts, i32 0, i32 32)
  %4 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 290, ptr %mbox_cmd, align 4
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %call = call i32 @qla4xxx_mailbox_command(ptr noundef %ha, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_sts, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.119, ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.216, i32 noundef %11) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !353, !354, !355, !356, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !402, !404, !405, !406, !408, !409}
!llvm.module.flags = !{!410, !411, !412, !413, !414, !415, !416, !417}
!llvm.ident = !{!418}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 94, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qla4xxx_mailbox_command._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qla4xxx_mailbox_command._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 101, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qla4xxx_mailbox_command._entry.3, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @qla4xxx_mailbox_command._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 111, i32 3}
!14 = !{ptr @qla4xxx_mailbox_command._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qla4xxx_mailbox_command._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 128, i32 4}
!18 = !{ptr @qla4xxx_mailbox_command._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qla4xxx_mailbox_command._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 137, i32 4}
!22 = !{ptr @qla4xxx_mailbox_command._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @qla4xxx_mailbox_command._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 147, i32 4}
!26 = !{ptr @qla4xxx_mailbox_command._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qla4xxx_mailbox_command._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 208, i32 4}
!30 = !{ptr @qla4xxx_mailbox_command._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qla4xxx_mailbox_command._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 214, i32 3}
!34 = !{ptr @qla4xxx_mailbox_command._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qla4xxx_mailbox_command._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 220, i32 4}
!38 = !{ptr @qla4xxx_mailbox_command._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qla4xxx_mailbox_command._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 226, i32 4}
!42 = !{ptr @qla4xxx_mailbox_command._entry.29, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qla4xxx_mailbox_command._entry_ptr.31, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 252, i32 3}
!46 = !{ptr @qla4xxx_mailbox_command._entry.32, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qla4xxx_mailbox_command._entry_ptr.34, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 258, i32 3}
!50 = !{ptr @qla4xxx_mailbox_command._entry.35, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qla4xxx_mailbox_command._entry_ptr.37, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 303, i32 3}
!54 = !{ptr @.str.39, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qla4xxx_get_minidump_template._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qla4xxx_get_minidump_template._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 331, i32 3}
!59 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @qla4xxx_req_template_size._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @qla4xxx_req_template_size._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 339, i32 3}
!64 = !{ptr @qla4xxx_req_template_size._entry.42, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qla4xxx_req_template_size._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 351, i32 2}
!68 = !{ptr @.str.46, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qla4xxx_mailbox_premature_completion._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qla4xxx_mailbox_premature_completion._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 357, i32 4}
!73 = !{ptr @qla4xxx_mailbox_premature_completion._entry.47, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qla4xxx_mailbox_premature_completion._entry_ptr.49, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 363, i32 4}
!77 = !{ptr @qla4xxx_mailbox_premature_completion._entry.50, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qla4xxx_mailbox_premature_completion._entry_ptr.52, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 410, i32 3}
!81 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qla4xxx_get_ifcb._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qla4xxx_get_ifcb._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.55, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 591, i32 3}
!86 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qla4xxx_update_local_ifcb._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qla4xxx_update_local_ifcb._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 631, i32 3}
!91 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qla4xxx_initialize_fw_cb._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qla4xxx_initialize_fw_cb._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.60, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 676, i32 3}
!96 = !{ptr @qla4xxx_initialize_fw_cb._entry.59, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qla4xxx_initialize_fw_cb._entry_ptr.61, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 684, i32 3}
!100 = !{ptr @qla4xxx_initialize_fw_cb._entry.62, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qla4xxx_initialize_fw_cb._entry_ptr.64, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 712, i32 3}
!104 = !{ptr @qla4xxx_get_dhcp_ip_address._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @qla4xxx_get_dhcp_ip_address._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.67, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 720, i32 3}
!108 = !{ptr @qla4xxx_get_dhcp_ip_address._entry.66, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @qla4xxx_get_dhcp_ip_address._entry_ptr.68, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 753, i32 3}
!112 = !{ptr @.str.70, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qla4xxx_get_firmware_state._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @qla4xxx_get_firmware_state._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 761, i32 2}
!117 = !{ptr @qla4xxx_get_firmware_state._entry.71, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qla4xxx_get_firmware_state._entry_ptr.73, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 784, i32 3}
!121 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qla4xxx_get_firmware_status._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qla4xxx_get_firmware_status._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 792, i32 2}
!126 = !{ptr @qla4xxx_get_firmware_status._entry.76, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qla4xxx_get_firmware_status._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 804, i32 3}
!130 = !{ptr @qla4xxx_get_firmware_status._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qla4xxx_get_firmware_status._entry_ptr.81, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 839, i32 3}
!134 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @qla4xxx_get_fwddb_entry._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @qla4xxx_get_fwddb_entry._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 856, i32 3}
!139 = !{ptr @qla4xxx_get_fwddb_entry._entry.84, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @qla4xxx_get_fwddb_entry._entry_ptr.86, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 862, i32 3}
!143 = !{ptr @qla4xxx_get_fwddb_entry._entry.87, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @qla4xxx_get_fwddb_entry._entry_ptr.89, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 870, i32 4}
!147 = !{ptr @qla4xxx_get_fwddb_entry._entry.90, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qla4xxx_get_fwddb_entry._entry_ptr.92, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.94, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 879, i32 4}
!151 = !{ptr @qla4xxx_get_fwddb_entry._entry.93, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @qla4xxx_get_fwddb_entry._entry_ptr.95, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.96, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 929, i32 2}
!155 = !{ptr @.str.97, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @qla4xxx_conn_open._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @qla4xxx_conn_open._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.98, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 968, i32 2}
!160 = !{ptr @.str.99, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @qla4xxx_set_ddb_entry._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @qla4xxx_set_ddb_entry._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 991, i32 3}
!165 = !{ptr @.str.101, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @qla4xxx_session_logout_ddb._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @qla4xxx_session_logout_ddb._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.102, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1026, i32 3}
!170 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @qla4xxx_get_crash_record._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @qla4xxx_get_crash_record._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.105, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1032, i32 3}
!175 = !{ptr @qla4xxx_get_crash_record._entry.104, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qla4xxx_get_crash_record._entry_ptr.106, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.107, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1110, i32 3}
!179 = !{ptr @.str.108, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qla4xxx_get_conn_event_log._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qla4xxx_get_conn_event_log._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.109, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1202, i32 3}
!184 = !{ptr @.str.110, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @qla4xxx_abort_task._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @qla4xxx_abort_task._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.111, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1229, i32 2}
!189 = !{ptr @.str.112, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @qla4xxx_reset_lun._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @qla4xxx_reset_lun._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.113, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1274, i32 2}
!194 = !{ptr @.str.114, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @qla4xxx_reset_target._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @qla4xxx_reset_target._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1314, i32 3}
!199 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @qla4xxx_get_flash._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @qla4xxx_get_flash._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.117, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1342, i32 3}
!204 = !{ptr @.str.118, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.119, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @qla4xxx_about_firmware._entry, !203, !"_entry", i1 false, i1 false}
!207 = !{ptr @qla4xxx_about_firmware._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.121, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1358, i32 3}
!210 = !{ptr @qla4xxx_about_firmware._entry.120, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @qla4xxx_about_firmware._entry_ptr.122, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.123, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1411, i32 3}
!214 = !{ptr @.str.124, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @qla4xxx_get_default_ddb._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @qla4xxx_get_default_ddb._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.125, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1434, i32 3}
!219 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @qla4xxx_req_ddb_entry._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @qla4xxx_req_ddb_entry._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.127, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1457, i32 3}
!224 = !{ptr @qla4xxx_clear_ddb_entry._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @qla4xxx_clear_ddb_entry._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1483, i32 3}
!228 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @qla4xxx_set_flash._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @qla4xxx_set_flash._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.130, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1504, i32 3}
!233 = !{ptr @.str.131, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @qla4xxx_bootdb_by_index._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @qla4xxx_bootdb_by_index._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1512, i32 3}
!238 = !{ptr @qla4xxx_bootdb_by_index._entry.132, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @qla4xxx_bootdb_by_index._entry_ptr.134, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.135, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1553, i32 3}
!242 = !{ptr @qla4xxx_flashdb_by_index._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @qla4xxx_flashdb_by_index._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.137, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1561, i32 3}
!246 = !{ptr @qla4xxx_flashdb_by_index._entry.136, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @qla4xxx_flashdb_by_index._entry_ptr.138, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.139, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1606, i32 2}
!250 = !{ptr @.str.140, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @qla4xxx_get_chap._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @qla4xxx_get_chap._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.142, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1610, i32 3}
!255 = !{ptr @qla4xxx_get_chap._entry.141, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @qla4xxx_get_chap._entry_ptr.143, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.144, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1699, i32 3}
!259 = !{ptr @.str.145, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @qla4xxx_get_uni_chap_at_index._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @qla4xxx_get_uni_chap_at_index._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.147, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1705, i32 3}
!264 = !{ptr @qla4xxx_get_uni_chap_at_index._entry.146, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.148, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.150, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1717, i32 3}
!268 = !{ptr @qla4xxx_get_uni_chap_at_index._entry.149, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.151, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.153, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1730, i32 3}
!272 = !{ptr @qla4xxx_get_uni_chap_at_index._entry.152, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @qla4xxx_get_uni_chap_at_index._entry_ptr.154, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.155, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1774, i32 3}
!276 = !{ptr @qla4xxx_get_chap_index._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @qla4xxx_get_chap_index._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.157, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1779, i32 3}
!280 = !{ptr @qla4xxx_get_chap_index._entry.156, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @qla4xxx_get_chap_index._entry_ptr.158, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.159, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1847, i32 3}
!284 = !{ptr @.str.160, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @qla4xxx_conn_close_sess_logout._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @qla4xxx_conn_close_sess_logout._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.161, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1906, i32 3}
!289 = !{ptr @.str.162, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @qla4xxx_disable_acb._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @qla4xxx_disable_acb._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.164, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1923, i32 5}
!294 = !{ptr @qla4xxx_disable_acb._entry.163, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @qla4xxx_disable_acb._entry_ptr.165, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.166, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1949, i32 3}
!298 = !{ptr @.str.167, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @qla4xxx_get_acb._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @qla4xxx_get_acb._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.168, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1971, i32 3}
!303 = !{ptr @.str.169, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @qla4xxx_set_acb._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @qla4xxx_set_acb._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.170, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2001, i32 3}
!308 = !{ptr @.str.171, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @qla4xxx_set_param_ddbentry._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @qla4xxx_set_param_ddbentry._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.173, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2025, i32 2}
!313 = !{ptr @qla4xxx_set_param_ddbentry._entry.172, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @qla4xxx_set_param_ddbentry._entry_ptr.174, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.176, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2048, i32 3}
!317 = !{ptr @qla4xxx_set_param_ddbentry._entry.175, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @qla4xxx_set_param_ddbentry._entry_ptr.177, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.179, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2058, i32 3}
!321 = !{ptr @qla4xxx_set_param_ddbentry._entry.178, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @qla4xxx_set_param_ddbentry._entry_ptr.180, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.182, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2063, i32 3}
!325 = !{ptr @qla4xxx_set_param_ddbentry._entry.181, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @qla4xxx_set_param_ddbentry._entry_ptr.183, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.184, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2158, i32 3}
!329 = !{ptr @.str.185, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @qla4xxx_get_mgmt_data._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @qla4xxx_get_mgmt_data._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.186, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2181, i32 3}
!334 = !{ptr @.str.187, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @qla4xxx_get_ip_state._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @qla4xxx_get_ip_state._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.188, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2208, i32 3}
!339 = !{ptr @qla4xxx_get_nvram._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @qla4xxx_get_nvram._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.189, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2234, i32 3}
!343 = !{ptr @qla4xxx_set_nvram._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @qla4xxx_set_nvram._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.190, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2260, i32 3}
!347 = !{ptr @qla4xxx_restore_factory_defaults._entry, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @qla4xxx_restore_factory_defaults._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!349 = distinct !{null, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2284, i32 33}
!351 = !{ptr @.str.192, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2287, i32 3}
!353 = !{ptr @.str.193, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @qla4_8xxx_set_param._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @qla4_8xxx_set_param._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @qla4_8xxx_set_param._entry.194, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2296, i32 3}
!358 = !{ptr @qla4_8xxx_set_param._entry_ptr.195, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.196, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2327, i32 3}
!361 = !{ptr @qla4_83xx_post_idc_ack._entry, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @qla4_83xx_post_idc_ack._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.198, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2330, i32 9}
!365 = !{ptr @qla4_83xx_post_idc_ack._entry.197, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @qla4_83xx_post_idc_ack._entry_ptr.199, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.200, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2348, i32 3}
!369 = !{ptr @.str.201, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @qla4_84xx_config_acb._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @qla4_84xx_config_acb._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @qla4_84xx_config_acb._entry.202, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2368, i32 4}
!374 = !{ptr @qla4_84xx_config_acb._entry_ptr.203, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.205, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2378, i32 4}
!377 = !{ptr @qla4_84xx_config_acb._entry.204, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @qla4_84xx_config_acb._entry_ptr.206, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.208, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2392, i32 3}
!381 = !{ptr @qla4_84xx_config_acb._entry.207, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @qla4_84xx_config_acb._entry_ptr.209, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.211, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2404, i32 2}
!385 = !{ptr @qla4_84xx_config_acb._entry.210, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @qla4_84xx_config_acb._entry_ptr.212, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.213, !384, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.214, !384, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.215, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2426, i32 3}
!391 = !{ptr @qla4_83xx_get_port_config._entry, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @qla4_83xx_get_port_config._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.216, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 2447, i32 3}
!395 = !{ptr @qla4_83xx_set_port_config._entry, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @qla4_83xx_set_port_config._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.217, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 388, i32 3}
!399 = !{ptr @.str.218, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @qla4xxx_set_ifcb._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @qla4xxx_set_ifcb._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.219, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1881, i32 3}
!404 = !{ptr @qla4_84xx_extend_idc_tmo._entry, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @qla4_84xx_extend_idc_tmo._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.221, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/qla4xxx/ql4_mbx.c", i32 1886, i32 3}
!408 = !{ptr @qla4_84xx_extend_idc_tmo._entry.220, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @qla4_84xx_extend_idc_tmo._entry_ptr.222, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{i32 1, !"wchar_size", i32 2}
!411 = !{i32 1, !"min_enum_size", i32 4}
!412 = !{i32 8, !"branch-target-enforcement", i32 0}
!413 = !{i32 8, !"sign-return-address", i32 0}
!414 = !{i32 8, !"sign-return-address-all", i32 0}
!415 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!416 = !{i32 7, !"uwtable", i32 1}
!417 = !{i32 7, !"frame-pointer", i32 2}
!418 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!419 = !{i64 2159592760}
!420 = !{i64 5082147}
!421 = !{i64 2159593183}
!422 = !{i64 5082565}
!423 = !{i64 2159593880}
!424 = !{i64 2159594129}
!425 = !{i64 2159594870}
!426 = !{i64 2159595372}
!427 = !{!"auto-init"}
