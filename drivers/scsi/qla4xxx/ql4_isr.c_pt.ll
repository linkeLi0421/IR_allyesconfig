; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_isr.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_isr.c"
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
%struct.queue_entry = type { [60 x i8], i32 }
%struct.status_entry = type { %struct.qla4_header, i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, [32 x i8] }
%struct.qla4_header = type { i8, i8, i8, i8 }
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
%struct.ddb_entry = type { ptr, ptr, ptr, i16, i32, i16, %struct.dev_db_entry, ptr, ptr, i32, i16, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i16 }
%struct.dev_db_entry = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, [16 x i8], [32 x i8], [32 x i8], i16, i16, i16, i8, i16, [54 x i8], [224 x i8], [16 x i8], [16 x i8], i16, i16, i16, i8, i8, i32, i32, [43 x i8], i16, i16 }
%struct.passthru_status = type { %struct.qla4_header, i32, i16, i16, i8, i8, i16, i16, [10 x i8], i32, [12 x i8], i32, [16 x i8] }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.185, [0 x i8] }
%union.anon.185 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ql4_task_data = type { ptr, i8, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.passthru_status, %struct.work_struct }
%struct.status_cont_entry = type { %struct.qla4_header, [60 x i8] }
%struct.mbox_status_iocb = type { %struct.qla4_header, i32, [8 x i32], [6 x i32] }
%struct.mrb = type { ptr, ptr, i32, i16, i32 }
%struct.response = type { [60 x i8], i32 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_reg_83xx = type { [16 x i32], [496 x i32], [16 x i32], [496 x i32], i32, [63 x i32], i32, [63 x i32], i32, [1919 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [544 x i32], i32, i32, i32 }
%struct.device_reg_82xx = type { i32, [63 x i32], i32, [63 x i32], i32, [63 x i32], [8 x i32], [24 x i32], i32, [31 x i32], [8 x i32], [56 x i32], i32, i32 }
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@qla4xxx_process_response_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid status received\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4xxx_process_response_queue\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla4xxx/ql4_isr.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr = internal global ptr @qla4xxx_process_response_queue._entry, section ".printk_index", align 4
@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_process_response_queue._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi%ld: %s: FW device queue full, srb %p\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr.7 = internal global ptr @qla4xxx_process_response_queue._entry.5, section ".printk_index", align 4
@qla4xxx_process_response_queue._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scsi%ld: %s: Continuation entry - ignoring\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr.10 = internal global ptr @qla4xxx_process_response_queue._entry.8, section ".printk_index", align 4
@qla4xxx_process_response_queue._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 544, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: mbox status IOCB\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr.14 = internal global ptr @qla4xxx_process_response_queue._entry.11, section ".printk_index", align 4
@qla4xxx_process_response_queue._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scsi%ld: %s: Invalid entry %x in response queue \0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr.17 = internal global ptr @qla4xxx_process_response_queue._entry.15, section ".printk_index", align 4
@qla4xxx_process_response_queue._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"scsi%ld: %s: Invalid handle(srb)=%p type=%x IOCS=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_process_response_queue._entry_ptr.20 = internal global ptr @qla4xxx_process_response_queue._entry.18, section ".printk_index", align 4
@qla4xxx_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016qla4xxx: Interrupt with NULL host ptr\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_intr_handler\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_intr_handler._entry_ptr = internal global ptr @qla4xxx_intr_handler._entry, section ".printk_index", align 4
@qla4xxx_intr_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016scsi%ld: Fatal Error, Status 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4xxx_intr_handler._entry_ptr.25 = internal global ptr @qla4xxx_intr_handler._entry.23, section ".printk_index", align 4
@qla4_8xxx_msi_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016qla4xxx: MSIX: Interrupt with NULL host ptr\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_8xxx_msi_handler\00", [42 x i8] zeroinitializer }, align 32
@qla4_8xxx_msi_handler._entry_ptr = internal global ptr @qla4_8xxx_msi_handler._entry, section ".printk_index", align 4
@qla4_8xxx_msix_rsp_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1442, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: It is a spurious iocb interrupt!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4_8xxx_msix_rsp_q\00", [43 x i8] zeroinitializer }, align 32
@qla4_8xxx_msix_rsp_q._entry_ptr = internal global ptr @qla4_8xxx_msix_rsp_q._entry, section ".printk_index", align 4
@qla4_8xxx_msix_rsp_q._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 1454, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: spurious iocb interrupt...\0A\00", [32 x i8] zeroinitializer }, align 32
@qla4_8xxx_msix_rsp_q._entry_ptr.32 = internal global ptr @qla4_8xxx_msix_rsp_q._entry.30, section ".printk_index", align 4
@qla4xxx_process_aen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"qla4xxx(%ld): AEN[%d]=0x%08x, mbx1=0x%08x mbx2=0x%08x mbx3=0x%08x mbx4=0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4xxx_process_aen\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_process_aen._entry_ptr = internal global ptr @qla4xxx_process_aen._entry, section ".printk_index", align 4
@qla4xxx_process_aen._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"scsi%ld: AEN[%d] %04x, index [%d] state=%04x FLUSHED!\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_process_aen._entry_ptr.37 = internal global ptr @qla4xxx_process_aen._entry.35, section ".printk_index", align 4
@ql4xenablemsix = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1540, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: MSI Interrupts not supported for ISP%04x, Falling back-to INTx mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_request_irqs\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr = internal global ptr @qla4xxx_request_irqs._entry, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1553, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MSI-X: Enabled (0x%X).\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.42 = internal global ptr @qla4xxx_request_irqs._entry.40, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 1558, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: ISP%04x: MSI-X: Falling back-to INTx mode. ret = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.45 = internal global ptr @qla4xxx_request_irqs._entry.43, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 1564, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MSI-X: Falling back-to MSI mode -- %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.49 = internal global ptr @qla4xxx_request_irqs._entry.46, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla4xxx\00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.39, ptr @.str.2, i32 1573, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSI: Enabled.\0A\00", [17 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.53 = internal global ptr @qla4xxx_request_irqs._entry.51, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.39, ptr @.str.2, i32 1578, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"MSI: Failed to reserve interrupt %d already in use.\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.56 = internal global ptr @qla4xxx_request_irqs._entry.54, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.39, ptr @.str.2, i32 1586, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ISP82xx Legacy interrupt not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.59 = internal global ptr @qla4xxx_request_irqs._entry.57, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.39, ptr @.str.2, i32 1594, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTx: Enabled.\0A\00", [16 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.62 = internal global ptr @qla4xxx_request_irqs._entry.60, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.39, ptr @.str.2, i32 1600, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"INTx: Failed to reserve interrupt %d already in use.\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.65 = internal global ptr @qla4xxx_request_irqs._entry.63, section ".printk_index", align 4
@qla4xxx_request_irqs._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.39, ptr @.str.2, i32 1608, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: irq %d attached\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_request_irqs._entry_ptr.68 = internal global ptr @qla4xxx_request_irqs._entry.66, section ".printk_index", align 4
@qla4xxx_status_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 127, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s invalid status entry: handle=0x%0x, srb=%p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_status_entry\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr = internal global ptr @qla4xxx_status_entry._entry, section ".printk_index", align 4
@qla4xxx_status_entry._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"scsi%ld: %s: Command already returned back to OS pkt->handle=%d srb=%p srb->state:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.73 = internal global ptr @qla4xxx_status_entry._entry.71, section ".printk_index", align 4
@qla4xxx_status_entry._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 142, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Command is NULL: already returned to OS (srb=%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.76 = internal global ptr @qla4xxx_status_entry._entry.74, section ".printk_index", align 4
@qla4xxx_status_entry._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"scsi%ld:%d:%d:%llu: %s: Mid-layer Data underrun0, xferlen = 0x%x, residual = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.79 = internal global ptr @qla4xxx_status_entry._entry.77, section ".printk_index", align 4
@qla4xxx_status_entry._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"scsi%ld:%d:%d:%llu: %s: Device RESET occurred\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.82 = internal global ptr @qla4xxx_status_entry._entry.80, section ".printk_index", align 4
@qla4xxx_status_entry._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.70, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"scsi%ld:%d:%d:%llu: %s: Abort occurred\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.85 = internal global ptr @qla4xxx_status_entry._entry.83, section ".printk_index", align 4
@qla4xxx_status_entry._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.70, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016scsi%ld:%d:%d:%llu: Timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.88 = internal global ptr @qla4xxx_status_entry._entry.86, section ".printk_index", align 4
@qla4xxx_status_entry._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.70, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld:%d:%d:%llu: %s: Data overrun\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.91 = internal global ptr @qla4xxx_status_entry._entry.89, section ".printk_index", align 4
@qla4xxx_status_entry._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.70, ptr @.str.2, i32 267, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"scsi%ld:%d:%d:%llu: %s: Mid-layer Data underrun, xferlen = 0x%x,residual = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.94 = internal global ptr @qla4xxx_status_entry._entry.92, section ".printk_index", align 4
@qla4xxx_status_entry._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.70, ptr @.str.2, i32 299, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"scsi%ld:%d:%d:%llu: %s: Dropped frame(s) detected (0x%x of 0x%x bytes).\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.97 = internal global ptr @qla4xxx_status_entry._entry.95, section ".printk_index", align 4
@qla4xxx_status_entry._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.70, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016scsi%ld:%d:%d:%llu: SCS_DEVICE state: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.100 = internal global ptr @qla4xxx_status_entry._entry.98, section ".printk_index", align 4
@qla4xxx_status_entry._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.70, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"scsi%ld:%d:%llu: %s: QUEUE FULL detected compl=%02x, scsi=%02x, state=%02x, iFlags=%02x, iResp=%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_status_entry._entry_ptr.103 = internal global ptr @qla4xxx_status_entry._entry.101, section ".printk_index", align 4
@qla4xxx_copy_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 31, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld:%d:%d:%llu: %s: sense len 0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_copy_sense\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_copy_sense._entry_ptr = internal global ptr @qla4xxx_copy_sense._entry, section ".printk_index", align 4
@qla4xxx_copy_sense._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016scsi%ld:%d:%d:%llu: %s: sense key = %x, ASL= %02x, ASC/ASCQ = %02x/%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_copy_sense._entry_ptr.108 = internal global ptr @qla4xxx_copy_sense._entry.106, section ".printk_index", align 4
@qla4xxx_passthru_status_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Invalid target index = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4xxx_passthru_status_entry\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_passthru_status_entry._entry_ptr = internal global ptr @qla4xxx_passthru_status_entry._entry, section ".printk_index", align 4
@qla4xxx_passthru_status_entry._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Task is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_passthru_status_entry._entry_ptr.113 = internal global ptr @qla4xxx_passthru_status_entry._entry.111, section ".printk_index", align 4
@qla4xxx_status_cont_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016scsi%ld: %s: Cmd already returned back to OS srb=%p srb->state:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4xxx_status_cont_entry\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_status_cont_entry._entry_ptr = internal global ptr @qla4xxx_status_cont_entry._entry, section ".printk_index", align 4
@qla4xxx_mbox_status_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 434, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: mrb[%d] is null\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4xxx_mbox_status_entry\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_mbox_status_entry._entry_ptr = internal global ptr @qla4xxx_mbox_status_entry._entry, section ".printk_index", align 4
@qla4xxx_mbox_status_entry._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 444, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: mbox_cmd = 0x%x, mbox_sts[0] = 0x%x, mbox_sts[6] = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_mbox_status_entry._entry_ptr.120 = internal global ptr @qla4xxx_mbox_status_entry._entry.118, section ".printk_index", align 4
@qla4xxx_mbox_status_entry._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.2, i32 459, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid mbox_cmd = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_mbox_status_entry._entry_ptr.123 = internal global ptr @qla4xxx_mbox_status_entry._entry.121, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 706, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: System Err\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_isr_decode_mailbox\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr = internal global ptr @qla4xxx_isr_decode_mailbox._entry, section ".printk_index", align 4
@ql4xdontresethba = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_isr_decode_mailbox._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scsi%ld: %s:Don't Reset HBA\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.128 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.126, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi%ld: AEN %04x, ERROR Status, Reset HA\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.131 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.129, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.2, i32 739, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: LINK UP\0A\00", [19 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.134 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.132, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.125, ptr @.str.2, i32 757, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: LINK DOWN\0A\00", [17 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.137 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.135, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.125, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scsi%ld: AEN %04x DHCP LEASE ACQUIRED\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.140 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.138, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.125, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi%ld: AEN %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.143 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.141, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.125, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"scsi%ld: AEN %04x, mbox_sts[2]=%04x, mbox_sts[3]=%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.146 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.144, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.125, ptr @.str.2, i32 808, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld: %s: ACB in disabling state\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.149 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.147, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.125, ptr @.str.2, i32 812, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld: %s: ACB state unconfigured\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.152 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.150, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.125, ptr @.str.2, i32 821, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.154 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.153, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.125, ptr @.str.2, i32 830, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"scsi%ld: AEN %04x, IPv6 ERROR, mbox_sts[1]=%08x, mbox_sts[2]=%08x, mbox_sts[3}=%08x, mbox_sts[4]=%08x mbox_sts[5]=%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.157 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.155, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.125, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016scsi%ld: AEN %04x, mbox_sts[1]=%04x, mbox_sts[2]=%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.160 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.158, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.125, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"scsi%ld: AEN %04x, mbox_sts[1]=%04x, mbox_sts[2]=%04x, mbox_sts[3]=%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.163 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.161, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.125, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"scsi%ld: AEN[%d] %04x queued mb1:0x%x mb2:0x%x mb3:0x%x mb4:0x%x mb5:0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.166 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.164, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.125, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"scsi%ld: %s: aen %04x, queue overflowed!  AEN LOST!!\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.169 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.167, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.125, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scsi%ld: DUMP AEN QUEUE\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.172 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.170, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.125, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AEN[%d] %04x %04x %04x %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.175 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.173, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.125, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014scsi%ld: AEN %04x Transceiver inserted\0A\00", [54 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.178 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.176, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.125, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014scsi%ld: AEN %04x Transceiver removed\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.181 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.179, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.125, ptr @.str.2, i32 915, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"scsi%ld: AEN %04x, mbox_sts[1]=%08x, mbox_sts[2]=%08x, mbox_sts[3]=%08x, mbox_sts[4]=%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.184 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.182, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.125, ptr @.str.2, i32 936, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.186 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.185, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.125, ptr @.str.2, i32 939, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"scsi:%ld: AEN %04x IDC Complete notification\0A\00", [50 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.189 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.187, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.125, ptr @.str.2, i32 966, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"scsi%ld: AEN %04x, mbox_sts[1]=%08x, mbox_sts[2]=%08x, mbox_sts[3]=%08x, mbox_sts[4]=%08x mbox_sts[5]=%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.192 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.190, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.125, ptr @.str.2, i32 969, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"scsi%ld: AEN %04x Received IPv6 default router changed notification\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.195 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.193, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.125, ptr @.str.2, i32 978, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.197 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.196, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.125, ptr @.str.2, i32 981, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"scsi%ld: AEN %04x Received IDC Extend Timeout notification\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.200 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.198, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.125, ptr @.str.2, i32 990, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld: AEN %04x, mbox_sts[3]=%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.203 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.201, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.125, ptr @.str.2, i32 998, ptr @.str.48, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.205 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.204, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.125, ptr @.str.2, i32 1006, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.207 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.206, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.125, ptr @.str.2, i32 1009, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"scsi%ld: AEN %04x Received DCBX configuration changed notification\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.210 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.208, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.125, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014scsi%ld: AEN %04x UNKNOWN\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.213 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.211, section ".printk_index", align 4
@qla4xxx_isr_decode_mailbox._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.125, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld: Unknown mailbox status %08X\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4xxx_isr_decode_mailbox._entry_ptr.216 = internal global ptr @qla4xxx_isr_decode_mailbox._entry.214, section ".printk_index", align 4
@qla4xxx_update_ipaddr_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 633, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid IPADDR index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4xxx_update_ipaddr_state\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_update_ipaddr_state._entry_ptr = internal global ptr @qla4xxx_update_ipaddr_state._entry, section ".printk_index", align 4
@qla4_83xx_loopback_in_progress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 595, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Loopback diagnostics in progress\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_83xx_loopback_in_progress\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_loopback_in_progress._entry_ptr = internal global ptr @qla4_83xx_loopback_in_progress._entry, section ".printk_index", align 4
@qla4_83xx_loopback_in_progress._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.2, i32 600, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Loopback diagnostics not in progress\0A\00", [54 x i8] zeroinitializer }, align 32
@qla4_83xx_loopback_in_progress._entry_ptr.223 = internal global ptr @qla4_83xx_loopback_in_progress._entry.221, section ".printk_index", align 4
@qla4_82xx_spurious_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 1108, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spurious Interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla4_82xx_spurious_interrupt\00", [35 x i8] zeroinitializer }, align 32
@qla4_82xx_spurious_interrupt._entry_ptr = internal global ptr @qla4_82xx_spurious_interrupt._entry, section ".printk_index", align 4
@qla4_83xx_mailbox_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 1365, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: It is a spurious mailbox interrupt!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_83xx_mailbox_intr_handler\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_mailbox_intr_handler._entry_ptr = internal global ptr @qla4_83xx_mailbox_intr_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 10, i64 16, i64 25, i64 57, i64 60]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.229 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 21, i64 28, i64 40, i64 41]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 40]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.233 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 4096]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.235 = internal global [37 x i64] [i64 35, i64 32, i64 32770, i64 32771, i64 32772, i64 32773, i64 32774, i64 32784, i64 32785, i64 32788, i64 32789, i64 32790, i64 32791, i64 32792, i64 32793, i64 32794, i64 32795, i64 32796, i64 32797, i64 32799, i64 32802, i64 32805, i64 32807, i64 32809, i64 32810, i64 32811, i64 32812, i64 32813, i64 32814, i64 32817, i64 32822, i64 33024, i64 33025, i64 33026, i64 33040, i64 33072, i64 33073]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.237 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.239 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 16, i64 288, i64 290]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 16, i64 288, i64 290]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.251 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 505, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 527, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 538, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 543, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 554, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 572, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1132, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1162, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1337, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1441, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1453, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1497, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1507, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1539, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1552, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1557, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1563, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1571, i32 7 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1573, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1576, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1585, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1594, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1598, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1607, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 125, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 137, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 141, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 171, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 199, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 207, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 215, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 234, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 260, i32 5 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 292, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 315, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 335, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 28, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 45, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 380, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 392, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 86, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 433, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 440, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 458, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 706, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 712, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 725, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 739, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 757, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 768, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 782, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 787, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 807, i32 5 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 811, i32 5 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 820, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 825, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 836, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 845, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 864, i32 5 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 880, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 885, i32 5 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 889, i32 6 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 898, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 904, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 911, i32 5 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 932, i32 5 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 937, i32 5 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 962, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 967, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 974, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 979, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 987, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 994, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1002, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1007, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1013, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1019, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 632, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 593, i32 4 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 598, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1108, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.788 = private constant [34 x i8] c"../drivers/scsi/qla4xxx/ql4_isr.c\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 1363, i32 3 }
@llvm.compiler.used = appending global [260 x ptr] [ptr @qla4_82xx_spurious_interrupt._entry, ptr @qla4_82xx_spurious_interrupt._entry_ptr, ptr @qla4_83xx_loopback_in_progress._entry, ptr @qla4_83xx_loopback_in_progress._entry.221, ptr @qla4_83xx_loopback_in_progress._entry_ptr, ptr @qla4_83xx_loopback_in_progress._entry_ptr.223, ptr @qla4_83xx_mailbox_intr_handler._entry, ptr @qla4_83xx_mailbox_intr_handler._entry_ptr, ptr @qla4_8xxx_msi_handler._entry, ptr @qla4_8xxx_msi_handler._entry_ptr, ptr @qla4_8xxx_msix_rsp_q._entry, ptr @qla4_8xxx_msix_rsp_q._entry.30, ptr @qla4_8xxx_msix_rsp_q._entry_ptr, ptr @qla4_8xxx_msix_rsp_q._entry_ptr.32, ptr @qla4xxx_copy_sense._entry, ptr @qla4xxx_copy_sense._entry.106, ptr @qla4xxx_copy_sense._entry_ptr, ptr @qla4xxx_copy_sense._entry_ptr.108, ptr @qla4xxx_intr_handler._entry, ptr @qla4xxx_intr_handler._entry.23, ptr @qla4xxx_intr_handler._entry_ptr, ptr @qla4xxx_intr_handler._entry_ptr.25, ptr @qla4xxx_isr_decode_mailbox._entry, ptr @qla4xxx_isr_decode_mailbox._entry.126, ptr @qla4xxx_isr_decode_mailbox._entry.129, ptr @qla4xxx_isr_decode_mailbox._entry.132, ptr @qla4xxx_isr_decode_mailbox._entry.135, ptr @qla4xxx_isr_decode_mailbox._entry.138, ptr @qla4xxx_isr_decode_mailbox._entry.141, ptr @qla4xxx_isr_decode_mailbox._entry.144, ptr @qla4xxx_isr_decode_mailbox._entry.147, ptr @qla4xxx_isr_decode_mailbox._entry.150, ptr @qla4xxx_isr_decode_mailbox._entry.153, ptr @qla4xxx_isr_decode_mailbox._entry.155, ptr @qla4xxx_isr_decode_mailbox._entry.158, ptr @qla4xxx_isr_decode_mailbox._entry.161, ptr @qla4xxx_isr_decode_mailbox._entry.164, ptr @qla4xxx_isr_decode_mailbox._entry.167, ptr @qla4xxx_isr_decode_mailbox._entry.170, ptr @qla4xxx_isr_decode_mailbox._entry.173, ptr @qla4xxx_isr_decode_mailbox._entry.176, ptr @qla4xxx_isr_decode_mailbox._entry.179, ptr @qla4xxx_isr_decode_mailbox._entry.182, ptr @qla4xxx_isr_decode_mailbox._entry.185, ptr @qla4xxx_isr_decode_mailbox._entry.187, ptr @qla4xxx_isr_decode_mailbox._entry.190, ptr @qla4xxx_isr_decode_mailbox._entry.193, ptr @qla4xxx_isr_decode_mailbox._entry.196, ptr @qla4xxx_isr_decode_mailbox._entry.198, ptr @qla4xxx_isr_decode_mailbox._entry.201, ptr @qla4xxx_isr_decode_mailbox._entry.204, ptr @qla4xxx_isr_decode_mailbox._entry.206, ptr @qla4xxx_isr_decode_mailbox._entry.208, ptr @qla4xxx_isr_decode_mailbox._entry.211, ptr @qla4xxx_isr_decode_mailbox._entry.214, ptr @qla4xxx_isr_decode_mailbox._entry_ptr, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.128, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.131, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.134, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.137, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.140, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.143, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.146, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.149, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.152, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.154, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.157, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.160, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.163, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.166, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.169, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.172, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.175, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.178, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.181, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.184, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.186, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.189, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.192, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.195, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.197, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.200, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.203, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.205, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.207, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.210, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.213, ptr @qla4xxx_isr_decode_mailbox._entry_ptr.216, ptr @qla4xxx_mbox_status_entry._entry, ptr @qla4xxx_mbox_status_entry._entry.118, ptr @qla4xxx_mbox_status_entry._entry.121, ptr @qla4xxx_mbox_status_entry._entry_ptr, ptr @qla4xxx_mbox_status_entry._entry_ptr.120, ptr @qla4xxx_mbox_status_entry._entry_ptr.123, ptr @qla4xxx_passthru_status_entry._entry, ptr @qla4xxx_passthru_status_entry._entry.111, ptr @qla4xxx_passthru_status_entry._entry_ptr, ptr @qla4xxx_passthru_status_entry._entry_ptr.113, ptr @qla4xxx_process_aen._entry, ptr @qla4xxx_process_aen._entry.35, ptr @qla4xxx_process_aen._entry_ptr, ptr @qla4xxx_process_aen._entry_ptr.37, ptr @qla4xxx_process_response_queue._entry, ptr @qla4xxx_process_response_queue._entry.11, ptr @qla4xxx_process_response_queue._entry.15, ptr @qla4xxx_process_response_queue._entry.18, ptr @qla4xxx_process_response_queue._entry.5, ptr @qla4xxx_process_response_queue._entry.8, ptr @qla4xxx_process_response_queue._entry_ptr, ptr @qla4xxx_process_response_queue._entry_ptr.10, ptr @qla4xxx_process_response_queue._entry_ptr.14, ptr @qla4xxx_process_response_queue._entry_ptr.17, ptr @qla4xxx_process_response_queue._entry_ptr.20, ptr @qla4xxx_process_response_queue._entry_ptr.7, ptr @qla4xxx_request_irqs._entry, ptr @qla4xxx_request_irqs._entry.40, ptr @qla4xxx_request_irqs._entry.43, ptr @qla4xxx_request_irqs._entry.46, ptr @qla4xxx_request_irqs._entry.51, ptr @qla4xxx_request_irqs._entry.54, ptr @qla4xxx_request_irqs._entry.57, ptr @qla4xxx_request_irqs._entry.60, ptr @qla4xxx_request_irqs._entry.63, ptr @qla4xxx_request_irqs._entry.66, ptr @qla4xxx_request_irqs._entry_ptr, ptr @qla4xxx_request_irqs._entry_ptr.42, ptr @qla4xxx_request_irqs._entry_ptr.45, ptr @qla4xxx_request_irqs._entry_ptr.49, ptr @qla4xxx_request_irqs._entry_ptr.53, ptr @qla4xxx_request_irqs._entry_ptr.56, ptr @qla4xxx_request_irqs._entry_ptr.59, ptr @qla4xxx_request_irqs._entry_ptr.62, ptr @qla4xxx_request_irqs._entry_ptr.65, ptr @qla4xxx_request_irqs._entry_ptr.68, ptr @qla4xxx_status_cont_entry._entry, ptr @qla4xxx_status_cont_entry._entry_ptr, ptr @qla4xxx_status_entry._entry, ptr @qla4xxx_status_entry._entry.101, ptr @qla4xxx_status_entry._entry.71, ptr @qla4xxx_status_entry._entry.74, ptr @qla4xxx_status_entry._entry.77, ptr @qla4xxx_status_entry._entry.80, ptr @qla4xxx_status_entry._entry.83, ptr @qla4xxx_status_entry._entry.86, ptr @qla4xxx_status_entry._entry.89, ptr @qla4xxx_status_entry._entry.92, ptr @qla4xxx_status_entry._entry.95, ptr @qla4xxx_status_entry._entry.98, ptr @qla4xxx_status_entry._entry_ptr, ptr @qla4xxx_status_entry._entry_ptr.100, ptr @qla4xxx_status_entry._entry_ptr.103, ptr @qla4xxx_status_entry._entry_ptr.73, ptr @qla4xxx_status_entry._entry_ptr.76, ptr @qla4xxx_status_entry._entry_ptr.79, ptr @qla4xxx_status_entry._entry_ptr.82, ptr @qla4xxx_status_entry._entry_ptr.85, ptr @qla4xxx_status_entry._entry_ptr.88, ptr @qla4xxx_status_entry._entry_ptr.91, ptr @qla4xxx_status_entry._entry_ptr.94, ptr @qla4xxx_status_entry._entry_ptr.97, ptr @qla4xxx_update_ipaddr_state._entry, ptr @qla4xxx_update_ipaddr_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.199, ptr @.str.202, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227], section "llvm.metadata"
@0 = internal global [179 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_response_queue._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_intr_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_msi_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_msix_rsp_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_msix_rsp_q._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_aen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_aen._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_request_irqs._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_entry._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_copy_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_copy_sense._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_passthru_status_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_passthru_status_entry._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_status_cont_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mbox_status_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mbox_status_entry._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_mbox_status_entry._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_isr_decode_mailbox._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_ipaddr_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_loopback_in_progress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_loopback_in_progress._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_82xx_spurious_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_mailbox_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_process_response_queue(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %response_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 65
  %0 = ptrtoint ptr %response_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %response_ptr, align 4
  %signature175 = getelementptr inbounds %struct.queue_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %signature175 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %signature175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559030611, i32 %3)
  %cmp.not176 = icmp eq i32 %3, -559030611
  br i1 %cmp.not176, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 71
  %response_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 64
  %pdev58 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %iocb_cnt5.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 4
  %host_no45 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %status_srb.i147 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 81
  %task_wq.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 125
  %dpc_flags.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %1, %while.body.lr.ph ], [ %313, %sw.epilog.while.body_crit_edge ]
  %5 = ptrtoint ptr %response_out to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %response_out, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %6)
  %cmp2 = icmp eq i16 %6, 63
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %response_out to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %response_out, align 2
  %8 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response_ring, align 128
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc7 = add i16 %6, 1
  %10 = ptrtoint ptr %response_out to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %inc7, ptr %response_out, align 2
  %incdec.ptr = getelementptr %struct.queue_entry, ptr %4, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %incdec.ptr, %if.else ], [ %9, %if.then ]
  %11 = ptrtoint ptr %response_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %storemerge, ptr %response_ptr, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %4, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %do.body63 [
    i8 3, label %sw.bb
    i8 60, label %sw.bb10
    i8 16, label %sw.bb18
    i8 25, label %sw.bb19
    i8 10, label %do.body37
    i8 57, label %do.body51
  ]

sw.bb:                                            ; preds = %if.end
  %handle.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %call.i = tail call ptr @qla4xxx_del_from_active_array(ptr noundef %ha, i32 noundef %17) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev58, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %21, ptr noundef null) #9
  %22 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev58, align 8
  %device.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i.i.i, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.228)
  switch i16 %25, label %if.else.i [
    i16 -32734, label %do.end.i.if.then4.i_crit_edge
    i16 -32718, label %do.end.i.if.then4.i_crit_edge202
    i16 -32702, label %do.end.i.if.then4.i_crit_edge203
  ]

do.end.i.if.then4.i_crit_edge203:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

do.end.i.if.then4.i_crit_edge202:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

do.end.i.if.then4.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %do.end.i.if.then4.i_crit_edge, %do.end.i.if.then4.i_crit_edge202, %do.end.i.if.then4.i_crit_edge203
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags.i) #6
  br label %sw.epilog

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags.i) #6
  br label %sw.epilog

if.end6.i:                                        ; preds = %sw.bb
  %cmd7.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %cmd7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd7.i, align 4
  %cmp.i = icmp eq ptr %28, null
  br i1 %cmp.i, label %do.body9.i, label %if.end25.i

do.body9.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %29 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp10.i = icmp eq i32 %29, 2
  br i1 %cmp10.i, label %do.end14.i, label %do.body9.i.do.end22.i_crit_edge

do.body9.i.do.end22.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no45, align 4
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle.i, align 4
  %state.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %state.i, align 2
  %conv.i = zext i8 %35 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %31, ptr noundef nonnull @.str.70, i32 noundef %33, ptr noundef nonnull %call.i, i32 noundef %conv.i) #9
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end22.i_crit_edge
  %36 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev58, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev24.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %call.i) #9
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end6.i
  %ddb.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %ddb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ddb.i, align 4
  %cmp26.i = icmp eq ptr %39, null
  br i1 %cmp26.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %40 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65536, ptr %result.i, align 4
  br label %status_entry_exit.i

if.end29.i:                                       ; preds = %if.end25.i
  %residualByteCnt.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 9
  %41 = ptrtoint ptr %residualByteCnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %residualByteCnt.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %scsiStatus.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 2
  %44 = ptrtoint ptr %scsiStatus.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %scsiStatus.i, align 4
  %completionStatus.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 5
  %46 = ptrtoint ptr %completionStatus.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %completionStatus.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %47, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb72.i
    i8 4, label %do.body75.i
    i8 5, label %do.body96.i
    i8 6, label %do.body117.i
    i8 21, label %if.end29.i.sw.bb142.i_crit_edge
    i8 7, label %if.end29.i.sw.bb142.i_crit_edge204
    i8 41, label %if.end29.i.do.body251.i_crit_edge
    i8 40, label %if.end29.i.do.body251.i_crit_edge205
    i8 28, label %sw.bb279.i
  ]

if.end29.i.do.body251.i_crit_edge205:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body251.i

if.end29.i.do.body251.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body251.i

if.end29.i.sw.bb142.i_crit_edge204:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb142.i

if.end29.i.sw.bb142.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb142.i

sw.bb.i:                                          ; preds = %if.end29.i
  %iscsiFlags.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 3
  %49 = ptrtoint ptr %iscsiFlags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iscsiFlags.i, align 1
  %conv31.i = zext i8 %50 to i32
  %and.i = and i32 %conv31.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %if.end35.i, label %if.then33.i

if.then33.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %result34.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %51 = ptrtoint ptr %result34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 458752, ptr %result34.i, align 4
  br label %status_entry_exit.i

if.end35.i:                                       ; preds = %sw.bb.i
  %and38.i = and i32 %conv31.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end35.i.if.end64.i_crit_edge, label %if.then40.i

if.end35.i.if.end64.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then40.i:                                      ; preds = %if.end35.i
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %28, i32 0, i32 5
  %52 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %43, ptr %resid_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool41.not.i = icmp eq i8 %45, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i, label %if.then40.i.if.end64.i_crit_edge

if.then40.i.if.end64.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

land.lhs.true.i:                                  ; preds = %if.then40.i
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 17, i32 1
  %53 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length.i.i, align 4
  %sub.i = sub i32 %54, %43
  %underflow.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 19
  %55 = ptrtoint ptr %underflow.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %underflow.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %56)
  %cmp43.i = icmp ult i32 %sub.i, %56
  %result46.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  br i1 %cmp43.i, label %if.then45.i, label %if.end64.thread.i

if.end64.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %result46.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %result46.i, align 4
  br label %status_entry_exit.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  %58 = ptrtoint ptr %result46.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 458752, ptr %result46.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %59 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp48.i = icmp eq i32 %59, 2
  br i1 %cmp48.i, label %do.end53.i, label %if.then45.i.status_entry_exit.i_crit_edge

if.then45.i.status_entry_exit.i_crit_edge:        ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_entry_exit.i

do.end53.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %host_no45, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %62 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device.i, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channel.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 16
  %66 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.i, align 8
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %63, i32 0, i32 18
  %68 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %lun.i, align 8
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %61, i32 noundef %65, i32 noundef %67, i64 noundef %69, ptr noundef nonnull @.str.70, i32 noundef %54, i32 noundef %43) #9
  br label %status_entry_exit.i

if.end64.i:                                       ; preds = %if.then40.i.if.end64.i_crit_edge, %if.end35.i.if.end64.i_crit_edge
  %conv65.i = zext i8 %45 to i32
  %result66.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %70 = ptrtoint ptr %result66.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv65.i, ptr %result66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp68.not.i = icmp eq i8 %45, 2
  br i1 %cmp68.not.i, label %if.end71.i, label %if.end64.i.status_entry_exit.i_crit_edge

if.end64.i.status_entry_exit.i_crit_edge:         ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_entry_exit.i

if.end71.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla4xxx_copy_sense(ptr noundef %ha, ptr noundef %4, ptr noundef nonnull %call.i) #6
  br label %status_entry_exit.i

sw.bb72.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %result73.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %71 = ptrtoint ptr %result73.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 458752, ptr %result73.i, align 4
  br label %status_entry_exit.i

do.body75.i:                                      ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %72 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp76.i = icmp eq i32 %72, 2
  br i1 %cmp76.i, label %do.end81.i, label %do.body75.i.do.end93.i_crit_edge

do.body75.i.do.end93.i_crit_edge:                 ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93.i

do.end81.i:                                       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %host_no45, align 4
  %device84.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %75 = ptrtoint ptr %device84.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device84.i, align 4
  %channel85.i = getelementptr inbounds %struct.scsi_device, ptr %76, i32 0, i32 17
  %77 = ptrtoint ptr %channel85.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channel85.i, align 4
  %id87.i = getelementptr inbounds %struct.scsi_device, ptr %76, i32 0, i32 16
  %79 = ptrtoint ptr %id87.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id87.i, align 8
  %lun89.i = getelementptr inbounds %struct.scsi_device, ptr %76, i32 0, i32 18
  %81 = ptrtoint ptr %lun89.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %lun89.i, align 8
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %74, i32 noundef %78, i32 noundef %80, i64 noundef %82, ptr noundef nonnull @.str.70) #9
  br label %do.end93.i

do.end93.i:                                       ; preds = %do.end81.i, %do.body75.i.do.end93.i_crit_edge
  %result94.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %83 = ptrtoint ptr %result94.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 524288, ptr %result94.i, align 4
  br label %status_entry_exit.i

do.body96.i:                                      ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %84 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp97.i = icmp eq i32 %84, 2
  br i1 %cmp97.i, label %do.end102.i, label %do.body96.i.do.end114.i_crit_edge

do.body96.i.do.end114.i_crit_edge:                ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114.i

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %host_no45, align 4
  %device105.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %87 = ptrtoint ptr %device105.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device105.i, align 4
  %channel106.i = getelementptr inbounds %struct.scsi_device, ptr %88, i32 0, i32 17
  %89 = ptrtoint ptr %channel106.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel106.i, align 4
  %id108.i = getelementptr inbounds %struct.scsi_device, ptr %88, i32 0, i32 16
  %91 = ptrtoint ptr %id108.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id108.i, align 8
  %lun110.i = getelementptr inbounds %struct.scsi_device, ptr %88, i32 0, i32 18
  %93 = ptrtoint ptr %lun110.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %lun110.i, align 8
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %86, i32 noundef %90, i32 noundef %92, i64 noundef %94, ptr noundef nonnull @.str.70) #9
  br label %do.end114.i

do.end114.i:                                      ; preds = %do.end102.i, %do.body96.i.do.end114.i_crit_edge
  %result115.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %95 = ptrtoint ptr %result115.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 524288, ptr %result115.i, align 4
  br label %status_entry_exit.i

do.body117.i:                                     ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %96 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp118.i = icmp eq i32 %96, 2
  br i1 %cmp118.i, label %do.end123.i, label %do.body117.i.do.end135.i_crit_edge

do.body117.i.do.end135.i_crit_edge:               ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end135.i

do.end123.i:                                      ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %host_no45, align 4
  %device126.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %99 = ptrtoint ptr %device126.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device126.i, align 4
  %channel127.i = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 17
  %101 = ptrtoint ptr %channel127.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %channel127.i, align 4
  %id129.i = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 16
  %103 = ptrtoint ptr %id129.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id129.i, align 8
  %lun131.i = getelementptr inbounds %struct.scsi_device, ptr %100, i32 0, i32 18
  %105 = ptrtoint ptr %lun131.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %lun131.i, align 8
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %98, i32 noundef %102, i32 noundef %104, i64 noundef %106) #9
  br label %do.end135.i

do.end135.i:                                      ; preds = %do.end123.i, %do.body117.i.do.end135.i_crit_edge
  %result136.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %107 = ptrtoint ptr %result136.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 917504, ptr %result136.i, align 4
  %sess.i = getelementptr inbounds %struct.ddb_entry, ptr %39, i32 0, i32 1
  %108 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sess.i, align 4
  %call137.i = tail call i32 @iscsi_is_session_online(ptr noundef %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %do.end135.i.status_entry_exit.i_crit_edge, label %if.then139.i

do.end135.i.status_entry_exit.i_crit_edge:        ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_entry_exit.i

if.then139.i:                                     ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sess.i, align 4
  tail call void @qla4xxx_mark_device_missing(ptr noundef %111) #6
  br label %status_entry_exit.i

sw.bb142.i:                                       ; preds = %if.end29.i.sw.bb142.i_crit_edge, %if.end29.i.sw.bb142.i_crit_edge204
  %iscsiFlags143.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 3
  %112 = ptrtoint ptr %iscsiFlags143.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %iscsiFlags143.i, align 1
  %114 = and i8 %113, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool146.not.i = icmp ne i8 %114, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %47)
  %cmp149.i = icmp eq i8 %47, 7
  %or.cond.i = select i1 %tobool146.not.i, i1 true, i1 %cmp149.i
  br i1 %or.cond.i, label %do.body152.i, label %if.end172.i

do.body152.i:                                     ; preds = %sw.bb142.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %115 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp153.i = icmp eq i32 %115, 2
  br i1 %cmp153.i, label %do.end158.i, label %do.body152.i.do.end170.i_crit_edge

do.body152.i.do.end170.i_crit_edge:               ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end170.i

do.end158.i:                                      ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %host_no45, align 4
  %device161.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %118 = ptrtoint ptr %device161.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device161.i, align 4
  %channel162.i = getelementptr inbounds %struct.scsi_device, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %channel162.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %channel162.i, align 4
  %id164.i = getelementptr inbounds %struct.scsi_device, ptr %119, i32 0, i32 16
  %122 = ptrtoint ptr %id164.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id164.i, align 8
  %lun166.i = getelementptr inbounds %struct.scsi_device, ptr %119, i32 0, i32 18
  %124 = ptrtoint ptr %lun166.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %lun166.i, align 8
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %117, i32 noundef %121, i32 noundef %123, i64 noundef %125, ptr noundef nonnull @.str.70) #9
  br label %do.end170.i

do.end170.i:                                      ; preds = %do.end158.i, %do.body152.i.do.end170.i_crit_edge
  %result171.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %126 = ptrtoint ptr %result171.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 458752, ptr %result171.i, align 4
  br label %status_entry_exit.i

if.end172.i:                                      ; preds = %sw.bb142.i
  %resid_len.i441.i = getelementptr inbounds %struct.scsi_request, ptr %28, i32 0, i32 5
  %127 = ptrtoint ptr %resid_len.i441.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %43, ptr %resid_len.i441.i, align 4
  %128 = ptrtoint ptr %iscsiFlags143.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %iscsiFlags143.i, align 1
  %130 = and i8 %129, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool176.not.i = icmp eq i8 %130, 0
  br i1 %tobool176.not.i, label %if.else208.i, label %if.then177.i

if.then177.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool178.not.i = icmp eq i8 %45, 0
  br i1 %tobool178.not.i, label %land.lhs.true179.i, label %if.then177.i.if.end241.i_crit_edge

if.then177.i.if.end241.i_crit_edge:               ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

land.lhs.true179.i:                               ; preds = %if.then177.i
  %length.i442.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 17, i32 1
  %131 = ptrtoint ptr %length.i442.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %length.i442.i, align 4
  %sub181.i = sub i32 %132, %43
  %underflow182.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 19
  %133 = ptrtoint ptr %underflow182.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %underflow182.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub181.i, i32 %134)
  %cmp183.i = icmp ult i32 %sub181.i, %134
  br i1 %cmp183.i, label %do.body186.i, label %land.lhs.true179.i.if.end241.i_crit_edge

land.lhs.true179.i.if.end241.i_crit_edge:         ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

do.body186.i:                                     ; preds = %land.lhs.true179.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %135 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp187.i = icmp eq i32 %135, 2
  br i1 %cmp187.i, label %do.end192.i, label %do.body186.i.do.end205.i_crit_edge

do.body186.i.do.end205.i_crit_edge:               ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end205.i

do.end192.i:                                      ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev58, align 8
  %dev194.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  %138 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %host_no45, align 4
  %device196.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %140 = ptrtoint ptr %device196.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device196.i, align 4
  %channel197.i = getelementptr inbounds %struct.scsi_device, ptr %141, i32 0, i32 17
  %142 = ptrtoint ptr %channel197.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %channel197.i, align 4
  %id199.i = getelementptr inbounds %struct.scsi_device, ptr %141, i32 0, i32 16
  %144 = ptrtoint ptr %id199.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %id199.i, align 8
  %lun201.i = getelementptr inbounds %struct.scsi_device, ptr %141, i32 0, i32 18
  %146 = ptrtoint ptr %lun201.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %lun201.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev194.i, ptr noundef nonnull @.str.93, i32 noundef %139, i32 noundef %143, i32 noundef %145, i64 noundef %147, ptr noundef nonnull @.str.70, i32 noundef %132, i32 noundef %43) #9
  br label %do.end205.i

do.end205.i:                                      ; preds = %do.end192.i, %do.body186.i.do.end205.i_crit_edge
  %result206.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %148 = ptrtoint ptr %result206.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 458752, ptr %result206.i, align 4
  br label %status_entry_exit.i

if.else208.i:                                     ; preds = %if.end172.i
  %conv209.i = zext i8 %45 to i32
  %149 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %45, label %do.body217.i [
    i8 40, label %if.else208.i.if.end241.i_crit_edge
    i8 8, label %if.else208.i.if.end241.i_crit_edge206
  ]

if.else208.i.if.end241.i_crit_edge206:            ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

if.else208.i.if.end241.i_crit_edge:               ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

do.body217.i:                                     ; preds = %if.else208.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %150 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp218.i = icmp eq i32 %150, 2
  br i1 %cmp218.i, label %do.end223.i, label %do.body217.i.do.end236.i_crit_edge

do.body217.i.do.end236.i_crit_edge:               ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end236.i

do.end223.i:                                      ; preds = %do.body217.i
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev58, align 8
  %dev225.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %153 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %host_no45, align 4
  %device227.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %155 = ptrtoint ptr %device227.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device227.i, align 4
  %channel228.i = getelementptr inbounds %struct.scsi_device, ptr %156, i32 0, i32 17
  %157 = ptrtoint ptr %channel228.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %channel228.i, align 4
  %id230.i = getelementptr inbounds %struct.scsi_device, ptr %156, i32 0, i32 16
  %159 = ptrtoint ptr %id230.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %id230.i, align 8
  %lun232.i = getelementptr inbounds %struct.scsi_device, ptr %156, i32 0, i32 18
  %161 = ptrtoint ptr %lun232.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %lun232.i, align 8
  %length.i444.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 17, i32 1
  %163 = ptrtoint ptr %length.i444.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %length.i444.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev225.i, ptr noundef nonnull @.str.96, i32 noundef %154, i32 noundef %158, i32 noundef %160, i64 noundef %162, ptr noundef nonnull @.str.70, i32 noundef %43, i32 noundef %164) #9
  br label %do.end236.i

do.end236.i:                                      ; preds = %do.end223.i, %do.body217.i.do.end236.i_crit_edge
  %or238.i = or i32 %conv209.i, 458752
  br label %check_scsi_status.i

if.end241.i:                                      ; preds = %if.else208.i.if.end241.i_crit_edge, %if.else208.i.if.end241.i_crit_edge206, %land.lhs.true179.i.if.end241.i_crit_edge, %if.then177.i.if.end241.i_crit_edge
  %conv242.i = zext i8 %45 to i32
  br label %check_scsi_status.i

check_scsi_status.i:                              ; preds = %if.end241.i, %do.end236.i
  %conv242.sink.i = phi i32 [ %conv242.i, %if.end241.i ], [ %or238.i, %do.end236.i ]
  %result244.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %165 = ptrtoint ptr %result244.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv242.sink.i, ptr %result244.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp246.i = icmp eq i8 %45, 2
  br i1 %cmp246.i, label %if.then248.i, label %check_scsi_status.i.status_entry_exit.i_crit_edge

check_scsi_status.i.status_entry_exit.i_crit_edge: ; preds = %check_scsi_status.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_entry_exit.i

if.then248.i:                                     ; preds = %check_scsi_status.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qla4xxx_copy_sense(ptr noundef %ha, ptr noundef %4, ptr noundef nonnull %call.i) #6
  br label %status_entry_exit.i

do.body251.i:                                     ; preds = %if.end29.i.do.body251.i_crit_edge, %if.end29.i.do.body251.i_crit_edge205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %166 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %cmp252.i = icmp eq i32 %166, 2
  br i1 %cmp252.i, label %do.end257.i, label %do.body251.i.do.end271.i_crit_edge

do.body251.i.do.end271.i_crit_edge:               ; preds = %do.body251.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end271.i

do.end257.i:                                      ; preds = %do.body251.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %host_no45, align 4
  %device260.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %169 = ptrtoint ptr %device260.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %device260.i, align 4
  %channel261.i = getelementptr inbounds %struct.scsi_device, ptr %170, i32 0, i32 17
  %171 = ptrtoint ptr %channel261.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %channel261.i, align 4
  %id263.i = getelementptr inbounds %struct.scsi_device, ptr %170, i32 0, i32 16
  %173 = ptrtoint ptr %id263.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %id263.i, align 8
  %lun265.i = getelementptr inbounds %struct.scsi_device, ptr %170, i32 0, i32 18
  %175 = ptrtoint ptr %lun265.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %lun265.i, align 8
  %conv267.i = zext i8 %47 to i32
  %call268.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %168, i32 noundef %172, i32 noundef %174, i64 noundef %176, i32 noundef %conv267.i) #9
  br label %do.end271.i

do.end271.i:                                      ; preds = %do.end257.i, %do.body251.i.do.end271.i_crit_edge
  %sess272.i = getelementptr inbounds %struct.ddb_entry, ptr %39, i32 0, i32 1
  %177 = ptrtoint ptr %sess272.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sess272.i, align 4
  %call273.i = tail call i32 @iscsi_is_session_online(ptr noundef %178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %tobool274.not.i = icmp eq i32 %call273.i, 0
  br i1 %tobool274.not.i, label %do.end271.i.if.end277.i_crit_edge, label %if.then275.i

do.end271.i.if.end277.i_crit_edge:                ; preds = %do.end271.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.i

if.then275.i:                                     ; preds = %do.end271.i
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %sess272.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sess272.i, align 4
  tail call void @qla4xxx_mark_device_missing(ptr noundef %180) #6
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.then275.i, %do.end271.i.if.end277.i_crit_edge
  %result278.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %181 = ptrtoint ptr %result278.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 917504, ptr %result278.i, align 4
  br label %status_entry_exit.i

sw.bb279.i:                                       ; preds = %if.end29.i
  %conv281.i = zext i8 %45 to i32
  %result283.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %182 = ptrtoint ptr %result283.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv281.i, ptr %result283.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %183 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %183)
  %cmp285.i = icmp eq i32 %183, 2
  br i1 %cmp285.i, label %do.end290.i, label %sw.bb279.i.status_entry_exit.i_crit_edge

sw.bb279.i.status_entry_exit.i_crit_edge:         ; preds = %sw.bb279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_entry_exit.i

do.end290.i:                                      ; preds = %sw.bb279.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %host_no45, align 4
  %device293.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %186 = ptrtoint ptr %device293.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device293.i, align 4
  %id294.i = getelementptr inbounds %struct.scsi_device, ptr %187, i32 0, i32 16
  %188 = ptrtoint ptr %id294.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %id294.i, align 8
  %lun296.i = getelementptr inbounds %struct.scsi_device, ptr %187, i32 0, i32 18
  %190 = ptrtoint ptr %lun296.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %lun296.i, align 8
  %192 = ptrtoint ptr %completionStatus.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %completionStatus.i, align 1
  %conv298.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %scsiStatus.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %scsiStatus.i, align 4
  %conv300.i = zext i8 %195 to i32
  %state_flags.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 7
  %196 = ptrtoint ptr %state_flags.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %state_flags.i, align 1
  %conv301.i = zext i8 %197 to i32
  %iscsiFlags302.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 3
  %198 = ptrtoint ptr %iscsiFlags302.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %iscsiFlags302.i, align 1
  %conv303.i = zext i8 %199 to i32
  %iscsiResponse.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 4
  %200 = ptrtoint ptr %iscsiResponse.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %iscsiResponse.i, align 2
  %conv304.i = zext i8 %201 to i32
  %call305.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %185, i32 noundef %189, i64 noundef %191, ptr noundef nonnull @.str.70, i32 noundef %conv298.i, i32 noundef %conv300.i, i32 noundef %conv301.i, i32 noundef %conv303.i, i32 noundef %conv304.i) #9
  br label %status_entry_exit.i

sw.default.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %result309.i = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %202 = ptrtoint ptr %result309.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 458752, ptr %result309.i, align 4
  br label %status_entry_exit.i

status_entry_exit.i:                              ; preds = %sw.default.i, %do.end290.i, %sw.bb279.i.status_entry_exit.i_crit_edge, %if.end277.i, %if.then248.i, %check_scsi_status.i.status_entry_exit.i_crit_edge, %do.end205.i, %do.end170.i, %if.then139.i, %do.end135.i.status_entry_exit.i_crit_edge, %do.end114.i, %do.end93.i, %sw.bb72.i, %if.end71.i, %if.end64.i.status_entry_exit.i_crit_edge, %do.end53.i, %if.then45.i.status_entry_exit.i_crit_edge, %if.end64.thread.i, %if.then33.i, %if.then28.i
  %completionStatus310.i = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 5
  %203 = ptrtoint ptr %completionStatus310.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %completionStatus310.i, align 1
  %conv311.i = zext i8 %204 to i16
  %cc_stat.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 12
  %205 = ptrtoint ptr %cc_stat.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv311.i, ptr %cc_stat.i, align 4
  %206 = ptrtoint ptr %status_srb.i147 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %status_srb.i147, align 4
  %cmp312.i = icmp eq ptr %207, null
  br i1 %cmp312.i, label %if.then314.i, label %status_entry_exit.i.sw.epilog_crit_edge

status_entry_exit.i.sw.epilog_crit_edge:          ; preds = %status_entry_exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then314.i:                                     ; preds = %status_entry_exit.i
  %srb_ref.i = getelementptr inbounds %struct.srb, ptr %call.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srb_ref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr %srb_ref.i, i32 1, i32 3, i32 1) #6
  %208 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srb_ref.i, ptr %srb_ref.i, i32 1, ptr elementtype(i32) %srb_ref.i) #6, !srcloc !352
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %208, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then314.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !353

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %srb_ref.i, i32 noundef 3) #6
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then314.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !354
  tail call void @qla4xxx_srb_compl(ptr noundef %srb_ref.i) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %systemDefined = getelementptr inbounds %struct.qla4_header, ptr %4, i32 0, i32 2
  %209 = ptrtoint ptr %systemDefined to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %systemDefined, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %210)
  %cmp13 = icmp eq i8 %210, 1
  br i1 %cmp13, label %if.then15, label %do.end

if.then15:                                        ; preds = %sw.bb10
  %handle.i141 = getelementptr inbounds %struct.passthru_status, ptr %4, i32 0, i32 1
  %211 = ptrtoint ptr %handle.i141 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %handle.i141, align 4
  %target.i = getelementptr inbounds %struct.passthru_status, ptr %4, i32 0, i32 2
  %213 = ptrtoint ptr %target.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %target.i, align 4
  %conv.i142 = zext i16 %214 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %cmp.i.i = icmp eq i16 %214, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then15.do.end.i145_crit_edge

if.then15.do.end.i145_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i145

land.lhs.true.i.i:                                ; preds = %if.then15
  %215 = tail call i32 @llvm.bswap.i32(i32 %conv.i142) #6
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 80, i32 %215
  %216 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i.i, align 4
  %magicptr.i = ptrtoint ptr %217 to i32
  %218 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %magicptr.i, label %if.end.i [
    i32 65535, label %land.lhs.true.i.i.do.end.i145_crit_edge
    i32 0, label %land.lhs.true.i.i.do.end.i145_crit_edge207
  ]

land.lhs.true.i.i.do.end.i145_crit_edge207:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i145

land.lhs.true.i.i.do.end.i145_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i145

do.end.i145:                                      ; preds = %land.lhs.true.i.i.do.end.i145_crit_edge, %land.lhs.true.i.i.do.end.i145_crit_edge207, %if.then15.do.end.i145_crit_edge
  %219 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdev58, align 8
  %dev.i144 = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i144, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef %conv.i142) #9
  br label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %conn4.i = getelementptr inbounds %struct.ddb_entry, ptr %217, i32 0, i32 2
  %221 = ptrtoint ptr %conn4.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %conn4.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dd_data.i, align 8
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %session.i, align 8
  %back_lock.i = getelementptr inbounds %struct.iscsi_session, ptr %226, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %back_lock.i) #6
  %call5.i = tail call ptr @iscsi_itt_to_task(ptr noundef %224, i32 noundef %212) #6
  %227 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %session.i, align 8
  %back_lock7.i = getelementptr inbounds %struct.iscsi_session, ptr %228, i32 0, i32 53
  tail call void @_raw_spin_unlock(ptr noundef %back_lock7.i) #6
  %cmp8.i = icmp eq ptr %call5.i, null
  br i1 %cmp8.i, label %do.end13.i, label %if.end16.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdev58, align 8
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %230, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev15.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #9
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dd_data17.i = getelementptr inbounds %struct.iscsi_task, ptr %call5.i, i32 0, i32 20
  %231 = ptrtoint ptr %dd_data17.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dd_data17.i, align 4
  %sts.i = getelementptr inbounds %struct.ql4_task_data, ptr %232, i32 0, i32 10
  %233 = call ptr @memcpy(ptr %sts.i, ptr %4, i32 64)
  %iocb_req_cnt.i = getelementptr inbounds %struct.ql4_task_data, ptr %232, i32 0, i32 1
  %234 = ptrtoint ptr %iocb_req_cnt.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %iocb_req_cnt.i, align 4
  %conv18.i = zext i8 %235 to i16
  %236 = ptrtoint ptr %iocb_cnt5.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %iocb_cnt5.i.i, align 16
  %sub.i146 = sub i16 %237, %conv18.i
  store i16 %sub.i146, ptr %iocb_cnt5.i.i, align 16
  %238 = ptrtoint ptr %task_wq.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %task_wq.i, align 32
  %task_work.i = getelementptr inbounds %struct.ql4_task_data, ptr %232, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %239, ptr noundef %task_work.i) #6
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %240 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pdev58, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %241, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %242 = ptrtoint ptr %status_srb.i147 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %status_srb.i147, align 4
  %cmp.i148 = icmp eq ptr %243, null
  br i1 %cmp.i148, label %sw.bb18.sw.epilog_crit_edge, label %if.end.i149

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i149:                                      ; preds = %sw.bb18
  %cmd1.i = getelementptr inbounds %struct.srb, ptr %243, i32 0, i32 5
  %244 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cmd1.i, align 4
  %cmp2.i = icmp eq ptr %245, null
  br i1 %cmp2.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %if.end.i149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %246 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %246)
  %cmp4.i = icmp eq i32 %246, 2
  br i1 %cmp4.i, label %do.end.i154, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

do.end.i154:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %247 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %host_no45, align 4
  %state.i151 = getelementptr inbounds %struct.srb, ptr %243, i32 0, i32 4
  %249 = ptrtoint ptr %state.i151 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %state.i151, align 2
  %conv.i152 = zext i8 %250 to i32
  %call.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %248, ptr noundef nonnull @.str.115, ptr noundef nonnull %243, i32 noundef %conv.i152) #9
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %if.end.i149
  %req_sense_len.i = getelementptr inbounds %struct.srb, ptr %243, i32 0, i32 14
  %251 = ptrtoint ptr %req_sense_len.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %req_sense_len.i, align 4
  %253 = tail call i16 @llvm.umin.i16(i16 %252, i16 60) #6
  %cond.i = zext i16 %253 to i32
  %req_sense_ptr.i = getelementptr inbounds %struct.srb, ptr %243, i32 0, i32 13
  %254 = ptrtoint ptr %req_sense_ptr.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %req_sense_ptr.i, align 4
  %ext_sense_data.i = getelementptr inbounds %struct.status_cont_entry, ptr %4, i32 0, i32 1
  %256 = call ptr @memcpy(ptr %255, ptr %ext_sense_data.i, i32 %cond.i)
  %257 = load ptr, ptr %req_sense_ptr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %257, i32 %cond.i
  store ptr %add.ptr.i, ptr %req_sense_ptr.i, align 4
  %258 = ptrtoint ptr %req_sense_len.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %req_sense_len.i, align 4
  %conv29.i = sub i16 %259, %253
  store i16 %conv29.i, ptr %req_sense_len.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %259, i16 %253)
  %cmp32.i = icmp eq i16 %259, %253
  br i1 %cmp32.i, label %if.then34.i, label %if.end11.i.sw.epilog_crit_edge

if.end11.i.sw.epilog_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then34.i:                                      ; preds = %if.end11.i
  %srb_ref.i155 = getelementptr inbounds %struct.srb, ptr %243, i32 0, i32 7
  %call.i.i.i.i.i.i.i156 = tail call zeroext i1 @__kasan_check_write(ptr noundef %srb_ref.i155, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr %srb_ref.i155, i32 1, i32 3, i32 1) #6
  %260 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srb_ref.i155, ptr %srb_ref.i155, i32 1, ptr elementtype(i32) %srb_ref.i155) #6, !srcloc !352
  %asmresult.i.i.i.i.i.i.i.i157 = extractvalue { i32, i32, i32 } %260, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i157)
  %cmp.i.i.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i157, 1
  br i1 %cmp.i.i.i.i.i158, label %if.then.i.i162, label %if.end5.i.i.i.i.i160

if.end5.i.i.i.i.i160:                             ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i157)
  %.not.i.i.i.i.i159 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i157, 0
  br i1 %.not.i.i.i.i.i159, label %if.end5.i.i.i.i.i160.cleanup.sink.split.i_crit_edge, label %if.then10.i.i.i.i.i161, !prof !353

if.end5.i.i.i.i.i160.cleanup.sink.split.i_crit_edge: ; preds = %if.end5.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then10.i.i.i.i.i161:                           ; preds = %if.end5.i.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %srb_ref.i155, i32 noundef 3) #6
  br label %cleanup.sink.split.i

if.then.i.i162:                                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !354
  tail call void @qla4xxx_srb_compl(ptr noundef %srb_ref.i155) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i162, %if.then10.i.i.i.i.i161, %if.end5.i.i.i.i.i160.cleanup.sink.split.i_crit_edge, %do.end.i154, %do.body.i.cleanup.sink.split.i_crit_edge
  %261 = ptrtoint ptr %status_srb.i147 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %status_srb.i147, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %handle = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 1
  %262 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %handle, align 4
  %264 = tail call i32 @llvm.bswap.i32(i32 %263)
  %call = tail call ptr @qla4xxx_del_from_active_array(ptr noundef %ha, i32 noundef %264) #6
  %cmp20 = icmp eq ptr %call, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %265 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %265)
  %cmp84 = icmp eq i32 %265, 2
  br i1 %cmp20, label %do.body83, label %do.body24

do.body24:                                        ; preds = %sw.bb19
  br i1 %cmp84, label %do.end30, label %do.body24.do.end34_crit_edge

do.body24.do.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %266 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %host_no45, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %267, ptr noundef nonnull @.str.1, ptr noundef nonnull %call) #9
  br label %do.end34

do.end34:                                         ; preds = %do.end30, %do.body24.do.end34_crit_edge
  %cmd = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 5
  %268 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cmd, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %269, i32 0, i32 24
  %270 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 131072, ptr %result, align 4
  %srb_ref = getelementptr inbounds %struct.srb, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srb_ref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !351
  tail call void @llvm.prefetch.p0(ptr %srb_ref, i32 1, i32 3, i32 1) #6
  %271 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srb_ref, ptr %srb_ref, i32 1, ptr elementtype(i32) %srb_ref) #6, !srcloc !352
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !353

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %srb_ref, i32 noundef 3) #6
  br label %sw.epilog

if.then.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !354
  tail call void @qla4xxx_srb_compl(ptr noundef %srb_ref) #6
  br label %sw.epilog

do.body37:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %272 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %272)
  %cmp38 = icmp eq i32 %272, 2
  br i1 %cmp38, label %do.end43, label %do.body37.sw.epilog_crit_edge

do.body37.sw.epilog_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %host_no45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %274, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

do.body51:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %275 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %275)
  %cmp52 = icmp eq i32 %275, 2
  br i1 %cmp52, label %do.end57, label %do.body51.do.end62_crit_edge

do.body51.do.end62_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %276 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pdev58, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %277, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev59, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #9
  br label %do.end62

do.end62:                                         ; preds = %do.end57, %do.body51.do.end62_crit_edge
  %handle.i163 = getelementptr inbounds %struct.mbox_status_iocb, ptr %4, i32 0, i32 1
  %278 = ptrtoint ptr %handle.i163 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %handle.i163, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %280)
  %cmp.i.i164 = icmp ugt i32 %280, 127
  br i1 %cmp.i.i164, label %do.end62.do.end.i168_crit_edge, label %if.end.i.i

do.end62.do.end.i168_crit_edge:                   ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i168

if.end.i.i:                                       ; preds = %do.end62
  %arrayidx.i.i165 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 141, i32 %280
  %281 = ptrtoint ptr %arrayidx.i.i165 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx.i.i165, align 4
  store ptr null, ptr %arrayidx.i.i165, align 4
  %tobool.not.i.i = icmp eq ptr %282, null
  br i1 %tobool.not.i.i, label %if.end.i.i.do.end.i168_crit_edge, label %if.end.i170

if.end.i.i.do.end.i168_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i168

do.end.i168:                                      ; preds = %if.end.i.i.do.end.i168_crit_edge, %do.end62.do.end.i168_crit_edge
  %283 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pdev58, align 8
  %dev.i167 = getelementptr inbounds %struct.pci_dev, ptr %284, i32 0, i32 44
  %285 = ptrtoint ptr %handle.i163 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %handle.i163, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev.i167, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %286) #9
  br label %sw.epilog

if.end.i170:                                      ; preds = %if.end.i.i
  %iocb_cnt.i.i = getelementptr inbounds %struct.mrb, ptr %282, i32 0, i32 3
  %287 = ptrtoint ptr %iocb_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %iocb_cnt.i.i, align 4
  %289 = ptrtoint ptr %iocb_cnt5.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %iocb_cnt5.i.i, align 16
  %sub.i.i = sub i16 %290, %288
  store i16 %sub.i.i, ptr %iocb_cnt5.i.i, align 16
  %mbox_cmd.i = getelementptr inbounds %struct.mrb, ptr %282, i32 0, i32 2
  %291 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mbox_cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %292)
  %cond.i169 = icmp eq i32 %292, 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %293 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %293)
  %cmp3.i = icmp eq i32 %293, 2
  br i1 %cond.i169, label %do.body2.i, label %do.body25.i

do.body2.i:                                       ; preds = %if.end.i170
  br i1 %cmp3.i, label %do.end7.i, label %do.body2.i.do.end15.i_crit_edge

do.body2.i.do.end15.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.i

do.end7.i:                                        ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  %294 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %pdev58, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %295, i32 0, i32 44
  %out_mbox.i = getelementptr inbounds %struct.mbox_status_iocb, ptr %4, i32 0, i32 2
  %296 = ptrtoint ptr %out_mbox.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %out_mbox.i, align 4
  %arrayidx12.i = getelementptr %struct.mbox_status_iocb, ptr %4, i32 0, i32 2, i32 6
  %298 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx12.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev9.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, i32 noundef 11, i32 noundef %297, i32 noundef %299) #9
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end7.i, %do.body2.i.do.end15.i_crit_edge
  %out_mbox16.i = getelementptr inbounds %struct.mbox_status_iocb, ptr %4, i32 0, i32 2
  %300 = ptrtoint ptr %out_mbox16.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %out_mbox16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %301)
  %cmp18.i = icmp eq i32 %301, 16384
  br i1 %cmp18.i, label %do.end15.i.if.end22.i_crit_edge, label %if.else.i171

do.end15.i.if.end22.i_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.else.i171:                                     ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21.i = getelementptr %struct.mbox_status_iocb, ptr %4, i32 0, i32 2, i32 6
  %302 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx21.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i171, %do.end15.i.if.end22.i_crit_edge
  %status.0.i = phi i32 [ %303, %if.else.i171 ], [ 0, %do.end15.i.if.end22.i_crit_edge ]
  %pid.i = getelementptr inbounds %struct.mrb, ptr %282, i32 0, i32 4
  %304 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %pid.i, align 4
  %call24.i = tail call i32 @qla4xxx_post_ping_evt_work(ptr noundef %ha, i32 noundef %status.0.i, i32 noundef %305, i32 noundef 32, ptr noundef %out_mbox16.i) #6
  br label %sw.epilog.i

do.body25.i:                                      ; preds = %if.end.i170
  br i1 %cmp3.i, label %do.end30.i, label %do.body25.i.sw.epilog.i_crit_edge

do.body25.i.sw.epilog.i_crit_edge:                ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end30.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  %306 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %pdev58, align 8
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %307, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev32.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.117, i32 noundef %292) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end30.i, %do.body25.i.sw.epilog.i_crit_edge, %if.end22.i
  tail call void @kfree(ptr noundef nonnull %282) #6
  br label %sw.epilog

do.body63:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %308 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %308)
  %cmp64 = icmp eq i32 %308, 2
  br i1 %cmp64, label %do.end69, label %do.body63.exit_prq_error_crit_edge

do.body63.exit_prq_error_crit_edge:               ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_prq_error

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.le = zext i8 %13 to i32
  %309 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %host_no45, align 4
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %310, ptr noundef nonnull @.str.1, i32 noundef %conv9.le) #9
  br label %exit_prq_error

sw.epilog:                                        ; preds = %sw.epilog.i, %do.end.i168, %do.end43, %do.body37.sw.epilog_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %cleanup.sink.split.i, %if.end11.i.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %do.end, %if.end16.i, %do.end13.i, %do.end.i145, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge, %status_entry_exit.i.sw.epilog_crit_edge, %do.end22.i, %if.else.i, %if.then4.i
  %signature79 = getelementptr inbounds %struct.response, ptr %4, i32 0, i32 1
  %311 = ptrtoint ptr %signature79 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 -559030611, ptr %signature79, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !355
  tail call void @arm_heavy_mb() #6
  %312 = ptrtoint ptr %response_ptr to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %response_ptr, align 4
  %signature = getelementptr inbounds %struct.queue_entry, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %signature, align 4
  %cmp.not = icmp eq i32 %315, -559030611
  br i1 %cmp.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %316 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %isp_ops, align 4
  %complete_iocb = getelementptr inbounds %struct.isp_operations, ptr %317, i32 0, i32 12
  %318 = ptrtoint ptr %complete_iocb to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %complete_iocb, align 4
  tail call void %319(ptr noundef %ha) #6
  br label %cleanup

do.body83:                                        ; preds = %sw.bb19
  br i1 %cmp84, label %do.end89, label %do.body83.exit_prq_error_crit_edge

do.body83.exit_prq_error_crit_edge:               ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_prq_error

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  %320 = ptrtoint ptr %host_no45 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %host_no45, align 4
  %322 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %4, align 4
  %conv94 = zext i8 %323 to i32
  %completionStatus = getelementptr inbounds %struct.status_entry, ptr %4, i32 0, i32 5
  %324 = ptrtoint ptr %completionStatus to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %completionStatus, align 1
  %conv95 = zext i8 %325 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %321, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef %conv94, i32 noundef %conv95) #9
  br label %exit_prq_error

exit_prq_error:                                   ; preds = %do.end89, %do.body83.exit_prq_error_crit_edge, %do.end69, %do.body63.exit_prq_error_crit_edge
  %isp_ops100 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %326 = ptrtoint ptr %isp_ops100 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %isp_ops100, align 4
  %complete_iocb101 = getelementptr inbounds %struct.isp_operations, ptr %327, i32 0, i32 12
  %328 = ptrtoint ptr %complete_iocb101 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %complete_iocb101, align 4
  tail call void %329(ptr noundef %ha) #6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags.i) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_prq_error, %while.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qla4xxx_del_from_active_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_srb_compl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_interrupt_service_routine(ptr noundef %ha, i32 noundef %intr_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr_status)
  %tobool.not = icmp eq i32 %intr_status, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %0 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla4_83xx_reg, align 16
  %mailbox_out = getelementptr inbounds %struct.device_reg_83xx, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox_out) #6, !srcloc !356
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !357
  tail call fastcc void @qla4xxx_isr_decode_mailbox(ptr noundef %ha, i32 noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !358
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qla4_83xx_reg, align 16
  %risc_intr = getelementptr inbounds %struct.device_reg_83xx, ptr %5, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %risc_intr, i32 0) #6, !srcloc !359
  br label %do.body3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4xxx_process_response_queue(ptr noundef %ha)
  br label %do.body3

do.body3:                                         ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !360
  tail call void @arm_heavy_mb() #6
  %qla4_83xx_reg5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %6 = ptrtoint ptr %qla4_83xx_reg5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qla4_83xx_reg5, align 16
  %mb_int_mask = getelementptr inbounds %struct.device_reg_83xx, ptr %7, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mb_int_mask, i32 0) #6, !srcloc !359
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4xxx_isr_decode_mailbox(ptr noundef %ha, i32 noundef %mbox_status) unnamed_addr #0 align 64 {
entry:
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #6
  %0 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 7
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.232)
  switch i16 %10, label %if.else9 [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge977
    i16 -32734, label %if.then6
  ]

entry.if.then_crit_edge977:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge977
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %12 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qla4_83xx_reg, align 16
  %mailbox_out3 = getelementptr inbounds %struct.device_reg_83xx, ptr %13, i32 0, i32 2
  br label %if.end11

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %14 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qla4_82xx_reg, align 4
  %mailbox_out7 = getelementptr inbounds %struct.device_reg_82xx, ptr %15, i32 0, i32 10
  br label %if.end11

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then6, %if.then
  %mailbox_out.0 = phi ptr [ %mailbox_out3, %if.then ], [ %mailbox_out7, %if.then6 ], [ %17, %if.else9 ]
  %18 = zext i32 %mbox_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %mbox_status, label %lor.lhs.false14 [
    i32 7, label %if.end11.if.then16_crit_edge
    i32 4096, label %if.end11.if.then16_crit_edge978
  ]

if.end11.if.then16_crit_edge978:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false14:                                  ; preds = %if.end11
  %shr = lshr i32 %mbox_status, 12
  %19 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %shr, label %do.body724 [
    i32 4, label %lor.lhs.false14.if.then16_crit_edge
    i32 8, label %for.body44.preheader
  ]

lor.lhs.false14.if.then16_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

for.body44.preheader:                             ; preds = %lor.lhs.false14
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox_out.0) #6, !srcloc !356
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %22 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mbox_sts, align 4
  %arrayidx47.1 = getelementptr i32, ptr %mailbox_out.0, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.1) #6, !srcloc !356
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %0, align 4
  %arrayidx47.2 = getelementptr i32, ptr %mailbox_out.0, i32 2
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.2) #6, !srcloc !356
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %1, align 4
  %arrayidx47.3 = getelementptr i32, ptr %mailbox_out.0, i32 3
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.3) #6, !srcloc !356
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %2, align 4
  %arrayidx47.4 = getelementptr i32, ptr %mailbox_out.0, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.4) #6, !srcloc !356
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %3, align 4
  %arrayidx47.5 = getelementptr i32, ptr %mailbox_out.0, i32 5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.5) #6, !srcloc !356
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %4, align 4
  %arrayidx47.6 = getelementptr i32, ptr %mailbox_out.0, i32 6
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.6) #6, !srcloc !356
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %5, align 4
  %arrayidx47.7 = getelementptr i32, ptr %mailbox_out.0, i32 7
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx47.7) #6, !srcloc !356
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %6, align 4
  %aen_log = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 76
  %44 = ptrtoint ptr %aen_log to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aen_log, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %45)
  %cmp55 = icmp slt i32 %45, 512
  br i1 %cmp55, label %for.body61.preheader, label %for.body44.preheader.if.end76_crit_edge

for.body44.preheader.if.end76_crit_edge:          ; preds = %for.body44.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then16:                                        ; preds = %lor.lhs.false14.if.then16_crit_edge, %if.end11.if.then16_crit_edge, %if.end11.if.then16_crit_edge978
  %mbox_status17 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 79
  %46 = ptrtoint ptr %mbox_status17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %mbox_status, ptr %mbox_status17, align 4
  %47 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %ha, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not = icmp eq i32 %49, 0
  br i1 %tobool20.not, label %if.then16.if.end740_crit_edge, label %for.cond.preheader

if.then16.if.end740_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

for.cond.preheader:                               ; preds = %if.then16
  %mbox_status_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 78
  %50 = ptrtoint ptr %mbox_status_count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %mbox_status_count, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp22975.not = icmp eq i8 %51, 0
  br i1 %cmp22975.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0976 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx24 = getelementptr i32, ptr %mailbox_out.0, i32 %i.0976
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx24) #6, !srcloc !356
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !362
  %arrayidx28 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 79, i32 %i.0976
  %54 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %53, ptr %arrayidx28, align 4
  %inc = add nuw nsw i32 %i.0976, 1
  %55 = ptrtoint ptr %mbox_status_count to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %mbox_status_count, align 128
  %conv = zext i8 %56 to i32
  %cmp22 = icmp ult i32 %inc, %conv
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %ha) #6
  %57 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %ha, align 4
  %59 = and i32 %58, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool32.not = icmp eq i32 %59, 0
  br i1 %tobool32.not, label %for.end.if.end740_crit_edge, label %if.then33

for.end.if.end740_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %mbx_intr_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 112
  tail call void @complete(ptr noundef %mbx_intr_comp) #6
  br label %if.end740

for.body61.preheader:                             ; preds = %for.body44.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mbox_sts, align 4
  %62 = ptrtoint ptr %aen_log to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %aen_log, align 32
  %arrayidx67 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 76, i32 1, i32 %63
  %64 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %arrayidx67, align 4
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 4
  %arrayidx69.1 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx69.1, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %arrayidx69.2 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx69.2, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %2, align 4
  %arrayidx69.3 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx69.3, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %arrayidx69.4 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 4
  %76 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx69.4, align 4
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %4, align 4
  %arrayidx69.5 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx69.5, align 4
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %5, align 4
  %arrayidx69.6 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 6
  %82 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx69.6, align 4
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %6, align 4
  %arrayidx69.7 = getelementptr [8 x i32], ptr %arrayidx67, i32 0, i32 7
  %85 = ptrtoint ptr %arrayidx69.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx69.7, align 4
  %86 = load i32, ptr %aen_log, align 32
  %inc75 = add i32 %86, 1
  store i32 %inc75, ptr %aen_log, align 32
  br label %if.end76

if.end76:                                         ; preds = %for.body61.preheader, %for.body44.preheader.if.end76_crit_edge
  %87 = zext i32 %mbox_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %mbox_status, label %do.body709 [
    i32 32770, label %do.end
    i32 32771, label %if.end76.do.body106_crit_edge
    i32 32772, label %if.end76.do.body106_crit_edge979
    i32 32794, label %if.end76.do.body106_crit_edge980
    i32 32796, label %if.end76.do.body106_crit_edge981
    i32 32797, label %if.end76.do.body106_crit_edge982
    i32 32784, label %sw.bb126
    i32 32785, label %sw.bb149
    i32 32793, label %sw.bb164
    i32 32799, label %do.body166
    i32 32773, label %if.end76.do.body181_crit_edge
    i32 32774, label %if.end76.do.body181_crit_edge983
    i32 32789, label %if.end76.do.body181_crit_edge984
    i32 32802, label %if.end76.do.body181_crit_edge985
    i32 32807, label %if.end76.do.body181_crit_edge986
    i32 32805, label %if.end76.do.body181_crit_edge987
    i32 32809, label %do.end197
    i32 32811, label %if.end76.do.body262_crit_edge
    i32 32812, label %if.end76.do.body262_crit_edge988
    i32 32813, label %if.end76.do.body262_crit_edge989
    i32 32814, label %do.body276
    i32 32795, label %if.end76.do.body296_crit_edge
    i32 32792, label %if.end76.do.body296_crit_edge990
    i32 32790, label %if.end76.do.body313_crit_edge
    i32 32791, label %if.end76.do.body313_crit_edge991
    i32 32788, label %sw.bb330
    i32 33072, label %do.body431
    i32 33073, label %do.body446
    i32 33025, label %sw.bb460
    i32 33024, label %sw.bb503
    i32 32810, label %do.body570
    i32 33026, label %do.body605
    i32 32817, label %do.body640
    i32 32822, label %do.body656
    i32 33040, label %do.body676
  ]

if.end76.do.body313_crit_edge991:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body313

if.end76.do.body313_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body313

if.end76.do.body296_crit_edge990:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end76.do.body296_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end76.do.body262_crit_edge989:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body262

if.end76.do.body262_crit_edge988:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body262

if.end76.do.body262_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body262

if.end76.do.body181_crit_edge987:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body181_crit_edge986:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body181_crit_edge985:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body181_crit_edge984:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body181_crit_edge983:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body181_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body181

if.end76.do.body106_crit_edge982:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

if.end76.do.body106_crit_edge981:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

if.end76.do.body106_crit_edge980:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

if.end76.do.body106_crit_edge979:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

if.end76.do.body106_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

do.end:                                           ; preds = %if.end76
  %88 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #9
  tail call void @qla4xxx_dump_registers(ptr noundef %ha) #6
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 8
  %device.i915 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %device.i915 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device.i915, align 2
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.236)
  switch i16 %93, label %do.end.if.else102_crit_edge [
    i16 -32734, label %land.lhs.true
    i16 -32718, label %do.end.land.lhs.true86_crit_edge
    i16 -32702, label %do.end.land.lhs.true86_crit_edge992
  ]

do.end.land.lhs.true86_crit_edge992:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

do.end.land.lhs.true86_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true86

do.end.if.else102_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else102

land.lhs.true:                                    ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xdontresethba to i32))
  %95 = load i32, ptr @ql4xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool79.not = icmp eq i32 %95, 0
  br i1 %tobool79.not, label %land.lhs.true.if.else102_crit_edge, label %land.lhs.true.do.body90_crit_edge

land.lhs.true.do.body90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

land.lhs.true.if.else102_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else102

land.lhs.true86:                                  ; preds = %do.end.land.lhs.true86_crit_edge, %do.end.land.lhs.true86_crit_edge992
  %call87 = tail call i32 @qla4_83xx_idc_dontreset(ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.else102_crit_edge, label %land.lhs.true86.do.body90_crit_edge

land.lhs.true86.do.body90_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

land.lhs.true86.if.else102_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else102

do.body90:                                        ; preds = %land.lhs.true86.do.body90_crit_edge, %land.lhs.true.do.body90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %96 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp91 = icmp eq i32 %96, 2
  br i1 %cmp91, label %do.end96, label %do.body90.if.end740_crit_edge

do.body90.if.end740_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %97 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %host_no, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %98, ptr noundef nonnull @.str.125) #9
  br label %if.end740

if.else102:                                       ; preds = %land.lhs.true86.if.else102_crit_edge, %land.lhs.true.if.else102_crit_edge, %do.end.if.else102_crit_edge
  tail call void @_set_bit(i32 noundef 7, ptr noundef %ha) #6
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags) #6
  br label %if.end740

do.body106:                                       ; preds = %if.end76.do.body106_crit_edge, %if.end76.do.body106_crit_edge979, %if.end76.do.body106_crit_edge980, %if.end76.do.body106_crit_edge981, %if.end76.do.body106_crit_edge982
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %99 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp107 = icmp eq i32 %99, 2
  br i1 %cmp107, label %do.end112, label %do.body106.do.end118_crit_edge

do.body106.do.end118_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end118

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  %host_no114 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %100 = ptrtoint ptr %host_no114 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %host_no114, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %101, i32 noundef %mbox_status) #9
  br label %do.end118

do.end118:                                        ; preds = %do.end112, %do.body106.do.end118_crit_edge
  %102 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %device.i.i, align 2
  %106 = zext i16 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.237)
  switch i16 %105, label %if.else123 [
    i16 -32734, label %do.end118.if.then121_crit_edge
    i16 -32718, label %do.end118.if.then121_crit_edge993
    i16 -32702, label %do.end118.if.then121_crit_edge994
  ]

do.end118.if.then121_crit_edge994:                ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

do.end118.if.then121_crit_edge993:                ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

do.end118.if.then121_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

if.then121:                                       ; preds = %do.end118.if.then121_crit_edge, %do.end118.if.then121_crit_edge993, %do.end118.if.then121_crit_edge994
  %dpc_flags122 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags122) #6
  br label %if.end740

if.else123:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags124 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags124) #6
  br label %if.end740

sw.bb126:                                         ; preds = %if.end76
  tail call void @_set_bit(i32 noundef 8, ptr noundef %ha) #6
  %107 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %ha, align 4
  %109 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool130.not = icmp eq i32 %109, 0
  br i1 %tobool130.not, label %sw.bb126.do.end136_crit_edge, label %if.then131

sw.bb126.do.end136_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

if.then131:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags132 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 18, ptr noundef %dpc_flags132) #6
  br label %do.end136

do.end136:                                        ; preds = %if.then131, %sw.bb126.do.end136_crit_edge
  %110 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i, align 8
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev138, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.125) #9
  %call139 = call i32 @qla4xxx_post_aen_work(ptr noundef %ha, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %mbox_sts) #6
  %112 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev.i, align 8
  %device.i927 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %device.i927 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %device.i927, align 2
  %116 = zext i16 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.238)
  switch i16 %115, label %do.end136.if.end740_crit_edge [
    i16 -32718, label %do.end136.land.lhs.true145_crit_edge
    i16 -32702, label %do.end136.land.lhs.true145_crit_edge995
  ]

do.end136.land.lhs.true145_crit_edge995:          ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true145

do.end136.land.lhs.true145_crit_edge:             ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true145

do.end136.if.end740_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

land.lhs.true145:                                 ; preds = %do.end136.land.lhs.true145_crit_edge, %do.end136.land.lhs.true145_crit_edge995
  %notify_link_up_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 150
  %117 = ptrtoint ptr %notify_link_up_comp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %notify_link_up_comp, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool146.not = icmp eq i32 %118, 0
  br i1 %tobool146.not, label %land.lhs.true145.if.end740_crit_edge, label %if.then147

land.lhs.true145.if.end740_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

if.then147:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #8
  %link_up_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 153
  call void @complete(ptr noundef %link_up_comp) #6
  br label %if.end740

sw.bb149:                                         ; preds = %if.end76
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %ha) #6
  %119 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %ha, align 4
  %121 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool153.not = icmp eq i32 %121, 0
  br i1 %tobool153.not, label %sw.bb149.do.end159_crit_edge, label %if.then154

sw.bb149.do.end159_crit_edge:                     ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end159

if.then154:                                       ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags155 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 18, ptr noundef %dpc_flags155) #6
  tail call void @qla4xxx_wake_dpc(ptr noundef %ha) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then154, %sw.bb149.do.end159_crit_edge
  %122 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i, align 8
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev161, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.125) #9
  %call163 = call i32 @qla4xxx_post_aen_work(ptr noundef %ha, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %mbox_sts) #6
  br label %if.end740

sw.bb164:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %seconds_since_last_heartbeat = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 30
  %124 = ptrtoint ptr %seconds_since_last_heartbeat to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %seconds_since_last_heartbeat, align 128
  br label %if.end740

do.body166:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %125 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %cmp167 = icmp eq i32 %125, 2
  br i1 %cmp167, label %do.end172, label %do.body166.do.end178_crit_edge

do.body166.do.end178_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end178

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %host_no174 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %126 = ptrtoint ptr %host_no174 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %host_no174, align 4
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %127, i32 noundef 32799) #9
  br label %do.end178

do.end178:                                        ; preds = %do.end172, %do.body166.do.end178_crit_edge
  %dpc_flags179 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 15, ptr noundef %dpc_flags179) #6
  br label %if.end740

do.body181:                                       ; preds = %if.end76.do.body181_crit_edge, %if.end76.do.body181_crit_edge983, %if.end76.do.body181_crit_edge984, %if.end76.do.body181_crit_edge985, %if.end76.do.body181_crit_edge986, %if.end76.do.body181_crit_edge987
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %128 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp182 = icmp eq i32 %128, 2
  br i1 %cmp182, label %do.end187, label %do.body181.if.end740_crit_edge

do.body181.if.end740_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end187:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #8
  %host_no189 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %129 = ptrtoint ptr %host_no189 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %host_no189, align 4
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %130, i32 noundef %mbox_status) #9
  br label %if.end740

do.end197:                                        ; preds = %if.end76
  %host_no199 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %131 = ptrtoint ptr %host_no199 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %host_no199, align 4
  %133 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mbox_sts, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %1, align 4
  %137 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %2, align 4
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %132, i32 noundef %134, i32 noundef %136, i32 noundef %138) #9
  %139 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %4, align 4
  tail call fastcc void @qla4xxx_update_ipaddr_state(ptr noundef %ha, i32 noundef %140, i32 noundef %138)
  %141 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %138, label %do.end197.if.end740_crit_edge [
    i32 5, label %land.lhs.true209
    i32 2, label %land.lhs.true223
    i32 6, label %do.end242
    i32 0, label %if.then250
  ]

do.end197.if.end740_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

land.lhs.true209:                                 ; preds = %do.end197
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %1, align 4
  %144 = and i32 %143, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %switch = icmp eq i32 %144, 2
  br i1 %switch, label %if.then217, label %land.lhs.true209.if.end740_crit_edge

land.lhs.true209.if.end740_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

if.then217:                                       ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags218 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 15, ptr noundef %dpc_flags218) #6
  br label %if.end740

land.lhs.true223:                                 ; preds = %do.end197
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %146)
  %cmp225 = icmp eq i32 %146, 5
  br i1 %cmp225, label %if.then227, label %land.lhs.true223.if.end740_crit_edge

land.lhs.true223.if.end740_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

if.then227:                                       ; preds = %land.lhs.true223
  %147 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev.i, align 8
  %device.i.i935 = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 8
  %149 = ptrtoint ptr %device.i.i935 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %device.i.i935, align 2
  %151 = zext i16 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.240)
  switch i16 %150, label %if.else232 [
    i16 -32734, label %if.then227.if.then230_crit_edge
    i16 -32718, label %if.then227.if.then230_crit_edge996
    i16 -32702, label %if.then227.if.then230_crit_edge997
  ]

if.then227.if.then230_crit_edge997:               ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then230

if.then227.if.then230_crit_edge996:               ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then230

if.then227.if.then230_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then230

if.then230:                                       ; preds = %if.then227.if.then230_crit_edge, %if.then227.if.then230_crit_edge996, %if.then227.if.then230_crit_edge997
  %dpc_flags231 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %dpc_flags231) #6
  br label %if.end740

if.else232:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags233 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags233) #6
  br label %if.end740

do.end242:                                        ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdev.i, align 8
  %dev244 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %154 = ptrtoint ptr %host_no199 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %host_no199, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev244, ptr noundef nonnull @.str.148, i32 noundef %155, ptr noundef nonnull @.str.125) #9
  br label %if.end740

if.then250:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #8
  %disable_acb_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 133
  tail call void @complete(ptr noundef %disable_acb_comp) #6
  %156 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev.i, align 8
  %dev255 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %158 = ptrtoint ptr %host_no199 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %host_no199, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev255, ptr noundef nonnull @.str.151, i32 noundef %159, ptr noundef nonnull @.str.125) #9
  br label %if.end740

do.body262:                                       ; preds = %if.end76.do.body262_crit_edge, %if.end76.do.body262_crit_edge988, %if.end76.do.body262_crit_edge989
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %160 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp263 = icmp eq i32 %160, 2
  br i1 %cmp263, label %do.end268, label %do.body262.if.end740_crit_edge

do.body262.if.end740_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end268:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdev.i, align 8
  %dev270 = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %host_no271 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %163 = ptrtoint ptr %host_no271 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %host_no271, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev270, ptr noundef nonnull @.str.142, i32 noundef %164, i32 noundef %mbox_status) #9
  br label %if.end740

do.body276:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %165 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %165)
  %cmp277 = icmp eq i32 %165, 2
  br i1 %cmp277, label %do.end282, label %do.body276.if.end740_crit_edge

do.body276.if.end740_crit_edge:                   ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end282:                                        ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev.i, align 8
  %dev284 = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  %host_no285 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %168 = ptrtoint ptr %host_no285 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %host_no285, align 4
  %170 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mbox_sts, align 4
  %172 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %0, align 4
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %1, align 4
  %176 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %2, align 4
  %178 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %3, align 4
  %180 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev284, ptr noundef nonnull @.str.156, i32 noundef %169, i32 noundef %171, i32 noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef %179, i32 noundef %181) #9
  br label %if.end740

do.body296:                                       ; preds = %if.end76.do.body296_crit_edge, %if.end76.do.body296_crit_edge990
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %182 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %cmp297 = icmp eq i32 %182, 2
  br i1 %cmp297, label %do.end302, label %do.body296.if.end740_crit_edge

do.body296.if.end740_crit_edge:                   ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end302:                                        ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #8
  %host_no304 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %183 = ptrtoint ptr %host_no304 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %host_no304, align 4
  %185 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mbox_sts, align 4
  %187 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %0, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %1, align 4
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %184, i32 noundef %186, i32 noundef %188, i32 noundef %190) #9
  br label %if.end740

do.body313:                                       ; preds = %if.end76.do.body313_crit_edge, %if.end76.do.body313_crit_edge991
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %191 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %191)
  %cmp314 = icmp eq i32 %191, 2
  br i1 %cmp314, label %do.end319, label %do.body313.if.end740_crit_edge

do.body313.if.end740_crit_edge:                   ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end319:                                        ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #8
  %host_no321 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %192 = ptrtoint ptr %host_no321 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %host_no321, align 4
  %194 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mbox_sts, align 4
  %196 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %0, align 4
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %1, align 4
  %200 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %2, align 4
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %193, i32 noundef %195, i32 noundef %197, i32 noundef %199, i32 noundef %201) #9
  br label %if.end740

sw.bb330:                                         ; preds = %if.end76
  %aen_q_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 72
  %202 = ptrtoint ptr %aen_q_count to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %aen_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %cmp332.not = icmp eq i16 %203, 0
  br i1 %cmp332.not, label %do.body379, label %if.then334

if.then334:                                       ; preds = %sw.bb330
  %dec = add i16 %203, -1
  %204 = ptrtoint ptr %aen_q_count to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %dec, ptr %aen_q_count, align 8
  %aen_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 73
  %205 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mbox_sts, align 4
  %207 = ptrtoint ptr %aen_in to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %aen_in, align 2
  %idxprom = zext i16 %208 to i32
  %arrayidx341 = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 75, i32 %idxprom
  %209 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %206, ptr %arrayidx341, align 4
  %210 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %0, align 4
  %arrayidx343.1 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 1
  %212 = ptrtoint ptr %arrayidx343.1 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx343.1, align 4
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %1, align 4
  %arrayidx343.2 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 2
  %215 = ptrtoint ptr %arrayidx343.2 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %arrayidx343.2, align 4
  %216 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %2, align 4
  %arrayidx343.3 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 3
  %218 = ptrtoint ptr %arrayidx343.3 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %arrayidx343.3, align 4
  %219 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %3, align 4
  %arrayidx343.4 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 4
  %221 = ptrtoint ptr %arrayidx343.4 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %arrayidx343.4, align 4
  %222 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %4, align 4
  %arrayidx343.5 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 5
  %224 = ptrtoint ptr %arrayidx343.5 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %arrayidx343.5, align 4
  %225 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %5, align 4
  %arrayidx343.6 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 6
  %227 = ptrtoint ptr %arrayidx343.6 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx343.6, align 4
  %228 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %6, align 4
  %arrayidx343.7 = getelementptr [8 x i32], ptr %arrayidx341, i32 0, i32 7
  %230 = ptrtoint ptr %arrayidx343.7 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %arrayidx343.7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %231 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %231)
  %cmp348 = icmp eq i32 %231, 2
  br i1 %cmp348, label %do.end353, label %if.then334.do.end367_crit_edge

if.then334.do.end367_crit_edge:                   ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end367

do.end353:                                        ; preds = %if.then334
  call void @__sanitizer_cov_trace_pc() #8
  %host_no355 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %232 = ptrtoint ptr %host_no355 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %host_no355, align 4
  %234 = ptrtoint ptr %aen_in to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %aen_in, align 2
  %conv357 = zext i16 %235 to i32
  %236 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %mbox_sts, align 4
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %0, align 4
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %1, align 4
  %242 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %2, align 4
  %244 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %3, align 4
  %246 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %4, align 4
  %call364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %233, i32 noundef %conv357, i32 noundef %237, i32 noundef %239, i32 noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef %247) #9
  br label %do.end367

do.end367:                                        ; preds = %do.end353, %if.then334.do.end367_crit_edge
  %248 = ptrtoint ptr %aen_in to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %aen_in, align 2
  %inc369 = add i16 %249, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %inc369)
  %cmp372 = icmp eq i16 %inc369, 512
  %spec.select = select i1 %cmp372, i16 0, i16 %inc369
  %250 = ptrtoint ptr %aen_in to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %spec.select, ptr %aen_in, align 2
  %dpc_flags377 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 9, ptr noundef %dpc_flags377) #6
  br label %if.end740

do.body379:                                       ; preds = %sw.bb330
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %251 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %251)
  %cmp380 = icmp eq i32 %251, 2
  br i1 %cmp380, label %do.body393, label %do.body379.do.body410.preheader_crit_edge

do.body379.do.body410.preheader_crit_edge:        ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body410.preheader

do.body393:                                       ; preds = %do.body379
  %host_no387 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %252 = ptrtoint ptr %host_no387 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %host_no387, align 4
  %254 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mbox_sts, align 4
  %call389 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %253, ptr noundef nonnull @.str.125, i32 noundef %255) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp394 = icmp eq i32 %.pr, 2
  br i1 %cmp394, label %do.end399, label %do.body393.do.body410.preheader_crit_edge

do.body393.do.body410.preheader_crit_edge:        ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body410.preheader

do.end399:                                        ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #8
  %256 = ptrtoint ptr %host_no387 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %host_no387, align 4
  %call402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %257) #9
  br label %do.body410.preheader

do.body410.preheader:                             ; preds = %do.end399, %do.body393.do.body410.preheader_crit_edge, %do.body379.do.body410.preheader_crit_edge
  br label %do.body410

do.body410:                                       ; preds = %for.inc426.do.body410_crit_edge, %do.body410.preheader
  %i.4972 = phi i32 [ %inc427, %for.inc426.do.body410_crit_edge ], [ 0, %do.body410.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %258 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %258)
  %cmp411 = icmp eq i32 %258, 2
  br i1 %cmp411, label %do.end416, label %do.body410.for.inc426_crit_edge

do.body410.for.inc426_crit_edge:                  ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc426

do.end416:                                        ; preds = %do.body410
  call void @__sanitizer_cov_trace_pc() #8
  %259 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %mbox_sts, align 4
  %261 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %0, align 4
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %1, align 4
  %265 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %2, align 4
  %call422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %i.4972, i32 noundef %260, i32 noundef %262, i32 noundef %264, i32 noundef %266) #9
  br label %for.inc426

for.inc426:                                       ; preds = %do.end416, %do.body410.for.inc426_crit_edge
  %inc427 = add nuw nsw i32 %i.4972, 1
  %exitcond.not = icmp eq i32 %inc427, 512
  br i1 %exitcond.not, label %for.inc426.if.end740_crit_edge, label %for.inc426.do.body410_crit_edge

for.inc426.do.body410_crit_edge:                  ; preds = %for.inc426
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body410

for.inc426.if.end740_crit_edge:                   ; preds = %for.inc426
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.body431:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %267 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %267)
  %cmp432 = icmp eq i32 %267, 2
  br i1 %cmp432, label %do.end437, label %do.body431.if.end740_crit_edge

do.body431.if.end740_crit_edge:                   ; preds = %do.body431
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end437:                                        ; preds = %do.body431
  call void @__sanitizer_cov_trace_pc() #8
  %host_no439 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %268 = ptrtoint ptr %host_no439 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %host_no439, align 4
  %270 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %mbox_sts, align 4
  %call441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %269, i32 noundef %271) #9
  br label %if.end740

do.body446:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %272 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %272)
  %cmp447 = icmp eq i32 %272, 2
  br i1 %cmp447, label %do.end452, label %do.body446.if.end740_crit_edge

do.body446.if.end740_crit_edge:                   ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end452:                                        ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #8
  %host_no454 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %273 = ptrtoint ptr %host_no454 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %host_no454, align 4
  %275 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %mbox_sts, align 4
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %274, i32 noundef %276) #9
  br label %if.end740

sw.bb460:                                         ; preds = %if.end76
  %277 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pdev.i, align 8
  %device.i941 = getelementptr inbounds %struct.pci_dev, ptr %278, i32 0, i32 8
  %279 = ptrtoint ptr %device.i941 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %device.i941, align 2
  %281 = zext i16 %280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.241)
  switch i16 %280, label %sw.bb460.if.end740_crit_edge [
    i16 -32718, label %sw.bb460.do.body467_crit_edge
    i16 -32702, label %sw.bb460.do.body467_crit_edge998
  ]

sw.bb460.do.body467_crit_edge998:                 ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body467

sw.bb460.do.body467_crit_edge:                    ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body467

sw.bb460.if.end740_crit_edge:                     ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.body467:                                       ; preds = %sw.bb460.do.body467_crit_edge, %sw.bb460.do.body467_crit_edge998
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %282 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %282)
  %cmp468 = icmp eq i32 %282, 2
  br i1 %cmp468, label %do.end473, label %do.body467.do.end484_crit_edge

do.body467.do.end484_crit_edge:                   ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end484

do.end473:                                        ; preds = %do.body467
  call void @__sanitizer_cov_trace_pc() #8
  %dev475 = getelementptr inbounds %struct.pci_dev, ptr %278, i32 0, i32 44
  %host_no476 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %283 = ptrtoint ptr %host_no476 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %host_no476, align 4
  %285 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %mbox_sts, align 4
  %287 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %0, align 4
  %289 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %1, align 4
  %291 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %2, align 4
  %293 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev475, ptr noundef nonnull @.str.183, i32 noundef %284, i32 noundef %286, i32 noundef %288, i32 noundef %290, i32 noundef %292, i32 noundef %294) #9
  br label %do.end484

do.end484:                                        ; preds = %do.end473, %do.body467.do.end484_crit_edge
  %295 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %0, align 4
  %shr486 = lshr i32 %296, 16
  %trunc968 = trunc i32 %shr486 to i16
  %297 = zext i16 %trunc968 to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.242)
  switch i16 %trunc968, label %do.end484.if.end740_crit_edge [
    i16 290, label %do.end484.if.then492_crit_edge
    i16 288, label %do.end484.if.then492_crit_edge999
  ]

do.end484.if.then492_crit_edge999:                ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then492

do.end484.if.then492_crit_edge:                   ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then492

do.end484.if.end740_crit_edge:                    ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

if.then492:                                       ; preds = %do.end484.if.then492_crit_edge, %do.end484.if.then492_crit_edge999
  %dpc_flags493 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 23, ptr noundef %dpc_flags493) #6
  %298 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %0, align 4
  %idc_info = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147
  %300 = ptrtoint ptr %idc_info to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %idc_info, align 8
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %1, align 4
  %info1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 1
  %303 = ptrtoint ptr %info1 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %info1, align 4
  %304 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %2, align 4
  %info2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 2
  %306 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %info2, align 8
  %307 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %3, align 4
  %info3 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 3
  %309 = ptrtoint ptr %info3 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %info3, align 4
  tail call void @qla4xxx_wake_dpc(ptr noundef %ha) #6
  br label %if.end740

sw.bb503:                                         ; preds = %if.end76
  %310 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %pdev.i, align 8
  %device.i949 = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 8
  %312 = ptrtoint ptr %device.i949 to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %device.i949, align 2
  %314 = zext i16 %313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %314, ptr @__sancov_gen_cov_switch_values.243)
  switch i16 %313, label %sw.bb503.if.end740_crit_edge [
    i16 -32718, label %sw.bb503.do.body510_crit_edge
    i16 -32702, label %sw.bb503.do.body510_crit_edge1000
  ]

sw.bb503.do.body510_crit_edge1000:                ; preds = %sw.bb503
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body510

sw.bb503.do.body510_crit_edge:                    ; preds = %sw.bb503
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body510

sw.bb503.if.end740_crit_edge:                     ; preds = %sw.bb503
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.body510:                                       ; preds = %sw.bb503.do.body510_crit_edge, %sw.bb503.do.body510_crit_edge1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %315 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %315)
  %cmp511 = icmp eq i32 %315, 2
  br i1 %cmp511, label %do.body528, label %do.body510.do.end541_crit_edge

do.body510.do.end541_crit_edge:                   ; preds = %do.body510
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end541

do.body528:                                       ; preds = %do.body510
  %dev518 = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 44
  %host_no519 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %316 = ptrtoint ptr %host_no519 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %host_no519, align 4
  %318 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %mbox_sts, align 4
  %320 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %0, align 4
  %322 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %1, align 4
  %324 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %2, align 4
  %326 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev518, ptr noundef nonnull @.str.183, i32 noundef %317, i32 noundef %319, i32 noundef %321, i32 noundef %323, i32 noundef %325, i32 noundef %327) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr960 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr960)
  %cmp529 = icmp eq i32 %.pr960, 2
  br i1 %cmp529, label %do.end534, label %do.body528.do.end541_crit_edge

do.body528.do.end541_crit_edge:                   ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end541

do.end534:                                        ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #8
  %328 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %pdev.i, align 8
  %dev536 = getelementptr inbounds %struct.pci_dev, ptr %329, i32 0, i32 44
  %330 = ptrtoint ptr %host_no519 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %host_no519, align 4
  %332 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %mbox_sts, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev536, ptr noundef nonnull @.str.188, i32 noundef %331, i32 noundef %333) #9
  br label %do.end541

do.end541:                                        ; preds = %do.end534, %do.body528.do.end541_crit_edge, %do.body510.do.end541_crit_edge
  %334 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %0, align 4
  %shr543 = lshr i32 %335, 16
  %notify_idc_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 149
  %336 = ptrtoint ptr %notify_idc_comp to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %notify_idc_comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool544.not = icmp eq i32 %337, 0
  br i1 %tobool544.not, label %do.end541.if.end546_crit_edge, label %if.then545

do.end541.if.end546_crit_edge:                    ; preds = %do.end541
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end546

if.then545:                                       ; preds = %do.end541
  call void @__sanitizer_cov_trace_pc() #8
  %idc_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 152
  tail call void @complete(ptr noundef %idc_comp) #6
  br label %if.end546

if.end546:                                        ; preds = %if.then545, %do.end541.if.end546_crit_edge
  %trunc = trunc i32 %shr543 to i16
  %338 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.244)
  switch i16 %trunc, label %if.end546.if.end556_crit_edge [
    i16 290, label %if.end546.if.then552_crit_edge
    i16 288, label %if.end546.if.then552_crit_edge1001
  ]

if.end546.if.then552_crit_edge1001:               ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then552

if.end546.if.then552_crit_edge:                   ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then552

if.end546.if.end556_crit_edge:                    ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end556

if.then552:                                       ; preds = %if.end546.if.then552_crit_edge, %if.end546.if.then552_crit_edge1001
  %339 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %2, align 4
  %info2555 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 2
  %341 = ptrtoint ptr %info2555 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %info2555, align 8
  br label %if.end556

if.end556:                                        ; preds = %if.then552, %if.end546.if.end556_crit_edge
  %call557 = tail call fastcc i32 @qla4_83xx_loopback_in_progress(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool558.not = icmp eq i32 %call557, 0
  br i1 %tobool558.not, label %if.else561, label %if.then559

if.then559:                                       ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %ha) #6
  br label %if.end567

if.else561:                                       ; preds = %if.end556
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %ha) #6
  %saved_acb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 148
  %342 = ptrtoint ptr %saved_acb to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %saved_acb, align 8
  %tobool563.not = icmp eq ptr %343, null
  br i1 %tobool563.not, label %if.else561.if.end567_crit_edge, label %if.then564

if.else561.if.end567_crit_edge:                   ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end567

if.then564:                                       ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags565 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 24, ptr noundef %dpc_flags565) #6
  br label %if.end567

if.end567:                                        ; preds = %if.then564, %if.else561.if.end567_crit_edge, %if.then559
  tail call void @qla4xxx_wake_dpc(ptr noundef %ha) #6
  br label %if.end740

do.body570:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %344 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %344)
  %cmp571 = icmp eq i32 %344, 2
  br i1 %cmp571, label %do.body589, label %do.body570.do.end602_crit_edge

do.body570.do.end602_crit_edge:                   ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end602

do.body589:                                       ; preds = %do.body570
  %345 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %pdev.i, align 8
  %dev578 = getelementptr inbounds %struct.pci_dev, ptr %346, i32 0, i32 44
  %host_no579 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %347 = ptrtoint ptr %host_no579 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %host_no579, align 4
  %349 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %mbox_sts, align 4
  %351 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %0, align 4
  %353 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %1, align 4
  %355 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %2, align 4
  %357 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %3, align 4
  %359 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev578, ptr noundef nonnull @.str.191, i32 noundef %348, i32 noundef %350, i32 noundef %352, i32 noundef %354, i32 noundef %356, i32 noundef %358, i32 noundef %360) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr962 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr962)
  %cmp590 = icmp eq i32 %.pr962, 2
  br i1 %cmp590, label %do.end595, label %do.body589.do.end602_crit_edge

do.body589.do.end602_crit_edge:                   ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end602

do.end595:                                        ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #8
  %361 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %pdev.i, align 8
  %dev597 = getelementptr inbounds %struct.pci_dev, ptr %362, i32 0, i32 44
  %363 = ptrtoint ptr %host_no579 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %host_no579, align 4
  %365 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %mbox_sts, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev597, ptr noundef nonnull @.str.194, i32 noundef %364, i32 noundef %366) #9
  br label %do.end602

do.end602:                                        ; preds = %do.end595, %do.body589.do.end602_crit_edge, %do.body570.do.end602_crit_edge
  %ipv6_default_router_addr.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17
  %367 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %1, align 4
  %369 = ptrtoint ptr %ipv6_default_router_addr.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %ipv6_default_router_addr.i, align 4
  %arrayidx5.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17, i32 0, i32 0, i32 1
  %370 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %2, align 4
  %372 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %arrayidx5.i, align 4
  %arrayidx10.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17, i32 0, i32 0, i32 2
  %373 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %3, align 4
  %375 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %arrayidx10.i, align 4
  %arrayidx15.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17, i32 0, i32 0, i32 3
  %376 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %4, align 4
  %378 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %arrayidx15.i, align 4
  br label %if.end740

do.body605:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %379 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %379)
  %cmp606 = icmp eq i32 %379, 2
  br i1 %cmp606, label %do.body624, label %do.body605.do.end637_crit_edge

do.body605.do.end637_crit_edge:                   ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end637

do.body624:                                       ; preds = %do.body605
  %380 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pdev.i, align 8
  %dev613 = getelementptr inbounds %struct.pci_dev, ptr %381, i32 0, i32 44
  %host_no614 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %382 = ptrtoint ptr %host_no614 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %host_no614, align 4
  %384 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %mbox_sts, align 4
  %386 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %0, align 4
  %388 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %1, align 4
  %390 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %2, align 4
  %392 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %3, align 4
  %394 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev613, ptr noundef nonnull @.str.191, i32 noundef %383, i32 noundef %385, i32 noundef %387, i32 noundef %389, i32 noundef %391, i32 noundef %393, i32 noundef %395) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr964 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr964)
  %cmp625 = icmp eq i32 %.pr964, 2
  br i1 %cmp625, label %do.end630, label %do.body624.do.end637_crit_edge

do.body624.do.end637_crit_edge:                   ; preds = %do.body624
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end637

do.end630:                                        ; preds = %do.body624
  call void @__sanitizer_cov_trace_pc() #8
  %396 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %pdev.i, align 8
  %dev632 = getelementptr inbounds %struct.pci_dev, ptr %397, i32 0, i32 44
  %398 = ptrtoint ptr %host_no614 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %host_no614, align 4
  %400 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %mbox_sts, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev632, ptr noundef nonnull @.str.199, i32 noundef %399, i32 noundef %401) #9
  br label %do.end637

do.end637:                                        ; preds = %do.end630, %do.body624.do.end637_crit_edge, %do.body605.do.end637_crit_edge
  %402 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %0, align 4
  %idc_extend_tmo = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 151
  %404 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %403, ptr %idc_extend_tmo, align 4
  br label %if.end740

do.body640:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %405 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %405)
  %cmp641 = icmp eq i32 %405, 2
  br i1 %cmp641, label %do.end646, label %do.body640.if.end740_crit_edge

do.body640.if.end740_crit_edge:                   ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end646:                                        ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #8
  %406 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %pdev.i, align 8
  %dev648 = getelementptr inbounds %struct.pci_dev, ptr %407, i32 0, i32 44
  %host_no649 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %408 = ptrtoint ptr %host_no649 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %host_no649, align 4
  %410 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %mbox_sts, align 4
  %412 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev648, ptr noundef nonnull @.str.202, i32 noundef %409, i32 noundef %411, i32 noundef %413) #9
  br label %if.end740

do.body656:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %414 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %414)
  %cmp657 = icmp eq i32 %414, 2
  br i1 %cmp657, label %do.end662, label %do.body656.if.end740_crit_edge

do.body656.if.end740_crit_edge:                   ; preds = %do.body656
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end662:                                        ; preds = %do.body656
  call void @__sanitizer_cov_trace_pc() #8
  %415 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %pdev.i, align 8
  %dev664 = getelementptr inbounds %struct.pci_dev, ptr %416, i32 0, i32 44
  %host_no665 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %417 = ptrtoint ptr %host_no665 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %host_no665, align 4
  %419 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %mbox_sts, align 4
  %421 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %0, align 4
  %423 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %1, align 4
  %425 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %2, align 4
  %427 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %3, align 4
  %429 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev664, ptr noundef nonnull @.str.191, i32 noundef %418, i32 noundef %420, i32 noundef %422, i32 noundef %424, i32 noundef %426, i32 noundef %428, i32 noundef %430) #9
  br label %if.end740

do.body676:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %431 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %431)
  %cmp677 = icmp eq i32 %431, 2
  br i1 %cmp677, label %do.body695, label %do.body676.if.end740_crit_edge

do.body676.if.end740_crit_edge:                   ; preds = %do.body676
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.body695:                                       ; preds = %do.body676
  %432 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %pdev.i, align 8
  %dev684 = getelementptr inbounds %struct.pci_dev, ptr %433, i32 0, i32 44
  %host_no685 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %434 = ptrtoint ptr %host_no685 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %host_no685, align 4
  %436 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %mbox_sts, align 4
  %438 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %0, align 4
  %440 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %1, align 4
  %442 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %2, align 4
  %444 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %3, align 4
  %446 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev684, ptr noundef nonnull @.str.191, i32 noundef %435, i32 noundef %437, i32 noundef %439, i32 noundef %441, i32 noundef %443, i32 noundef %445, i32 noundef %447) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr966 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr966)
  %cmp696 = icmp eq i32 %.pr966, 2
  br i1 %cmp696, label %do.end701, label %do.body695.if.end740_crit_edge

do.body695.if.end740_crit_edge:                   ; preds = %do.body695
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end701:                                        ; preds = %do.body695
  call void @__sanitizer_cov_trace_pc() #8
  %448 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %pdev.i, align 8
  %dev703 = getelementptr inbounds %struct.pci_dev, ptr %449, i32 0, i32 44
  %450 = ptrtoint ptr %host_no685 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %host_no685, align 4
  %452 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %mbox_sts, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev703, ptr noundef nonnull @.str.209, i32 noundef %451, i32 noundef %453) #9
  br label %if.end740

do.body709:                                       ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %454 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %454)
  %cmp710 = icmp eq i32 %454, 2
  br i1 %cmp710, label %do.end715, label %do.body709.if.end740_crit_edge

do.body709.if.end740_crit_edge:                   ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end740

do.end715:                                        ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #8
  %host_no717 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %455 = ptrtoint ptr %host_no717 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %host_no717, align 4
  %457 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %mbox_sts, align 4
  %call719 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %456, i32 noundef %458) #9
  br label %if.end740

do.body724:                                       ; preds = %lor.lhs.false14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %459 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %459)
  %cmp725 = icmp eq i32 %459, 2
  br i1 %cmp725, label %do.end730, label %do.body724.do.end736_crit_edge

do.body724.do.end736_crit_edge:                   ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end736

do.end730:                                        ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #8
  %host_no732 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %460 = ptrtoint ptr %host_no732 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %host_no732, align 4
  %call733 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %461, i32 noundef %mbox_status) #9
  br label %do.end736

do.end736:                                        ; preds = %do.end730, %do.body724.do.end736_crit_edge
  %mbox_status737 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 79
  %462 = ptrtoint ptr %mbox_status737 to i32
  call void @__asan_store4_noabort(i32 %462)
  store volatile i32 %mbox_status, ptr %mbox_status737, align 4
  br label %if.end740

if.end740:                                        ; preds = %do.end736, %do.end715, %do.body709.if.end740_crit_edge, %do.end701, %do.body695.if.end740_crit_edge, %do.body676.if.end740_crit_edge, %do.end662, %do.body656.if.end740_crit_edge, %do.end646, %do.body640.if.end740_crit_edge, %do.end637, %do.end602, %if.end567, %sw.bb503.if.end740_crit_edge, %if.then492, %do.end484.if.end740_crit_edge, %sw.bb460.if.end740_crit_edge, %do.end452, %do.body446.if.end740_crit_edge, %do.end437, %do.body431.if.end740_crit_edge, %for.inc426.if.end740_crit_edge, %do.end367, %do.end319, %do.body313.if.end740_crit_edge, %do.end302, %do.body296.if.end740_crit_edge, %do.end282, %do.body276.if.end740_crit_edge, %do.end268, %do.body262.if.end740_crit_edge, %if.then250, %do.end242, %if.else232, %if.then230, %land.lhs.true223.if.end740_crit_edge, %if.then217, %land.lhs.true209.if.end740_crit_edge, %do.end197.if.end740_crit_edge, %do.end187, %do.body181.if.end740_crit_edge, %do.end178, %sw.bb164, %do.end159, %if.then147, %land.lhs.true145.if.end740_crit_edge, %do.end136.if.end740_crit_edge, %if.else123, %if.then121, %if.else102, %do.end96, %do.body90.if.end740_crit_edge, %if.then33, %for.end.if.end740_crit_edge, %if.then16.if.end740_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_82xx_interrupt_service_routine(ptr noundef %ha, i32 noundef %intr_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intr_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ha, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4xxx_process_response_queue(ptr noundef %ha)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %intr_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %3 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_82xx_reg, align 4
  %mailbox_out = getelementptr inbounds %struct.device_reg_82xx, ptr %4, i32 0, i32 10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox_out) #6, !srcloc !356
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  tail call fastcc void @qla4xxx_isr_decode_mailbox(ptr noundef %ha, i32 noundef %6)
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %qla4_82xx_reg8 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %7 = ptrtoint ptr %qla4_82xx_reg8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qla4_82xx_reg8, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %8, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int, i32 0) #6, !srcloc !359
  %9 = ptrtoint ptr %qla4_82xx_reg8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qla4_82xx_reg8, align 4
  %host_int12 = getelementptr inbounds %struct.device_reg_82xx, ptr %10, i32 0, i32 13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int12) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !365
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_interrupt_service_routine(ptr noundef %ha, i32 noundef %intr_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %intr_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4xxx_process_response_queue(ptr noundef %ha)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %intr_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !356
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !366
  tail call fastcc void @qla4xxx_isr_decode_mailbox(ptr noundef %ha, i32 noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !367
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 536879104) #6, !srcloc !359
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %ctrl_status10 = getelementptr inbounds %struct.isp_reg, ptr %7, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status10) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !368
  br label %if.end14

if.end14:                                         ; preds = %if.then3, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %cleanup

do.body7:                                         ; preds = %entry
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %1 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %isr_count, align 16
  %inc = add i64 %2, 1
  store i64 %inc, ptr %isr_count, align 16
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 102
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 71
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %if.else119.while.cond_crit_edge, %do.body7
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %rd_shdw_rsp_q_in = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %rd_shdw_rsp_q_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd_shdw_rsp_q_in, align 4
  %call16 = tail call zeroext i16 %6(ptr noundef nonnull %dev_id) #6
  %7 = ptrtoint ptr %response_out to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %response_out, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call16, i16 %8)
  %cmp19.not = icmp eq i16 %call16, %8
  br i1 %cmp19.not, label %if.end25, label %while.cond.if.then122_crit_edge

while.cond.if.then122_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

if.end25:                                         ; preds = %while.cond
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %10, i32 0, i32 3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status) #6, !srcloc !356
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !369
  %and = and i32 %12, 16440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %spurious_int_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 25
  %13 = ptrtoint ptr %spurious_int_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spurious_int_count, align 4
  %inc33 = add i32 %14, 1
  store i32 %inc33, ptr %spurious_int_count, align 4
  br label %while.end

if.end35:                                         ; preds = %if.end25
  %and36 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else95, label %do.body39

do.body39:                                        ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %15 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp40 = icmp eq i32 %15, 2
  br i1 %cmp40, label %do.end45, label %do.body39.do.end56_crit_edge

do.body39.do.end56_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 12
  %16 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no, align 4
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %reg, align 4
  %cond.i = getelementptr inbounds %struct.isp_reg, ptr %.pn.i, i32 0, i32 8, i32 0, i32 10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i) #6, !srcloc !356
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !370
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %17, i32 noundef %20) #9
  br label %do.end56

do.end56:                                         ; preds = %do.end45, %do.body39.do.end56_crit_edge
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  %ctrl_status60 = getelementptr inbounds %struct.isp_reg, ptr %22, i32 0, i32 3
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status60) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !371
  %24 = and i32 %23, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp65 = icmp eq i32 %24, 0
  br i1 %cmp65, label %do.body68, label %do.end56.do.body82_crit_edge

do.end56.do.body82_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body82

do.body68:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !372
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %ctrl_status73 = getelementptr inbounds %struct.isp_reg, ptr %26, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status73, i32 8388736) #6, !srcloc !359
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %ctrl_status77 = getelementptr inbounds %struct.isp_reg, ptr %28, i32 0, i32 3
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status77) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !373
  br label %do.body82

do.body82:                                        ; preds = %do.body68, %do.end56.do.body82_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !374
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg, align 4
  %ctrl_status87 = getelementptr inbounds %struct.isp_reg, ptr %31, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status87, i32 4194368) #6, !srcloc !359
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %ctrl_status91 = getelementptr inbounds %struct.isp_reg, ptr %33, i32 0, i32 3
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status91) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !375
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 7
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device.i.i, align 2
  %39 = and i16 %38, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %39)
  %.not.i = icmp eq i16 %39, 16418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  br i1 %.not.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %u1.i = getelementptr inbounds %struct.isp_reg, ptr %41, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %u1.i, i32 1024) #6, !srcloc !359
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %u14.i = getelementptr inbounds %struct.isp_reg, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %u14.i) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !376
  br label %__qla4xxx_disable_intrs.exit

do.body8.i:                                       ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_status.i = getelementptr inbounds %struct.isp_reg, ptr %41, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status.i, i32 1024) #6, !srcloc !359
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg, align 4
  %ctrl_status15.i = getelementptr inbounds %struct.isp_reg, ptr %46, i32 0, i32 3
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status15.i) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !377
  br label %__qla4xxx_disable_intrs.exit

__qla4xxx_disable_intrs.exit:                     ; preds = %do.body8.i, %do.body.i
  tail call void @_clear_bit(i32 noundef 6, ptr noundef nonnull %dev_id) #6
  %dpc_flags = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags) #6
  br label %while.end

if.else95:                                        ; preds = %if.end35
  %and96 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else119, label %if.then98

if.then98:                                        ; preds = %if.else95
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %dev_id) #6
  %pdev.i.i169 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 7
  %48 = ptrtoint ptr %pdev.i.i169 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i169, align 8
  %device.i.i170 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %device.i.i170 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i.i170, align 2
  %52 = and i16 %51, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %52)
  %.not.i171 = icmp eq i16 %52, 16418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg, align 4
  br i1 %.not.i171, label %do.body.i175, label %do.body8.i178

do.body.i175:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %u1.i173 = getelementptr inbounds %struct.isp_reg, ptr %54, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %u1.i173, i32 1024) #6, !srcloc !359
  %55 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg, align 4
  %u14.i174 = getelementptr inbounds %struct.isp_reg, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %u14.i174) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !376
  br label %__qla4xxx_disable_intrs.exit179

do.body8.i178:                                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_status.i176 = getelementptr inbounds %struct.isp_reg, ptr %54, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status.i176, i32 1024) #6, !srcloc !359
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg, align 4
  %ctrl_status15.i177 = getelementptr inbounds %struct.isp_reg, ptr %59, i32 0, i32 3
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status15.i177) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !377
  br label %__qla4xxx_disable_intrs.exit179

__qla4xxx_disable_intrs.exit179:                  ; preds = %do.body8.i178, %do.body.i175
  tail call void @_clear_bit(i32 noundef 6, ptr noundef nonnull %dev_id) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !378
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg, align 4
  %ctrl_status105 = getelementptr inbounds %struct.isp_reg, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status105, i32 134219776) #6, !srcloc !359
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg, align 4
  %ctrl_status109 = getelementptr inbounds %struct.isp_reg, ptr %64, i32 0, i32 3
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status109) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !379
  %66 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %dev_id, align 4
  %68 = and i32 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool115.not = icmp eq i32 %68, 0
  br i1 %tobool115.not, label %if.then116, label %__qla4xxx_disable_intrs.exit179.while.end_crit_edge

__qla4xxx_disable_intrs.exit179.while.end_crit_edge: ; preds = %__qla4xxx_disable_intrs.exit179
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then116:                                       ; preds = %__qla4xxx_disable_intrs.exit179
  call void @__sanitizer_cov_trace_pc() #8
  %dpc_flags117 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %dpc_flags117) #6
  br label %while.end

if.else119:                                       ; preds = %if.else95
  %and120 = and i32 %12, 56
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else119.while.cond_crit_edge, label %if.else119.if.then122_crit_edge

if.else119.if.then122_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then122

if.else119.while.cond_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then122:                                       ; preds = %if.else119.if.then122_crit_edge, %while.cond.if.then122_crit_edge
  %intr_status.0183187191195 = phi i32 [ %12, %if.else119.if.then122_crit_edge ], [ 16, %while.cond.if.then122_crit_edge ]
  %69 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %72(ptr noundef nonnull %dev_id, i32 noundef %intr_status.0183187191195) #6
  %total_io_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 20
  %73 = ptrtoint ptr %total_io_count to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %total_io_count, align 8
  %inc124 = add i64 %74, 1
  store i64 %inc124, ptr %total_io_count, align 8
  br label %while.end

while.end:                                        ; preds = %if.then122, %if.then116, %__qla4xxx_disable_intrs.exit179.while.end_crit_edge, %__qla4xxx_disable_intrs.exit, %if.then32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call11) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_82xx_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !353

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %4 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %isr_count, align 16
  %inc = add i64 %5, 1
  store i64 %inc, ptr %isr_count, align 16
  %call3 = tail call i32 @qla4_82xx_rd_32(ptr noundef %dev_id, i32 noundef 101777664) #6
  %nx_legacy_intr = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98
  %6 = ptrtoint ptr %nx_legacy_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nx_legacy_intr, align 16
  %and = and i32 %7, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @qla4_82xx_rd_32(ptr noundef %dev_id, i32 noundef 101785708) #6
  %and8 = and i32 %call7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and8)
  %cmp = icmp eq i32 %and8, 512
  br i1 %cmp, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %tgt_status_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 1
  %8 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgt_status_reg, align 4
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %9, i32 noundef -1) #6
  %call12 = tail call i32 @qla4_82xx_rd_32(ptr noundef %dev_id, i32 noundef 101777664) #6
  %call13 = tail call i32 @qla4_82xx_rd_32(ptr noundef %dev_id, i32 noundef 101777664) #6
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 83
  %10 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %11, i32 0, i32 13
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not = icmp eq i32 %13, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i75 = icmp eq i32 %14, 2
  br i1 %cmp.i75, label %do.end.i, label %if.then28.do.end4.i_crit_edge

if.then28.do.end4.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.224) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then28.do.end4.i_crit_edge
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %20)
  %cmp.i.not.i = icmp eq i16 %20, -32734
  br i1 %cmp.i.not.i, label %do.body7.i, label %do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge

do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit

do.body7.i:                                       ; preds = %do.end4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int.i = getelementptr inbounds %struct.device_reg_82xx, ptr %22, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int.i, i32 0) #6, !srcloc !359
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 49
  %25 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %26 = and i40 %bf.load.i, 201326592
  %27 = icmp eq i40 %26, 0
  br i1 %27, label %if.then17.i, label %do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge

do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit

if.then17.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %tgt_mask_reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 2
  %28 = ptrtoint ptr %tgt_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tgt_mask_reg.i, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %29, i32 noundef 64511) #6
  br label %qla4_82xx_spurious_interrupt.exit

qla4_82xx_spurious_interrupt.exit:                ; preds = %if.then17.i, %do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge, %do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge
  %spurious_int_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 25
  %30 = ptrtoint ptr %spurious_int_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spurious_int_count.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %spurious_int_count.i, align 4
  br label %while.end

if.end29:                                         ; preds = %if.end10
  %32 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %33, i32 0, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #6, !srcloc !356
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !382
  %and36 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i76 = icmp eq i32 %36, 2
  br i1 %cmp.i76, label %do.end.i79, label %if.then39.do.end4.i83_crit_edge

if.then39.do.end4.i83_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i83

do.end.i79:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev.i78 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i78, ptr noundef nonnull @.str.224) #9
  br label %do.end4.i83

do.end4.i83:                                      ; preds = %do.end.i79, %if.then39.do.end4.i83_crit_edge
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 8
  %device.i.i81 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %device.i.i81 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device.i.i81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %42)
  %cmp.i.not.i82 = icmp eq i16 %42, -32734
  br i1 %cmp.i.not.i82, label %do.body7.i88, label %do.end4.i83.qla4_82xx_spurious_interrupt.exit93_crit_edge

do.end4.i83.qla4_82xx_spurious_interrupt.exit93_crit_edge: ; preds = %do.end4.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit93

do.body7.i88:                                     ; preds = %do.end4.i83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int.i85 = getelementptr inbounds %struct.device_reg_82xx, ptr %44, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int.i85, i32 0) #6, !srcloc !359
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 8
  %msi_enabled.i86 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 49
  %47 = ptrtoint ptr %msi_enabled.i86 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 5)
  %bf.load.i87 = load i40, ptr %msi_enabled.i86, align 1
  %48 = and i40 %bf.load.i87, 201326592
  %49 = icmp eq i40 %48, 0
  br i1 %49, label %if.then17.i90, label %do.body7.i88.qla4_82xx_spurious_interrupt.exit93_crit_edge

do.body7.i88.qla4_82xx_spurious_interrupt.exit93_crit_edge: ; preds = %do.body7.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit93

if.then17.i90:                                    ; preds = %do.body7.i88
  call void @__sanitizer_cov_trace_pc() #8
  %tgt_mask_reg.i89 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 2
  %50 = ptrtoint ptr %tgt_mask_reg.i89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tgt_mask_reg.i89, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %51, i32 noundef 64511) #6
  br label %qla4_82xx_spurious_interrupt.exit93

qla4_82xx_spurious_interrupt.exit93:              ; preds = %if.then17.i90, %do.body7.i88.qla4_82xx_spurious_interrupt.exit93_crit_edge, %do.end4.i83.qla4_82xx_spurious_interrupt.exit93_crit_edge
  %spurious_int_count.i91 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 25
  %52 = ptrtoint ptr %spurious_int_count.i91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %spurious_int_count.i91, align 4
  %inc.i92 = add i32 %53, 1
  store i32 %inc.i92, ptr %spurious_int_count.i91, align 4
  br label %while.end

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 102
  %54 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %57(ptr noundef %dev_id, i32 noundef %35) #6
  %tgt_mask_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 2
  %58 = ptrtoint ptr %tgt_mask_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tgt_mask_reg, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %59, i32 noundef 64511) #6
  br label %while.end

while.end:                                        ; preds = %if.end40, %qla4_82xx_spurious_interrupt.exit93, %qla4_82xx_spurious_interrupt.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call18) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_82xx_rd_32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_82xx_wr_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_intr_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %isr_count, align 16
  %inc = add i64 %1, 1
  store i64 %inc, ptr %isr_count, align 16
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 145
  %2 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qla4_83xx_reg, align 16
  %leg_int_ptr1 = getelementptr inbounds %struct.device_reg_83xx, ptr %3, i32 0, i32 21
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %leg_int_ptr1) #6, !srcloc !356
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !383
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %5, 983040
  %pf_bit = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 146
  %6 = ptrtoint ptr %pf_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pf_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %7)
  %cmp.not = icmp eq i32 %and3, %7
  br i1 %cmp.not, label %do.body9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !384
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qla4_83xx_reg, align 16
  %leg_int_trig = getelementptr inbounds %struct.device_reg_83xx, ptr %9, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %leg_int_trig, i32 0) #6, !srcloc !359
  br label %do.body13

do.body13:                                        ; preds = %do.body13.do.body13_crit_edge, %do.body9
  %10 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_83xx_reg, align 16
  %leg_int_ptr17 = getelementptr inbounds %struct.device_reg_83xx, ptr %11, i32 0, i32 21
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %leg_int_ptr17) #6, !srcloc !356
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !385
  %and21 = and i32 %13, 983040
  %14 = ptrtoint ptr %pf_bit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pf_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %15)
  %cmp23.not = icmp ne i32 %and21, %15
  %and27 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = or i1 %cmp23.not, %tobool28.not
  br i1 %or.cond, label %do.body31, label %do.body13.do.body13_crit_edge

do.body13.do.body13_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body31:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %16 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qla4_83xx_reg, align 16
  %risc_intr = getelementptr inbounds %struct.device_reg_83xx, ptr %17, i32 0, i32 19
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %risc_intr) #6, !srcloc !356
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !386
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 102
  %20 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %23(ptr noundef %dev_id, i32 noundef %19) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call35) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body31 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_msi_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %1 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %isr_count, align 16
  %inc = add i64 %2, 1
  store i64 %inc, ptr %isr_count, align 16
  %tgt_status_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 1
  %3 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tgt_status_reg, align 4
  tail call void @qla4_82xx_wr_32(ptr noundef nonnull %dev_id, i32 noundef %4, i32 noundef -1) #6
  %call6 = tail call i32 @qla4_82xx_rd_32(ptr noundef nonnull %dev_id, i32 noundef 101777664) #6
  %call7 = tail call i32 @qla4_82xx_rd_32(ptr noundef nonnull %dev_id, i32 noundef 101777664) #6
  %call8 = tail call i32 @qla4_8xxx_default_intr_handler(i32 undef, ptr noundef nonnull %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_default_intr_handler(i32 %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.245)
  switch i16 %3, label %do.body4 [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge74
  ]

entry.if.then_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge74
  %hardware_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock.i) #6
  %qla4_83xx_reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 145
  %5 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %risc_intr.i = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 19
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %risc_intr.i) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.i = icmp eq i32 %7, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.end.i

do.end12.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.227) #9
  %10 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mb_int_mask.i = getelementptr inbounds %struct.device_reg_83xx, ptr %11, i32 0, i32 17
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mb_int_mask.i) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !388
  %13 = and i32 %12, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !389
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mb_int_mask23.i = getelementptr inbounds %struct.device_reg_83xx, ptr %15, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mb_int_mask23.i, i32 %13) #6, !srcloc !359
  br label %qla4_83xx_mailbox_intr_handler.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mailbox_out.i = getelementptr inbounds %struct.device_reg_83xx, ptr %17, i32 0, i32 2
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mailbox_out.i) #6, !srcloc !356
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !390
  tail call fastcc void @qla4xxx_isr_decode_mailbox(ptr noundef %dev_id, i32 noundef %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !391
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %risc_intr34.i = getelementptr inbounds %struct.device_reg_83xx, ptr %21, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %risc_intr34.i, i32 0) #6, !srcloc !359
  %22 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mb_int_mask38.i = getelementptr inbounds %struct.device_reg_83xx, ptr %23, i32 0, i32 17
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mb_int_mask38.i) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !392
  %25 = and i32 %24, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !393
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mb_int_mask47.i = getelementptr inbounds %struct.device_reg_83xx, ptr %27, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mb_int_mask47.i, i32 %25) #6, !srcloc !359
  %isr_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %28 = ptrtoint ptr %isr_count.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %isr_count.i, align 16
  %inc.i = add i64 %29, 1
  store i64 %inc.i, ptr %isr_count.i, align 16
  br label %qla4_83xx_mailbox_intr_handler.exit

qla4_83xx_mailbox_intr_handler.exit:              ; preds = %if.end.i, %do.end12.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call2.i) #6
  br label %if.end32

do.body4:                                         ; preds = %entry
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 83
  %30 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %31, i32 0, i32 13
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_int) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !394
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.not = icmp eq i32 %33, 0
  br i1 %tobool12.not, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %34 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i52 = icmp eq i32 %34, 2
  br i1 %cmp.i52, label %do.end.i, label %if.then13.do.end4.i_crit_edge

if.then13.do.end4.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 8
  %dev.i54 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i54, ptr noundef nonnull @.str.224) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then13.do.end4.i_crit_edge
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %40)
  %cmp.i.not.i = icmp eq i16 %40, -32734
  br i1 %cmp.i.not.i, label %do.body7.i, label %do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge

do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit

do.body7.i:                                       ; preds = %do.end4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int.i = getelementptr inbounds %struct.device_reg_82xx, ptr %42, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int.i, i32 0) #6, !srcloc !359
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 8
  %msi_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 49
  %45 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 5)
  %bf.load.i = load i40, ptr %msi_enabled.i, align 1
  %46 = and i40 %bf.load.i, 201326592
  %47 = icmp eq i40 %46, 0
  br i1 %47, label %if.then17.i, label %do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge

do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit

if.then17.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %tgt_mask_reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 2
  %48 = ptrtoint ptr %tgt_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tgt_mask_reg.i, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %49, i32 noundef 64511) #6
  br label %qla4_82xx_spurious_interrupt.exit

qla4_82xx_spurious_interrupt.exit:                ; preds = %if.then17.i, %do.body7.i.qla4_82xx_spurious_interrupt.exit_crit_edge, %do.end4.i.qla4_82xx_spurious_interrupt.exit_crit_edge
  %spurious_int_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 25
  %50 = ptrtoint ptr %spurious_int_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %spurious_int_count.i, align 4
  %inc.i55 = add i32 %51, 1
  store i32 %inc.i55, ptr %spurious_int_count.i, align 4
  br label %while.end

if.end:                                           ; preds = %do.body4
  %52 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %53, i32 0, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #6, !srcloc !356
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !395
  %and20 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %56 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i56 = icmp eq i32 %56, 2
  br i1 %cmp.i56, label %do.end.i59, label %if.then23.do.end4.i63_crit_edge

if.then23.do.end4.i63_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i63

do.end.i59:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i, align 8
  %dev.i58 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i58, ptr noundef nonnull @.str.224) #9
  br label %do.end4.i63

do.end4.i63:                                      ; preds = %do.end.i59, %if.then23.do.end4.i63_crit_edge
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %device.i.i61 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %device.i.i61 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %device.i.i61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %62)
  %cmp.i.not.i62 = icmp eq i16 %62, -32734
  br i1 %cmp.i.not.i62, label %do.body7.i68, label %do.end4.i63.qla4_82xx_spurious_interrupt.exit73_crit_edge

do.end4.i63.qla4_82xx_spurious_interrupt.exit73_crit_edge: ; preds = %do.end4.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit73

do.body7.i68:                                     ; preds = %do.end4.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int.i65 = getelementptr inbounds %struct.device_reg_82xx, ptr %64, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int.i65, i32 0) #6, !srcloc !359
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 8
  %msi_enabled.i66 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 49
  %67 = ptrtoint ptr %msi_enabled.i66 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 5)
  %bf.load.i67 = load i40, ptr %msi_enabled.i66, align 1
  %68 = and i40 %bf.load.i67, 201326592
  %69 = icmp eq i40 %68, 0
  br i1 %69, label %if.then17.i70, label %do.body7.i68.qla4_82xx_spurious_interrupt.exit73_crit_edge

do.body7.i68.qla4_82xx_spurious_interrupt.exit73_crit_edge: ; preds = %do.body7.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_82xx_spurious_interrupt.exit73

if.then17.i70:                                    ; preds = %do.body7.i68
  call void @__sanitizer_cov_trace_pc() #8
  %tgt_mask_reg.i69 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 98, i32 2
  %70 = ptrtoint ptr %tgt_mask_reg.i69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tgt_mask_reg.i69, align 8
  tail call void @qla4_82xx_wr_32(ptr noundef %dev_id, i32 noundef %71, i32 noundef 64511) #6
  br label %qla4_82xx_spurious_interrupt.exit73

qla4_82xx_spurious_interrupt.exit73:              ; preds = %if.then17.i70, %do.body7.i68.qla4_82xx_spurious_interrupt.exit73_crit_edge, %do.end4.i63.qla4_82xx_spurious_interrupt.exit73_crit_edge
  %spurious_int_count.i71 = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 25
  %72 = ptrtoint ptr %spurious_int_count.i71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %spurious_int_count.i71, align 4
  %inc.i72 = add i32 %73, 1
  store i32 %inc.i72, ptr %spurious_int_count.i71, align 4
  br label %while.end

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 102
  %74 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %isp_ops, align 4
  %interrupt_service_routine = getelementptr inbounds %struct.isp_operations, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %interrupt_service_routine, align 4
  tail call void %77(ptr noundef %dev_id, i32 noundef %55) #6
  br label %while.end

while.end:                                        ; preds = %if.end24, %qla4_82xx_spurious_interrupt.exit73, %qla4_82xx_spurious_interrupt.exit
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %78 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %isr_count, align 16
  %inc30 = add i64 %79, 1
  store i64 %inc30, ptr %isr_count, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call6) #6
  br label %if.end32

if.end32:                                         ; preds = %while.end, %qla4_83xx_mailbox_intr_handler.exit
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_8xxx_msix_rsp_q(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.246)
  switch i16 %3, label %if.else [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge58
  ]

entry.if.then_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge58
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 145
  %5 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg, align 16
  %iocb_int_mask = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %iocb_int_mask) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !396
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %do.end16, label %if.end

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  br label %exit_msix_rsp_q

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4xxx_process_response_queue(ptr noundef %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !397
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_83xx_reg, align 16
  %iocb_int_mask21 = getelementptr inbounds %struct.device_reg_83xx, ptr %11, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %iocb_int_mask21, i32 0) #6, !srcloc !359
  br label %if.end40

if.else:                                          ; preds = %entry
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 83
  %12 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_status = getelementptr inbounds %struct.device_reg_82xx, ptr %13, i32 0, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %host_status) #6, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !398
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %do.end36, label %if.then28

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4xxx_process_response_queue(ptr noundef %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !399
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qla4_82xx_reg, align 4
  %host_int = getelementptr inbounds %struct.device_reg_82xx, ptr %17, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_int, i32 0) #6, !srcloc !359
  br label %if.end40

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev38, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #9
  br label %exit_msix_rsp_q

if.end40:                                         ; preds = %if.then28, %if.end
  %isr_count = getelementptr inbounds %struct.scsi_qla_host, ptr %dev_id, i32 0, i32 17
  %20 = ptrtoint ptr %isr_count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %isr_count, align 16
  %inc = add i64 %21, 1
  store i64 %inc, ptr %isr_count, align 16
  br label %exit_msix_rsp_q

exit_msix_rsp_q:                                  ; preds = %if.end40, %do.end36, %do.end16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_process_aen(ptr noundef %ha, i8 noundef zeroext %process_aen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %aen_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 74
  %aen_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 73
  %0 = ptrtoint ptr %aen_out to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aen_out, align 4
  %2 = ptrtoint ptr %aen_in to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aen_in, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp7.not116 = icmp eq i16 %1, %3
  br i1 %cmp7.not116, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %aen_q_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 72
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %process_aen)
  %cond93 = icmp eq i8 %process_aen, 1
  br label %while.body

while.body:                                       ; preds = %do.body78.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i16 [ %1, %while.body.lr.ph ], [ %24, %do.body78.while.body_crit_edge ]
  %flags.0117 = phi i32 [ %call2, %while.body.lr.ph ], [ %call86, %do.body78.while.body_crit_edge ]
  %conv5 = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 75, i32 %conv5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %mbox_sts.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %mbox_sts.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %6 = ptrtoint ptr %mbox_sts.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %mbox_sts.sroa.6.0.copyload = load i32, ptr %mbox_sts.sroa.6.0.arrayidx.sroa_idx, align 4
  %mbox_sts.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %7 = ptrtoint ptr %mbox_sts.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %mbox_sts.sroa.9.0.copyload = load i32, ptr %mbox_sts.sroa.9.0.arrayidx.sroa_idx, align 4
  %mbox_sts.sroa.13.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %8 = ptrtoint ptr %mbox_sts.sroa.13.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %mbox_sts.sroa.13.0.copyload = load i32, ptr %mbox_sts.sroa.13.0.arrayidx.sroa_idx, align 4
  %mbox_sts.sroa.17.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %9 = ptrtoint ptr %mbox_sts.sroa.17.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %mbox_sts.sroa.17.0.copyload = load i32, ptr %mbox_sts.sroa.17.0.arrayidx.sroa_idx, align 4
  %10 = ptrtoint ptr %aen_q_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %aen_q_count, align 8
  %inc15 = add i16 %11, 1
  store i16 %inc15, ptr %aen_q_count, align 8
  %inc17 = add i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %inc17)
  %cmp20 = icmp eq i16 %inc17, 512
  %spec.select = select i1 %cmp20, i16 0, i16 %inc17
  %12 = ptrtoint ptr %aen_out to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %aen_out, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %flags.0117) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp25 = icmp eq i32 %13, 2
  br i1 %cmp25, label %do.end30, label %while.body.do.end44_crit_edge

while.body.do.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no, align 4
  %16 = ptrtoint ptr %aen_out to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aen_out, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  %conv33 = zext i16 %17 to i32
  %sub = add nsw i32 %conv33, -1
  %cond = select i1 %tobool.not, i32 511, i32 %sub
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %15, i32 noundef %cond, i32 noundef %mbox_sts.sroa.0.0.copyload, i32 noundef %mbox_sts.sroa.6.0.copyload, i32 noundef %mbox_sts.sroa.9.0.copyload, i32 noundef %mbox_sts.sroa.13.0.copyload, i32 noundef %mbox_sts.sroa.17.0.copyload) #9
  br label %do.end44

do.end44:                                         ; preds = %do.end30, %while.body.do.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32788, i32 %mbox_sts.sroa.0.0.copyload)
  %cond92 = icmp eq i32 %mbox_sts.sroa.0.0.copyload, 32788
  br i1 %cond92, label %sw.bb, label %do.end44.do.body78_crit_edge

do.end44.do.body78_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

sw.bb:                                            ; preds = %do.end44
  br i1 %cond93, label %do.body48, label %sw.default

do.body48:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp49 = icmp eq i32 %18, 2
  br i1 %cmp49, label %do.end54, label %do.body48.do.body78_crit_edge

do.body48.do.body78_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no, align 4
  %21 = ptrtoint ptr %aen_out to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aen_out, align 4
  %conv58 = zext i16 %22 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %20, i32 noundef %conv58, i32 noundef 32788, i32 noundef %mbox_sts.sroa.9.0.copyload, i32 noundef %mbox_sts.sroa.13.0.copyload) #9
  br label %do.body78

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mbox_sts.sroa.6.0.copyload)
  %cmp68 = icmp eq i32 %mbox_sts.sroa.6.0.copyload, 1
  br i1 %cmp68, label %if.then70, label %sw.default.do.body78_crit_edge

sw.default.do.body78_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

if.then70:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = tail call i32 @qla4xxx_process_ddb_changed(ptr noundef %ha, i32 noundef %mbox_sts.sroa.9.0.copyload, i32 noundef %mbox_sts.sroa.13.0.copyload, i32 noundef %mbox_sts.sroa.17.0.copyload) #6
  br label %do.body78

do.body78:                                        ; preds = %if.then70, %sw.default.do.body78_crit_edge, %do.end54, %do.body48.do.body78_crit_edge, %do.end44.do.body78_crit_edge
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #6
  %23 = ptrtoint ptr %aen_out to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %aen_out, align 4
  %25 = ptrtoint ptr %aen_in to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %aen_in, align 2
  %cmp7.not = icmp eq i16 %24, %26
  br i1 %cmp7.not, label %do.body78.while.end_crit_edge, label %do.body78.while.body_crit_edge

do.body78.while.body_crit_edge:                   ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body78.while.end_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body78.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call86, %do.body78.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %flags.0.lcssa) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_process_ddb_changed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_request_irqs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.247)
  switch i16 %3, label %if.end [
    i16 16434, label %entry.try_intx_crit_edge
    i16 16418, label %entry.try_intx_crit_edge186
    i16 16400, label %entry.try_intx_crit_edge187
  ]

entry.try_intx_crit_edge187:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_intx

entry.try_intx_crit_edge186:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_intx

entry.try_intx_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_intx

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xenablemsix to i32))
  %5 = load i32, ptr @ql4xenablemsix, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %5, label %if.end.try_intx_crit_edge [
    i32 2, label %if.then1
    i32 1, label %if.end16
  ]

if.end.try_intx_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_intx

if.then1:                                         ; preds = %if.end
  %7 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.249)
  switch i16 %3, label %if.then1.try_msi_crit_edge [
    i16 -32718, label %if.then1.do.end_crit_edge
    i16 -32702, label %if.then1.do.end_crit_edge188
  ]

if.then1.do.end_crit_edge188:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then1.do.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then1.try_msi_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_msi

do.end:                                           ; preds = %if.then1.do.end_crit_edge, %if.then1.do.end_crit_edge188
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %conv) #9
  br label %try_intx

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @qla4_8xxx_enable_msix(ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body20, label %if.else

do.body20:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp21 = icmp eq i32 %8, 2
  br i1 %cmp21, label %do.end26, label %do.body20.irq_attached_crit_edge

do.body20.irq_attached_crit_edge:                 ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_attached

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i.i, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %revision_id = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 100
  %11 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision_id, align 4
  %conv29 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev28, ptr noundef nonnull @.str.41, i32 noundef %conv29) #9
  br label %irq_attached

if.else:                                          ; preds = %if.end16
  %13 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i.i, align 8
  %device.i172 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device.i172 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i172, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.250)
  switch i16 %16, label %do.end51 [
    i16 -32718, label %if.else.do.end41_crit_edge
    i16 -32702, label %if.else.do.end41_crit_edge189
  ]

if.else.do.end41_crit_edge189:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.else.do.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end41:                                         ; preds = %if.else.do.end41_crit_edge, %if.else.do.end41_crit_edge189
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv46 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %conv46, i32 noundef %call17) #9
  br label %try_intx

do.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev53, ptr noundef nonnull @.str.47, i32 noundef %call17) #9
  br label %try_msi

try_msi:                                          ; preds = %do.end51, %if.then1.try_msi_crit_edge
  %18 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %19, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp56 = icmp sgt i32 %call.i, 0
  br i1 %cmp56, label %if.then58, label %try_msi.try_intx_crit_edge

try_msi.try_intx_crit_edge:                       ; preds = %try_msi
  call void @__sanitizer_cov_trace_pc() #8
  br label %try_intx

if.then58:                                        ; preds = %try_msi
  %20 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i.i, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call.i179 = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @qla4_8xxx_msi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool61.not = icmp eq i32 %call.i179, 0
  br i1 %tobool61.not, label %do.body63, label %do.end78

do.body63:                                        ; preds = %if.then58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %24 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp64 = icmp eq i32 %24, 2
  br i1 %cmp64, label %do.end69, label %do.body63.irq_attached_crit_edge

do.body63.irq_attached_crit_edge:                 ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_attached

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i.i, align 8
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev71, ptr noundef nonnull @.str.52) #9
  br label %irq_attached

do.end78:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i.i, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %irq82 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq82, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev80, ptr noundef nonnull @.str.55, i32 noundef %30) #9
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %32) #6
  br label %try_intx

try_intx:                                         ; preds = %do.end78, %try_msi.try_intx_crit_edge, %do.end41, %do.end, %if.end.try_intx_crit_edge, %entry.try_intx_crit_edge, %entry.try_intx_crit_edge186, %entry.try_intx_crit_edge187
  %33 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i.i, align 8
  %device.i181 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %device.i181 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device.i181, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %36)
  %cmp.i182.not = icmp eq i16 %36, -32734
  br i1 %cmp.i182.not, label %do.end91, label %if.end94

do.end91:                                         ; preds = %try_intx
  call void @__sanitizer_cov_trace_pc() #8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev93, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.39) #9
  br label %irq_not_attached

if.end94:                                         ; preds = %try_intx
  %irq96 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %37 = ptrtoint ptr %irq96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq96, align 4
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %39 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %isp_ops, align 4
  %intr_handler = getelementptr inbounds %struct.isp_operations, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %intr_handler to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intr_handler, align 4
  %call.i184 = tail call i32 @request_threaded_irq(i32 noundef %38, ptr noundef %42, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.50, ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool98.not = icmp eq i32 %call.i184, 0
  br i1 %tobool98.not, label %do.body100, label %do.end115

do.body100:                                       ; preds = %if.end94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %43 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp101 = icmp eq i32 %43, 2
  br i1 %cmp101, label %do.end106, label %do.body100.irq_attached_crit_edge

do.body100.irq_attached_crit_edge:                ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_attached

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i.i, align 8
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev108, ptr noundef nonnull @.str.61) #9
  br label %irq_attached

do.end115:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i.i, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %irq119 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 46
  %48 = ptrtoint ptr %irq119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq119, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.48, ptr noundef %dev117, ptr noundef nonnull @.str.64, i32 noundef %49) #9
  br label %irq_not_attached

irq_attached:                                     ; preds = %do.end106, %do.body100.irq_attached_crit_edge, %do.end69, %do.body63.irq_attached_crit_edge, %do.end26, %do.body20.irq_attached_crit_edge
  tail call void @_set_bit(i32 noundef 10, ptr noundef %ha) #6
  %50 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i.i, align 8
  %irq121 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %irq121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq121, align 4
  %host = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host, align 8
  %irq122 = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 47
  %56 = ptrtoint ptr %irq122 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %irq122, align 8
  %57 = load ptr, ptr %pdev.i.i, align 8
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %irq129 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %irq129 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq129, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev127, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.39, i32 noundef %59) #9
  br label %irq_not_attached

irq_not_attached:                                 ; preds = %irq_attached, %do.end115, %do.end91
  %rval.0 = phi i32 [ 1, %do.end91 ], [ 1, %do.end115 ], [ 0, %irq_attached ]
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_enable_msix(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_free_irqs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load, 67108864
  %tobool1.not = icmp eq i40 %3, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 1) #6
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %ha) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef 0) #6
  %call9 = tail call ptr @free_irq(i32 noundef %call8, ptr noundef %ha) #6
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %7) #6
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4xxx_copy_sense(ptr nocapture noundef %ha, ptr nocapture noundef readonly %sts_entry, ptr noundef %srb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 5
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sense_buffer, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 96)
  %senseDataByteCnt = getelementptr inbounds %struct.status_entry, ptr %sts_entry, i32 0, i32 8
  %5 = ptrtoint ptr %senseDataByteCnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %senseDataByteCnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %do.end, label %do.body.do.end10_crit_edge

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 16
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lun, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %11, i32 noundef %15, i32 noundef %17, i64 noundef %19, ptr noundef nonnull @.str.105) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %status_srb = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 81
  %20 = ptrtoint ptr %status_srb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %status_srb, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  %21 = tail call i16 @llvm.bswap.i16(i16 %6)
  %22 = tail call i16 @llvm.umin.i16(i16 %21, i16 96)
  %23 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sense_buffer, align 4
  %req_sense_ptr = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 13
  %25 = ptrtoint ptr %req_sense_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %req_sense_ptr, align 4
  %req_sense_len = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 14
  %26 = ptrtoint ptr %req_sense_len to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %22, ptr %req_sense_len, align 4
  %27 = tail call i16 @llvm.umin.i16(i16 %21, i16 32)
  %28 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense_buffer, align 4
  %senseData = getelementptr inbounds %struct.status_entry, ptr %sts_entry, i32 0, i32 13
  %conv33 = zext i16 %27 to i32
  %30 = call ptr @memcpy(ptr %29, ptr %senseData, i32 %conv33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %31 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp35 = icmp eq i32 %31, 2
  br i1 %cmp35, label %do.end40, label %if.end11.do.end65_crit_edge

if.end11.do.end65_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

do.end40:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %host_no42 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %32 = ptrtoint ptr %host_no42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no42, align 4
  %device43 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device43, align 4
  %channel44 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %channel44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel44, align 4
  %id46 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 16
  %38 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id46, align 8
  %lun48 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 18
  %40 = ptrtoint ptr %lun48 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lun48, align 8
  %arrayidx = getelementptr %struct.status_entry, ptr %sts_entry, i32 0, i32 13, i32 2
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 2
  %44 = and i8 %43, 15
  %and = zext i8 %44 to i32
  %arrayidx52 = getelementptr %struct.status_entry, ptr %sts_entry, i32 0, i32 13, i32 7
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %46 to i32
  %arrayidx55 = getelementptr %struct.status_entry, ptr %sts_entry, i32 0, i32 13, i32 12
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx55, align 4
  %conv56 = zext i8 %48 to i32
  %arrayidx58 = getelementptr %struct.status_entry, ptr %sts_entry, i32 0, i32 13, i32 13
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %50 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %33, i32 noundef %37, i32 noundef %39, i64 noundef %41, ptr noundef nonnull @.str.105, i32 noundef %and, i32 noundef %conv53, i32 noundef %conv56, i32 noundef %conv59) #9
  br label %do.end65

do.end65:                                         ; preds = %do.end40, %if.end11.do.end65_crit_edge
  %flags = getelementptr inbounds %struct.srb, ptr %srb, i32 0, i32 3
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags, align 4
  %53 = or i16 %52, 16
  store i16 %53, ptr %flags, align 4
  %54 = ptrtoint ptr %req_sense_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req_sense_ptr, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 %conv33
  store ptr %add.ptr, ptr %req_sense_ptr, align 4
  %56 = ptrtoint ptr %req_sense_len to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %req_sense_len, align 4
  %sub = sub i16 %57, %27
  store i16 %sub, ptr %req_sense_len, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %27)
  %cmp76.not = icmp eq i16 %57, %27
  %status_srb80 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 81
  br i1 %cmp76.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %status_srb80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %srb, ptr %status_srb80, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %status_srb80 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %status_srb80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then78, %do.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_is_session_online(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_mark_device_missing(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_itt_to_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_post_ping_evt_work(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_dump_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_idc_dontreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_post_aen_work(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_wake_dpc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4xxx_update_ipaddr_state(ptr nocapture noundef %ha, i32 noundef %ipaddr_idx, i32 noundef %ipaddr_fw_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = and i32 %ipaddr_idx, 15
  %conv1 = trunc i32 %ipaddr_fw_state to i8
  %call = tail call zeroext i8 @qla4xxx_set_ipaddr_state(i8 noundef zeroext %conv1) #6
  %0 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %conv, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipv4_addr_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 3
  %1 = ptrtoint ptr %ipv4_addr_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call, ptr %ipv4_addr_state, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipv6_link_local_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 9
  %2 = ptrtoint ptr %ipv6_link_local_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call, ptr %ipv6_link_local_state, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipv6_addr0_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 10
  %3 = ptrtoint ptr %ipv6_addr0_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call, ptr %ipv6_addr0_state, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipv6_addr1_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 11
  %4 = ptrtoint ptr %ipv6_addr1_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %ipv6_addr1_state, align 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef %conv) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_83xx_loopback_in_progress(ptr nocapture noundef readonly %ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.252)
  switch i16 %3, label %entry.if.end26_crit_edge [
    i16 -32718, label %entry.if.then_crit_edge
    i16 -32702, label %entry.if.then_crit_edge36
  ]

entry.if.then_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge36
  %info2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 147, i32 2
  %5 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info2, align 8
  %7 = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp15 = icmp eq i32 %9, 2
  %not. = xor i1 %8, true
  br i1 %cmp15, label %if.end26.sink.split, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26.sink.split:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %.str.222..str.219 = select i1 %8, ptr @.str.222, ptr @.str.219
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev21, ptr noundef nonnull %.str.222..str.219, ptr noundef nonnull @.str.220) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %rval.0.shrunk = phi i1 [ true, %entry.if.end26_crit_edge ], [ %not., %if.end26.sink.split ], [ %not., %if.then.if.end26_crit_edge ]
  %rval.0 = zext i1 %rval.0.shrunk to i32
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @qla4xxx_set_ipaddr_state(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 179)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 505, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qla4xxx_process_response_queue._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qla4xxx_process_response_queue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 527, i32 4}
!10 = !{ptr @qla4xxx_process_response_queue._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qla4xxx_process_response_queue._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 538, i32 4}
!14 = !{ptr @qla4xxx_process_response_queue._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qla4xxx_process_response_queue._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 543, i32 4}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qla4xxx_process_response_queue._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qla4xxx_process_response_queue._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 554, i32 4}
!23 = !{ptr @qla4xxx_process_response_queue._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @qla4xxx_process_response_queue._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 572, i32 2}
!27 = !{ptr @qla4xxx_process_response_queue._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qla4xxx_process_response_queue._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1132, i32 3}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qla4xxx_intr_handler._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @qla4xxx_intr_handler._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1162, i32 4}
!36 = !{ptr @qla4xxx_intr_handler._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qla4xxx_intr_handler._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1337, i32 3}
!40 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qla4_8xxx_msi_handler._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qla4_8xxx_msi_handler._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1441, i32 4}
!45 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qla4_8xxx_msix_rsp_q._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qla4_8xxx_msix_rsp_q._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1453, i32 4}
!50 = !{ptr @qla4_8xxx_msix_rsp_q._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qla4_8xxx_msix_rsp_q._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1497, i32 3}
!54 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qla4xxx_process_aen._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qla4xxx_process_aen._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1507, i32 5}
!59 = !{ptr @qla4xxx_process_aen._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qla4xxx_process_aen._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1539, i32 4}
!63 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qla4xxx_request_irqs._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qla4xxx_request_irqs._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1552, i32 3}
!68 = !{ptr @qla4xxx_request_irqs._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qla4xxx_request_irqs._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1557, i32 4}
!72 = !{ptr @qla4xxx_request_irqs._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qla4xxx_request_irqs._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1563, i32 2}
!76 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qla4xxx_request_irqs._entry.46, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qla4xxx_request_irqs._entry_ptr.49, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1571, i32 7}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1573, i32 4}
!83 = !{ptr @qla4xxx_request_irqs._entry.51, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qla4xxx_request_irqs._entry_ptr.53, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1576, i32 4}
!87 = !{ptr @qla4xxx_request_irqs._entry.54, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qla4xxx_request_irqs._entry_ptr.56, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1585, i32 3}
!91 = !{ptr @qla4xxx_request_irqs._entry.57, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @qla4xxx_request_irqs._entry_ptr.59, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1594, i32 3}
!95 = !{ptr @qla4xxx_request_irqs._entry.60, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qla4xxx_request_irqs._entry_ptr.62, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.64, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1598, i32 3}
!99 = !{ptr @qla4xxx_request_irqs._entry.63, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qla4xxx_request_irqs._entry_ptr.65, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1607, i32 2}
!103 = !{ptr @qla4xxx_request_irqs._entry.66, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qla4xxx_request_irqs._entry_ptr.68, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.69, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 125, i32 3}
!107 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qla4xxx_status_entry._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @qla4xxx_status_entry._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 137, i32 3}
!112 = !{ptr @qla4xxx_status_entry._entry.71, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @qla4xxx_status_entry._entry_ptr.73, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.75, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 141, i32 3}
!116 = !{ptr @qla4xxx_status_entry._entry.74, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @qla4xxx_status_entry._entry_ptr.76, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.78, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 171, i32 5}
!120 = !{ptr @qla4xxx_status_entry._entry.77, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @qla4xxx_status_entry._entry_ptr.79, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 199, i32 3}
!124 = !{ptr @qla4xxx_status_entry._entry.80, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @qla4xxx_status_entry._entry_ptr.82, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.84, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 207, i32 3}
!128 = !{ptr @qla4xxx_status_entry._entry.83, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @qla4xxx_status_entry._entry_ptr.85, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.87, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 215, i32 3}
!132 = !{ptr @qla4xxx_status_entry._entry.86, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @qla4xxx_status_entry._entry_ptr.88, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.90, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 234, i32 4}
!136 = !{ptr @qla4xxx_status_entry._entry.89, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @qla4xxx_status_entry._entry_ptr.91, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.93, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 260, i32 5}
!140 = !{ptr @qla4xxx_status_entry._entry.92, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @qla4xxx_status_entry._entry_ptr.94, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.96, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 292, i32 4}
!144 = !{ptr @qla4xxx_status_entry._entry.95, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @qla4xxx_status_entry._entry_ptr.97, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.99, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 315, i32 3}
!148 = !{ptr @qla4xxx_status_entry._entry.98, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @qla4xxx_status_entry._entry_ptr.100, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.102, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 335, i32 3}
!152 = !{ptr @qla4xxx_status_entry._entry.101, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @qla4xxx_status_entry._entry_ptr.103, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.104, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 28, i32 3}
!156 = !{ptr @.str.105, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @qla4xxx_copy_sense._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @qla4xxx_copy_sense._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.107, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 45, i32 2}
!161 = !{ptr @qla4xxx_copy_sense._entry.106, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qla4xxx_copy_sense._entry_ptr.108, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.109, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 380, i32 3}
!165 = !{ptr @.str.110, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @qla4xxx_passthru_status_entry._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @qla4xxx_passthru_status_entry._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.112, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 392, i32 3}
!170 = !{ptr @qla4xxx_passthru_status_entry._entry.111, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @qla4xxx_passthru_status_entry._entry_ptr.113, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.114, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 86, i32 3}
!174 = !{ptr @.str.115, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @qla4xxx_status_cont_entry._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @qla4xxx_status_cont_entry._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.116, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 433, i32 3}
!179 = !{ptr @.str.117, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qla4xxx_mbox_status_entry._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qla4xxx_mbox_status_entry._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.119, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 440, i32 3}
!184 = !{ptr @qla4xxx_mbox_status_entry._entry.118, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @qla4xxx_mbox_status_entry._entry_ptr.120, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.122, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 458, i32 3}
!188 = !{ptr @qla4xxx_mbox_status_entry._entry.121, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @qla4xxx_mbox_status_entry._entry_ptr.123, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.124, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 706, i32 4}
!192 = !{ptr @.str.125, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qla4xxx_isr_decode_mailbox._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.127, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 712, i32 5}
!197 = !{ptr @qla4xxx_isr_decode_mailbox._entry.126, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.128, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.130, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 725, i32 4}
!201 = !{ptr @qla4xxx_isr_decode_mailbox._entry.129, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.131, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.133, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 739, i32 4}
!205 = !{ptr @qla4xxx_isr_decode_mailbox._entry.132, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.134, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.136, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 757, i32 4}
!209 = !{ptr @qla4xxx_isr_decode_mailbox._entry.135, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.137, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.139, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 768, i32 4}
!213 = !{ptr @qla4xxx_isr_decode_mailbox._entry.138, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.140, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.142, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 782, i32 4}
!217 = !{ptr @qla4xxx_isr_decode_mailbox._entry.141, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.143, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.145, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 787, i32 4}
!221 = !{ptr @qla4xxx_isr_decode_mailbox._entry.144, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.146, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.148, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 807, i32 5}
!225 = !{ptr @qla4xxx_isr_decode_mailbox._entry.147, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.149, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.151, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 811, i32 5}
!229 = !{ptr @qla4xxx_isr_decode_mailbox._entry.150, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.152, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @qla4xxx_isr_decode_mailbox._entry.153, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 820, i32 4}
!233 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.154, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.156, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 825, i32 4}
!236 = !{ptr @qla4xxx_isr_decode_mailbox._entry.155, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.157, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.159, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 836, i32 4}
!240 = !{ptr @qla4xxx_isr_decode_mailbox._entry.158, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.160, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.162, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 845, i32 4}
!244 = !{ptr @qla4xxx_isr_decode_mailbox._entry.161, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.163, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.165, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 864, i32 5}
!248 = !{ptr @qla4xxx_isr_decode_mailbox._entry.164, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.166, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.168, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 880, i32 5}
!252 = !{ptr @qla4xxx_isr_decode_mailbox._entry.167, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.169, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.171, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 885, i32 5}
!256 = !{ptr @qla4xxx_isr_decode_mailbox._entry.170, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.172, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.174, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 889, i32 6}
!260 = !{ptr @qla4xxx_isr_decode_mailbox._entry.173, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.175, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.177, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 898, i32 4}
!264 = !{ptr @qla4xxx_isr_decode_mailbox._entry.176, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.178, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.180, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 904, i32 4}
!268 = !{ptr @qla4xxx_isr_decode_mailbox._entry.179, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.181, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.183, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 911, i32 5}
!272 = !{ptr @qla4xxx_isr_decode_mailbox._entry.182, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.184, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @qla4xxx_isr_decode_mailbox._entry.185, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 932, i32 5}
!276 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.186, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.188, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 937, i32 5}
!279 = !{ptr @qla4xxx_isr_decode_mailbox._entry.187, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.189, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.191, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 962, i32 4}
!283 = !{ptr @qla4xxx_isr_decode_mailbox._entry.190, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.192, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.194, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 967, i32 4}
!287 = !{ptr @qla4xxx_isr_decode_mailbox._entry.193, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.195, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @qla4xxx_isr_decode_mailbox._entry.196, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 974, i32 4}
!291 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.197, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.199, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 979, i32 4}
!294 = !{ptr @qla4xxx_isr_decode_mailbox._entry.198, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.200, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.202, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 987, i32 4}
!298 = !{ptr @qla4xxx_isr_decode_mailbox._entry.201, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.203, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @qla4xxx_isr_decode_mailbox._entry.204, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 994, i32 4}
!302 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.205, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @qla4xxx_isr_decode_mailbox._entry.206, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1002, i32 4}
!305 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.207, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.209, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1007, i32 4}
!308 = !{ptr @qla4xxx_isr_decode_mailbox._entry.208, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.210, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.212, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1013, i32 4}
!312 = !{ptr @qla4xxx_isr_decode_mailbox._entry.211, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.213, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.215, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1019, i32 3}
!316 = !{ptr @qla4xxx_isr_decode_mailbox._entry.214, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @qla4xxx_isr_decode_mailbox._entry_ptr.216, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.217, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 632, i32 3}
!320 = !{ptr @.str.218, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @qla4xxx_update_ipaddr_state._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @qla4xxx_update_ipaddr_state._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.219, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 593, i32 4}
!325 = !{ptr @.str.220, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @qla4_83xx_loopback_in_progress._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @qla4_83xx_loopback_in_progress._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.222, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 598, i32 4}
!330 = !{ptr @qla4_83xx_loopback_in_progress._entry.221, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @qla4_83xx_loopback_in_progress._entry_ptr.223, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.224, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1108, i32 2}
!334 = !{ptr @.str.225, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @qla4_82xx_spurious_interrupt._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @qla4_82xx_spurious_interrupt._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.226, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/qla4xxx/ql4_isr.c", i32 1363, i32 3}
!339 = !{ptr @.str.227, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @qla4_83xx_mailbox_intr_handler._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @qla4_83xx_mailbox_intr_handler._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!351 = !{i64 2148371476}
!352 = !{i64 2148285940, i64 2148285972, i64 2148286001, i64 2148286035, i64 2148286066, i64 2148286089}
!353 = !{!"branch_weights", i32 2000, i32 1}
!354 = !{i64 2149377924}
!355 = !{i64 2159637989}
!356 = !{i64 5052480}
!357 = !{i64 2159743883}
!358 = !{i64 2159744107}
!359 = !{i64 5052062}
!360 = !{i64 2159744514}
!361 = !{i64 2159648856}
!362 = !{i64 2159648271}
!363 = !{i64 2159745287}
!364 = !{i64 2159745510}
!365 = !{i64 2159746220}
!366 = !{i64 2159746740}
!367 = !{i64 2159746989}
!368 = !{i64 2159747730}
!369 = !{i64 2159753790}
!370 = !{i64 2159757354}
!371 = !{i64 2159757878}
!372 = !{i64 2159758138}
!373 = !{i64 2159758879}
!374 = !{i64 2159759128}
!375 = !{i64 2159759869}
!376 = !{i64 2159562844}
!377 = !{i64 2159563834}
!378 = !{i64 2159760315}
!379 = !{i64 2159761056}
!380 = !{i64 2159763266}
!381 = !{i64 2159750318}
!382 = !{i64 2159763818}
!383 = !{i64 2159764382}
!384 = !{i64 2159764663}
!385 = !{i64 2159765389}
!386 = !{i64 2159766313}
!387 = !{i64 2159770170}
!388 = !{i64 2159772440}
!389 = !{i64 2159772678}
!390 = !{i64 2159773424}
!391 = !{i64 2159773648}
!392 = !{i64 2159774371}
!393 = !{i64 2159774609}
!394 = !{i64 2159775699}
!395 = !{i64 2159776251}
!396 = !{i64 2159777191}
!397 = !{i64 2159779123}
!398 = !{i64 2159779850}
!399 = !{i64 2159780083}
