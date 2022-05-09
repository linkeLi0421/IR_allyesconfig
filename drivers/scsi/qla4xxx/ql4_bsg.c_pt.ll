; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_bsg.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_bsg_request = type <{ i32, %union.anon.198 }>
%union.anon.198 = type { %struct.iscsi_bsg_host_vendor }
%struct.iscsi_bsg_host_vendor = type { i64, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.iscsi_bsg_reply = type { i32, i32, %union.anon.197 }
%union.anon.197 = type { %struct.iscsi_bsg_host_vendor_reply }
%struct.iscsi_bsg_host_vendor_reply = type { [0 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.199, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.199 = type { ptr }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }

@qla4xxx_process_vendor_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 843, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: invalid BSG vendor command: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qla4xxx_process_vendor_specific\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla4xxx/ql4_bsg.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_process_vendor_specific._entry_ptr = internal global ptr @qla4xxx_process_vendor_specific._entry, section ".printk_index", align 4
@qla4xxx_bsg_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid BSG command: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4xxx_bsg_request\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_bsg_request._entry_ptr = internal global ptr @qla4xxx_bsg_request._entry, section ".printk_index", align 4
@qla4xxx_read_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: reset active\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_read_flash\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_read_flash._entry_ptr = internal global ptr @qla4xxx_read_flash._entry, section ".printk_index", align 4
@qla4xxx_read_flash._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: another flash operation active\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_read_flash._entry_ptr.11 = internal global ptr @qla4xxx_read_flash._entry.9, section ".printk_index", align 4
@qla4xxx_read_flash._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: dma alloc failed for flash data\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_read_flash._entry_ptr.14 = internal global ptr @qla4xxx_read_flash._entry.12, section ".printk_index", align 4
@qla4xxx_read_flash._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: get flash failed\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_read_flash._entry_ptr.17 = internal global ptr @qla4xxx_read_flash._entry.15, section ".printk_index", align 4
@qla4xxx_update_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.18, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_update_flash\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_update_flash._entry_ptr = internal global ptr @qla4xxx_update_flash._entry, section ".printk_index", align 4
@qla4xxx_update_flash._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.18, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_update_flash._entry_ptr.20 = internal global ptr @qla4xxx_update_flash._entry.19, section ".printk_index", align 4
@qla4xxx_update_flash._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.18, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_update_flash._entry_ptr.22 = internal global ptr @qla4xxx_update_flash._entry.21, section ".printk_index", align 4
@qla4xxx_update_flash._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set flash failed\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_update_flash._entry_ptr.25 = internal global ptr @qla4xxx_update_flash._entry.23, section ".printk_index", align 4
@qla4xxx_get_acb_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.26, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_get_acb_state\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_get_acb_state._entry_ptr = internal global ptr @qla4xxx_get_acb_state._entry, section ".printk_index", align 4
@qla4xxx_get_acb_state._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid payload len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_get_acb_state._entry_ptr.29 = internal global ptr @qla4xxx_get_acb_state._entry.27, section ".printk_index", align 4
@qla4xxx_get_acb_state._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: get ip state failed\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_get_acb_state._entry_ptr.32 = internal global ptr @qla4xxx_get_acb_state._entry.30, section ".printk_index", align 4
@qla4xxx_read_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.33, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_read_nvram\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_read_nvram._entry_ptr = internal global ptr @qla4xxx_read_nvram._entry, section ".printk_index", align 4
@qla4xxx_read_nvram._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: offset+len greater than max nvram size, offset=%d len=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_read_nvram._entry_ptr.36 = internal global ptr @qla4xxx_read_nvram._entry.34, section ".printk_index", align 4
@qla4xxx_read_nvram._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: dma alloc failed for nvram data\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4xxx_read_nvram._entry_ptr.39 = internal global ptr @qla4xxx_read_nvram._entry.37, section ".printk_index", align 4
@qla4xxx_read_nvram._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: get nvram failed\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_read_nvram._entry_ptr.42 = internal global ptr @qla4xxx_read_nvram._entry.40, section ".printk_index", align 4
@qla4xxx_update_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.43, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_update_nvram\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_update_nvram._entry_ptr = internal global ptr @qla4xxx_update_nvram._entry, section ".printk_index", align 4
@qla4xxx_update_nvram._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.43, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_update_nvram._entry_ptr.45 = internal global ptr @qla4xxx_update_nvram._entry.44, section ".printk_index", align 4
@qla4xxx_update_nvram._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.43, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_update_nvram._entry_ptr.47 = internal global ptr @qla4xxx_update_nvram._entry.46, section ".printk_index", align 4
@qla4xxx_update_nvram._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set nvram failed\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_update_nvram._entry_ptr.50 = internal global ptr @qla4xxx_update_nvram._entry.48, section ".printk_index", align 4
@qla4xxx_restore_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.51, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4xxx_restore_defaults\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_restore_defaults._entry_ptr = internal global ptr @qla4xxx_restore_defaults._entry, section ".printk_index", align 4
@qla4xxx_restore_defaults._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.51, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_restore_defaults._entry_ptr.53 = internal global ptr @qla4xxx_restore_defaults._entry.52, section ".printk_index", align 4
@qla4xxx_bsg_get_acb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.54, ptr @.str.2, i32 406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4xxx_bsg_get_acb\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_bsg_get_acb._entry_ptr = internal global ptr @qla4xxx_bsg_get_acb._entry, section ".printk_index", align 4
@qla4xxx_bsg_get_acb._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid acb len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_bsg_get_acb._entry_ptr.57 = internal global ptr @qla4xxx_bsg_get_acb._entry.55, section ".printk_index", align 4
@qla4xxx_bsg_get_acb._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: dma alloc failed for acb data\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_bsg_get_acb._entry_ptr.60 = internal global ptr @qla4xxx_bsg_get_acb._entry.58, section ".printk_index", align 4
@qla4xxx_bsg_get_acb._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: get acb failed\0A\00", [44 x i8] zeroinitializer }, align 32
@qla4xxx_bsg_get_acb._entry_ptr.63 = internal global ptr @qla4xxx_bsg_get_acb._entry.61, section ".printk_index", align 4
@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_execute_diag_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 760, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: in\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4xxx_execute_diag_test\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_test._entry_ptr = internal global ptr @qla4xxx_execute_diag_test._entry, section ".printk_index", align 4
@qla4xxx_execute_diag_test._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.2, i32 791, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid diag test: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_test._entry_ptr.69 = internal global ptr @qla4xxx_execute_diag_test._entry.67, section ".printk_index", align 4
@qla4xxx_execute_diag_test._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.65, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid diag cmd: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_test._entry_ptr.72 = internal global ptr @qla4xxx_execute_diag_test._entry.70, section ".printk_index", align 4
@ql4xxx_execute_diag_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.73, ptr @.str.2, i32 459, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ql4xxx_execute_diag_cmd\00", [40 x i8] zeroinitializer }, align 32
@ql4xxx_execute_diag_cmd._entry_ptr = internal global ptr @ql4xxx_execute_diag_cmd._entry, section ".printk_index", align 4
@ql4xxx_execute_diag_cmd._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 463, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Adapter reset in progress. Invalid Request\0A\00", [48 x i8] zeroinitializer }, align 32
@ql4xxx_execute_diag_cmd._entry_ptr.76 = internal global ptr @ql4xxx_execute_diag_cmd._entry.74, section ".printk_index", align 4
@ql4xxx_execute_diag_cmd._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 476, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: mbox_cmd: %08X %08X %08X %08X %08X %08X %08X %08X\0A\00", [41 x i8] zeroinitializer }, align 32
@ql4xxx_execute_diag_cmd._entry_ptr.79 = internal global ptr @ql4xxx_execute_diag_cmd._entry.77, section ".printk_index", align 4
@ql4xxx_execute_diag_cmd._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 485, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: mbox_sts: %08X %08X %08X %08X %08X %08X %08X %08X\0A\00", [41 x i8] zeroinitializer }, align 32
@ql4xxx_execute_diag_cmd._entry_ptr.82 = internal global ptr @ql4xxx_execute_diag_cmd._entry.80, section ".printk_index", align 4
@ql4xxx_execute_diag_cmd._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.2, i32 500, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: bsg_reply->result = x%x, status = %s\0A\00", [54 x i8] zeroinitializer }, align 32
@ql4xxx_execute_diag_cmd._entry_ptr.85 = internal global ptr @ql4xxx_execute_diag_cmd._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUCCEEDED\00", [22 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.88, ptr @.str.2, i32 664, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4xxx_execute_diag_loopback_cmd\00", [62 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry, section ".printk_index", align 4
@qla4xxx_execute_diag_loopback_cmd._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 670, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Loopback Diagnostics already in progress. Invalid Request\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr.91 = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry.89, section ".printk_index", align 4
@qla4xxx_execute_diag_loopback_cmd._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.88, ptr @.str.2, i32 677, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr.93 = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry.92, section ".printk_index", align 4
@qla4xxx_execute_diag_loopback_cmd._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.88, ptr @.str.2, i32 704, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr.95 = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry.94, section ".printk_index", align 4
@qla4xxx_execute_diag_loopback_cmd._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.88, ptr @.str.2, i32 718, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr.97 = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry.96, section ".printk_index", align 4
@qla4xxx_execute_diag_loopback_cmd._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.88, ptr @.str.2, i32 747, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_execute_diag_loopback_cmd._entry_ptr.99 = internal global ptr @qla4xxx_execute_diag_loopback_cmd._entry.98, section ".printk_index", align 4
@qla4_83xx_pre_loopback_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.100, ptr @.str.2, i32 562, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4_83xx_pre_loopback_config\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_pre_loopback_config._entry_ptr = internal global ptr @qla4_83xx_pre_loopback_config._entry, section ".printk_index", align 4
@qla4_83xx_pre_loopback_config._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 569, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Default port config=%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_pre_loopback_config._entry_ptr.103 = internal global ptr @qla4_83xx_pre_loopback_config._entry.101, section ".printk_index", align 4
@qla4_83xx_pre_loopback_config._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 574, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Loopback diagnostics already in progress. Invalid request\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_pre_loopback_config._entry_ptr.106 = internal global ptr @qla4_83xx_pre_loopback_config._entry.104, section ".printk_index", align 4
@qla4_83xx_pre_loopback_config._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.2, i32 587, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: New port config=%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_pre_loopback_config._entry_ptr.109 = internal global ptr @qla4_83xx_pre_loopback_config._entry.107, section ".printk_index", align 4
@qla4_83xx_pre_loopback_config._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.2, i32 603, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: status = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4_83xx_pre_loopback_config._entry_ptr.112 = internal global ptr @qla4_83xx_pre_loopback_config._entry.110, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 513, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: IDC Complete notification not received, Waiting for another %d timeout\00", [53 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qla4_83xx_wait_for_loopback_config_comp\00", [56 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 520, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Aborting: IDC Complete notification not received\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr.118 = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry.115, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.2, i32 526, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: IDC Complete notification received\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr.121 = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry.119, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.114, ptr @.str.2, i32 532, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr.123 = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry.122, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.2, i32 541, ptr @.str.117, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Aborting: LINK UP notification not received\00", [48 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr.126 = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry.124, section ".printk_index", align 4
@qla4_83xx_wait_for_loopback_config_comp._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.114, ptr @.str.2, i32 547, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: LINK UP notification received\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4_83xx_wait_for_loopback_config_comp._entry_ptr.129 = internal global ptr @qla4_83xx_wait_for_loopback_config_comp._entry.127, section ".printk_index", align 4
@qla4_83xx_post_loopback_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.130, ptr @.str.2, i32 613, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_83xx_post_loopback_config\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_post_loopback_config._entry_ptr = internal global ptr @qla4_83xx_post_loopback_config._entry, section ".printk_index", align 4
@qla4_83xx_post_loopback_config._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 620, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: port config=%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_post_loopback_config._entry_ptr.133 = internal global ptr @qla4_83xx_post_loopback_config._entry.131, section ".printk_index", align 4
@qla4_83xx_post_loopback_config._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.2, i32 631, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Restore default port config=%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4_83xx_post_loopback_config._entry_ptr.136 = internal global ptr @qla4_83xx_post_loopback_config._entry.134, section ".printk_index", align 4
@qla4_83xx_post_loopback_config._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.130, ptr @.str.2, i32 640, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Scheduling adapter reset\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_post_loopback_config._entry_ptr.139 = internal global ptr @qla4_83xx_post_loopback_config._entry.137, section ".printk_index", align 4
@qla4_83xx_post_loopback_config._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.130, ptr @.str.2, i32 648, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_post_loopback_config._entry_ptr.141 = internal global ptr @qla4_83xx_post_loopback_config._entry.140, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 117, i64 293, i64 294]
@__sancov_gen_cov_switch_values.145 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 12, i64 13]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 842, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 867, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 30, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 36, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 49, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 57, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 96, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 102, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 116, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 127, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 163, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 169, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 180, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 222, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 235, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 244, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 252, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 293, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 306, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 315, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 326, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 360, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 371, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 406, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 414, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 422, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 430, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 760, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 789, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 798, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 459, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 462, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 472, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 481, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 498, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 664, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 669, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 676, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 700, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 714, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 745, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 562, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 568, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 573, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 586, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 602, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 512, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 519, i32 5 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 524, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 530, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 540, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 545, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 613, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 619, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 629, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 639, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private constant [34 x i8] c"../drivers/scsi/qla4xxx/ql4_bsg.c\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 647, i32 2 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @ql4xxx_execute_diag_cmd._entry, ptr @ql4xxx_execute_diag_cmd._entry.74, ptr @ql4xxx_execute_diag_cmd._entry.77, ptr @ql4xxx_execute_diag_cmd._entry.80, ptr @ql4xxx_execute_diag_cmd._entry.83, ptr @ql4xxx_execute_diag_cmd._entry_ptr, ptr @ql4xxx_execute_diag_cmd._entry_ptr.76, ptr @ql4xxx_execute_diag_cmd._entry_ptr.79, ptr @ql4xxx_execute_diag_cmd._entry_ptr.82, ptr @ql4xxx_execute_diag_cmd._entry_ptr.85, ptr @qla4_83xx_post_loopback_config._entry, ptr @qla4_83xx_post_loopback_config._entry.131, ptr @qla4_83xx_post_loopback_config._entry.134, ptr @qla4_83xx_post_loopback_config._entry.137, ptr @qla4_83xx_post_loopback_config._entry.140, ptr @qla4_83xx_post_loopback_config._entry_ptr, ptr @qla4_83xx_post_loopback_config._entry_ptr.133, ptr @qla4_83xx_post_loopback_config._entry_ptr.136, ptr @qla4_83xx_post_loopback_config._entry_ptr.139, ptr @qla4_83xx_post_loopback_config._entry_ptr.141, ptr @qla4_83xx_pre_loopback_config._entry, ptr @qla4_83xx_pre_loopback_config._entry.101, ptr @qla4_83xx_pre_loopback_config._entry.104, ptr @qla4_83xx_pre_loopback_config._entry.107, ptr @qla4_83xx_pre_loopback_config._entry.110, ptr @qla4_83xx_pre_loopback_config._entry_ptr, ptr @qla4_83xx_pre_loopback_config._entry_ptr.103, ptr @qla4_83xx_pre_loopback_config._entry_ptr.106, ptr @qla4_83xx_pre_loopback_config._entry_ptr.109, ptr @qla4_83xx_pre_loopback_config._entry_ptr.112, ptr @qla4_83xx_wait_for_loopback_config_comp._entry, ptr @qla4_83xx_wait_for_loopback_config_comp._entry.115, ptr @qla4_83xx_wait_for_loopback_config_comp._entry.119, ptr @qla4_83xx_wait_for_loopback_config_comp._entry.122, ptr @qla4_83xx_wait_for_loopback_config_comp._entry.124, ptr @qla4_83xx_wait_for_loopback_config_comp._entry.127, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.118, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.121, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.123, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.126, ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.129, ptr @qla4xxx_bsg_get_acb._entry, ptr @qla4xxx_bsg_get_acb._entry.55, ptr @qla4xxx_bsg_get_acb._entry.58, ptr @qla4xxx_bsg_get_acb._entry.61, ptr @qla4xxx_bsg_get_acb._entry_ptr, ptr @qla4xxx_bsg_get_acb._entry_ptr.57, ptr @qla4xxx_bsg_get_acb._entry_ptr.60, ptr @qla4xxx_bsg_get_acb._entry_ptr.63, ptr @qla4xxx_bsg_request._entry, ptr @qla4xxx_bsg_request._entry_ptr, ptr @qla4xxx_execute_diag_loopback_cmd._entry, ptr @qla4xxx_execute_diag_loopback_cmd._entry.89, ptr @qla4xxx_execute_diag_loopback_cmd._entry.92, ptr @qla4xxx_execute_diag_loopback_cmd._entry.94, ptr @qla4xxx_execute_diag_loopback_cmd._entry.96, ptr @qla4xxx_execute_diag_loopback_cmd._entry.98, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.91, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.93, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.95, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.97, ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.99, ptr @qla4xxx_execute_diag_test._entry, ptr @qla4xxx_execute_diag_test._entry.67, ptr @qla4xxx_execute_diag_test._entry.70, ptr @qla4xxx_execute_diag_test._entry_ptr, ptr @qla4xxx_execute_diag_test._entry_ptr.69, ptr @qla4xxx_execute_diag_test._entry_ptr.72, ptr @qla4xxx_get_acb_state._entry, ptr @qla4xxx_get_acb_state._entry.27, ptr @qla4xxx_get_acb_state._entry.30, ptr @qla4xxx_get_acb_state._entry_ptr, ptr @qla4xxx_get_acb_state._entry_ptr.29, ptr @qla4xxx_get_acb_state._entry_ptr.32, ptr @qla4xxx_process_vendor_specific._entry, ptr @qla4xxx_process_vendor_specific._entry_ptr, ptr @qla4xxx_read_flash._entry, ptr @qla4xxx_read_flash._entry.12, ptr @qla4xxx_read_flash._entry.15, ptr @qla4xxx_read_flash._entry.9, ptr @qla4xxx_read_flash._entry_ptr, ptr @qla4xxx_read_flash._entry_ptr.11, ptr @qla4xxx_read_flash._entry_ptr.14, ptr @qla4xxx_read_flash._entry_ptr.17, ptr @qla4xxx_read_nvram._entry, ptr @qla4xxx_read_nvram._entry.34, ptr @qla4xxx_read_nvram._entry.37, ptr @qla4xxx_read_nvram._entry.40, ptr @qla4xxx_read_nvram._entry_ptr, ptr @qla4xxx_read_nvram._entry_ptr.36, ptr @qla4xxx_read_nvram._entry_ptr.39, ptr @qla4xxx_read_nvram._entry_ptr.42, ptr @qla4xxx_restore_defaults._entry, ptr @qla4xxx_restore_defaults._entry.52, ptr @qla4xxx_restore_defaults._entry_ptr, ptr @qla4xxx_restore_defaults._entry_ptr.53, ptr @qla4xxx_update_flash._entry, ptr @qla4xxx_update_flash._entry.19, ptr @qla4xxx_update_flash._entry.21, ptr @qla4xxx_update_flash._entry.23, ptr @qla4xxx_update_flash._entry_ptr, ptr @qla4xxx_update_flash._entry_ptr.20, ptr @qla4xxx_update_flash._entry_ptr.22, ptr @qla4xxx_update_flash._entry_ptr.25, ptr @qla4xxx_update_nvram._entry, ptr @qla4xxx_update_nvram._entry.44, ptr @qla4xxx_update_nvram._entry.46, ptr @qla4xxx_update_nvram._entry.48, ptr @qla4xxx_update_nvram._entry_ptr, ptr @qla4xxx_update_nvram._entry_ptr.45, ptr @qla4xxx_update_nvram._entry_ptr.47, ptr @qla4xxx_update_nvram._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.120, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.138], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_vendor_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bsg_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_flash._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_flash._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_flash._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_flash._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_flash._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_flash._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_acb_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_acb_state._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_acb_state._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_nvram._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_nvram._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_read_nvram._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_nvram._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_nvram._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_update_nvram._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_restore_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_restore_defaults._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bsg_get_acb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bsg_get_acb._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bsg_get_acb._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_bsg_get_acb._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_test._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_test._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_execute_diag_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_execute_diag_cmd._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_execute_diag_cmd._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_execute_diag_cmd._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_execute_diag_cmd._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_execute_diag_loopback_cmd._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_pre_loopback_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_pre_loopback_config._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_pre_loopback_config._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_pre_loopback_config._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_pre_loopback_config._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wait_for_loopback_config_comp._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_loopback_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_loopback_config._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_loopback_config._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_loopback_config._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_post_loopback_config._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_process_vendor_specific(ptr noundef %bsg_job) local_unnamed_addr #0 align 64 {
entry:
  %config.i181.i.i = alloca i32, align 4
  %config.i.i.i = alloca i32, align 4
  %mbox_cmd.i.i = alloca [8 x i32], align 4
  %mbox_sts.i.i = alloca [8 x i32], align 4
  %acb_dma.i = alloca i32, align 4
  %nvram_dma.i161 = alloca i32, align 4
  %nvram_dma.i = alloca i32, align 4
  %status.i = alloca [8 x i32], align 4
  %flash_dma.i39 = alloca i32, align 4
  %flash_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request, align 4
  %4 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %5, %entry ], [ %7, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %vendor_cmd = getelementptr inbounds %struct.iscsi_bsg_request, ptr %3, i32 1
  %8 = ptrtoint ptr %vendor_cmd to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %vendor_cmd, align 1
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
  ]

sw.bb:                                            ; preds = %dev_to_shost.exit
  %11 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %sw.bb
  %dev.addr.0.i.i = phi ptr [ %12, %sw.bb ], [ %14, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.dev_to_shost.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

while.body.i.i.dev_to_shost.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i, %while.body.i.i.dev_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.dev_to_shost.exit.i_crit_edge ]
  %add.ptr.i77.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 1
  %15 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reply, align 4
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_dma.i) #4
  %19 = ptrtoint ptr %flash_dma.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %flash_dma.i, align 4, !annotation !238
  %reply_payload_rcv_len.i = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reply_payload_rcv_len.i, align 4
  %pdev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 6
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 43
  %23 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.not.i = icmp eq i32 %24, 1
  br i1 %cmp.i.not.i, label %if.end.i, label %dev_to_shost.exit.i.qla4xxx_read_flash.exit_crit_edge, !prof !239

dev_to_shost.exit.i.qla4xxx_read_flash.exit_crit_edge: ; preds = %dev_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_read_flash.exit

if.end.i:                                         ; preds = %dev_to_shost.exit.i
  %dpc_flags.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i78.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i78.i, label %lor.lhs.false.i.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %28 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %31 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false8.i.i, label %lor.lhs.false4.i.i.do.end.i_crit_edge

lor.lhs.false4.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false4.i.i
  %34 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool11.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %lor.lhs.false8.i.i.do.end.i_crit_edge

lor.lhs.false8.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

lor.lhs.false12.i.i:                              ; preds = %lor.lhs.false8.i.i
  %37 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool15.not.i.i, label %ql4xxx_reset_active.exit.i, label %lor.lhs.false12.i.i.do.end.i_crit_edge

lor.lhs.false12.i.i.do.end.i_crit_edge:           ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

ql4xxx_reset_active.exit.i:                       ; preds = %lor.lhs.false12.i.i
  %40 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %42 = and i32 %41, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool6.not.i = icmp eq i32 %42, 0
  br i1 %tobool6.not.i, label %if.end10.i, label %ql4xxx_reset_active.exit.i.do.end.i_crit_edge

ql4xxx_reset_active.exit.i.do.end.i_crit_edge:    ; preds = %ql4xxx_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %ql4xxx_reset_active.exit.i.do.end.i_crit_edge, %lor.lhs.false12.i.i.do.end.i_crit_edge, %lor.lhs.false8.i.i.do.end.i_crit_edge, %lor.lhs.false4.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %qla4xxx_read_flash.exit

if.end10.i:                                       ; preds = %ql4xxx_reset_active.exit.i
  %flash_state.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i, i32 16, i32 5, i32 5, i32 2
  %43 = ptrtoint ptr %flash_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flash_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i, label %if.end17.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #7
  br label %qla4xxx_read_flash.exit

if.end17.i:                                       ; preds = %if.end10.i
  %45 = ptrtoint ptr %flash_state.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %flash_state.i, align 8
  %arrayidx.i = getelementptr %struct.iscsi_bsg_request, ptr %18, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx.i, align 1
  %reply_payload.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %48 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reply_payload.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i79.i = call ptr @dma_alloc_attrs(ptr noundef %dev20.i, i32 noundef %49, ptr noundef nonnull %flash_dma.i, i32 noundef 3264, i32 noundef 0) #4
  %tobool22.not.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end29.i

do.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i, align 8
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev28.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8) #7
  br label %qla4xxx_read_flash.exit

if.end29.i:                                       ; preds = %if.end17.i
  %52 = ptrtoint ptr %flash_dma.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flash_dma.i, align 4
  %call30.i = call i32 @qla4xxx_get_flash(ptr noundef %add.ptr.i77.i, i32 noundef %53, i32 noundef %47, i32 noundef %49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.else.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i, align 8
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev37.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8) #7
  br label %if.end43.i

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %56 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg_list.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sg_cnt.i, align 4
  %call40.i = call i32 @sg_copy_from_buffer(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %call.i79.i, i32 noundef %49) #4
  %60 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call40.i, ptr %reply_payload_rcv_len.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %do.end35.i
  %storemerge.i = phi i32 [ 0, %if.else.i ], [ 458752, %do.end35.i ]
  %rval.0.i = phi i32 [ 0, %if.else.i ], [ -5, %do.end35.i ]
  %61 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge.i, ptr %16, align 4
  %62 = ptrtoint ptr %reply_payload_rcv_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reply_payload_rcv_len.i, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i, i32 noundef %63) #4
  %64 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i, align 8
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %flash_dma.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flash_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev47.i, i32 noundef %49, ptr noundef nonnull %call.i79.i, i32 noundef %67, i32 noundef 0) #4
  br label %qla4xxx_read_flash.exit

qla4xxx_read_flash.exit:                          ; preds = %if.end43.i, %do.end26.i, %do.end14.i, %do.end.i, %dev_to_shost.exit.i.qla4xxx_read_flash.exit_crit_edge
  %rval.1.i = phi i32 [ -22, %dev_to_shost.exit.i.qla4xxx_read_flash.exit_crit_edge ], [ -16, %do.end.i ], [ -16, %do.end14.i ], [ %rval.0.i, %if.end43.i ], [ -12, %do.end26.i ]
  %flash_state48.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i, i32 16, i32 5, i32 5, i32 2
  %68 = ptrtoint ptr %flash_state48.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %flash_state48.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_dma.i) #4
  br label %cleanup

sw.bb3:                                           ; preds = %dev_to_shost.exit
  %69 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i43

while.cond.i.i43:                                 ; preds = %while.body.i.i46.while.cond.i.i43_crit_edge, %sw.bb3
  %dev.addr.0.i.i40 = phi ptr [ %70, %sw.bb3 ], [ %72, %while.body.i.i46.while.cond.i.i43_crit_edge ]
  %call.i.i41 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %call.i.i41, 0
  br i1 %tobool.not.i.i42, label %while.body.i.i46, label %while.end.i.i48

while.body.i.i46:                                 ; preds = %while.cond.i.i43
  %parent.i.i44 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i40, i32 0, i32 1
  %71 = ptrtoint ptr %parent.i.i44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent.i.i44, align 8
  %tobool1.not.i.i45 = icmp eq ptr %72, null
  br i1 %tobool1.not.i.i45, label %while.body.i.i46.dev_to_shost.exit.i56_crit_edge, label %while.body.i.i46.while.cond.i.i43_crit_edge

while.body.i.i46.while.cond.i.i43_crit_edge:      ; preds = %while.body.i.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i43

while.body.i.i46.dev_to_shost.exit.i56_crit_edge: ; preds = %while.body.i.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i56

while.end.i.i48:                                  ; preds = %while.cond.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i47 = getelementptr i8, ptr %dev.addr.0.i.i40, i32 -584
  br label %dev_to_shost.exit.i56

dev_to_shost.exit.i56:                            ; preds = %while.end.i.i48, %while.body.i.i46.dev_to_shost.exit.i56_crit_edge
  %retval.0.i.i49 = phi ptr [ %add.ptr.i.i47, %while.end.i.i48 ], [ null, %while.body.i.i46.dev_to_shost.exit.i56_crit_edge ]
  %add.ptr.i79.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i49, i32 1, i32 5, i32 5, i32 1
  %73 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reply, align 4
  %75 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %request, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flash_dma.i39) #4
  %77 = ptrtoint ptr %flash_dma.i39 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %flash_dma.i39, align 4, !annotation !238
  %reply_payload_rcv_len.i52 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %74, i32 0, i32 1
  %78 = ptrtoint ptr %reply_payload_rcv_len.i52 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %reply_payload_rcv_len.i52, align 4
  %pdev.i53 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i49, i32 1, i32 6
  %79 = ptrtoint ptr %pdev.i53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i53, align 8
  %error_state.i.i54 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 43
  %81 = ptrtoint ptr %error_state.i.i54 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error_state.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i.not.i55 = icmp eq i32 %82, 1
  br i1 %cmp.i.not.i55, label %if.end.i58, label %dev_to_shost.exit.i56.qla4xxx_update_flash.exit_crit_edge, !prof !239

dev_to_shost.exit.i56.qla4xxx_update_flash.exit_crit_edge: ; preds = %dev_to_shost.exit.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_update_flash.exit

if.end.i58:                                       ; preds = %dev_to_shost.exit.i56
  %dpc_flags.i.i57 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i49, i32 1, i32 5, i32 5, i32 1, i32 1
  %83 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %85 = and i32 %84, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i80.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i80.i, label %lor.lhs.false.i.i60, label %if.end.i58.do.end.i70_crit_edge

if.end.i58.do.end.i70_crit_edge:                  ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

lor.lhs.false.i.i60:                              ; preds = %if.end.i58
  %86 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %88 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool3.not.i.i59 = icmp eq i32 %88, 0
  br i1 %tobool3.not.i.i59, label %lor.lhs.false4.i.i62, label %lor.lhs.false.i.i60.do.end.i70_crit_edge

lor.lhs.false.i.i60.do.end.i70_crit_edge:         ; preds = %lor.lhs.false.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

lor.lhs.false4.i.i62:                             ; preds = %lor.lhs.false.i.i60
  %89 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %91 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool7.not.i.i61 = icmp eq i32 %91, 0
  br i1 %tobool7.not.i.i61, label %lor.lhs.false8.i.i64, label %lor.lhs.false4.i.i62.do.end.i70_crit_edge

lor.lhs.false4.i.i62.do.end.i70_crit_edge:        ; preds = %lor.lhs.false4.i.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

lor.lhs.false8.i.i64:                             ; preds = %lor.lhs.false4.i.i62
  %92 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %94 = and i32 %93, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool11.not.i.i63 = icmp eq i32 %94, 0
  br i1 %tobool11.not.i.i63, label %lor.lhs.false12.i.i66, label %lor.lhs.false8.i.i64.do.end.i70_crit_edge

lor.lhs.false8.i.i64.do.end.i70_crit_edge:        ; preds = %lor.lhs.false8.i.i64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

lor.lhs.false12.i.i66:                            ; preds = %lor.lhs.false8.i.i64
  %95 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %97 = and i32 %96, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool15.not.i.i65 = icmp eq i32 %97, 0
  br i1 %tobool15.not.i.i65, label %ql4xxx_reset_active.exit.i68, label %lor.lhs.false12.i.i66.do.end.i70_crit_edge

lor.lhs.false12.i.i66.do.end.i70_crit_edge:       ; preds = %lor.lhs.false12.i.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

ql4xxx_reset_active.exit.i68:                     ; preds = %lor.lhs.false12.i.i66
  %98 = ptrtoint ptr %dpc_flags.i.i57 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %dpc_flags.i.i57, align 4
  %100 = and i32 %99, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool6.not.i67 = icmp eq i32 %100, 0
  br i1 %tobool6.not.i67, label %if.end10.i73, label %ql4xxx_reset_active.exit.i68.do.end.i70_crit_edge

ql4xxx_reset_active.exit.i68.do.end.i70_crit_edge: ; preds = %ql4xxx_reset_active.exit.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i70

do.end.i70:                                       ; preds = %ql4xxx_reset_active.exit.i68.do.end.i70_crit_edge, %lor.lhs.false12.i.i66.do.end.i70_crit_edge, %lor.lhs.false8.i.i64.do.end.i70_crit_edge, %lor.lhs.false4.i.i62.do.end.i70_crit_edge, %lor.lhs.false.i.i60.do.end.i70_crit_edge, %if.end.i58.do.end.i70_crit_edge
  %dev9.i69 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9.i69, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #7
  br label %qla4xxx_update_flash.exit

if.end10.i73:                                     ; preds = %ql4xxx_reset_active.exit.i68
  %flash_state.i71 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i49, i32 16, i32 5, i32 5, i32 2
  %101 = ptrtoint ptr %flash_state.i71 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flash_state.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.not.i72 = icmp eq i32 %102, 0
  br i1 %cmp.not.i72, label %if.end17.i77, label %do.end14.i75

do.end14.i75:                                     ; preds = %if.end10.i73
  call void @__sanitizer_cov_trace_pc() #6
  %dev16.i74 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i74, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #7
  br label %qla4xxx_update_flash.exit

if.end17.i77:                                     ; preds = %if.end10.i73
  %103 = ptrtoint ptr %flash_state.i71 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %flash_state.i71, align 8
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %104 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %request_payload.i, align 4
  %vendor_cmd.i = getelementptr inbounds %struct.iscsi_bsg_request, ptr %76, i32 1
  %arrayidx.i76 = getelementptr %struct.iscsi_bsg_request, ptr %76, i32 1, i32 1
  %106 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx.i76, align 1
  %arrayidx21.i = getelementptr [0 x i32], ptr %vendor_cmd.i, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %arrayidx21.i, align 1
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %call.i81.i = call ptr @dma_alloc_attrs(ptr noundef %dev23.i, i32 noundef %105, ptr noundef nonnull %flash_dma.i39, i32 noundef 3264, i32 noundef 0) #4
  %tobool25.not.i = icmp eq ptr %call.i81.i, null
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end32.i

do.end29.i:                                       ; preds = %if.end17.i77
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %pdev.i53 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i53, align 8
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev31.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #7
  br label %qla4xxx_update_flash.exit

if.end32.i:                                       ; preds = %if.end17.i77
  %sg_list.i78 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %112 = ptrtoint ptr %sg_list.i78 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sg_list.i78, align 4
  %sg_cnt.i79 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %114 = ptrtoint ptr %sg_cnt.i79 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sg_cnt.i79, align 4
  %call35.i = call i32 @sg_copy_to_buffer(ptr noundef %113, i32 noundef %115, ptr noundef nonnull %call.i81.i, i32 noundef %105) #4
  %116 = ptrtoint ptr %flash_dma.i39 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flash_dma.i39, align 4
  %call36.i = call i32 @qla4xxx_set_flash(ptr noundef %add.ptr.i79.i, i32 noundef %117, i32 noundef %107, i32 noundef %105, i32 noundef %109) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end32.i.if.end45.i_crit_edge, label %do.end41.i

if.end32.i.if.end45.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.i

do.end41.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %pdev.i53 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev.i53, align 8
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev43.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end41.i, %if.end32.i.if.end45.i_crit_edge
  %storemerge.i80 = phi i32 [ 458752, %do.end41.i ], [ 0, %if.end32.i.if.end45.i_crit_edge ]
  %rval.0.i81 = phi i32 [ -5, %do.end41.i ], [ 0, %if.end32.i.if.end45.i_crit_edge ]
  %120 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %storemerge.i80, ptr %74, align 4
  %121 = ptrtoint ptr %reply_payload_rcv_len.i52 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %reply_payload_rcv_len.i52, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i80, i32 noundef %122) #4
  %123 = ptrtoint ptr %pdev.i53 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i53, align 8
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %125 = ptrtoint ptr %flash_dma.i39 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flash_dma.i39, align 4
  call void @dma_free_attrs(ptr noundef %dev49.i, i32 noundef %105, ptr noundef nonnull %call.i81.i, i32 noundef %126, i32 noundef 0) #4
  br label %qla4xxx_update_flash.exit

qla4xxx_update_flash.exit:                        ; preds = %if.end45.i, %do.end29.i, %do.end14.i75, %do.end.i70, %dev_to_shost.exit.i56.qla4xxx_update_flash.exit_crit_edge
  %rval.1.i82 = phi i32 [ -22, %dev_to_shost.exit.i56.qla4xxx_update_flash.exit_crit_edge ], [ -16, %do.end.i70 ], [ -16, %do.end14.i75 ], [ %rval.0.i81, %if.end45.i ], [ -12, %do.end29.i ]
  %flash_state50.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i49, i32 16, i32 5, i32 5, i32 2
  %127 = ptrtoint ptr %flash_state50.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %flash_state50.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flash_dma.i39) #4
  br label %cleanup

sw.bb5:                                           ; preds = %dev_to_shost.exit
  %128 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i86

while.cond.i.i86:                                 ; preds = %while.body.i.i89.while.cond.i.i86_crit_edge, %sw.bb5
  %dev.addr.0.i.i83 = phi ptr [ %129, %sw.bb5 ], [ %131, %while.body.i.i89.while.cond.i.i86_crit_edge ]
  %call.i.i84 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %call.i.i84, 0
  br i1 %tobool.not.i.i85, label %while.body.i.i89, label %while.end.i.i91

while.body.i.i89:                                 ; preds = %while.cond.i.i86
  %parent.i.i87 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i83, i32 0, i32 1
  %130 = ptrtoint ptr %parent.i.i87 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %parent.i.i87, align 8
  %tobool1.not.i.i88 = icmp eq ptr %131, null
  br i1 %tobool1.not.i.i88, label %while.body.i.i89.dev_to_shost.exit.i99_crit_edge, label %while.body.i.i89.while.cond.i.i86_crit_edge

while.body.i.i89.while.cond.i.i86_crit_edge:      ; preds = %while.body.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i86

while.body.i.i89.dev_to_shost.exit.i99_crit_edge: ; preds = %while.body.i.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i99

while.end.i.i91:                                  ; preds = %while.cond.i.i86
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i90 = getelementptr i8, ptr %dev.addr.0.i.i83, i32 -584
  br label %dev_to_shost.exit.i99

dev_to_shost.exit.i99:                            ; preds = %while.end.i.i91, %while.body.i.i89.dev_to_shost.exit.i99_crit_edge
  %retval.0.i.i92 = phi ptr [ %add.ptr.i.i90, %while.end.i.i91 ], [ null, %while.body.i.i89.dev_to_shost.exit.i99_crit_edge ]
  %add.ptr.i64.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i92, i32 1, i32 5, i32 5, i32 1
  %132 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %request, align 4
  %134 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status.i) #4
  %reply_payload_rcv_len.i95 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %135, i32 0, i32 1
  %136 = call ptr @memset(ptr %status.i, i32 255, i32 32)
  %137 = ptrtoint ptr %reply_payload_rcv_len.i95 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %reply_payload_rcv_len.i95, align 4
  %pdev.i96 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i92, i32 1, i32 6
  %138 = ptrtoint ptr %pdev.i96 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i96, align 8
  %error_state.i.i97 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 43
  %140 = ptrtoint ptr %error_state.i.i97 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %error_state.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.i.not.i98 = icmp eq i32 %141, 1
  br i1 %cmp.i.not.i98, label %if.end.i100, label %dev_to_shost.exit.i99.qla4xxx_get_acb_state.exit_crit_edge, !prof !239

dev_to_shost.exit.i99.qla4xxx_get_acb_state.exit_crit_edge: ; preds = %dev_to_shost.exit.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_get_acb_state.exit

if.end.i100:                                      ; preds = %dev_to_shost.exit.i99
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 8
  %142 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %143)
  %cmp.i65.not.i = icmp eq i16 %143, 16400
  br i1 %cmp.i65.not.i, label %if.end.i100.qla4xxx_get_acb_state.exit_crit_edge, label %if.end8.i

if.end.i100.qla4xxx_get_acb_state.exit_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_get_acb_state.exit

if.end8.i:                                        ; preds = %if.end.i100
  %dpc_flags.i.i101 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i92, i32 1, i32 5, i32 5, i32 1, i32 1
  %144 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %146 = and i32 %145, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i66.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i66.i, label %lor.lhs.false.i.i103, label %if.end8.i.do.end.i111_crit_edge

if.end8.i.do.end.i111_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

lor.lhs.false.i.i103:                             ; preds = %if.end8.i
  %147 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %149 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool3.not.i.i102 = icmp eq i32 %149, 0
  br i1 %tobool3.not.i.i102, label %lor.lhs.false4.i.i105, label %lor.lhs.false.i.i103.do.end.i111_crit_edge

lor.lhs.false.i.i103.do.end.i111_crit_edge:       ; preds = %lor.lhs.false.i.i103
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

lor.lhs.false4.i.i105:                            ; preds = %lor.lhs.false.i.i103
  %150 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %152 = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool7.not.i.i104 = icmp eq i32 %152, 0
  br i1 %tobool7.not.i.i104, label %lor.lhs.false8.i.i107, label %lor.lhs.false4.i.i105.do.end.i111_crit_edge

lor.lhs.false4.i.i105.do.end.i111_crit_edge:      ; preds = %lor.lhs.false4.i.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

lor.lhs.false8.i.i107:                            ; preds = %lor.lhs.false4.i.i105
  %153 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %155 = and i32 %154, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool11.not.i.i106 = icmp eq i32 %155, 0
  br i1 %tobool11.not.i.i106, label %lor.lhs.false12.i.i109, label %lor.lhs.false8.i.i107.do.end.i111_crit_edge

lor.lhs.false8.i.i107.do.end.i111_crit_edge:      ; preds = %lor.lhs.false8.i.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

lor.lhs.false12.i.i109:                           ; preds = %lor.lhs.false8.i.i107
  %156 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %158 = and i32 %157, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool15.not.i.i108 = icmp eq i32 %158, 0
  br i1 %tobool15.not.i.i108, label %ql4xxx_reset_active.exit.i110, label %lor.lhs.false12.i.i109.do.end.i111_crit_edge

lor.lhs.false12.i.i109.do.end.i111_crit_edge:     ; preds = %lor.lhs.false12.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

ql4xxx_reset_active.exit.i110:                    ; preds = %lor.lhs.false12.i.i109
  %159 = ptrtoint ptr %dpc_flags.i.i101 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %dpc_flags.i.i101, align 4
  %161 = and i32 %160, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool10.not.i = icmp eq i32 %161, 0
  br i1 %tobool10.not.i, label %if.end14.i, label %ql4xxx_reset_active.exit.i110.do.end.i111_crit_edge

ql4xxx_reset_active.exit.i110.do.end.i111_crit_edge: ; preds = %ql4xxx_reset_active.exit.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i111

do.end.i111:                                      ; preds = %ql4xxx_reset_active.exit.i110.do.end.i111_crit_edge, %lor.lhs.false12.i.i109.do.end.i111_crit_edge, %lor.lhs.false8.i.i107.do.end.i111_crit_edge, %lor.lhs.false4.i.i105.do.end.i111_crit_edge, %lor.lhs.false.i.i103.do.end.i111_crit_edge, %if.end8.i.do.end.i111_crit_edge
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.26) #7
  br label %qla4xxx_get_acb_state.exit

if.end14.i:                                       ; preds = %ql4xxx_reset_active.exit.i110
  %reply_payload.i112 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %162 = ptrtoint ptr %reply_payload.i112 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %reply_payload.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %163)
  %cmp.i = icmp ult i32 %163, 32
  br i1 %cmp.i, label %do.end18.i, label %if.end23.i

do.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev20.i113 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev20.i113, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %163) #7
  br label %qla4xxx_get_acb_state.exit

if.end23.i:                                       ; preds = %if.end14.i
  %vendor_cmd.i114 = getelementptr inbounds %struct.iscsi_bsg_request, ptr %133, i32 1
  %arrayidx.i115 = getelementptr %struct.iscsi_bsg_request, ptr %133, i32 1, i32 1
  %164 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %arrayidx.i115, align 1
  %arrayidx26.i = getelementptr [0 x i32], ptr %vendor_cmd.i114, i32 0, i32 2
  %166 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %arrayidx26.i, align 1
  %call27.i = call i32 @qla4xxx_get_ip_state(ptr noundef %add.ptr.i64.i, i32 noundef %165, i32 noundef %167, ptr noundef nonnull %status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.else.i118, label %do.end32.i

do.end32.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %pdev.i96 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev.i96, align 8
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev34.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26) #7
  br label %if.end41.i

if.else.i118:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %sg_list.i116 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %170 = ptrtoint ptr %sg_list.i116 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sg_list.i116, align 4
  %sg_cnt.i117 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %172 = ptrtoint ptr %sg_cnt.i117 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sg_cnt.i117, align 4
  %call38.i = call i32 @sg_copy_from_buffer(ptr noundef %171, i32 noundef %173, ptr noundef nonnull %status.i, i32 noundef 32) #4
  %174 = ptrtoint ptr %reply_payload_rcv_len.i95 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %call38.i, ptr %reply_payload_rcv_len.i95, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i118, %do.end32.i
  %storemerge.i119 = phi i32 [ 0, %if.else.i118 ], [ 458752, %do.end32.i ]
  %rval.0.i120 = phi i32 [ 0, %if.else.i118 ], [ -5, %do.end32.i ]
  %175 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %storemerge.i119, ptr %135, align 4
  %176 = ptrtoint ptr %reply_payload_rcv_len.i95 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %reply_payload_rcv_len.i95, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i119, i32 noundef %177) #4
  br label %qla4xxx_get_acb_state.exit

qla4xxx_get_acb_state.exit:                       ; preds = %if.end41.i, %do.end18.i, %do.end.i111, %if.end.i100.qla4xxx_get_acb_state.exit_crit_edge, %dev_to_shost.exit.i99.qla4xxx_get_acb_state.exit_crit_edge
  %rval.1.i121 = phi i32 [ -22, %dev_to_shost.exit.i99.qla4xxx_get_acb_state.exit_crit_edge ], [ -22, %if.end.i100.qla4xxx_get_acb_state.exit_crit_edge ], [ -16, %do.end.i111 ], [ -22, %do.end18.i ], [ %rval.0.i120, %if.end41.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status.i) #4
  br label %cleanup

sw.bb7:                                           ; preds = %dev_to_shost.exit
  %178 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i125

while.cond.i.i125:                                ; preds = %while.body.i.i128.while.cond.i.i125_crit_edge, %sw.bb7
  %dev.addr.0.i.i122 = phi ptr [ %179, %sw.bb7 ], [ %181, %while.body.i.i128.while.cond.i.i125_crit_edge ]
  %call.i.i123 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i122) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i.i124, label %while.body.i.i128, label %while.end.i.i130

while.body.i.i128:                                ; preds = %while.cond.i.i125
  %parent.i.i126 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i122, i32 0, i32 1
  %180 = ptrtoint ptr %parent.i.i126 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %parent.i.i126, align 8
  %tobool1.not.i.i127 = icmp eq ptr %181, null
  br i1 %tobool1.not.i.i127, label %while.body.i.i128.dev_to_shost.exit.i138_crit_edge, label %while.body.i.i128.while.cond.i.i125_crit_edge

while.body.i.i128.while.cond.i.i125_crit_edge:    ; preds = %while.body.i.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i125

while.body.i.i128.dev_to_shost.exit.i138_crit_edge: ; preds = %while.body.i.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i138

while.end.i.i130:                                 ; preds = %while.cond.i.i125
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i129 = getelementptr i8, ptr %dev.addr.0.i.i122, i32 -584
  br label %dev_to_shost.exit.i138

dev_to_shost.exit.i138:                           ; preds = %while.end.i.i130, %while.body.i.i128.dev_to_shost.exit.i138_crit_edge
  %retval.0.i.i131 = phi ptr [ %add.ptr.i.i129, %while.end.i.i130 ], [ null, %while.body.i.i128.dev_to_shost.exit.i138_crit_edge ]
  %add.ptr.i103.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i131, i32 1, i32 5, i32 5, i32 1
  %182 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %request, align 4
  %184 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvram_dma.i) #4
  %186 = ptrtoint ptr %nvram_dma.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %nvram_dma.i, align 4, !annotation !238
  %reply_payload_rcv_len.i134 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %185, i32 0, i32 1
  %187 = ptrtoint ptr %reply_payload_rcv_len.i134 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %reply_payload_rcv_len.i134, align 4
  %pdev.i135 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i131, i32 1, i32 6
  %188 = ptrtoint ptr %pdev.i135 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pdev.i135, align 8
  %error_state.i.i136 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 43
  %190 = ptrtoint ptr %error_state.i.i136 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %error_state.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp.i.not.i137 = icmp eq i32 %191, 1
  br i1 %cmp.i.not.i137, label %if.end.i140, label %dev_to_shost.exit.i138.qla4xxx_read_nvram.exit_crit_edge, !prof !239

dev_to_shost.exit.i138.qla4xxx_read_nvram.exit_crit_edge: ; preds = %dev_to_shost.exit.i138
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_read_nvram.exit

if.end.i140:                                      ; preds = %dev_to_shost.exit.i138
  %device.i.i139 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 8
  %192 = ptrtoint ptr %device.i.i139 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %device.i.i139, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %193)
  %cmp.i104.i = icmp eq i16 %193, 16400
  %194 = zext i16 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.142)
  switch i16 %193, label %if.end.i140.qla4xxx_read_nvram.exit_crit_edge [
    i16 16434, label %if.end.i140.if.end13.i_crit_edge
    i16 16418, label %if.end.i140.if.end13.i_crit_edge396
    i16 16400, label %if.end.i140.if.end13.i_crit_edge397
  ]

if.end.i140.if.end13.i_crit_edge397:              ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end.i140.if.end13.i_crit_edge396:              ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end.i140.if.end13.i_crit_edge:                 ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end.i140.qla4xxx_read_nvram.exit_crit_edge:    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_read_nvram.exit

if.end13.i:                                       ; preds = %if.end.i140.if.end13.i_crit_edge, %if.end.i140.if.end13.i_crit_edge396, %if.end.i140.if.end13.i_crit_edge397
  %dpc_flags.i.i141 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i131, i32 1, i32 5, i32 5, i32 1, i32 1
  %195 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %197 = and i32 %196, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.not.i113.i = icmp eq i32 %197, 0
  br i1 %tobool.not.i113.i, label %lor.lhs.false.i.i143, label %if.end13.i.do.end.i151_crit_edge

if.end13.i.do.end.i151_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

lor.lhs.false.i.i143:                             ; preds = %if.end13.i
  %198 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %200 = and i32 %199, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool3.not.i.i142 = icmp eq i32 %200, 0
  br i1 %tobool3.not.i.i142, label %lor.lhs.false4.i.i145, label %lor.lhs.false.i.i143.do.end.i151_crit_edge

lor.lhs.false.i.i143.do.end.i151_crit_edge:       ; preds = %lor.lhs.false.i.i143
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

lor.lhs.false4.i.i145:                            ; preds = %lor.lhs.false.i.i143
  %201 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %203 = and i32 %202, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool7.not.i.i144 = icmp eq i32 %203, 0
  br i1 %tobool7.not.i.i144, label %lor.lhs.false8.i.i147, label %lor.lhs.false4.i.i145.do.end.i151_crit_edge

lor.lhs.false4.i.i145.do.end.i151_crit_edge:      ; preds = %lor.lhs.false4.i.i145
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

lor.lhs.false8.i.i147:                            ; preds = %lor.lhs.false4.i.i145
  %204 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %206 = and i32 %205, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool11.not.i.i146 = icmp eq i32 %206, 0
  br i1 %tobool11.not.i.i146, label %lor.lhs.false12.i.i149, label %lor.lhs.false8.i.i147.do.end.i151_crit_edge

lor.lhs.false8.i.i147.do.end.i151_crit_edge:      ; preds = %lor.lhs.false8.i.i147
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

lor.lhs.false12.i.i149:                           ; preds = %lor.lhs.false8.i.i147
  %207 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %209 = and i32 %208, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool15.not.i.i148 = icmp eq i32 %209, 0
  br i1 %tobool15.not.i.i148, label %ql4xxx_reset_active.exit.i150, label %lor.lhs.false12.i.i149.do.end.i151_crit_edge

lor.lhs.false12.i.i149.do.end.i151_crit_edge:     ; preds = %lor.lhs.false12.i.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

ql4xxx_reset_active.exit.i150:                    ; preds = %lor.lhs.false12.i.i149
  %210 = ptrtoint ptr %dpc_flags.i.i141 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %dpc_flags.i.i141, align 4
  %212 = and i32 %211, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool15.not.i = icmp eq i32 %212, 0
  br i1 %tobool15.not.i, label %if.end19.i, label %ql4xxx_reset_active.exit.i150.do.end.i151_crit_edge

ql4xxx_reset_active.exit.i150.do.end.i151_crit_edge: ; preds = %ql4xxx_reset_active.exit.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i151

do.end.i151:                                      ; preds = %ql4xxx_reset_active.exit.i150.do.end.i151_crit_edge, %lor.lhs.false12.i.i149.do.end.i151_crit_edge, %lor.lhs.false8.i.i147.do.end.i151_crit_edge, %lor.lhs.false4.i.i145.do.end.i151_crit_edge, %lor.lhs.false.i.i143.do.end.i151_crit_edge, %if.end13.i.do.end.i151_crit_edge
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev18.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.33) #7
  br label %qla4xxx_read_nvram.exit

if.end19.i:                                       ; preds = %ql4xxx_reset_active.exit.i150
  %arrayidx.i152 = getelementptr %struct.iscsi_bsg_request, ptr %183, i32 1, i32 1
  %213 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %arrayidx.i152, align 1
  %reply_payload.i153 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %215 = ptrtoint ptr %reply_payload.i153 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %reply_payload.i153, align 4
  %add.i = add i32 %216, %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i)
  %cmp.i154 = icmp ugt i32 %add.i, 512
  %or.cond.i = select i1 %cmp.i104.i, i1 %cmp.i154, i1 false
  br i1 %or.cond.i, label %if.end19.i.do.end33.i_crit_edge, label %lor.lhs.false22.i

if.end19.i.do.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %193)
  %cmp.i120.not.i = icmp eq i16 %193, 16418
  br i1 %cmp.i120.not.i, label %land.lhs.true28.i, label %lor.lhs.false25.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16434, i16 %193)
  %cmp.i124.i = icmp eq i16 %193, 16434
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp29.i = icmp ugt i32 %add.i, 2048
  %or.cond102.i = select i1 %cmp.i124.i, i1 %cmp29.i, i1 false
  br i1 %or.cond102.i, label %lor.lhs.false25.i.do.end33.i_crit_edge, label %lor.lhs.false25.i.if.end36.i_crit_edge

lor.lhs.false25.i.if.end36.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

lor.lhs.false25.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp29.old.i = icmp ugt i32 %add.i, 2048
  br i1 %cmp29.old.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %land.lhs.true28.i.if.end36.i_crit_edge

land.lhs.true28.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i

do.end33.i:                                       ; preds = %land.lhs.true28.i.do.end33.i_crit_edge, %lor.lhs.false25.i.do.end33.i_crit_edge, %if.end19.i.do.end33.i_crit_edge
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev35.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %214, i32 noundef %216) #7
  br label %qla4xxx_read_nvram.exit

if.end36.i:                                       ; preds = %land.lhs.true28.i.if.end36.i_crit_edge, %lor.lhs.false25.i.if.end36.i_crit_edge
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  %call.i126.i = call ptr @dma_alloc_attrs(ptr noundef %dev38.i, i32 noundef %216, ptr noundef nonnull %nvram_dma.i, i32 noundef 3264, i32 noundef 0) #4
  %tobool40.not.i = icmp eq ptr %call.i126.i, null
  br i1 %tobool40.not.i, label %do.end44.i, label %if.end47.i

do.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  %217 = ptrtoint ptr %pdev.i135 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pdev.i135, align 8
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev46.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #7
  br label %qla4xxx_read_nvram.exit

if.end47.i:                                       ; preds = %if.end36.i
  %219 = ptrtoint ptr %nvram_dma.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %nvram_dma.i, align 4
  %call48.i = call i32 @qla4xxx_get_nvram(ptr noundef %add.ptr.i103.i, i32 noundef %220, i32 noundef %214, i32 noundef %216) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.else.i157, label %do.end53.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  %221 = ptrtoint ptr %pdev.i135 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i135, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev55.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33) #7
  br label %if.end61.i

if.else.i157:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  %sg_list.i155 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %223 = ptrtoint ptr %sg_list.i155 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %sg_list.i155, align 4
  %sg_cnt.i156 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %225 = ptrtoint ptr %sg_cnt.i156 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %sg_cnt.i156, align 4
  %call58.i = call i32 @sg_copy_from_buffer(ptr noundef %224, i32 noundef %226, ptr noundef nonnull %call.i126.i, i32 noundef %216) #4
  %227 = ptrtoint ptr %reply_payload_rcv_len.i134 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %call58.i, ptr %reply_payload_rcv_len.i134, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else.i157, %do.end53.i
  %storemerge.i158 = phi i32 [ 0, %if.else.i157 ], [ 458752, %do.end53.i ]
  %rval.0.i159 = phi i32 [ 0, %if.else.i157 ], [ -5, %do.end53.i ]
  %228 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %storemerge.i158, ptr %185, align 4
  %229 = ptrtoint ptr %reply_payload_rcv_len.i134 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %reply_payload_rcv_len.i134, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i158, i32 noundef %230) #4
  %231 = ptrtoint ptr %pdev.i135 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pdev.i135, align 8
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %232, i32 0, i32 44
  %233 = ptrtoint ptr %nvram_dma.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %nvram_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev65.i, i32 noundef %216, ptr noundef nonnull %call.i126.i, i32 noundef %234, i32 noundef 0) #4
  br label %qla4xxx_read_nvram.exit

qla4xxx_read_nvram.exit:                          ; preds = %if.end61.i, %do.end44.i, %do.end33.i, %do.end.i151, %if.end.i140.qla4xxx_read_nvram.exit_crit_edge, %dev_to_shost.exit.i138.qla4xxx_read_nvram.exit_crit_edge
  %rval.1.i160 = phi i32 [ -22, %dev_to_shost.exit.i138.qla4xxx_read_nvram.exit_crit_edge ], [ -16, %do.end.i151 ], [ -22, %do.end33.i ], [ %rval.0.i159, %if.end61.i ], [ -12, %do.end44.i ], [ -22, %if.end.i140.qla4xxx_read_nvram.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvram_dma.i) #4
  br label %cleanup

sw.bb9:                                           ; preds = %dev_to_shost.exit
  %235 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i165

while.cond.i.i165:                                ; preds = %while.body.i.i168.while.cond.i.i165_crit_edge, %sw.bb9
  %dev.addr.0.i.i162 = phi ptr [ %236, %sw.bb9 ], [ %238, %while.body.i.i168.while.cond.i.i165_crit_edge ]
  %call.i.i163 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i162) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %tobool.not.i.i164 = icmp eq i32 %call.i.i163, 0
  br i1 %tobool.not.i.i164, label %while.body.i.i168, label %while.end.i.i170

while.body.i.i168:                                ; preds = %while.cond.i.i165
  %parent.i.i166 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i162, i32 0, i32 1
  %237 = ptrtoint ptr %parent.i.i166 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %parent.i.i166, align 8
  %tobool1.not.i.i167 = icmp eq ptr %238, null
  br i1 %tobool1.not.i.i167, label %while.body.i.i168.dev_to_shost.exit.i178_crit_edge, label %while.body.i.i168.while.cond.i.i165_crit_edge

while.body.i.i168.while.cond.i.i165_crit_edge:    ; preds = %while.body.i.i168
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i165

while.body.i.i168.dev_to_shost.exit.i178_crit_edge: ; preds = %while.body.i.i168
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i178

while.end.i.i170:                                 ; preds = %while.cond.i.i165
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i169 = getelementptr i8, ptr %dev.addr.0.i.i162, i32 -584
  br label %dev_to_shost.exit.i178

dev_to_shost.exit.i178:                           ; preds = %while.end.i.i170, %while.body.i.i168.dev_to_shost.exit.i178_crit_edge
  %retval.0.i.i171 = phi ptr [ %add.ptr.i.i169, %while.end.i.i170 ], [ null, %while.body.i.i168.dev_to_shost.exit.i178_crit_edge ]
  %add.ptr.i101.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i171, i32 1, i32 5, i32 5, i32 1
  %239 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %request, align 4
  %241 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvram_dma.i161) #4
  %243 = ptrtoint ptr %nvram_dma.i161 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -1, ptr %nvram_dma.i161, align 4, !annotation !238
  %reply_payload_rcv_len.i174 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %242, i32 0, i32 1
  %244 = ptrtoint ptr %reply_payload_rcv_len.i174 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %reply_payload_rcv_len.i174, align 4
  %pdev.i175 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i171, i32 1, i32 6
  %245 = ptrtoint ptr %pdev.i175 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pdev.i175, align 8
  %error_state.i.i176 = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 43
  %247 = ptrtoint ptr %error_state.i.i176 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %error_state.i.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i.not.i177 = icmp eq i32 %248, 1
  br i1 %cmp.i.not.i177, label %if.end.i180, label %dev_to_shost.exit.i178.qla4xxx_update_nvram.exit_crit_edge, !prof !239

dev_to_shost.exit.i178.qla4xxx_update_nvram.exit_crit_edge: ; preds = %dev_to_shost.exit.i178
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_update_nvram.exit

if.end.i180:                                      ; preds = %dev_to_shost.exit.i178
  %device.i.i179 = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 8
  %249 = ptrtoint ptr %device.i.i179 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %device.i.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %250)
  %cmp.i102.i = icmp eq i16 %250, 16400
  %251 = zext i16 %250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %250, label %if.end.i180.qla4xxx_update_nvram.exit_crit_edge [
    i16 16434, label %if.end.i180.if.end13.i182_crit_edge
    i16 16418, label %if.end.i180.if.end13.i182_crit_edge398
    i16 16400, label %if.end.i180.if.end13.i182_crit_edge399
  ]

if.end.i180.if.end13.i182_crit_edge399:           ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i182

if.end.i180.if.end13.i182_crit_edge398:           ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i182

if.end.i180.if.end13.i182_crit_edge:              ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i182

if.end.i180.qla4xxx_update_nvram.exit_crit_edge:  ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_update_nvram.exit

if.end13.i182:                                    ; preds = %if.end.i180.if.end13.i182_crit_edge, %if.end.i180.if.end13.i182_crit_edge398, %if.end.i180.if.end13.i182_crit_edge399
  %dpc_flags.i.i181 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i171, i32 1, i32 5, i32 5, i32 1, i32 1
  %252 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %254 = and i32 %253, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.not.i111.i = icmp eq i32 %254, 0
  br i1 %tobool.not.i111.i, label %lor.lhs.false.i.i184, label %if.end13.i182.do.end.i194_crit_edge

if.end13.i182.do.end.i194_crit_edge:              ; preds = %if.end13.i182
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

lor.lhs.false.i.i184:                             ; preds = %if.end13.i182
  %255 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %257 = and i32 %256, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool3.not.i.i183 = icmp eq i32 %257, 0
  br i1 %tobool3.not.i.i183, label %lor.lhs.false4.i.i186, label %lor.lhs.false.i.i184.do.end.i194_crit_edge

lor.lhs.false.i.i184.do.end.i194_crit_edge:       ; preds = %lor.lhs.false.i.i184
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

lor.lhs.false4.i.i186:                            ; preds = %lor.lhs.false.i.i184
  %258 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %260 = and i32 %259, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool7.not.i.i185 = icmp eq i32 %260, 0
  br i1 %tobool7.not.i.i185, label %lor.lhs.false8.i.i188, label %lor.lhs.false4.i.i186.do.end.i194_crit_edge

lor.lhs.false4.i.i186.do.end.i194_crit_edge:      ; preds = %lor.lhs.false4.i.i186
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

lor.lhs.false8.i.i188:                            ; preds = %lor.lhs.false4.i.i186
  %261 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %263 = and i32 %262, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool11.not.i.i187 = icmp eq i32 %263, 0
  br i1 %tobool11.not.i.i187, label %lor.lhs.false12.i.i190, label %lor.lhs.false8.i.i188.do.end.i194_crit_edge

lor.lhs.false8.i.i188.do.end.i194_crit_edge:      ; preds = %lor.lhs.false8.i.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

lor.lhs.false12.i.i190:                           ; preds = %lor.lhs.false8.i.i188
  %264 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %266 = and i32 %265, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool15.not.i.i189 = icmp eq i32 %266, 0
  br i1 %tobool15.not.i.i189, label %ql4xxx_reset_active.exit.i192, label %lor.lhs.false12.i.i190.do.end.i194_crit_edge

lor.lhs.false12.i.i190.do.end.i194_crit_edge:     ; preds = %lor.lhs.false12.i.i190
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

ql4xxx_reset_active.exit.i192:                    ; preds = %lor.lhs.false12.i.i190
  %267 = ptrtoint ptr %dpc_flags.i.i181 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile i32, ptr %dpc_flags.i.i181, align 4
  %269 = and i32 %268, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool15.not.i191 = icmp eq i32 %269, 0
  br i1 %tobool15.not.i191, label %if.end19.i200, label %ql4xxx_reset_active.exit.i192.do.end.i194_crit_edge

ql4xxx_reset_active.exit.i192.do.end.i194_crit_edge: ; preds = %ql4xxx_reset_active.exit.i192
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i194

do.end.i194:                                      ; preds = %ql4xxx_reset_active.exit.i192.do.end.i194_crit_edge, %lor.lhs.false12.i.i190.do.end.i194_crit_edge, %lor.lhs.false8.i.i188.do.end.i194_crit_edge, %lor.lhs.false4.i.i186.do.end.i194_crit_edge, %lor.lhs.false.i.i184.do.end.i194_crit_edge, %if.end13.i182.do.end.i194_crit_edge
  %dev18.i193 = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev18.i193, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #7
  br label %qla4xxx_update_nvram.exit

if.end19.i200:                                    ; preds = %ql4xxx_reset_active.exit.i192
  %arrayidx.i195 = getelementptr %struct.iscsi_bsg_request, ptr %240, i32 1, i32 1
  %270 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %arrayidx.i195, align 1
  %request_payload.i196 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7
  %272 = ptrtoint ptr %request_payload.i196 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %request_payload.i196, align 4
  %add.i197 = add i32 %273, %271
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i197)
  %cmp.i198 = icmp ugt i32 %add.i197, 512
  %or.cond.i199 = select i1 %cmp.i102.i, i1 %cmp.i198, i1 false
  br i1 %or.cond.i199, label %if.end19.i200.do.end33.i207_crit_edge, label %lor.lhs.false22.i201

if.end19.i200.do.end33.i207_crit_edge:            ; preds = %if.end19.i200
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i207

lor.lhs.false22.i201:                             ; preds = %if.end19.i200
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %250)
  %cmp.i118.not.i = icmp eq i16 %250, 16418
  br i1 %cmp.i118.not.i, label %land.lhs.true28.i205, label %lor.lhs.false25.i203

lor.lhs.false25.i203:                             ; preds = %lor.lhs.false22.i201
  call void @__sanitizer_cov_trace_const_cmp2(i16 16434, i16 %250)
  %cmp.i122.i = icmp eq i16 %250, 16434
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i197)
  %cmp29.i202 = icmp ugt i32 %add.i197, 2048
  %or.cond100.i = select i1 %cmp.i122.i, i1 %cmp29.i202, i1 false
  br i1 %or.cond100.i, label %lor.lhs.false25.i203.do.end33.i207_crit_edge, label %lor.lhs.false25.i203.if.end36.i210_crit_edge

lor.lhs.false25.i203.if.end36.i210_crit_edge:     ; preds = %lor.lhs.false25.i203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i210

lor.lhs.false25.i203.do.end33.i207_crit_edge:     ; preds = %lor.lhs.false25.i203
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i207

land.lhs.true28.i205:                             ; preds = %lor.lhs.false22.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i197)
  %cmp29.old.i204 = icmp ugt i32 %add.i197, 2048
  br i1 %cmp29.old.i204, label %land.lhs.true28.i205.do.end33.i207_crit_edge, label %land.lhs.true28.i205.if.end36.i210_crit_edge

land.lhs.true28.i205.if.end36.i210_crit_edge:     ; preds = %land.lhs.true28.i205
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i210

land.lhs.true28.i205.do.end33.i207_crit_edge:     ; preds = %land.lhs.true28.i205
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33.i207

do.end33.i207:                                    ; preds = %land.lhs.true28.i205.do.end33.i207_crit_edge, %lor.lhs.false25.i203.do.end33.i207_crit_edge, %if.end19.i200.do.end33.i207_crit_edge
  %dev35.i206 = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev35.i206, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.43, i32 noundef %271, i32 noundef %273) #7
  br label %qla4xxx_update_nvram.exit

if.end36.i210:                                    ; preds = %land.lhs.true28.i205.if.end36.i210_crit_edge, %lor.lhs.false25.i203.if.end36.i210_crit_edge
  %dev38.i208 = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  %call.i124.i = call ptr @dma_alloc_attrs(ptr noundef %dev38.i208, i32 noundef %273, ptr noundef nonnull %nvram_dma.i161, i32 noundef 3264, i32 noundef 0) #4
  %tobool40.not.i209 = icmp eq ptr %call.i124.i, null
  br i1 %tobool40.not.i209, label %do.end44.i212, label %if.end47.i215

do.end44.i212:                                    ; preds = %if.end36.i210
  call void @__sanitizer_cov_trace_pc() #6
  %274 = ptrtoint ptr %pdev.i175 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pdev.i175, align 8
  %dev46.i211 = getelementptr inbounds %struct.pci_dev, ptr %275, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev46.i211, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.43) #7
  br label %qla4xxx_update_nvram.exit

if.end47.i215:                                    ; preds = %if.end36.i210
  %sg_list.i213 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 2
  %276 = ptrtoint ptr %sg_list.i213 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %sg_list.i213, align 4
  %sg_cnt.i214 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 7, i32 1
  %278 = ptrtoint ptr %sg_cnt.i214 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %sg_cnt.i214, align 4
  %call50.i = call i32 @sg_copy_to_buffer(ptr noundef %277, i32 noundef %279, ptr noundef nonnull %call.i124.i, i32 noundef %273) #4
  %280 = ptrtoint ptr %nvram_dma.i161 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nvram_dma.i161, align 4
  %call51.i = call i32 @qla4xxx_set_nvram(ptr noundef %add.ptr.i101.i, i32 noundef %281, i32 noundef %271, i32 noundef %273) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end47.i215.if.end60.i_crit_edge, label %do.end56.i

if.end47.i215.if.end60.i_crit_edge:               ; preds = %if.end47.i215
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

do.end56.i:                                       ; preds = %if.end47.i215
  call void @__sanitizer_cov_trace_pc() #6
  %282 = ptrtoint ptr %pdev.i175 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pdev.i175, align 8
  %dev58.i = getelementptr inbounds %struct.pci_dev, ptr %283, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev58.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43) #7
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end56.i, %if.end47.i215.if.end60.i_crit_edge
  %storemerge.i216 = phi i32 [ 458752, %do.end56.i ], [ 0, %if.end47.i215.if.end60.i_crit_edge ]
  %rval.0.i217 = phi i32 [ -5, %do.end56.i ], [ 0, %if.end47.i215.if.end60.i_crit_edge ]
  %284 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %storemerge.i216, ptr %242, align 4
  %285 = ptrtoint ptr %reply_payload_rcv_len.i174 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %reply_payload_rcv_len.i174, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i216, i32 noundef %286) #4
  %287 = ptrtoint ptr %pdev.i175 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pdev.i175, align 8
  %dev64.i = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 44
  %289 = ptrtoint ptr %nvram_dma.i161 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %nvram_dma.i161, align 4
  call void @dma_free_attrs(ptr noundef %dev64.i, i32 noundef %273, ptr noundef nonnull %call.i124.i, i32 noundef %290, i32 noundef 0) #4
  br label %qla4xxx_update_nvram.exit

qla4xxx_update_nvram.exit:                        ; preds = %if.end60.i, %do.end44.i212, %do.end33.i207, %do.end.i194, %if.end.i180.qla4xxx_update_nvram.exit_crit_edge, %dev_to_shost.exit.i178.qla4xxx_update_nvram.exit_crit_edge
  %rval.1.i218 = phi i32 [ -22, %dev_to_shost.exit.i178.qla4xxx_update_nvram.exit_crit_edge ], [ -16, %do.end.i194 ], [ -22, %do.end33.i207 ], [ %rval.0.i217, %if.end60.i ], [ -12, %do.end44.i212 ], [ -22, %if.end.i180.qla4xxx_update_nvram.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvram_dma.i161) #4
  br label %cleanup

sw.bb11:                                          ; preds = %dev_to_shost.exit
  %291 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i222

while.cond.i.i222:                                ; preds = %while.body.i.i225.while.cond.i.i222_crit_edge, %sw.bb11
  %dev.addr.0.i.i219 = phi ptr [ %292, %sw.bb11 ], [ %294, %while.body.i.i225.while.cond.i.i222_crit_edge ]
  %call.i.i220 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i219) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i220)
  %tobool.not.i.i221 = icmp eq i32 %call.i.i220, 0
  br i1 %tobool.not.i.i221, label %while.body.i.i225, label %while.end.i.i227

while.body.i.i225:                                ; preds = %while.cond.i.i222
  %parent.i.i223 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i219, i32 0, i32 1
  %293 = ptrtoint ptr %parent.i.i223 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %parent.i.i223, align 8
  %tobool1.not.i.i224 = icmp eq ptr %294, null
  br i1 %tobool1.not.i.i224, label %while.body.i.i225.dev_to_shost.exit.i235_crit_edge, label %while.body.i.i225.while.cond.i.i222_crit_edge

while.body.i.i225.while.cond.i.i222_crit_edge:    ; preds = %while.body.i.i225
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i222

while.body.i.i225.dev_to_shost.exit.i235_crit_edge: ; preds = %while.body.i.i225
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i235

while.end.i.i227:                                 ; preds = %while.cond.i.i222
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i226 = getelementptr i8, ptr %dev.addr.0.i.i219, i32 -584
  br label %dev_to_shost.exit.i235

dev_to_shost.exit.i235:                           ; preds = %while.end.i.i227, %while.body.i.i225.dev_to_shost.exit.i235_crit_edge
  %retval.0.i.i228 = phi ptr [ %add.ptr.i.i226, %while.end.i.i227 ], [ null, %while.body.i.i225.dev_to_shost.exit.i235_crit_edge ]
  %add.ptr.i48.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i228, i32 1, i32 5, i32 5, i32 1
  %295 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %request, align 4
  %297 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %reply, align 4
  %reply_payload_rcv_len.i231 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %reply_payload_rcv_len.i231 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %reply_payload_rcv_len.i231, align 4
  %pdev.i232 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i228, i32 1, i32 6
  %300 = ptrtoint ptr %pdev.i232 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %pdev.i232, align 8
  %error_state.i.i233 = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 43
  %302 = ptrtoint ptr %error_state.i.i233 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %error_state.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %303)
  %cmp.i.not.i234 = icmp eq i32 %303, 1
  br i1 %cmp.i.not.i234, label %if.end.i237, label %dev_to_shost.exit.i235.cleanup_crit_edge, !prof !239

dev_to_shost.exit.i235.cleanup_crit_edge:         ; preds = %dev_to_shost.exit.i235
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i237:                                      ; preds = %dev_to_shost.exit.i235
  %device.i.i236 = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 8
  %304 = ptrtoint ptr %device.i.i236 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %device.i.i236, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %305)
  %cmp.i49.not.i = icmp eq i16 %305, 16400
  br i1 %cmp.i49.not.i, label %if.end.i237.cleanup_crit_edge, label %if.end8.i239

if.end.i237.cleanup_crit_edge:                    ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i239:                                     ; preds = %if.end.i237
  %dpc_flags.i.i238 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i228, i32 1, i32 5, i32 5, i32 1, i32 1
  %306 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %308 = and i32 %307, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.not.i50.i = icmp eq i32 %308, 0
  br i1 %tobool.not.i50.i, label %lor.lhs.false.i.i241, label %if.end8.i239.do.end.i251_crit_edge

if.end8.i239.do.end.i251_crit_edge:               ; preds = %if.end8.i239
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

lor.lhs.false.i.i241:                             ; preds = %if.end8.i239
  %309 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %311 = and i32 %310, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool3.not.i.i240 = icmp eq i32 %311, 0
  br i1 %tobool3.not.i.i240, label %lor.lhs.false4.i.i243, label %lor.lhs.false.i.i241.do.end.i251_crit_edge

lor.lhs.false.i.i241.do.end.i251_crit_edge:       ; preds = %lor.lhs.false.i.i241
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

lor.lhs.false4.i.i243:                            ; preds = %lor.lhs.false.i.i241
  %312 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %314 = and i32 %313, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool7.not.i.i242 = icmp eq i32 %314, 0
  br i1 %tobool7.not.i.i242, label %lor.lhs.false8.i.i245, label %lor.lhs.false4.i.i243.do.end.i251_crit_edge

lor.lhs.false4.i.i243.do.end.i251_crit_edge:      ; preds = %lor.lhs.false4.i.i243
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

lor.lhs.false8.i.i245:                            ; preds = %lor.lhs.false4.i.i243
  %315 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %317 = and i32 %316, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool11.not.i.i244 = icmp eq i32 %317, 0
  br i1 %tobool11.not.i.i244, label %lor.lhs.false12.i.i247, label %lor.lhs.false8.i.i245.do.end.i251_crit_edge

lor.lhs.false8.i.i245.do.end.i251_crit_edge:      ; preds = %lor.lhs.false8.i.i245
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

lor.lhs.false12.i.i247:                           ; preds = %lor.lhs.false8.i.i245
  %318 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %320 = and i32 %319, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool15.not.i.i246 = icmp eq i32 %320, 0
  br i1 %tobool15.not.i.i246, label %ql4xxx_reset_active.exit.i249, label %lor.lhs.false12.i.i247.do.end.i251_crit_edge

lor.lhs.false12.i.i247.do.end.i251_crit_edge:     ; preds = %lor.lhs.false12.i.i247
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

ql4xxx_reset_active.exit.i249:                    ; preds = %lor.lhs.false12.i.i247
  %321 = ptrtoint ptr %dpc_flags.i.i238 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load volatile i32, ptr %dpc_flags.i.i238, align 4
  %323 = and i32 %322, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool10.not.i248 = icmp eq i32 %323, 0
  br i1 %tobool10.not.i248, label %if.end14.i255, label %ql4xxx_reset_active.exit.i249.do.end.i251_crit_edge

ql4xxx_reset_active.exit.i249.do.end.i251_crit_edge: ; preds = %ql4xxx_reset_active.exit.i249
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i251

do.end.i251:                                      ; preds = %ql4xxx_reset_active.exit.i249.do.end.i251_crit_edge, %lor.lhs.false12.i.i247.do.end.i251_crit_edge, %lor.lhs.false8.i.i245.do.end.i251_crit_edge, %lor.lhs.false4.i.i243.do.end.i251_crit_edge, %lor.lhs.false.i.i241.do.end.i251_crit_edge, %if.end8.i239.do.end.i251_crit_edge
  %dev13.i250 = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13.i250, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.51) #7
  br label %cleanup

if.end14.i255:                                    ; preds = %ql4xxx_reset_active.exit.i249
  %vendor_cmd.i252 = getelementptr inbounds %struct.iscsi_bsg_request, ptr %296, i32 1
  %arrayidx.i253 = getelementptr %struct.iscsi_bsg_request, ptr %296, i32 1, i32 1
  %324 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %arrayidx.i253, align 1
  %arrayidx17.i = getelementptr [0 x i32], ptr %vendor_cmd.i252, i32 0, i32 2
  %326 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %326, i32 4)
  %327 = load i32, ptr %arrayidx17.i, align 1
  %arrayidx20.i = getelementptr %struct.iscsi_bsg_request, ptr %296, i32 2
  %328 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %329 = load i32, ptr %arrayidx20.i, align 1
  %call21.i = tail call i32 @qla4xxx_restore_factory_defaults(ptr noundef %add.ptr.i48.i, i32 noundef %325, i32 noundef %327, i32 noundef %329) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i254 = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i254, label %if.end14.i255.if.end30.i_crit_edge, label %do.end26.i257

if.end14.i255.if.end30.i_crit_edge:               ; preds = %if.end14.i255
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i

do.end26.i257:                                    ; preds = %if.end14.i255
  call void @__sanitizer_cov_trace_pc() #6
  %330 = ptrtoint ptr %pdev.i232 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %pdev.i232, align 8
  %dev28.i256 = getelementptr inbounds %struct.pci_dev, ptr %331, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev28.i256, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end26.i257, %if.end14.i255.if.end30.i_crit_edge
  %storemerge.i258 = phi i32 [ 458752, %do.end26.i257 ], [ 0, %if.end14.i255.if.end30.i_crit_edge ]
  %rval.0.i259 = phi i32 [ -5, %do.end26.i257 ], [ 0, %if.end14.i255.if.end30.i_crit_edge ]
  %332 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %storemerge.i258, ptr %298, align 4
  %333 = ptrtoint ptr %reply_payload_rcv_len.i231 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %reply_payload_rcv_len.i231, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i258, i32 noundef %334) #4
  br label %cleanup

sw.bb13:                                          ; preds = %dev_to_shost.exit
  %335 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i264

while.cond.i.i264:                                ; preds = %while.body.i.i267.while.cond.i.i264_crit_edge, %sw.bb13
  %dev.addr.0.i.i261 = phi ptr [ %336, %sw.bb13 ], [ %338, %while.body.i.i267.while.cond.i.i264_crit_edge ]
  %call.i.i262 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i261) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262)
  %tobool.not.i.i263 = icmp eq i32 %call.i.i262, 0
  br i1 %tobool.not.i.i263, label %while.body.i.i267, label %while.end.i.i269

while.body.i.i267:                                ; preds = %while.cond.i.i264
  %parent.i.i265 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i261, i32 0, i32 1
  %337 = ptrtoint ptr %parent.i.i265 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %parent.i.i265, align 8
  %tobool1.not.i.i266 = icmp eq ptr %338, null
  br i1 %tobool1.not.i.i266, label %while.body.i.i267.dev_to_shost.exit.i278_crit_edge, label %while.body.i.i267.while.cond.i.i264_crit_edge

while.body.i.i267.while.cond.i.i264_crit_edge:    ; preds = %while.body.i.i267
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i264

while.body.i.i267.dev_to_shost.exit.i278_crit_edge: ; preds = %while.body.i.i267
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i278

while.end.i.i269:                                 ; preds = %while.cond.i.i264
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i268 = getelementptr i8, ptr %dev.addr.0.i.i261, i32 -584
  br label %dev_to_shost.exit.i278

dev_to_shost.exit.i278:                           ; preds = %while.end.i.i269, %while.body.i.i267.dev_to_shost.exit.i278_crit_edge
  %retval.0.i.i270 = phi ptr [ %add.ptr.i.i268, %while.end.i.i269 ], [ null, %while.body.i.i267.dev_to_shost.exit.i278_crit_edge ]
  %add.ptr.i79.i271 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i270, i32 1, i32 5, i32 5, i32 1
  %339 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %request, align 4
  %341 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acb_dma.i) #4
  %343 = ptrtoint ptr %acb_dma.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 -1, ptr %acb_dma.i, align 4, !annotation !238
  %reply_payload_rcv_len.i274 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %342, i32 0, i32 1
  %344 = ptrtoint ptr %reply_payload_rcv_len.i274 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 0, ptr %reply_payload_rcv_len.i274, align 4
  %pdev.i275 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i270, i32 1, i32 6
  %345 = ptrtoint ptr %pdev.i275 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %pdev.i275, align 8
  %error_state.i.i276 = getelementptr inbounds %struct.pci_dev, ptr %346, i32 0, i32 43
  %347 = ptrtoint ptr %error_state.i.i276 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %error_state.i.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %348)
  %cmp.i.not.i277 = icmp eq i32 %348, 1
  br i1 %cmp.i.not.i277, label %if.end.i280, label %dev_to_shost.exit.i278.qla4xxx_bsg_get_acb.exit_crit_edge, !prof !239

dev_to_shost.exit.i278.qla4xxx_bsg_get_acb.exit_crit_edge: ; preds = %dev_to_shost.exit.i278
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_bsg_get_acb.exit

if.end.i280:                                      ; preds = %dev_to_shost.exit.i278
  %device.i.i279 = getelementptr inbounds %struct.pci_dev, ptr %346, i32 0, i32 8
  %349 = ptrtoint ptr %device.i.i279 to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %device.i.i279, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %350)
  %cmp.i80.not.i = icmp eq i16 %350, 16400
  br i1 %cmp.i80.not.i, label %if.end.i280.qla4xxx_bsg_get_acb.exit_crit_edge, label %if.end8.i282

if.end.i280.qla4xxx_bsg_get_acb.exit_crit_edge:   ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_bsg_get_acb.exit

if.end8.i282:                                     ; preds = %if.end.i280
  %dpc_flags.i.i281 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i270, i32 1, i32 5, i32 5, i32 1, i32 1
  %351 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %353 = and i32 %352, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool.not.i81.i = icmp eq i32 %353, 0
  br i1 %tobool.not.i81.i, label %lor.lhs.false.i.i284, label %if.end8.i282.do.end.i294_crit_edge

if.end8.i282.do.end.i294_crit_edge:               ; preds = %if.end8.i282
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

lor.lhs.false.i.i284:                             ; preds = %if.end8.i282
  %354 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %356 = and i32 %355, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool3.not.i.i283 = icmp eq i32 %356, 0
  br i1 %tobool3.not.i.i283, label %lor.lhs.false4.i.i286, label %lor.lhs.false.i.i284.do.end.i294_crit_edge

lor.lhs.false.i.i284.do.end.i294_crit_edge:       ; preds = %lor.lhs.false.i.i284
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

lor.lhs.false4.i.i286:                            ; preds = %lor.lhs.false.i.i284
  %357 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %359 = and i32 %358, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool7.not.i.i285 = icmp eq i32 %359, 0
  br i1 %tobool7.not.i.i285, label %lor.lhs.false8.i.i288, label %lor.lhs.false4.i.i286.do.end.i294_crit_edge

lor.lhs.false4.i.i286.do.end.i294_crit_edge:      ; preds = %lor.lhs.false4.i.i286
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

lor.lhs.false8.i.i288:                            ; preds = %lor.lhs.false4.i.i286
  %360 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %362 = and i32 %361, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %tobool11.not.i.i287 = icmp eq i32 %362, 0
  br i1 %tobool11.not.i.i287, label %lor.lhs.false12.i.i290, label %lor.lhs.false8.i.i288.do.end.i294_crit_edge

lor.lhs.false8.i.i288.do.end.i294_crit_edge:      ; preds = %lor.lhs.false8.i.i288
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

lor.lhs.false12.i.i290:                           ; preds = %lor.lhs.false8.i.i288
  %363 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %365 = and i32 %364, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool15.not.i.i289 = icmp eq i32 %365, 0
  br i1 %tobool15.not.i.i289, label %ql4xxx_reset_active.exit.i292, label %lor.lhs.false12.i.i290.do.end.i294_crit_edge

lor.lhs.false12.i.i290.do.end.i294_crit_edge:     ; preds = %lor.lhs.false12.i.i290
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

ql4xxx_reset_active.exit.i292:                    ; preds = %lor.lhs.false12.i.i290
  %366 = ptrtoint ptr %dpc_flags.i.i281 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load volatile i32, ptr %dpc_flags.i.i281, align 4
  %368 = and i32 %367, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool10.not.i291 = icmp eq i32 %368, 0
  br i1 %tobool10.not.i291, label %if.end14.i299, label %ql4xxx_reset_active.exit.i292.do.end.i294_crit_edge

ql4xxx_reset_active.exit.i292.do.end.i294_crit_edge: ; preds = %ql4xxx_reset_active.exit.i292
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i294

do.end.i294:                                      ; preds = %ql4xxx_reset_active.exit.i292.do.end.i294_crit_edge, %lor.lhs.false12.i.i290.do.end.i294_crit_edge, %lor.lhs.false8.i.i288.do.end.i294_crit_edge, %lor.lhs.false4.i.i286.do.end.i294_crit_edge, %lor.lhs.false.i.i284.do.end.i294_crit_edge, %if.end8.i282.do.end.i294_crit_edge
  %dev13.i293 = getelementptr inbounds %struct.pci_dev, ptr %346, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13.i293, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #7
  br label %qla4xxx_bsg_get_acb.exit

if.end14.i299:                                    ; preds = %ql4xxx_reset_active.exit.i292
  %arrayidx.i295 = getelementptr %struct.iscsi_bsg_request, ptr %340, i32 1, i32 1
  %369 = ptrtoint ptr %arrayidx.i295 to i32
  call void @__asan_loadN_noabort(i32 %369, i32 4)
  %370 = load i32, ptr %arrayidx.i295, align 1
  %reply_payload.i296 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8
  %371 = ptrtoint ptr %reply_payload.i296 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %reply_payload.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %372)
  %cmp.i297 = icmp ult i32 %372, 768
  %dev20.i298 = getelementptr inbounds %struct.pci_dev, ptr %346, i32 0, i32 44
  br i1 %cmp.i297, label %do.end18.i300, label %if.end21.i

do.end18.i300:                                    ; preds = %if.end14.i299
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev20.i298, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef %372) #7
  br label %qla4xxx_bsg_get_acb.exit

if.end21.i:                                       ; preds = %if.end14.i299
  %call.i82.i = call ptr @dma_alloc_attrs(ptr noundef %dev20.i298, i32 noundef %372, ptr noundef nonnull %acb_dma.i, i32 noundef 3264, i32 noundef 0) #4
  %tobool25.not.i301 = icmp eq ptr %call.i82.i, null
  br i1 %tobool25.not.i301, label %do.end29.i303, label %if.end32.i304

do.end29.i303:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %373 = ptrtoint ptr %pdev.i275 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %pdev.i275, align 8
  %dev31.i302 = getelementptr inbounds %struct.pci_dev, ptr %374, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev31.i302, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54) #7
  br label %qla4xxx_bsg_get_acb.exit

if.end32.i304:                                    ; preds = %if.end21.i
  %375 = ptrtoint ptr %acb_dma.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %acb_dma.i, align 4
  %call33.i = call i32 @qla4xxx_get_acb(ptr noundef %add.ptr.i79.i271, i32 noundef %376, i32 noundef %370, i32 noundef %372) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else.i307, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i304
  call void @__sanitizer_cov_trace_pc() #6
  %377 = ptrtoint ptr %pdev.i275 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %pdev.i275, align 8
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %378, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev40.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.54) #7
  br label %if.end46.i

if.else.i307:                                     ; preds = %if.end32.i304
  call void @__sanitizer_cov_trace_pc() #6
  %sg_list.i305 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 2
  %379 = ptrtoint ptr %sg_list.i305 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %sg_list.i305, align 4
  %sg_cnt.i306 = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 8, i32 1
  %381 = ptrtoint ptr %sg_cnt.i306 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %sg_cnt.i306, align 4
  %call43.i = call i32 @sg_copy_from_buffer(ptr noundef %380, i32 noundef %382, ptr noundef nonnull %call.i82.i, i32 noundef %372) #4
  %383 = ptrtoint ptr %reply_payload_rcv_len.i274 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %call43.i, ptr %reply_payload_rcv_len.i274, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i307, %do.end38.i
  %storemerge.i308 = phi i32 [ 0, %if.else.i307 ], [ 458752, %do.end38.i ]
  %rval.0.i309 = phi i32 [ 0, %if.else.i307 ], [ -5, %do.end38.i ]
  %384 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %storemerge.i308, ptr %342, align 4
  %385 = ptrtoint ptr %reply_payload_rcv_len.i274 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %reply_payload_rcv_len.i274, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %storemerge.i308, i32 noundef %386) #4
  %387 = ptrtoint ptr %pdev.i275 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %pdev.i275, align 8
  %dev50.i = getelementptr inbounds %struct.pci_dev, ptr %388, i32 0, i32 44
  %389 = ptrtoint ptr %acb_dma.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %acb_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev50.i, i32 noundef %372, ptr noundef nonnull %call.i82.i, i32 noundef %390, i32 noundef 0) #4
  br label %qla4xxx_bsg_get_acb.exit

qla4xxx_bsg_get_acb.exit:                         ; preds = %if.end46.i, %do.end29.i303, %do.end18.i300, %do.end.i294, %if.end.i280.qla4xxx_bsg_get_acb.exit_crit_edge, %dev_to_shost.exit.i278.qla4xxx_bsg_get_acb.exit_crit_edge
  %rval.1.i310 = phi i32 [ -22, %dev_to_shost.exit.i278.qla4xxx_bsg_get_acb.exit_crit_edge ], [ -22, %if.end.i280.qla4xxx_bsg_get_acb.exit_crit_edge ], [ -16, %do.end.i294 ], [ -22, %do.end18.i300 ], [ %rval.0.i309, %if.end46.i ], [ -12, %do.end29.i303 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acb_dma.i) #4
  br label %cleanup

sw.bb15:                                          ; preds = %dev_to_shost.exit
  %391 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i314

while.cond.i.i314:                                ; preds = %while.body.i.i317.while.cond.i.i314_crit_edge, %sw.bb15
  %dev.addr.0.i.i311 = phi ptr [ %392, %sw.bb15 ], [ %394, %while.body.i.i317.while.cond.i.i314_crit_edge ]
  %call.i.i312 = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i311) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i312)
  %tobool.not.i.i313 = icmp eq i32 %call.i.i312, 0
  br i1 %tobool.not.i.i313, label %while.body.i.i317, label %while.end.i.i319

while.body.i.i317:                                ; preds = %while.cond.i.i314
  %parent.i.i315 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i311, i32 0, i32 1
  %393 = ptrtoint ptr %parent.i.i315 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %parent.i.i315, align 8
  %tobool1.not.i.i316 = icmp eq ptr %394, null
  br i1 %tobool1.not.i.i316, label %while.body.i.i317.dev_to_shost.exit.i323_crit_edge, label %while.body.i.i317.while.cond.i.i314_crit_edge

while.body.i.i317.while.cond.i.i314_crit_edge:    ; preds = %while.body.i.i317
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i314

while.body.i.i317.dev_to_shost.exit.i323_crit_edge: ; preds = %while.body.i.i317
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i323

while.end.i.i319:                                 ; preds = %while.cond.i.i314
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i318 = getelementptr i8, ptr %dev.addr.0.i.i311, i32 -584
  br label %dev_to_shost.exit.i323

dev_to_shost.exit.i323:                           ; preds = %while.end.i.i319, %while.body.i.i317.dev_to_shost.exit.i323_crit_edge
  %retval.0.i.i320 = phi ptr [ %add.ptr.i.i318, %while.end.i.i319 ], [ null, %while.body.i.i317.dev_to_shost.exit.i323_crit_edge ]
  %395 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %request, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %397 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %397)
  %cmp.i322 = icmp eq i32 %397, 2
  br i1 %cmp.i322, label %do.end.i325, label %dev_to_shost.exit.i323.do.end5.i_crit_edge

dev_to_shost.exit.i323.do.end5.i_crit_edge:       ; preds = %dev_to_shost.exit.i323
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.end.i325:                                      ; preds = %dev_to_shost.exit.i323
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i324 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i320, i32 1, i32 6
  %398 = ptrtoint ptr %pdev.i324 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %pdev.i324, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %399, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev3.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #7
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i325, %dev_to_shost.exit.i323.do.end5.i_crit_edge
  %arrayidx.i326 = getelementptr %struct.iscsi_bsg_request, ptr %396, i32 1, i32 1
  %400 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_loadN_noabort(i32 %400, i32 4)
  %401 = load i32, ptr %arrayidx.i326, align 1
  %402 = zext i32 %401 to i64
  call void @__sanitizer_cov_trace_switch(i64 %402, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %401, label %do.end26.i333 [
    i32 117, label %if.then7.i
    i32 293, label %do.end5.i.if.then22.i_crit_edge
    i32 294, label %do.end5.i.if.then22.i_crit_edge400
  ]

do.end5.i.if.then22.i_crit_edge400:               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

do.end5.i.if.then22.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

if.then7.i:                                       ; preds = %do.end5.i
  %vendor_cmd.i327 = getelementptr inbounds %struct.iscsi_bsg_request, ptr %396, i32 1
  %arrayidx10.i = getelementptr [0 x i32], ptr %vendor_cmd.i327, i32 0, i32 2
  %403 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %403, i32 4)
  %404 = load i32, ptr %arrayidx10.i, align 1
  %405 = zext i32 %404 to i64
  call void @__sanitizer_cov_trace_switch(i64 %405, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %404, label %do.end14.i331 [
    i32 2, label %if.then7.i.sw.bb.i_crit_edge
    i32 3, label %if.then7.i.sw.bb.i_crit_edge401
    i32 4, label %if.then7.i.sw.bb.i_crit_edge402
    i32 5, label %if.then7.i.sw.bb.i_crit_edge403
    i32 6, label %if.then7.i.sw.bb.i_crit_edge404
    i32 9, label %if.then7.i.sw.bb.i_crit_edge405
    i32 12, label %if.then7.i.sw.bb.i_crit_edge406
    i32 13, label %if.then7.i.sw.bb.i_crit_edge407
    i32 7, label %if.then7.i.sw.bb11.i_crit_edge
    i32 8, label %if.then7.i.sw.bb11.i_crit_edge408
  ]

if.then7.i.sw.bb11.i_crit_edge408:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11.i

if.then7.i.sw.bb11.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11.i

if.then7.i.sw.bb.i_crit_edge407:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge406:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge405:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge404:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge403:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge402:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge401:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then7.i.sw.bb.i_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then7.i.sw.bb.i_crit_edge, %if.then7.i.sw.bb.i_crit_edge401, %if.then7.i.sw.bb.i_crit_edge402, %if.then7.i.sw.bb.i_crit_edge403, %if.then7.i.sw.bb.i_crit_edge404, %if.then7.i.sw.bb.i_crit_edge405, %if.then7.i.sw.bb.i_crit_edge406, %if.then7.i.sw.bb.i_crit_edge407
  tail call fastcc void @ql4xxx_execute_diag_cmd(ptr noundef %bsg_job) #4
  br label %cleanup

sw.bb11.i:                                        ; preds = %if.then7.i.sw.bb11.i_crit_edge, %if.then7.i.sw.bb11.i_crit_edge408
  %406 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %sw.bb11.i
  %dev.addr.0.i.i.i = phi ptr [ %407, %sw.bb11.i ], [ %409, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %call.i.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i, label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %408 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %parent.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %409, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.dev_to_shost.exit.i.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i.i

while.body.i.i.i.dev_to_shost.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %dev.addr.0.i.i.i, i32 -584
  br label %dev_to_shost.exit.i.i

dev_to_shost.exit.i.i:                            ; preds = %while.end.i.i.i, %while.body.i.i.i.dev_to_shost.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %while.end.i.i.i ], [ null, %while.body.i.i.i.dev_to_shost.exit.i.i_crit_edge ]
  %add.ptr.i165.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 5, i32 5, i32 1
  %410 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %request, align 4
  %412 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd.i.i) #4
  %414 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 1
  %415 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 2
  %416 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 3
  %417 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 4
  %418 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 5
  %419 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 6
  %420 = getelementptr inbounds [8 x i32], ptr %mbox_cmd.i.i, i32 0, i32 7
  %421 = call ptr @memset(ptr %mbox_cmd.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts.i.i) #4
  %422 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 1
  %423 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 2
  %424 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 3
  %425 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 4
  %426 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 5
  %427 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 6
  %428 = getelementptr inbounds [8 x i32], ptr %mbox_sts.i.i, i32 0, i32 7
  %429 = call ptr @memset(ptr %mbox_sts.i.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %430 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %430)
  %cmp.i.i = icmp eq i32 %430, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %dev_to_shost.exit.i.i.do.end5.i.i_crit_edge

dev_to_shost.exit.i.i.do.end5.i.i_crit_edge:      ; preds = %dev_to_shost.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %dev_to_shost.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 6
  %431 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %pdev.i.i, align 8
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %432, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev3.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.88) #7
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %dev_to_shost.exit.i.i.do.end5.i.i_crit_edge
  %reply_payload_rcv_len.i.i = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %413, i32 0, i32 1
  %433 = ptrtoint ptr %reply_payload_rcv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 0, ptr %reply_payload_rcv_len.i.i, align 4
  %434 = ptrtoint ptr %add.ptr.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load volatile i32, ptr %add.ptr.i165.i.i, align 4
  %436 = and i32 %435, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool.not.i43.i = icmp eq i32 %436, 0
  br i1 %tobool.not.i43.i, label %if.end13.i.i, label %do.end5.i.i.do.body109.sink.split.sink.split.i.i_crit_edge

do.end5.i.i.do.body109.sink.split.sink.split.i.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.sink.split.sink.split.i.i

if.end13.i.i:                                     ; preds = %do.end5.i.i
  %dpc_flags.i.i328 = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 5, i32 5, i32 1, i32 1
  %437 = ptrtoint ptr %dpc_flags.i.i328 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load volatile i32, ptr %dpc_flags.i.i328, align 4
  %439 = and i32 %438, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool15.not.i.i329 = icmp eq i32 %439, 0
  br i1 %tobool15.not.i.i329, label %if.end23.i.i, label %if.end13.i.i.do.body109.sink.split.sink.split.i.i_crit_edge

if.end13.i.i.do.body109.sink.split.sink.split.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.sink.split.sink.split.i.i

if.end23.i.i:                                     ; preds = %if.end13.i.i
  %arrayidx.i.i = getelementptr %struct.iscsi_bsg_request, ptr %411, i32 1, i32 1
  %440 = call ptr @memcpy(ptr %mbox_cmd.i.i, ptr %arrayidx.i.i, i32 32)
  %pdev.i.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 6
  %441 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %pdev.i.i.i, align 8
  %device.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %442, i32 0, i32 8
  %443 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %device.i.i.i, align 2
  %445 = zext i16 %444 to i64
  call void @__sanitizer_cov_trace_switch(i64 %445, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %444, label %if.end23.i.i.do.body41.i.i_crit_edge [
    i16 -32718, label %if.end23.i.i.if.then28.i.i_crit_edge
    i16 -32702, label %if.end23.i.i.if.then28.i.i_crit_edge409
  ]

if.end23.i.i.if.then28.i.i_crit_edge409:          ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28.i.i

if.end23.i.i.if.then28.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28.i.i

if.end23.i.i.do.body41.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41.i.i

if.then28.i.i:                                    ; preds = %if.end23.i.i.if.then28.i.i_crit_edge, %if.end23.i.i.if.then28.i.i_crit_edge409
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i.i.i) #4
  %446 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 0, ptr %config.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %447 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %447)
  %cmp.i170.i.i = icmp eq i32 %447, 2
  br i1 %cmp.i170.i.i, label %do.end.i.i.i, label %if.then28.i.i.do.end3.i.i.i_crit_edge

if.then28.i.i.do.end3.i.i.i_crit_edge:            ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i.i.i

do.end.i.i.i:                                     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %448 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %449, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.100) #7
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i.i.i, %if.then28.i.i.do.end3.i.i.i_crit_edge
  %call.i172.i.i = call i32 @qla4_83xx_get_port_config(ptr noundef %add.ptr.i165.i.i, ptr noundef nonnull %config.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %call.i172.i.i, 0
  br i1 %cmp4.not.i.i.i, label %do.body7.i.i.i, label %do.end3.i.i.i.do.body54.i.i.i_crit_edge

do.end3.i.i.i.do.body54.i.i.i_crit_edge:          ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54.i.i.i

do.body7.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %450 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %450)
  %cmp8.i.i.i = icmp eq i32 %450, 2
  br i1 %cmp8.i.i.i, label %do.end12.i.i.i, label %do.body7.i.i.i.do.end17.i.i.i_crit_edge

do.body7.i.i.i.do.end17.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17.i.i.i

do.end12.i.i.i:                                   ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %451 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %pdev.i.i.i, align 8
  %dev14.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %452, i32 0, i32 44
  %453 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %config.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev14.i.i.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %454) #7
  br label %do.end17.i.i.i

do.end17.i.i.i:                                   ; preds = %do.end12.i.i.i, %do.body7.i.i.i.do.end17.i.i.i_crit_edge
  %455 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %config.i.i.i, align 4
  %457 = and i32 %456, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %if.end26.i.i.i, label %do.end23.i.i.i

do.end23.i.i.i:                                   ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %459 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %pdev.i.i.i, align 8
  %dev25.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %460, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev25.i.i.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.100) #7
  br label %do.body54.i.i.i

if.end26.i.i.i:                                   ; preds = %do.end17.i.i.i
  %461 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %414, align 4
  %463 = zext i32 %462 to i64
  call void @__sanitizer_cov_trace_switch(i64 %463, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %462, label %if.end26.i.i.i.if.end34.i.i.i_crit_edge [
    i32 7, label %if.end29.thread.i.i.i
    i32 8, label %if.then32.i.i.i
  ]

if.end26.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i.i.i

if.end29.thread.i.i.i:                            ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i.i = or i32 %456, 4
  %464 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %or.i.i.i, ptr %config.i.i.i, align 4
  br label %if.end34.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or33.i.i.i = or i32 %456, 8
  %465 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %or33.i.i.i, ptr %config.i.i.i, align 4
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then32.i.i.i, %if.end29.thread.i.i.i, %if.end26.i.i.i.if.end34.i.i.i_crit_edge
  %466 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %config.i.i.i, align 4
  %and35.i.i.i = and i32 %467, -17
  store i32 %and35.i.i.i, ptr %config.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %468 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %468)
  %cmp37.i.i.i = icmp eq i32 %468, 2
  br i1 %cmp37.i.i.i, label %do.end41.i.i.i, label %if.end34.i.i.i.do.end46.i.i.i_crit_edge

if.end34.i.i.i.do.end46.i.i.i_crit_edge:          ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46.i.i.i

do.end41.i.i.i:                                   ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %469 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %pdev.i.i.i, align 8
  %dev43.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %470, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev43.i.i.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.100, i32 noundef %and35.i.i.i) #7
  br label %do.end46.i.i.i

do.end46.i.i.i:                                   ; preds = %do.end41.i.i.i, %if.end34.i.i.i.do.end46.i.i.i_crit_edge
  %notify_idc_comp.i.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 17, i32 49, i32 0, i32 3
  %471 = ptrtoint ptr %notify_idc_comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 1, ptr %notify_idc_comp.i.i.i, align 4
  %notify_link_up_comp.i.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 17, i32 49, i32 0, i32 4
  %472 = ptrtoint ptr %notify_link_up_comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 1, ptr %notify_link_up_comp.i.i.i, align 16
  %call47.i.i.i = call i32 @qla4xxx_get_firmware_state(ptr noundef %add.ptr.i165.i.i) #4
  %call48.i.i.i = call i32 @qla4_83xx_set_port_config(ptr noundef %add.ptr.i165.i.i, ptr noundef nonnull %config.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i.i)
  %cmp49.not.i.i.i = icmp eq i32 %call48.i.i.i, 0
  br i1 %cmp49.not.i.i.i, label %do.end46.i.i.i.do.body54.i.i.i_crit_edge, label %if.then50.i.i.i

do.end46.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %do.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54.i.i.i

if.then50.i.i.i:                                  ; preds = %do.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %473 = ptrtoint ptr %notify_idc_comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 0, ptr %notify_idc_comp.i.i.i, align 4
  %474 = ptrtoint ptr %notify_link_up_comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 0, ptr %notify_link_up_comp.i.i.i, align 16
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %if.then50.i.i.i, %do.end46.i.i.i.do.body54.i.i.i_crit_edge, %do.end23.i.i.i, %do.end3.i.i.i.do.body54.i.i.i_crit_edge
  %status.0.i.i.i = phi i32 [ %call.i172.i.i, %do.end3.i.i.i.do.body54.i.i.i_crit_edge ], [ 0, %do.end23.i.i.i ], [ %call48.i.i.i, %if.then50.i.i.i ], [ 0, %do.end46.i.i.i.do.body54.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %475 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %475)
  %cmp55.i.i.i = icmp eq i32 %475, 2
  br i1 %cmp55.i.i.i, label %do.end59.i.i.i, label %do.body54.i.i.i.qla4_83xx_pre_loopback_config.exit.i.i_crit_edge

do.body54.i.i.i.qla4_83xx_pre_loopback_config.exit.i.i_crit_edge: ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4_83xx_pre_loopback_config.exit.i.i

do.end59.i.i.i:                                   ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %476 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %pdev.i.i.i, align 8
  %dev61.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %477, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.i.i.i)
  %cmp62.i.i.i = icmp eq i32 %status.0.i.i.i, 1
  %cond.i.i.i = select i1 %cmp62.i.i.i, ptr @.str.86, ptr @.str.87
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev61.i.i.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.100, ptr noundef nonnull %cond.i.i.i) #7
  br label %qla4_83xx_pre_loopback_config.exit.i.i

qla4_83xx_pre_loopback_config.exit.i.i:           ; preds = %do.end59.i.i.i, %do.body54.i.i.i.qla4_83xx_pre_loopback_config.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i.i)
  %cmp31.not.i.i = icmp eq i32 %status.0.i.i.i, 0
  br i1 %cmp31.not.i.i, label %if.end34.i.i, label %qla4_83xx_pre_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge

qla4_83xx_pre_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge: ; preds = %qla4_83xx_pre_loopback_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.sink.split.i.i

if.end34.i.i:                                     ; preds = %qla4_83xx_pre_loopback_config.exit.i.i
  %call35.i.i = call fastcc i32 @qla4_83xx_wait_for_loopback_config_comp(ptr noundef %add.ptr.i165.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %cmp36.not.i.i, label %if.end34.i.i.do.body41.i.i_crit_edge, label %if.then37.i.i

if.end34.i.i.do.body41.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41.i.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %478 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 196608, ptr %413, align 4
  br label %restore.i.i

do.body41.i.i:                                    ; preds = %if.end34.i.i.do.body41.i.i_crit_edge, %if.end23.i.i.do.body41.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %479 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %479)
  %cmp42.i.i = icmp eq i32 %479, 2
  br i1 %cmp42.i.i, label %do.end46.i.i, label %do.body41.i.i.do.end59.i.i_crit_edge

do.body41.i.i.do.end59.i.i_crit_edge:             ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59.i.i

do.end46.i.i:                                     ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %480 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %pdev.i.i.i, align 8
  %dev48.i.i = getelementptr inbounds %struct.pci_dev, ptr %481, i32 0, i32 44
  %482 = ptrtoint ptr %mbox_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %mbox_cmd.i.i, align 4
  %484 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %414, align 4
  %486 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %415, align 4
  %488 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %416, align 4
  %490 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %417, align 4
  %492 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %418, align 4
  %494 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %419, align 4
  %496 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %420, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev48.i.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.88, i32 noundef %483, i32 noundef %485, i32 noundef %487, i32 noundef %489, i32 noundef %491, i32 noundef %493, i32 noundef %495, i32 noundef %497) #7
  br label %do.end59.i.i

do.end59.i.i:                                     ; preds = %do.end46.i.i, %do.body41.i.i.do.end59.i.i_crit_edge
  %call62.i.i = call i32 @qla4xxx_mailbox_command(ptr noundef %add.ptr.i165.i.i, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd.i.i, ptr noundef nonnull %mbox_sts.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %cmp63.i.i = icmp eq i32 %call62.i.i, 0
  %..i.i = select i1 %cmp63.i.i, i32 0, i32 458752
  %498 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %..i.i, ptr %413, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %499 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %499)
  %cmp69.i.i = icmp eq i32 %499, 2
  br i1 %cmp69.i.i, label %do.end73.i.i, label %do.end59.i.i.do.end86.i.i_crit_edge

do.end59.i.i.do.end86.i.i_crit_edge:              ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end86.i.i

do.end73.i.i:                                     ; preds = %do.end59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %500 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %pdev.i.i.i, align 8
  %dev75.i.i = getelementptr inbounds %struct.pci_dev, ptr %501, i32 0, i32 44
  %502 = ptrtoint ptr %mbox_sts.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %mbox_sts.i.i, align 4
  %504 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %422, align 4
  %506 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %423, align 4
  %508 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %424, align 4
  %510 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %425, align 4
  %512 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %426, align 4
  %514 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %427, align 4
  %516 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %428, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev75.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.88, i32 noundef %503, i32 noundef %505, i32 noundef %507, i32 noundef %509, i32 noundef %511, i32 noundef %513, i32 noundef %515, i32 noundef %517) #7
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %do.end73.i.i, %do.end59.i.i.do.end86.i.i_crit_edge
  %reply_len.i.i = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %518 = ptrtoint ptr %reply_len.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 40, ptr %reply_len.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %413, i32 8
  %519 = call ptr @memcpy(ptr %add.ptr.i44.i, ptr %mbox_sts.i.i, i32 32)
  br label %restore.i.i

restore.i.i:                                      ; preds = %do.end86.i.i, %if.then37.i.i
  %status.0.i.i = phi i32 [ %call35.i.i, %if.then37.i.i ], [ %call62.i.i, %do.end86.i.i ]
  %520 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %pdev.i.i.i, align 8
  %device.i174.i.i = getelementptr inbounds %struct.pci_dev, ptr %521, i32 0, i32 8
  %522 = ptrtoint ptr %device.i174.i.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %device.i174.i.i, align 2
  %524 = zext i16 %523 to i64
  call void @__sanitizer_cov_trace_switch(i64 %524, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %523, label %restore.i.i.do.body109.i.i_crit_edge [
    i16 -32718, label %restore.i.i.if.then93.i.i_crit_edge
    i16 -32702, label %restore.i.i.if.then93.i.i_crit_edge410
  ]

restore.i.i.if.then93.i.i_crit_edge410:           ; preds = %restore.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.i.i

restore.i.i.if.then93.i.i_crit_edge:              ; preds = %restore.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.i.i

restore.i.i.do.body109.i.i_crit_edge:             ; preds = %restore.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.i.i

if.then93.i.i:                                    ; preds = %restore.i.i.if.then93.i.i_crit_edge, %restore.i.i.if.then93.i.i_crit_edge410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i181.i.i) #4
  %525 = ptrtoint ptr %config.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 0, ptr %config.i181.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %526 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %526)
  %cmp.i182.i.i = icmp eq i32 %526, 2
  br i1 %cmp.i182.i.i, label %do.end.i185.i.i, label %if.then93.i.i.do.end3.i188.i.i_crit_edge

if.then93.i.i.do.end3.i188.i.i_crit_edge:         ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i188.i.i

do.end.i185.i.i:                                  ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %527 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i184.i.i = getelementptr inbounds %struct.pci_dev, ptr %528, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev.i184.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.130) #7
  br label %do.end3.i188.i.i

do.end3.i188.i.i:                                 ; preds = %do.end.i185.i.i, %if.then93.i.i.do.end3.i188.i.i_crit_edge
  %call.i186.i.i = call i32 @qla4_83xx_get_port_config(ptr noundef %add.ptr.i165.i.i, ptr noundef nonnull %config.i181.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186.i.i)
  %cmp4.not.i187.i.i = icmp eq i32 %call.i186.i.i, 0
  br i1 %cmp4.not.i187.i.i, label %do.body7.i190.i.i, label %do.end3.i188.i.i.do.body49.i.i.i_crit_edge

do.end3.i188.i.i.do.body49.i.i.i_crit_edge:       ; preds = %do.end3.i188.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49.i.i.i

do.body7.i190.i.i:                                ; preds = %do.end3.i188.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %529 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %529)
  %cmp8.i189.i.i = icmp eq i32 %529, 2
  br i1 %cmp8.i189.i.i, label %do.end12.i193.i.i, label %do.body7.i190.i.i.do.end17.i195.i.i_crit_edge

do.body7.i190.i.i.do.end17.i195.i.i_crit_edge:    ; preds = %do.body7.i190.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17.i195.i.i

do.end12.i193.i.i:                                ; preds = %do.body7.i190.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %530 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %pdev.i.i.i, align 8
  %dev14.i192.i.i = getelementptr inbounds %struct.pci_dev, ptr %531, i32 0, i32 44
  %532 = ptrtoint ptr %config.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %config.i181.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev14.i192.i.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef %533) #7
  br label %do.end17.i195.i.i

do.end17.i195.i.i:                                ; preds = %do.end12.i193.i.i, %do.body7.i190.i.i.do.end17.i195.i.i_crit_edge
  %534 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %414, align 4
  %536 = zext i32 %535 to i64
  call void @__sanitizer_cov_trace_switch(i64 %536, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %535, label %do.end17.i195.i.i.if.end25.i.i.i_crit_edge [
    i32 7, label %if.then19.i.i.i
    i32 8, label %if.then22.i.i.i
  ]

do.end17.i195.i.i.if.end25.i.i.i_crit_edge:       ; preds = %do.end17.i195.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i.i.i

if.then19.i.i.i:                                  ; preds = %do.end17.i195.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %537 = ptrtoint ptr %config.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %config.i181.i.i, align 4
  %and.i.i.i = and i32 %538, -5
  store i32 %and.i.i.i, ptr %config.i181.i.i, align 4
  br label %if.end25.i.i.i

if.then22.i.i.i:                                  ; preds = %do.end17.i195.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %539 = ptrtoint ptr %config.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %config.i181.i.i, align 4
  %and23.i.i.i = and i32 %540, -9
  store i32 %and23.i.i.i, ptr %config.i181.i.i, align 4
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.then19.i.i.i, %do.end17.i195.i.i.if.end25.i.i.i_crit_edge
  %541 = ptrtoint ptr %config.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %config.i181.i.i, align 4
  %or.i196.i.i = or i32 %542, 16
  store i32 %or.i196.i.i, ptr %config.i181.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %543 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %543)
  %cmp27.i.i.i = icmp eq i32 %543, 2
  br i1 %cmp27.i.i.i, label %do.end31.i.i.i, label %if.end25.i.i.i.do.end36.i.i.i_crit_edge

if.end25.i.i.i.do.end36.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end36.i.i.i

do.end31.i.i.i:                                   ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %544 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %pdev.i.i.i, align 8
  %dev33.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %545, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev33.i.i.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.130, i32 noundef %or.i196.i.i) #7
  br label %do.end36.i.i.i

do.end36.i.i.i:                                   ; preds = %do.end31.i.i.i, %if.end25.i.i.i.do.end36.i.i.i_crit_edge
  %notify_idc_comp.i197.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 17, i32 49, i32 0, i32 3
  %546 = ptrtoint ptr %notify_idc_comp.i197.i.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 1, ptr %notify_idc_comp.i197.i.i, align 4
  %addl_fw_state.i.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 49, i32 7
  %547 = ptrtoint ptr %addl_fw_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %addl_fw_state.i.i.i, align 4
  %and37.i.i.i = and i32 %548, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i.i)
  %tobool.not.i198.i.i = icmp eq i32 %and37.i.i.i, 0
  br i1 %tobool.not.i198.i.i, label %do.end36.i.i.i.if.end39.i.i.i_crit_edge, label %if.then38.i.i.i

do.end36.i.i.i.if.end39.i.i.i_crit_edge:          ; preds = %do.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i.i.i

if.then38.i.i.i:                                  ; preds = %do.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %notify_link_up_comp.i199.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 17, i32 49, i32 0, i32 4
  %549 = ptrtoint ptr %notify_link_up_comp.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 1, ptr %notify_link_up_comp.i199.i.i, align 16
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %if.then38.i.i.i, %do.end36.i.i.i.if.end39.i.i.i_crit_edge
  %call40.i.i.i = call i32 @qla4_83xx_set_port_config(ptr noundef %add.ptr.i165.i.i, ptr noundef nonnull %config.i181.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i.i)
  %cmp41.not.i.i.i = icmp eq i32 %call40.i.i.i, 0
  br i1 %cmp41.not.i.i.i, label %if.end39.i.i.i.do.body49.i.i.i_crit_edge, label %do.end45.i.i.i

if.end39.i.i.i.do.body49.i.i.i_crit_edge:         ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49.i.i.i

do.end45.i.i.i:                                   ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %550 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %pdev.i.i.i, align 8
  %dev47.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %551, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev47.i.i.i, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.130) #7
  call void @_set_bit(i32 noundef 1, ptr noundef %dpc_flags.i.i328) #4
  call void @_clear_bit(i32 noundef 9, ptr noundef %add.ptr.i165.i.i) #4
  br label %do.body49.i.i.i

do.body49.i.i.i:                                  ; preds = %do.end45.i.i.i, %if.end39.i.i.i.do.body49.i.i.i_crit_edge, %do.end3.i188.i.i.do.body49.i.i.i_crit_edge
  %status.0.i200.i.i = phi i32 [ %call.i186.i.i, %do.end3.i188.i.i.do.body49.i.i.i_crit_edge ], [ %call40.i.i.i, %do.end45.i.i.i ], [ 0, %if.end39.i.i.i.do.body49.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %552 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %552)
  %cmp50.i.i.i = icmp eq i32 %552, 2
  br i1 %cmp50.i.i.i, label %do.end54.i.i.i, label %do.body49.i.i.i.qla4_83xx_post_loopback_config.exit.i.i_crit_edge

do.body49.i.i.i.qla4_83xx_post_loopback_config.exit.i.i_crit_edge: ; preds = %do.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4_83xx_post_loopback_config.exit.i.i

do.end54.i.i.i:                                   ; preds = %do.body49.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %553 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %pdev.i.i.i, align 8
  %dev56.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %554, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.i200.i.i)
  %cmp57.i.i.i = icmp eq i32 %status.0.i200.i.i, 1
  %cond.i201.i.i = select i1 %cmp57.i.i.i, ptr @.str.86, ptr @.str.87
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev56.i.i.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.130, ptr noundef nonnull %cond.i201.i.i) #7
  br label %qla4_83xx_post_loopback_config.exit.i.i

qla4_83xx_post_loopback_config.exit.i.i:          ; preds = %do.end54.i.i.i, %do.body49.i.i.i.qla4_83xx_post_loopback_config.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i181.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i200.i.i)
  %cmp96.not.i.i = icmp eq i32 %status.0.i200.i.i, 0
  br i1 %cmp96.not.i.i, label %if.end99.i.i, label %qla4_83xx_post_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge

qla4_83xx_post_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge: ; preds = %qla4_83xx_post_loopback_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.sink.split.i.i

if.end99.i.i:                                     ; preds = %qla4_83xx_post_loopback_config.exit.i.i
  %addl_fw_state.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 49, i32 7
  %555 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %addl_fw_state.i.i, align 4
  %and.i.i = lshr i32 %556, 4
  %and.lobit.i.i = and i32 %and.i.i, 1
  %call103.i.i = call fastcc i32 @qla4_83xx_wait_for_loopback_config_comp(ptr noundef %add.ptr.i165.i.i, i32 noundef %and.lobit.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i.i)
  %cmp104.not.i.i = icmp eq i32 %call103.i.i, 0
  br i1 %cmp104.not.i.i, label %if.end99.i.i.do.body109.i.i_crit_edge, label %if.end99.i.i.do.body109.sink.split.i.i_crit_edge

if.end99.i.i.do.body109.sink.split.i.i_crit_edge: ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.sink.split.i.i

if.end99.i.i.do.body109.i.i_crit_edge:            ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.i.i

do.body109.sink.split.sink.split.i.i:             ; preds = %if.end13.i.i.do.body109.sink.split.sink.split.i.i_crit_edge, %do.end5.i.i.do.body109.sink.split.sink.split.i.i_crit_edge
  %.str.75.sink.i.i = phi ptr [ @.str.90, %do.end5.i.i.do.body109.sink.split.sink.split.i.i_crit_edge ], [ @.str.75, %if.end13.i.i.do.body109.sink.split.sink.split.i.i_crit_edge ]
  %pdev20.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 6
  %557 = ptrtoint ptr %pdev20.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %pdev20.i.i, align 8
  %dev21.i.i = getelementptr inbounds %struct.pci_dev, ptr %558, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev21.i.i, ptr noundef nonnull %.str.75.sink.i.i, ptr noundef nonnull @.str.88) #7
  br label %do.body109.sink.split.i.i

do.body109.sink.split.i.i:                        ; preds = %do.body109.sink.split.sink.split.i.i, %if.end99.i.i.do.body109.sink.split.i.i_crit_edge, %qla4_83xx_post_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge, %qla4_83xx_pre_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 458752, %qla4_83xx_pre_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge ], [ 458752, %qla4_83xx_post_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge ], [ 196608, %if.end99.i.i.do.body109.sink.split.i.i_crit_edge ], [ 458752, %do.body109.sink.split.sink.split.i.i ]
  %status.1.ph.i.i = phi i32 [ %status.0.i.i.i, %qla4_83xx_pre_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge ], [ %status.0.i200.i.i, %qla4_83xx_post_loopback_config.exit.i.i.do.body109.sink.split.i.i_crit_edge ], [ 1, %if.end99.i.i.do.body109.sink.split.i.i_crit_edge ], [ 1, %do.body109.sink.split.sink.split.i.i ]
  %559 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %.sink.i.i, ptr %413, align 4
  br label %do.body109.i.i

do.body109.i.i:                                   ; preds = %do.body109.sink.split.i.i, %if.end99.i.i.do.body109.i.i_crit_edge, %restore.i.i.do.body109.i.i_crit_edge
  %status.1.i.i = phi i32 [ 0, %if.end99.i.i.do.body109.i.i_crit_edge ], [ %status.0.i.i, %restore.i.i.do.body109.i.i_crit_edge ], [ %status.1.ph.i.i, %do.body109.sink.split.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %560 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %560)
  %cmp110.i.i = icmp eq i32 %560, 2
  br i1 %cmp110.i.i, label %do.end114.i.i, label %do.body109.i.i.qla4xxx_execute_diag_loopback_cmd.exit.i_crit_edge

do.body109.i.i.qla4xxx_execute_diag_loopback_cmd.exit.i_crit_edge: ; preds = %do.body109.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %qla4xxx_execute_diag_loopback_cmd.exit.i

do.end114.i.i:                                    ; preds = %do.body109.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev115.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i.i, i32 1, i32 6
  %561 = ptrtoint ptr %pdev115.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %pdev115.i.i, align 8
  %dev116.i.i = getelementptr inbounds %struct.pci_dev, ptr %562, i32 0, i32 44
  %563 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %413, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.1.i.i)
  %cmp118.i.i = icmp eq i32 %status.1.i.i, 1
  %cond.i.i = select i1 %cmp118.i.i, ptr @.str.86, ptr @.str.87
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev116.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.88, i32 noundef %564, ptr noundef nonnull %cond.i.i) #7
  br label %qla4xxx_execute_diag_loopback_cmd.exit.i

qla4xxx_execute_diag_loopback_cmd.exit.i:         ; preds = %do.end114.i.i, %do.body109.i.i.qla4xxx_execute_diag_loopback_cmd.exit.i_crit_edge
  %565 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %413, align 4
  %567 = ptrtoint ptr %reply_payload_rcv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %reply_payload_rcv_len.i.i, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %566, i32 noundef %568) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts.i.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd.i.i) #4
  br label %cleanup

do.end14.i331:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev15.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i320, i32 1, i32 6
  %569 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %pdev15.i, align 8
  %dev16.i330 = getelementptr inbounds %struct.pci_dev, ptr %570, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i330, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.65, i32 noundef %404) #7
  br label %cleanup

if.then22.i:                                      ; preds = %do.end5.i.if.then22.i_crit_edge, %do.end5.i.if.then22.i_crit_edge400
  tail call fastcc void @ql4xxx_execute_diag_cmd(ptr noundef %bsg_job) #4
  br label %cleanup

do.end26.i333:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev27.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i.i320, i32 1, i32 6
  %571 = ptrtoint ptr %pdev27.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %pdev27.i, align 8
  %dev28.i332 = getelementptr inbounds %struct.pci_dev, ptr %572, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev28.i332, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.65, i32 noundef %401) #7
  br label %cleanup

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %573 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %574, i32 0, i32 44
  %575 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %575, i32 4)
  %576 = load i32, ptr %3, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %576) #7
  %577 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 458752, ptr %1, align 4
  %reply_payload_rcv_len = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %1, i32 0, i32 1
  %578 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 0, ptr %reply_payload_rcv_len, align 4
  tail call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef 458752, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end26.i333, %if.then22.i, %do.end14.i331, %qla4xxx_execute_diag_loopback_cmd.exit.i, %sw.bb.i, %qla4xxx_bsg_get_acb.exit, %if.end30.i, %do.end.i251, %if.end.i237.cleanup_crit_edge, %dev_to_shost.exit.i235.cleanup_crit_edge, %qla4xxx_update_nvram.exit, %qla4xxx_read_nvram.exit, %qla4xxx_get_acb_state.exit, %qla4xxx_update_flash.exit, %qla4xxx_read_flash.exit
  %retval.0 = phi i32 [ -38, %do.end ], [ %rval.1.i310, %qla4xxx_bsg_get_acb.exit ], [ %rval.1.i218, %qla4xxx_update_nvram.exit ], [ %rval.1.i160, %qla4xxx_read_nvram.exit ], [ %rval.1.i121, %qla4xxx_get_acb_state.exit ], [ %rval.1.i82, %qla4xxx_update_flash.exit ], [ %rval.1.i, %qla4xxx_read_flash.exit ], [ -22, %dev_to_shost.exit.i235.cleanup_crit_edge ], [ -22, %if.end.i237.cleanup_crit_edge ], [ -16, %do.end.i251 ], [ %rval.0.i259, %if.end30.i ], [ -22, %do.end14.i331 ], [ 0, %qla4xxx_execute_diag_loopback_cmd.exit.i ], [ 0, %sw.bb.i ], [ 0, %if.then22.i ], [ -22, %do.end26.i333 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_bsg_request(ptr noundef %bsg_job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %2 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %3, %entry ], [ %5, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483393, i32 %7)
  %cond = icmp eq i32 %7, -2147483393
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @qla4xxx_process_vendor_specific(ptr noundef %bsg_job)
  br label %cleanup

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb ], [ -38, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_flash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_set_flash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_ip_state(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_nvram(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_set_nvram(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_restore_factory_defaults(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_acb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql4xxx_execute_diag_cmd(ptr noundef %bsg_job) unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca [8 x i32], align 4
  %mbox_sts = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bsg_job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsg_job, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr.i94 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %request = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 3
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 4
  %6 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reply, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_cmd) #4
  %8 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 1
  %9 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 2
  %10 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 3
  %11 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 4
  %12 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 5
  %13 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 6
  %14 = getelementptr inbounds [8 x i32], ptr %mbox_cmd, i32 0, i32 7
  %15 = call ptr @memset(ptr %mbox_cmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbox_sts) #4
  %16 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 1
  %17 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 2
  %18 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 3
  %19 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 4
  %20 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 5
  %21 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 6
  %22 = getelementptr inbounds [8 x i32], ptr %mbox_sts, i32 0, i32 7
  %23 = call ptr @memset(ptr %mbox_sts, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %24 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp = icmp eq i32 %24, 2
  br i1 %cmp, label %do.end, label %dev_to_shost.exit.do.end5_crit_edge

dev_to_shost.exit.do.end5_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev3, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.73) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %dev_to_shost.exit.do.end5_crit_edge
  %dpc_flags = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1, i32 1
  %27 = ptrtoint ptr %dpc_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dpc_flags, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %pdev11 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %30 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev12, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #7
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 458752, ptr %7, align 4
  br label %do.body61

if.end13:                                         ; preds = %do.end5
  %reply_payload_rcv_len = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %reply_payload_rcv_len, align 4
  %arrayidx = getelementptr %struct.iscsi_bsg_request, ptr %5, i32 1, i32 1
  %34 = call ptr @memcpy(ptr %mbox_cmd, ptr %arrayidx, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %35 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp15 = icmp eq i32 %35, 2
  br i1 %cmp15, label %do.end19, label %if.end13.do.end32_crit_edge

if.end13.do.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %pdev20 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %36 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mbox_cmd, align 4
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %8, align 4
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %9, align 4
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %10, align 4
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %11, align 4
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %12, align 4
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %13, align 4
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev21, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #7
  br label %do.end32

do.end32:                                         ; preds = %do.end19, %if.end13.do.end32_crit_edge
  %call35 = call i32 @qla4xxx_mailbox_command(ptr noundef %add.ptr.i94, i8 noundef zeroext 8, i8 noundef zeroext 8, ptr noundef nonnull %mbox_cmd, ptr noundef nonnull %mbox_sts) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %54 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp37 = icmp eq i32 %54, 2
  br i1 %cmp37, label %do.end41, label %do.end32.do.end54_crit_edge

do.end32.do.end54_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end54

do.end41:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  %pdev42 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %55 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %mbox_sts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mbox_sts, align 4
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %16, align 4
  %61 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %17, align 4
  %63 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %18, align 4
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %19, align 4
  %67 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %20, align 4
  %69 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %21, align 4
  %71 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %22, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev43, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.73, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #7
  br label %do.end54

do.end54:                                         ; preds = %do.end41, %do.end32.do.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp55 = icmp eq i32 %call35, 0
  %. = select i1 %cmp55, i32 0, i32 458752
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %., ptr %7, align 4
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %bsg_job, i32 0, i32 6
  %74 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 40, ptr %reply_len, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %75 = call ptr @memcpy(ptr %add.ptr, ptr %mbox_sts, i32 32)
  br label %do.body61

do.body61:                                        ; preds = %do.end54, %do.end10
  %status.0 = phi i32 [ 1, %do.end10 ], [ %call35, %do.end54 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %76 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp62 = icmp eq i32 %76, 2
  br i1 %cmp62, label %do.end66, label %do.body61.do.end73_crit_edge

do.body61.do.end73_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end73

do.end66:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  %pdev67 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %77 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev67, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0)
  %cmp70 = icmp eq i32 %status.0, 1
  %cond = select i1 %cmp70, ptr @.str.86, ptr @.str.87
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev68, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.73, i32 noundef %80, ptr noundef nonnull %cond) #7
  br label %do.end73

do.end73:                                         ; preds = %do.end66, %do.body61.do.end73_crit_edge
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %7, align 4
  %reply_payload_rcv_len75 = getelementptr inbounds %struct.iscsi_bsg_reply, ptr %7, i32 0, i32 1
  %83 = ptrtoint ptr %reply_payload_rcv_len75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reply_payload_rcv_len75, align 4
  call void @bsg_job_done(ptr noundef %bsg_job, i32 noundef %82, i32 noundef %84) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_sts) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbox_cmd) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_mailbox_command(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_83xx_wait_for_loopback_config_comp(ptr noundef %ha, i32 noundef %wait_for_link) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idc_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 152
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %idc_comp, i32 noundef 500) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.body26

do.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %idc_extend_tmo = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 151
  %2 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idc_extend_tmo, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %3) #7
  %4 = ptrtoint ptr %idc_extend_tmo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idc_extend_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.end.if.end37_crit_edge, label %if.then3

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then3:                                         ; preds = %do.end
  %mul = mul i32 %5, 100
  %call6 = tail call i32 @wait_for_completion_timeout(ptr noundef %idc_comp, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %do.body14

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %notify_idc_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 149
  %6 = ptrtoint ptr %notify_idc_comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %notify_idc_comp, align 4
  %notify_link_up_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 150
  %7 = ptrtoint ptr %notify_link_up_comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %notify_link_up_comp, align 16
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.117, ptr noundef %dev13, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114) #7
  br label %exit_wait

do.body14:                                        ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %10 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %do.body14.if.end37.sink.split_crit_edge, label %do.body14.if.end37_crit_edge

do.body14.if.end37_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.body14.if.end37.sink.split_crit_edge:          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.sink.split

do.body26:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %11 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp27 = icmp eq i32 %11, 2
  br i1 %cmp27, label %do.end31, label %do.body26.if.end37_crit_edge

do.body26.if.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %pdev32 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %do.end31, %do.body14.if.end37.sink.split_crit_edge
  %pdev32.sink = phi ptr [ %pdev32, %do.end31 ], [ %pdev, %do.body14.if.end37.sink.split_crit_edge ]
  %12 = ptrtoint ptr %pdev32.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev32.sink, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev33, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.114) #7
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %do.body26.if.end37_crit_edge, %do.body14.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %notify_idc_comp38 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 149
  %14 = ptrtoint ptr %notify_idc_comp38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %notify_idc_comp38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_for_link)
  %tobool39.not = icmp eq i32 %wait_for_link, 0
  br i1 %tobool39.not, label %if.end37.exit_wait_crit_edge, label %if.then40

if.end37.exit_wait_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_wait

if.then40:                                        ; preds = %if.end37
  %link_up_comp = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 153
  %call41 = tail call i32 @wait_for_completion_timeout(ptr noundef %link_up_comp, i32 noundef 500) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %do.body51

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %notify_link_up_comp44 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 150
  %15 = ptrtoint ptr %notify_link_up_comp44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %notify_link_up_comp44, align 16
  %pdev48 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev48, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.117, ptr noundef %dev49, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.114) #7
  br label %exit_wait

do.body51:                                        ; preds = %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp52 = icmp eq i32 %18, 2
  br i1 %cmp52, label %do.end56, label %do.body51.if.end62_crit_edge

do.body51.if.end62_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

do.end56:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  %pdev57 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %19 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev57, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev58, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.114) #7
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %do.body51.if.end62_crit_edge
  %notify_link_up_comp63 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 150
  %21 = ptrtoint ptr %notify_link_up_comp63 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %notify_link_up_comp63, align 16
  br label %exit_wait

exit_wait:                                        ; preds = %if.end62, %if.then43, %if.end37.exit_wait_crit_edge, %if.then8
  %status.0 = phi i32 [ 0, %if.end62 ], [ 1, %if.then43 ], [ 0, %if.end37.exit_wait_crit_edge ], [ 1, %if.then8 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_get_port_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_firmware_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_set_port_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228}
!llvm.module.flags = !{!229, !230, !231, !232, !233, !234, !235, !236}
!llvm.ident = !{!237}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 842, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qla4xxx_process_vendor_specific._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qla4xxx_process_vendor_specific._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 867, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qla4xxx_bsg_request._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qla4xxx_bsg_request._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 30, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qla4xxx_read_flash._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @qla4xxx_read_flash._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 36, i32 3}
!20 = !{ptr @qla4xxx_read_flash._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qla4xxx_read_flash._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 49, i32 3}
!24 = !{ptr @qla4xxx_read_flash._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4xxx_read_flash._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 57, i32 3}
!28 = !{ptr @qla4xxx_read_flash._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qla4xxx_read_flash._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 96, i32 3}
!32 = !{ptr @qla4xxx_update_flash._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qla4xxx_update_flash._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @qla4xxx_update_flash._entry.19, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 102, i32 3}
!36 = !{ptr @qla4xxx_update_flash._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @qla4xxx_update_flash._entry.21, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 116, i32 3}
!39 = !{ptr @qla4xxx_update_flash._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 127, i32 3}
!42 = !{ptr @qla4xxx_update_flash._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qla4xxx_update_flash._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 163, i32 3}
!46 = !{ptr @qla4xxx_get_acb_state._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qla4xxx_get_acb_state._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 169, i32 3}
!50 = !{ptr @qla4xxx_get_acb_state._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qla4xxx_get_acb_state._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 180, i32 3}
!54 = !{ptr @qla4xxx_get_acb_state._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @qla4xxx_get_acb_state._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 222, i32 3}
!58 = !{ptr @qla4xxx_read_nvram._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qla4xxx_read_nvram._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 235, i32 3}
!62 = !{ptr @qla4xxx_read_nvram._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qla4xxx_read_nvram._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 244, i32 3}
!66 = !{ptr @qla4xxx_read_nvram._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qla4xxx_read_nvram._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 252, i32 3}
!70 = !{ptr @qla4xxx_read_nvram._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qla4xxx_read_nvram._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 293, i32 3}
!74 = !{ptr @qla4xxx_update_nvram._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qla4xxx_update_nvram._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @qla4xxx_update_nvram._entry.44, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 306, i32 3}
!78 = !{ptr @qla4xxx_update_nvram._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @qla4xxx_update_nvram._entry.46, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 315, i32 3}
!81 = !{ptr @qla4xxx_update_nvram._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 326, i32 3}
!84 = !{ptr @qla4xxx_update_nvram._entry.48, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @qla4xxx_update_nvram._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 360, i32 3}
!88 = !{ptr @qla4xxx_restore_defaults._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @qla4xxx_restore_defaults._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @qla4xxx_restore_defaults._entry.52, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 371, i32 3}
!92 = !{ptr @qla4xxx_restore_defaults._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 406, i32 3}
!95 = !{ptr @qla4xxx_bsg_get_acb._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @qla4xxx_bsg_get_acb._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 414, i32 3}
!99 = !{ptr @qla4xxx_bsg_get_acb._entry.55, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @qla4xxx_bsg_get_acb._entry_ptr.57, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 422, i32 3}
!103 = !{ptr @qla4xxx_bsg_get_acb._entry.58, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @qla4xxx_bsg_get_acb._entry_ptr.60, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 430, i32 3}
!107 = !{ptr @qla4xxx_bsg_get_acb._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @qla4xxx_bsg_get_acb._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 760, i32 2}
!111 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qla4xxx_execute_diag_test._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @qla4xxx_execute_diag_test._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 789, i32 4}
!117 = !{ptr @qla4xxx_execute_diag_test._entry.67, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qla4xxx_execute_diag_test._entry_ptr.69, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 798, i32 3}
!121 = !{ptr @qla4xxx_execute_diag_test._entry.70, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @qla4xxx_execute_diag_test._entry_ptr.72, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.73, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 459, i32 2}
!125 = !{ptr @ql4xxx_execute_diag_cmd._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ql4xxx_execute_diag_cmd._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.75, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 462, i32 3}
!129 = !{ptr @ql4xxx_execute_diag_cmd._entry.74, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ql4xxx_execute_diag_cmd._entry_ptr.76, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.78, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 472, i32 2}
!133 = !{ptr @ql4xxx_execute_diag_cmd._entry.77, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ql4xxx_execute_diag_cmd._entry_ptr.79, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.81, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 481, i32 2}
!137 = !{ptr @ql4xxx_execute_diag_cmd._entry.80, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @ql4xxx_execute_diag_cmd._entry_ptr.82, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.84, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 498, i32 2}
!141 = !{ptr @ql4xxx_execute_diag_cmd._entry.83, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ql4xxx_execute_diag_cmd._entry_ptr.85, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.86, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.87, !140, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.88, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 664, i32 2}
!147 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 669, i32 3}
!151 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry.89, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.91, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry.92, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 676, i32 3}
!155 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.93, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry.94, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 700, i32 2}
!158 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.95, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry.96, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 714, i32 2}
!161 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.97, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry.98, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 745, i32 2}
!164 = !{ptr @qla4xxx_execute_diag_loopback_cmd._entry_ptr.99, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.100, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 562, i32 2}
!167 = !{ptr @qla4_83xx_pre_loopback_config._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qla4_83xx_pre_loopback_config._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 568, i32 2}
!171 = !{ptr @qla4_83xx_pre_loopback_config._entry.101, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qla4_83xx_pre_loopback_config._entry_ptr.103, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.105, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 573, i32 3}
!175 = !{ptr @qla4_83xx_pre_loopback_config._entry.104, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qla4_83xx_pre_loopback_config._entry_ptr.106, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.108, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 586, i32 2}
!179 = !{ptr @qla4_83xx_pre_loopback_config._entry.107, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @qla4_83xx_pre_loopback_config._entry_ptr.109, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.111, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 602, i32 2}
!183 = !{ptr @qla4_83xx_pre_loopback_config._entry.110, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @qla4_83xx_pre_loopback_config._entry_ptr.112, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 512, i32 3}
!187 = !{ptr @.str.114, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.116, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 519, i32 5}
!192 = !{ptr @.str.117, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry.115, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.118, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.120, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 524, i32 5}
!197 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry.119, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.121, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry.122, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 530, i32 3}
!201 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.123, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.125, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 540, i32 4}
!204 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry.124, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.126, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.128, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 545, i32 4}
!208 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry.127, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @qla4_83xx_wait_for_loopback_config_comp._entry_ptr.129, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.130, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 613, i32 2}
!212 = !{ptr @qla4_83xx_post_loopback_config._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @qla4_83xx_post_loopback_config._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.132, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 619, i32 2}
!216 = !{ptr @qla4_83xx_post_loopback_config._entry.131, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @qla4_83xx_post_loopback_config._entry_ptr.133, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.135, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 629, i32 2}
!220 = !{ptr @qla4_83xx_post_loopback_config._entry.134, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @qla4_83xx_post_loopback_config._entry_ptr.136, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.138, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 639, i32 3}
!224 = !{ptr @qla4_83xx_post_loopback_config._entry.137, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @qla4_83xx_post_loopback_config._entry_ptr.139, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @qla4_83xx_post_loopback_config._entry.140, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/scsi/qla4xxx/ql4_bsg.c", i32 647, i32 2}
!228 = !{ptr @qla4_83xx_post_loopback_config._entry_ptr.141, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{i32 1, !"wchar_size", i32 2}
!230 = !{i32 1, !"min_enum_size", i32 4}
!231 = !{i32 8, !"branch-target-enforcement", i32 0}
!232 = !{i32 8, !"sign-return-address", i32 0}
!233 = !{i32 8, !"sign-return-address-all", i32 0}
!234 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!235 = !{i32 7, !"uwtable", i32 1}
!236 = !{i32 7, !"frame-pointer", i32 2}
!237 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!238 = !{!"auto-init"}
!239 = !{!"branch_weights", i32 2000, i32 1}
