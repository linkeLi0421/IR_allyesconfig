; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_83xx.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_83xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qla4_83xx_reset_template_hdr = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.device_reg_83xx = type { [16 x i32], [496 x i32], [16 x i32], [496 x i32], i32, [63 x i32], i32, [63 x i32], i32, [1919 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [544 x i32], i32, i32, i32 }
%struct.qla4_83xx_reset_entry_hdr = type { i16, i16, i16, i16 }
%struct.qla4_83xx_entry = type { i32, i32 }
%struct.qla4_83xx_quad_entry = type { i32, i32, i32, i32 }

@qla4_83xx_rd_reg_indirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed read of addr 0x%x!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_rd_reg_indirect\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla4xxx/ql4_83xx.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4_83xx_rd_reg_indirect._entry_ptr = internal global ptr @qla4_83xx_rd_reg_indirect._entry, section ".printk_index", align 4
@qla4_83xx_wr_reg_indirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 70, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: failed wrt to addr 0x%x, data 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_wr_reg_indirect\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_wr_reg_indirect._entry_ptr = internal global ptr @qla4_83xx_wr_reg_indirect._entry, section ".printk_index", align 4
@qla4_83xx_flash_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Illegal addr = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_83xx_flash_read_u32\00", [39 x i8] zeroinitializer }, align 32
@qla4_83xx_flash_read_u32._entry_ptr = internal global ptr @qla4_83xx_flash_read_u32._entry, section ".printk_index", align 4
@qla4_83xx_flash_read_u32._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: failed to write addr 0x%x to FLASH_DIRECT_WINDOW\0A!\00", [41 x i8] zeroinitializer }, align 32
@qla4_83xx_flash_read_u32._entry_ptr.11 = internal global ptr @qla4_83xx_flash_read_u32._entry.9, section ".printk_index", align 4
@qla4_83xx_flash_read_u32._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed to read addr 0x%x!\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_flash_read_u32._entry_ptr.14 = internal global ptr @qla4_83xx_flash_read_u32._entry.12, section ".printk_index", align 4
@qla4_83xx_lockless_flash_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.15, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4_83xx_lockless_flash_read_u32\00", [62 x i8] zeroinitializer }, align 32
@qla4_83xx_lockless_flash_read_u32._entry_ptr = internal global ptr @qla4_83xx_lockless_flash_read_u32._entry, section ".printk_index", align 4
@qla4_83xx_lockless_flash_read_u32._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: failed to write addr 0x%x to FLASH_DIRECT_WINDOW!\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4_83xx_lockless_flash_read_u32._entry_ptr.18 = internal global ptr @qla4_83xx_lockless_flash_read_u32._entry.16, section ".printk_index", align 4
@qla4_83xx_lockless_flash_read_u32._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_lockless_flash_read_u32._entry_ptr.20 = internal global ptr @qla4_83xx_lockless_flash_read_u32._entry.19, section ".printk_index", align 4
@qla4_83xx_lockless_flash_read_u32._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_lockless_flash_read_u32._entry_ptr.22 = internal global ptr @qla4_83xx_lockless_flash_read_u32._entry.21, section ".printk_index", align 4
@qla4_83xx_lockless_flash_read_u32._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_lockless_flash_read_u32._entry_ptr.24 = internal global ptr @qla4_83xx_lockless_flash_read_u32._entry.23, section ".printk_index", align 4
@qla4_83xx_rom_lock_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 244, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Resetting rom lock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_83xx_rom_lock_recovery\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4_83xx_rom_lock_recovery._entry_ptr = internal global ptr @qla4_83xx_rom_lock_recovery._entry, section ".printk_index", align 4
@qla4_83xx_drv_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 343, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s: Lock by func %d failed after 2s, lock held by func %d, lock count %d, first_owner %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4_83xx_drv_lock\00", [45 x i8] zeroinitializer }, align 32
@qla4_83xx_drv_lock._entry_ptr = internal global ptr @qla4_83xx_drv_lock._entry, section ".printk_index", align 4
@qla4_83xx_drv_lock._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 351, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: IDC lock failed for func %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4_83xx_drv_lock._entry_ptr.32 = internal global ptr @qla4_83xx_drv_lock._entry.30, section ".printk_index", align 4
@qla4_83xx_drv_lock._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 360, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: IDC lock Recovery by %d successful\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4_83xx_drv_lock._entry_ptr.35 = internal global ptr @qla4_83xx_drv_lock._entry.33, section ".printk_index", align 4
@qla4_83xx_drv_lock._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 366, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: IDC lock Recovery by %d failed, Retrying timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_drv_lock._entry_ptr.38 = internal global ptr @qla4_83xx_drv_lock._entry.36, section ".printk_index", align 4
@qla4_83xx_drv_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: IDC Unlock by %d failed, lock owner is %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4_83xx_drv_unlock\00", [43 x i8] zeroinitializer }, align 32
@qla4_83xx_drv_unlock._entry_ptr = internal global ptr @qla4_83xx_drv_unlock._entry, section ".printk_index", align 4
@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4_83xx_set_idc_dontreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 401, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: idc_ctrl = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_83xx_set_idc_dontreset\00", [36 x i8] zeroinitializer }, align 32
@qla4_83xx_set_idc_dontreset._entry_ptr = internal global ptr @qla4_83xx_set_idc_dontreset._entry, section ".printk_index", align 4
@qla4_83xx_clear_idc_dontreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.43, ptr @.str.2, i32 412, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4_83xx_clear_idc_dontreset\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_clear_idc_dontreset._entry_ptr = internal global ptr @qla4_83xx_clear_idc_dontreset._entry, section ".printk_index", align 4
@qla4_83xx_can_perform_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 495, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: can reset - NIC not present and lower iSCSI function is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_83xx_can_perform_reset\00", [36 x i8] zeroinitializer }, align 32
@qla4_83xx_can_perform_reset._entry_ptr = internal global ptr @qla4_83xx_can_perform_reset._entry, section ".printk_index", align 4
@qla4_83xx_need_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 514, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Performing ISP error recovery\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla4_83xx_need_reset_handler\00", [35 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr = internal global ptr @qla4_83xx_need_reset_handler._entry, section ".printk_index", align 4
@qla4_83xx_need_reset_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 518, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: reset acknowledged\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr.50 = internal global ptr @qla4_83xx_need_reset_handler._entry.48, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla4_83xx_need_reset_handler._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 528, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Non Reset owner dev init timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr.53 = internal global ptr @qla4_83xx_need_reset_handler._entry.51, section ".printk_index", align 4
@qla4_83xx_need_reset_handler._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 546, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: drv_state = 0x%x, drv_active = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr.56 = internal global ptr @qla4_83xx_need_reset_handler._entry.54, section ".printk_index", align 4
@qla4_83xx_need_reset_handler._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.2, i32 552, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: %s: RESET TIMEOUT! drv_state: 0x%08x, drv_active: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr.59 = internal global ptr @qla4_83xx_need_reset_handler._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla4xxx\00", [24 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.47, ptr @.str.2, i32 568, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: Reset_owner turning off drv_active of non-acking function 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4_83xx_need_reset_handler._entry_ptr.63 = internal global ptr @qla4_83xx_need_reset_handler._entry.61, section ".printk_index", align 4
@qla4_83xx_get_idc_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 597, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: ha->nx_dev_init_timeout = %d, ha->nx_reset_timeout = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_83xx_get_idc_param\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@qla4_83xx_get_idc_param._entry_ptr = internal global ptr @qla4_83xx_get_idc_param._entry, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Failed to allocate reset template resources\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4_83xx_read_reset_template\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr = internal global ptr @qla4_83xx_read_reset_template._entry, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 795, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Read template hdr size %d from Flash\0A\00", [54 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.71 = internal global ptr @qla4_83xx_read_reset_template._entry.69, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 802, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to read reset template\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.74 = internal global ptr @qla4_83xx_read_reset_template._entry.72, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 814, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Template Header size %d is invalid, tmplt_hdr_def_size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.77 = internal global ptr @qla4_83xx_read_reset_template._entry.75, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 825, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Read rest of the template size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.80 = internal global ptr @qla4_83xx_read_reset_template._entry.78, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 832, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.82 = internal global ptr @qla4_83xx_read_reset_template._entry.81, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.68, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Reset Seq checksum failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.85 = internal global ptr @qla4_83xx_read_reset_template._entry.83, section ".printk_index", align 4
@qla4_83xx_read_reset_template._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.68, ptr @.str.2, i32 844, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: Reset Seq checksum passed, Get stop, start and init seq offsets\0A\00", [59 x i8] zeroinitializer }, align 32
@qla4_83xx_read_reset_template._entry_ptr.88 = internal global ptr @qla4_83xx_read_reset_template._entry.86, section ".printk_index", align 4
@qla4_83xx_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Restart error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_83xx_start_firmware\00", [39 x i8] zeroinitializer }, align 32
@qla4_83xx_start_firmware._entry_ptr = internal global ptr @qla4_83xx_start_firmware._entry, section ".printk_index", align 4
@qla4_83xx_start_firmware._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 1248, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Restart done\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4_83xx_start_firmware._entry_ptr.93 = internal global ptr @qla4_83xx_start_firmware._entry.91, section ".printk_index", align 4
@qla4_83xx_start_firmware._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 1254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Peg not initialized\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4_83xx_start_firmware._entry_ptr.96 = internal global ptr @qla4_83xx_start_firmware._entry.94, section ".printk_index", align 4
@ql4xdontresethba = external dso_local local_unnamed_addr global i32, align 4
@qla4_83xx_isp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Reset recovery disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4_83xx_isp_reset\00", [44 x i8] zeroinitializer }, align 32
@qla4_83xx_isp_reset._entry_ptr = internal global ptr @qla4_83xx_isp_reset._entry, section ".printk_index", align 4
@qla4_83xx_isp_reset._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1368, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: HW State: NEED RESET\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_isp_reset._entry_ptr.101 = internal global ptr @qla4_83xx_isp_reset._entry.99, section ".printk_index", align 4
@qla4_83xx_isp_reset._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 1381, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: HW state already set to NEED_RESET\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4_83xx_isp_reset._entry_ptr.104 = internal global ptr @qla4_83xx_isp_reset._entry.102, section ".printk_index", align 4
@qla4_83xx_is_detached._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1579, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: drv_active = 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4_83xx_is_detached\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_is_detached._entry_ptr = internal global ptr @qla4_83xx_is_detached._entry, section ".printk_index", align 4
@qla4_83xx_set_win_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Failed to set register window : addr written 0x%x, read 0x%x!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_83xx_set_win_base\00", [41 x i8] zeroinitializer }, align 32
@qla4_83xx_set_win_base._entry_ptr = internal global ptr @qla4_83xx_set_win_base._entry, section ".printk_index", align 4
@qla4_83xx_flash_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: flash lock by func %d failed, held by func %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4_83xx_flash_lock\00", [43 x i8] zeroinitializer }, align 32
@qla4_83xx_flash_lock._entry_ptr = internal global ptr @qla4_83xx_flash_lock._entry, section ".printk_index", align 4
@qla4_83xx_lock_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 280, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: IDC Lock recovery initiated for func %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4_83xx_lock_recovery\00", [40 x i8] zeroinitializer }, align 32
@qla4_83xx_lock_recovery._entry_ptr = internal global ptr @qla4_83xx_lock_recovery._entry, section ".printk_index", align 4
@qla4_83xx_reset_seq_checksum_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Reset seq checksum failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4_83xx_reset_seq_checksum_test\00", [62 x i8] zeroinitializer }, align 32
@qla4_83xx_reset_seq_checksum_test._entry_ptr = internal global ptr @qla4_83xx_reset_seq_checksum_test._entry, section ".printk_index", align 4
@qla4_83xx_dump_reset_seq_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Error: Invalid reset_seq_template\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qla4_83xx_dump_reset_seq_hdr\00", [35 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_reset_seq_hdr._entry_ptr = internal global ptr @qla4_83xx_dump_reset_seq_hdr._entry, section ".printk_index", align 4
@qla4_83xx_dump_reset_seq_hdr._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 619, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Reset Template: 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_reset_seq_hdr._entry_ptr.119 = internal global ptr @qla4_83xx_dump_reset_seq_hdr._entry.117, section ".printk_index", align 4
@qla4_83xx_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1217, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Graceful RESET: Not collecting minidump\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qla4_83xx_restart\00", [46 x i8] zeroinitializer }, align 32
@qla4_83xx_restart._entry_ptr = internal global ptr @qla4_83xx_restart._entry, section ".printk_index", align 4
@qla4_83xx_restart._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 1226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Copy bootloader, firmware restart failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@qla4_83xx_restart._entry_ptr.124 = internal global ptr @qla4_83xx_restart._entry.122, section ".printk_index", align 4
@qla4_83xx_process_stop_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Abrupt STOP Sub-Sequence end.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_83xx_process_stop_seq\00", [37 x i8] zeroinitializer }, align 32
@qla4_83xx_process_stop_seq._entry_ptr = internal global ptr @qla4_83xx_process_stop_seq._entry, section ".printk_index", align 4
@qla4_83xx_process_reset_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unknown command ==> 0x%04x on entry = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qla4_83xx_process_reset_template\00", [63 x i8] zeroinitializer }, align 32
@qla4_83xx_process_reset_template._entry_ptr = internal global ptr @qla4_83xx_process_reset_template._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qla4_83xx_poll_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Poll Failed:  0x%08x 0x%08x 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4_83xx_poll_reg\00", [45 x i8] zeroinitializer }, align 32
@qla4_83xx_poll_reg._entry_ptr = internal global ptr @qla4_83xx_poll_reg._entry, section ".printk_index", align 4
@qla4_83xx_poll_write_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 1009, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Timeout Error: poll list, item_num %d, entry_num %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_poll_write_list\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_poll_write_list._entry_ptr = internal global ptr @qla4_83xx_poll_write_list._entry, section ".printk_index", align 4
@qla4_83xx_template_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1096, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Reset sequence completed SUCCESSFULLY.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_83xx_template_end\00", [41 x i8] zeroinitializer }, align 32
@qla4_83xx_template_end._entry_ptr = internal global ptr @qla4_83xx_template_end._entry, section ".printk_index", align 4
@qla4_83xx_template_end._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Reset sequence completed with some timeout errors.\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4_83xx_template_end._entry_ptr.137 = internal global ptr @qla4_83xx_template_end._entry.135, section ".printk_index", align 4
@qla4_83xx_poll_read_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 1068, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Timeout Error: poll list, Item_num %d, entry_num %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4_83xx_poll_read_list\00", [39 x i8] zeroinitializer }, align 32
@qla4_83xx_poll_read_list._entry_ptr = internal global ptr @qla4_83xx_poll_read_list._entry, section ".printk_index", align 4
@qla4_83xx_process_init_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 1197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Abrupt INIT Sub-Sequence end.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_83xx_process_init_seq\00", [37 x i8] zeroinitializer }, align 32
@qla4_83xx_process_init_seq._entry_ptr = internal global ptr @qla4_83xx_process_init_seq._entry, section ".printk_index", align 4
@qla4_83xx_copy_bootloader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to allocate memory for boot loader cache\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla4_83xx_copy_bootloader\00", [38 x i8] zeroinitializer }, align 32
@qla4_83xx_copy_bootloader._entry_ptr = internal global ptr @qla4_83xx_copy_bootloader._entry, section ".printk_index", align 4
@qla4_83xx_copy_bootloader._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 652, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Error reading firmware from flash\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4_83xx_copy_bootloader._entry_ptr.146 = internal global ptr @qla4_83xx_copy_bootloader._entry.144, section ".printk_index", align 4
@qla4_83xx_copy_bootloader._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 656, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Read firmware from flash\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4_83xx_copy_bootloader._entry_ptr.149 = internal global ptr @qla4_83xx_copy_bootloader._entry.147, section ".printk_index", align 4
@qla4_83xx_copy_bootloader._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.143, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Error writing firmware to MS\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_83xx_copy_bootloader._entry_ptr.152 = internal global ptr @qla4_83xx_copy_bootloader._entry.150, section ".printk_index", align 4
@qla4_83xx_copy_bootloader._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.143, ptr @.str.2, i32 668, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Wrote firmware size %d to MS\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_83xx_copy_bootloader._entry_ptr.155 = internal global ptr @qla4_83xx_copy_bootloader._entry.153, section ".printk_index", align 4
@qla4_83xx_process_start_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 1188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Abrupt START Sub-Sequence end.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4_83xx_process_start_seq\00", [36 x i8] zeroinitializer }, align 32
@qla4_83xx_process_start_seq._entry_ptr = internal global ptr @qla4_83xx_process_start_seq._entry, section ".printk_index", align 4
@qla4_83xx_check_cmd_peg_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 687, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Command Peg initialization complete. State=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qla4_83xx_check_cmd_peg_status\00", [33 x i8] zeroinitializer }, align 32
@qla4_83xx_check_cmd_peg_status._entry_ptr = internal global ptr @qla4_83xx_check_cmd_peg_status._entry, section ".printk_index", align 4
@qla4_83xx_eport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 1553, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EPORT is out of reset.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4_83xx_eport_init\00", [43 x i8] zeroinitializer }, align 32
@qla4_83xx_eport_init._entry_ptr = internal global ptr @qla4_83xx_eport_init._entry, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1410, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRE-Shim Ctrl:0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4_83xx_dump_pause_control_regs\00", [62 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr = internal global ptr @qla4_83xx_dump_pause_control_regs._entry, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 1414, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Port 0 Rx Buffer Pause Threshold Registers[TC7..TC0]:\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.166 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.164, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.2, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0160x%x \00", [24 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.169 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.167, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.172 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.170, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.163, ptr @.str.2, i32 1425, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Port 1 Rx Buffer Pause Threshold Registers[TC7..TC0]:\00", [42 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.175 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.173, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0160x%x  \00", [23 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.178 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.176, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.180 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.179, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.163, ptr @.str.2, i32 1436, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Port 0 RxB Traffic Class Max Cell Registers[3..0]:\00", [45 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.183 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.181, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.185 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.184, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.187 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.186, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.163, ptr @.str.2, i32 1447, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Port 1 RxB Traffic Class Max Cell Registers[3..0]:\00", [45 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.190 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.188, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.192 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.191, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.194 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.193, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.163, ptr @.str.2, i32 1458, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Port 0 RxB Rx Traffic Class Stats [TC7..TC0]\00", [51 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.197 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.195, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.199 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.198, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.201 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.200, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.163, ptr @.str.2, i32 1472, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Port 1 RxB Rx Traffic Class Stats [TC7..TC0]\00", [51 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.204 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.202, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.206 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.205, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.208 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.207, section ".printk_index", align 4
@qla4_83xx_dump_pause_control_regs._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.163, ptr @.str.2, i32 1489, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@qla4_83xx_dump_pause_control_regs._entry_ptr.211 = internal global ptr @qla4_83xx_dump_pause_control_regs._entry.209, section ".printk_index", align 4
@__qla4_83xx_disable_pause._entry = internal constant %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 1527, ptr @.str.27, ptr @.str.4 }, align 1
@.str.212 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabled pause frames successfully.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__qla4_83xx_disable_pause\00", [38 x i8] zeroinitializer }, align 32
@__qla4_83xx_disable_pause._entry_ptr = internal global ptr @__qla4_83xx_disable_pause._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.214 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 52, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 69, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 122, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 133, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 142, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 172, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 181, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 196, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 212, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 226, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 244, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 341, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 350, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 359, i32 6 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 365, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 383, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 400, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 411, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 493, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 513, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 517, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 527, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 545, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 550, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 567, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 594, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 782, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 793, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 801, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 813, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 823, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 831, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 838, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 842, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1244, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1247, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1253, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1361, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1367, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1379, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1578, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 33, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 90, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 279, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 761, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 607, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 614, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1216, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1225, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1178, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1160, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 737, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1006, i32 5 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1094, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1098, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1065, i32 5 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1196, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 642, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 651, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 655, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 662, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 667, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1187, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 685, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1553, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1410, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1413, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1418, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1421, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1424, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1429, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1432, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1435, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1440, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1443, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1446, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1451, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1454, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1457, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1465, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1468, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1471, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1479, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1482, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1487, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.804 = private constant [35 x i8] c"../drivers/scsi/qla4xxx/ql4_83xx.c\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 1527, i32 2 }
@llvm.compiler.used = appending global [284 x ptr] [ptr @__qla4_83xx_disable_pause._entry, ptr @__qla4_83xx_disable_pause._entry_ptr, ptr @qla4_83xx_can_perform_reset._entry, ptr @qla4_83xx_can_perform_reset._entry_ptr, ptr @qla4_83xx_check_cmd_peg_status._entry, ptr @qla4_83xx_check_cmd_peg_status._entry_ptr, ptr @qla4_83xx_clear_idc_dontreset._entry, ptr @qla4_83xx_clear_idc_dontreset._entry_ptr, ptr @qla4_83xx_copy_bootloader._entry, ptr @qla4_83xx_copy_bootloader._entry.144, ptr @qla4_83xx_copy_bootloader._entry.147, ptr @qla4_83xx_copy_bootloader._entry.150, ptr @qla4_83xx_copy_bootloader._entry.153, ptr @qla4_83xx_copy_bootloader._entry_ptr, ptr @qla4_83xx_copy_bootloader._entry_ptr.146, ptr @qla4_83xx_copy_bootloader._entry_ptr.149, ptr @qla4_83xx_copy_bootloader._entry_ptr.152, ptr @qla4_83xx_copy_bootloader._entry_ptr.155, ptr @qla4_83xx_drv_lock._entry, ptr @qla4_83xx_drv_lock._entry.30, ptr @qla4_83xx_drv_lock._entry.33, ptr @qla4_83xx_drv_lock._entry.36, ptr @qla4_83xx_drv_lock._entry_ptr, ptr @qla4_83xx_drv_lock._entry_ptr.32, ptr @qla4_83xx_drv_lock._entry_ptr.35, ptr @qla4_83xx_drv_lock._entry_ptr.38, ptr @qla4_83xx_drv_unlock._entry, ptr @qla4_83xx_drv_unlock._entry_ptr, ptr @qla4_83xx_dump_pause_control_regs._entry, ptr @qla4_83xx_dump_pause_control_regs._entry.164, ptr @qla4_83xx_dump_pause_control_regs._entry.167, ptr @qla4_83xx_dump_pause_control_regs._entry.170, ptr @qla4_83xx_dump_pause_control_regs._entry.173, ptr @qla4_83xx_dump_pause_control_regs._entry.176, ptr @qla4_83xx_dump_pause_control_regs._entry.179, ptr @qla4_83xx_dump_pause_control_regs._entry.181, ptr @qla4_83xx_dump_pause_control_regs._entry.184, ptr @qla4_83xx_dump_pause_control_regs._entry.186, ptr @qla4_83xx_dump_pause_control_regs._entry.188, ptr @qla4_83xx_dump_pause_control_regs._entry.191, ptr @qla4_83xx_dump_pause_control_regs._entry.193, ptr @qla4_83xx_dump_pause_control_regs._entry.195, ptr @qla4_83xx_dump_pause_control_regs._entry.198, ptr @qla4_83xx_dump_pause_control_regs._entry.200, ptr @qla4_83xx_dump_pause_control_regs._entry.202, ptr @qla4_83xx_dump_pause_control_regs._entry.205, ptr @qla4_83xx_dump_pause_control_regs._entry.207, ptr @qla4_83xx_dump_pause_control_regs._entry.209, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.166, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.169, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.172, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.175, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.178, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.180, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.183, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.185, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.187, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.190, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.192, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.194, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.197, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.199, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.201, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.204, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.206, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.208, ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.211, ptr @qla4_83xx_dump_reset_seq_hdr._entry, ptr @qla4_83xx_dump_reset_seq_hdr._entry.117, ptr @qla4_83xx_dump_reset_seq_hdr._entry_ptr, ptr @qla4_83xx_dump_reset_seq_hdr._entry_ptr.119, ptr @qla4_83xx_eport_init._entry, ptr @qla4_83xx_eport_init._entry_ptr, ptr @qla4_83xx_flash_lock._entry, ptr @qla4_83xx_flash_lock._entry_ptr, ptr @qla4_83xx_flash_read_u32._entry, ptr @qla4_83xx_flash_read_u32._entry.12, ptr @qla4_83xx_flash_read_u32._entry.9, ptr @qla4_83xx_flash_read_u32._entry_ptr, ptr @qla4_83xx_flash_read_u32._entry_ptr.11, ptr @qla4_83xx_flash_read_u32._entry_ptr.14, ptr @qla4_83xx_get_idc_param._entry, ptr @qla4_83xx_get_idc_param._entry_ptr, ptr @qla4_83xx_is_detached._entry, ptr @qla4_83xx_is_detached._entry_ptr, ptr @qla4_83xx_isp_reset._entry, ptr @qla4_83xx_isp_reset._entry.102, ptr @qla4_83xx_isp_reset._entry.99, ptr @qla4_83xx_isp_reset._entry_ptr, ptr @qla4_83xx_isp_reset._entry_ptr.101, ptr @qla4_83xx_isp_reset._entry_ptr.104, ptr @qla4_83xx_lock_recovery._entry, ptr @qla4_83xx_lock_recovery._entry_ptr, ptr @qla4_83xx_lockless_flash_read_u32._entry, ptr @qla4_83xx_lockless_flash_read_u32._entry.16, ptr @qla4_83xx_lockless_flash_read_u32._entry.19, ptr @qla4_83xx_lockless_flash_read_u32._entry.21, ptr @qla4_83xx_lockless_flash_read_u32._entry.23, ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr, ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.18, ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.20, ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.22, ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.24, ptr @qla4_83xx_need_reset_handler._entry, ptr @qla4_83xx_need_reset_handler._entry.48, ptr @qla4_83xx_need_reset_handler._entry.51, ptr @qla4_83xx_need_reset_handler._entry.54, ptr @qla4_83xx_need_reset_handler._entry.57, ptr @qla4_83xx_need_reset_handler._entry.61, ptr @qla4_83xx_need_reset_handler._entry_ptr, ptr @qla4_83xx_need_reset_handler._entry_ptr.50, ptr @qla4_83xx_need_reset_handler._entry_ptr.53, ptr @qla4_83xx_need_reset_handler._entry_ptr.56, ptr @qla4_83xx_need_reset_handler._entry_ptr.59, ptr @qla4_83xx_need_reset_handler._entry_ptr.63, ptr @qla4_83xx_poll_read_list._entry, ptr @qla4_83xx_poll_read_list._entry_ptr, ptr @qla4_83xx_poll_reg._entry, ptr @qla4_83xx_poll_reg._entry_ptr, ptr @qla4_83xx_poll_write_list._entry, ptr @qla4_83xx_poll_write_list._entry_ptr, ptr @qla4_83xx_process_init_seq._entry, ptr @qla4_83xx_process_init_seq._entry_ptr, ptr @qla4_83xx_process_reset_template._entry, ptr @qla4_83xx_process_reset_template._entry_ptr, ptr @qla4_83xx_process_start_seq._entry, ptr @qla4_83xx_process_start_seq._entry_ptr, ptr @qla4_83xx_process_stop_seq._entry, ptr @qla4_83xx_process_stop_seq._entry_ptr, ptr @qla4_83xx_rd_reg_indirect._entry, ptr @qla4_83xx_rd_reg_indirect._entry_ptr, ptr @qla4_83xx_read_reset_template._entry, ptr @qla4_83xx_read_reset_template._entry.69, ptr @qla4_83xx_read_reset_template._entry.72, ptr @qla4_83xx_read_reset_template._entry.75, ptr @qla4_83xx_read_reset_template._entry.78, ptr @qla4_83xx_read_reset_template._entry.81, ptr @qla4_83xx_read_reset_template._entry.83, ptr @qla4_83xx_read_reset_template._entry.86, ptr @qla4_83xx_read_reset_template._entry_ptr, ptr @qla4_83xx_read_reset_template._entry_ptr.71, ptr @qla4_83xx_read_reset_template._entry_ptr.74, ptr @qla4_83xx_read_reset_template._entry_ptr.77, ptr @qla4_83xx_read_reset_template._entry_ptr.80, ptr @qla4_83xx_read_reset_template._entry_ptr.82, ptr @qla4_83xx_read_reset_template._entry_ptr.85, ptr @qla4_83xx_read_reset_template._entry_ptr.88, ptr @qla4_83xx_reset_seq_checksum_test._entry, ptr @qla4_83xx_reset_seq_checksum_test._entry_ptr, ptr @qla4_83xx_restart._entry, ptr @qla4_83xx_restart._entry.122, ptr @qla4_83xx_restart._entry_ptr, ptr @qla4_83xx_restart._entry_ptr.124, ptr @qla4_83xx_rom_lock_recovery._entry, ptr @qla4_83xx_rom_lock_recovery._entry_ptr, ptr @qla4_83xx_set_idc_dontreset._entry, ptr @qla4_83xx_set_idc_dontreset._entry_ptr, ptr @qla4_83xx_set_win_base._entry, ptr @qla4_83xx_set_win_base._entry_ptr, ptr @qla4_83xx_start_firmware._entry, ptr @qla4_83xx_start_firmware._entry.91, ptr @qla4_83xx_start_firmware._entry.94, ptr @qla4_83xx_start_firmware._entry_ptr, ptr @qla4_83xx_start_firmware._entry_ptr.93, ptr @qla4_83xx_start_firmware._entry_ptr.96, ptr @qla4_83xx_template_end._entry, ptr @qla4_83xx_template_end._entry.135, ptr @qla4_83xx_template_end._entry_ptr, ptr @qla4_83xx_template_end._entry_ptr.137, ptr @qla4_83xx_wr_reg_indirect._entry, ptr @qla4_83xx_wr_reg_indirect._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.182, ptr @.str.189, ptr @.str.196, ptr @.str.203, ptr @.str.210, ptr @.str.212, ptr @.str.213], section "llvm.metadata"
@0 = internal global [197 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_rd_reg_indirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_wr_reg_indirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_flash_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_flash_read_u32._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_flash_read_u32._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lockless_flash_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lockless_flash_read_u32._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lockless_flash_read_u32._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lockless_flash_read_u32._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lockless_flash_read_u32._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_rom_lock_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_drv_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_drv_lock._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_drv_lock._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_drv_lock._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_drv_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_set_idc_dontreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_clear_idc_dontreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_can_perform_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_need_reset_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_get_idc_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_read_reset_template._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_start_firmware._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_start_firmware._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_isp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_isp_reset._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_isp_reset._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_is_detached._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_set_win_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_flash_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_lock_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_reset_seq_checksum_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_reset_seq_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_reset_seq_hdr._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_restart._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_process_stop_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_process_reset_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_poll_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_poll_write_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_template_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_template_end._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_poll_read_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_process_init_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_copy_bootloader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_copy_bootloader._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_copy_bootloader._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_copy_bootloader._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_copy_bootloader._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_process_start_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_check_cmd_peg_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_eport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_83xx_dump_pause_control_regs._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_rd_reg(ptr nocapture noundef readonly %ha, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase, align 16
  %add = add i32 %1, %addr
  %2 = inttoptr i32 %add to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_wr_reg(ptr nocapture noundef readonly %ha, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %nx_pcibase = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %1 = ptrtoint ptr %nx_pcibase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nx_pcibase, align 16
  %add = add i32 %2, %addr
  %3 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %0) #6, !srcloc !382
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_rd_reg_indirect(ptr nocapture noundef readonly %ha, i32 noundef %addr, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %0 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %1 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 14336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %3 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %add.i, %4
  %5 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #6, !srcloc !382
  %6 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %func_num.i, align 8
  %conv2.i = zext i16 %7 to i32
  %mul3.i = shl nuw nsw i32 %conv2.i, 2
  %8 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nx_pcibase.i.i, align 16
  %add4.i = add i32 %9, 14336
  %add.i14.i = add i32 %add4.i, %mul3.i
  %10 = inttoptr i32 %add.i14.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !379
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp.not.i = icmp eq i32 %12, %addr
  br i1 %cmp.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i7 = add i32 %14, 14576
  %15 = inttoptr i32 %add.i7 to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !379
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %addr, i32 noundef %12) #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %data, align 4
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %addr) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret_val.0.i10 = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  ret i32 %ret_val.0.i10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_wr_reg_indirect(ptr nocapture noundef readonly %ha, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %func_num.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %0 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %func_num.i, align 8
  %conv.i = zext i16 %1 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 14336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %3 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %add.i, %4
  %5 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #6, !srcloc !382
  %6 = ptrtoint ptr %func_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %func_num.i, align 8
  %conv2.i = zext i16 %7 to i32
  %mul3.i = shl nuw nsw i32 %conv2.i, 2
  %8 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nx_pcibase.i.i, align 16
  %add4.i = add i32 %9, 14336
  %add.i14.i = add i32 %add4.i, %mul3.i
  %10 = inttoptr i32 %add.i14.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !379
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %addr)
  %cmp.not.i = icmp eq i32 %12, %addr
  br i1 %cmp.not.i, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %data) #6
  %14 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i6 = add i32 %15, 14576
  %16 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #6, !srcloc !382
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %addr, i32 noundef %12) #9
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %addr, i32 noundef %data) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %ret_val.0.i9 = phi i32 [ 1, %do.end ], [ 0, %if.then ]
  ret i32 %ret_val.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_flash_read_u32(ptr nocapture noundef readonly %ha, i32 noundef %flash_addr, ptr nocapture noundef writeonly %p_data, i32 noundef %u32_word_count) local_unnamed_addr #0 align 64 {
entry:
  %u32_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_word) #6
  %0 = ptrtoint ptr %u32_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_word, align 4, !annotation !383
  %call = tail call fastcc i32 @qla4_83xx_flash_lock(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.exit_lock_error_crit_edge, label %if.end

entry.exit_lock_error_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_lock_error

if.end:                                           ; preds = %entry
  %and = and i32 %flash_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u32_word_count)
  %cmp343 = icmp sgt i32 %u32_word_count, 0
  br i1 %cmp343, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.exit_flash_read_crit_edge

for.cond.preheader.exit_flash_read_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_flash_read

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %flash_addr) #9
  br label %exit_flash_read

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %addr.046 = phi i32 [ %add, %if.end23.for.body_crit_edge ], [ %flash_addr, %for.cond.preheader.for.body_crit_edge ]
  %i.045 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p_data.addr.044 = phi ptr [ %add.ptr, %if.end23.for.body_crit_edge ], [ %p_data, %for.cond.preheader.for.body_crit_edge ]
  %and4 = and i32 %addr.046, -65536
  %call5 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 1108410416, i32 noundef %and4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev11 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %addr.046) #9
  br label %exit_flash_read

if.end13:                                         ; preds = %for.body
  %and14 = and i32 %addr.046, 65535
  %or = or i32 %and14, 1108672512
  %call15 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %or, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %pdev21 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev21, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev22, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %addr.046) #9
  br label %exit_flash_read

if.end23:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u32_word, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %p_data.addr.044 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %p_data.addr.044, align 4
  %add.ptr = getelementptr i8, ptr %p_data.addr.044, i32 4
  %add = add i32 %addr.046, 4
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %u32_word_count
  br i1 %exitcond.not, label %if.end23.exit_flash_read_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end23.exit_flash_read_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_flash_read

exit_flash_read:                                  ; preds = %if.end23.exit_flash_read_crit_edge, %do.end20, %do.end10, %do.end, %for.cond.preheader.exit_flash_read_crit_edge
  %ret_val.1 = phi i32 [ 1, %do.end ], [ 1, %do.end10 ], [ 1, %do.end20 ], [ 0, %for.cond.preheader.exit_flash_read_crit_edge ], [ 0, %if.end23.exit_flash_read_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %11 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %12, 13568
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -16777216) #6, !srcloc !382
  %14 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i3.i = add i32 %15, 14420
  %16 = inttoptr i32 %add.i3.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  br label %exit_lock_error

exit_lock_error:                                  ; preds = %exit_flash_read, %entry.exit_lock_error_crit_edge
  %ret_val.2 = phi i32 [ 1, %entry.exit_lock_error_crit_edge ], [ %ret_val.1, %exit_flash_read ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_word) #6
  ret i32 %ret_val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_83xx_flash_lock(ptr nocapture noundef readonly %ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i19 = add i32 %1, 14416
  %2 = inttoptr i32 %add.i19 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not20 = icmp eq i32 %3, 0
  br i1 %tobool.not20, label %entry.if.end_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end4.if.end_crit_edge, %entry.if.end_crit_edge
  %timeout.021 = phi i32 [ %inc, %if.end4.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %timeout.021)
  %exitcond = icmp eq i32 %timeout.021, 499
  br i1 %exitcond, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase.i, align 16
  %add.i14 = add i32 %5, 13568
  %6 = inttoptr i32 %add.i14 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !379
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %11 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %func_num, align 8
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef %conv, i32 noundef %8) #9
  br label %while.end

if.end4:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %timeout.021, 1
  tail call void @msleep(i32 noundef 20) #6
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %14, 14416
  %15 = inttoptr i32 %add.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end4.if.end_crit_edge, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end4.if.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %if.then2, %entry.while.end_crit_edge
  %ret_val.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end4.while.end_crit_edge ]
  %func_num5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %17 = ptrtoint ptr %func_num5 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %func_num5, align 8
  %conv6 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv6) #6
  %20 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nx_pcibase.i, align 16
  %add.i16 = add i32 %21, 13568
  %22 = inttoptr i32 %add.i16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #6, !srcloc !382
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_lockless_flash_read_u32(ptr nocapture noundef readonly %ha, i32 noundef %flash_addr, ptr nocapture noundef writeonly %p_data, i32 noundef %u32_word_count) local_unnamed_addr #0 align 64 {
entry:
  %u32_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u32_word) #6
  %0 = ptrtoint ptr %u32_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u32_word, align 4, !annotation !383
  %and = and i32 %flash_addr, 65535
  %and1 = and i32 %flash_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %flash_addr) #9
  br label %exit_lockless_read

if.end:                                           ; preds = %entry
  %call = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 1108410416, i32 noundef %flash_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev6 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev6, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %flash_addr) #9
  br label %exit_lockless_read

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %u32_word_count, 2
  %add = add i32 %mul, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp9 = icmp ugt i32 %add, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u32_word_count)
  %cmp11101.not = icmp eq i32 %u32_word_count, 0
  br i1 %cmp9, label %for.cond.preheader, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %if.end8
  br i1 %cmp11101.not, label %for.cond36.preheader.exit_lockless_read_crit_edge, label %for.cond36.preheader.for.body38_crit_edge

for.cond36.preheader.for.body38_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body38

for.cond36.preheader.exit_lockless_read_crit_edge: ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_lockless_read

for.cond.preheader:                               ; preds = %if.end8
  br i1 %cmp11101.not, label %for.cond.preheader.exit_lockless_read_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.exit_lockless_read_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_lockless_read

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %addr.0105 = phi i32 [ %add22, %for.inc.for.body_crit_edge ], [ %flash_addr, %for.cond.preheader.for.body_crit_edge ]
  %flash_offset.0104 = phi i32 [ %flash_offset.1, %for.inc.for.body_crit_edge ], [ %and, %for.cond.preheader.for.body_crit_edge ]
  %i.0103 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %p_data.addr.0102 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %p_data, %for.cond.preheader.for.body_crit_edge ]
  %and12 = and i32 %addr.0105, 65535
  %or = or i32 %and12, 1108672512
  %call13 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %or, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev19 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev20, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %addr.0105) #9
  br label %exit_lockless_read

if.end21:                                         ; preds = %for.body
  %7 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u32_word, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %p_data.addr.0102 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %p_data.addr.0102, align 4
  %add.ptr = getelementptr i8, ptr %p_data.addr.0102, i32 4
  %add22 = add i32 %addr.0105, 4
  %add23 = add i32 %flash_offset.0104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add23)
  %cmp24 = icmp ugt i32 %add23, 65535
  br i1 %cmp24, label %if.then25, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then25:                                        ; preds = %if.end21
  %call26 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 1108410416, i32 noundef %add22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 1
  br i1 %cmp27, label %do.end31, label %if.then25.for.inc_crit_edge

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %pdev32 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %11 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev32, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev33, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %add22) #9
  br label %exit_lockless_read

for.inc:                                          ; preds = %if.then25.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %flash_offset.1 = phi i32 [ %add23, %if.end21.for.inc_crit_edge ], [ 0, %if.then25.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0103, 1
  %exitcond112.not = icmp eq i32 %inc, %u32_word_count
  br i1 %exitcond112.not, label %for.inc.exit_lockless_read_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.exit_lockless_read_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_lockless_read

for.body38:                                       ; preds = %if.end49.for.body38_crit_edge, %for.cond36.preheader.for.body38_crit_edge
  %addr.1100 = phi i32 [ %add51, %if.end49.for.body38_crit_edge ], [ %flash_addr, %for.cond36.preheader.for.body38_crit_edge ]
  %i.199 = phi i32 [ %inc53, %if.end49.for.body38_crit_edge ], [ 0, %for.cond36.preheader.for.body38_crit_edge ]
  %p_data.addr.198 = phi ptr [ %add.ptr50, %if.end49.for.body38_crit_edge ], [ %p_data, %for.cond36.preheader.for.body38_crit_edge ]
  %and39 = and i32 %addr.1100, 65535
  %or40 = or i32 %and39, 1108672512
  %call41 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %or40, ptr noundef nonnull %u32_word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %do.end46, label %if.end49

do.end46:                                         ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  %pdev47 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %13 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev48, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %addr.1100) #9
  br label %exit_lockless_read

if.end49:                                         ; preds = %for.body38
  %15 = ptrtoint ptr %u32_word to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u32_word, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %p_data.addr.198 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %p_data.addr.198, align 4
  %add.ptr50 = getelementptr i8, ptr %p_data.addr.198, i32 4
  %add51 = add i32 %addr.1100, 4
  %inc53 = add nuw i32 %i.199, 1
  %exitcond.not = icmp eq i32 %inc53, %u32_word_count
  br i1 %exitcond.not, label %if.end49.exit_lockless_read_crit_edge, label %if.end49.for.body38_crit_edge

if.end49.for.body38_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

if.end49.exit_lockless_read_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_lockless_read

exit_lockless_read:                               ; preds = %if.end49.exit_lockless_read_crit_edge, %do.end46, %for.inc.exit_lockless_read_crit_edge, %do.end31, %do.end18, %for.cond.preheader.exit_lockless_read_crit_edge, %for.cond36.preheader.exit_lockless_read_crit_edge, %do.end5, %do.end
  %ret_val.3 = phi i32 [ 1, %do.end ], [ 1, %do.end5 ], [ 1, %do.end18 ], [ 1, %do.end31 ], [ 1, %do.end46 ], [ %call, %for.cond.preheader.exit_lockless_read_crit_edge ], [ %call, %for.cond36.preheader.exit_lockless_read_crit_edge ], [ 0, %for.inc.exit_lockless_read_crit_edge ], [ 0, %if.end49.exit_lockless_read_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u32_word) #6
  ret i32 %ret_val.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_rom_lock_recovery(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qla4_83xx_flash_lock(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %2 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %3, 13568
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -16777216) #6, !srcloc !382
  %5 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i3.i = add i32 %6, 14420
  %7 = inttoptr i32 %add.i3.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_drv_lock(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i85 = add i32 %1, 14440
  %2 = inttoptr i32 %add.i85 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not86 = icmp eq i32 %3, 0
  br i1 %tobool.not86, label %if.end.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %func_num13 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  br label %if.end

if.then:                                          ; preds = %if.end46.if.then_crit_edge, %entry.if.then_crit_edge
  %ret_val.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %ret_val.1, %if.end46.if.then_crit_edge ]
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase.i, align 16
  %add.i70 = add i32 %5, 13572
  %6 = inttoptr i32 %add.i70 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !379
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %add = add i32 %8, 256
  %and = and i32 %add, -256
  %func_num2 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %9 = ptrtoint ptr %func_num2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %func_num2, align 8
  %conv = zext i16 %10 to i32
  %or = or i32 %and, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %12 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nx_pcibase.i, align 16
  %add.i72 = add i32 %13, 13572
  %14 = inttoptr i32 %add.i72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !382
  br label %while.end

if.end:                                           ; preds = %if.end46.if.end_crit_edge, %if.end.lr.ph
  %first_owner.089 = phi i32 [ 0, %if.end.lr.ph ], [ %first_owner.179, %if.end46.if.end_crit_edge ]
  %ret_val.088 = phi i32 [ 0, %if.end.lr.ph ], [ %ret_val.1, %if.end46.if.end_crit_edge ]
  %timeout.087 = phi i32 [ 0, %if.end.lr.ph ], [ %timeout.1, %if.end46.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.087)
  %cmp3 = icmp eq i32 %timeout.087, 0
  br i1 %cmp3, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct = getelementptr inbounds %struct.isp_operations, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %rd_reg_direct to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_reg_direct, align 4
  %call6 = tail call i32 %18(ptr noundef %ha, i32 noundef 13572) #6
  br label %if.end46

if.end7:                                          ; preds = %if.end
  %inc = add i32 %timeout.087, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp8 = icmp sgt i32 %inc, 9
  br i1 %cmp8, label %if.then10, label %if.end7.if.end46_crit_edge

if.end7.if.end46_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then10:                                        ; preds = %if.end7
  %19 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nx_pcibase.i, align 16
  %add.i74 = add i32 %20, 13572
  %21 = inttoptr i32 %add.i74 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !379
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %and12 = and i32 %23, 255
  %shr = lshr i32 %23, 8
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %func_num13, align 8
  %conv14 = zext i16 %27 to i32
  %and15 = and i32 %first_owner.089, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv14, i32 noundef %and12, i32 noundef %shr, i32 noundef %and15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %first_owner.089, i32 %23)
  %cmp16.not = icmp eq i32 %first_owner.089, %23
  br i1 %cmp16.not, label %if.else, label %do.end21

do.end21:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %func_num13, align 8
  %conv25 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev23, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %conv25) #9
  br label %if.end46

if.else:                                          ; preds = %if.then10
  %32 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rd_reg_direct.i, align 4
  %call.i = tail call i32 %35(ptr noundef %ha, i32 noundef 14236) #6
  %and.i = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.else.do.end40_crit_edge

if.else.do.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

if.end.i:                                         ; preds = %if.else
  %36 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr_reg_direct.i, align 4
  %40 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %func_num13, align 8
  %conv.i = zext i16 %41 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %or.i = or i32 %shl.i, 1
  tail call void %39(ptr noundef %ha, i32 noundef 14236, i32 noundef %or.i) #6
  tail call void @msleep(i32 noundef 200) #6
  %42 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct3.i = getelementptr inbounds %struct.isp_operations, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %rd_reg_direct3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rd_reg_direct3.i, align 4
  %call4.i = tail call i32 %45(ptr noundef %ha, i32 noundef 14236) #6
  %and5.i = and i32 %call4.i, 60
  %46 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %func_num13, align 8
  %conv7.i = zext i16 %47 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %shl8.i)
  %cmp9.not.i = icmp eq i32 %and5.i, %shl8.i
  br i1 %cmp9.not.i, label %do.end.i, label %if.end.i.do.end40_crit_edge

if.end.i.do.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end.i:                                         ; preds = %if.end.i
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef %conv7.i) #9
  %50 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct16.i = getelementptr inbounds %struct.isp_operations, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %wr_reg_direct16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wr_reg_direct16.i, align 4
  %54 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %func_num13, align 8
  %conv18.i = zext i16 %55 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 2
  %or20.i = or i32 %shl19.i, 2
  tail call void %53(ptr noundef %ha, i32 noundef 14236, i32 noundef %or20.i) #6
  %56 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct22.i = getelementptr inbounds %struct.isp_operations, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %wr_reg_direct22.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr_reg_direct22.i, align 4
  tail call void %59(ptr noundef %ha, i32 noundef 13572, i32 noundef 255) #6
  %60 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct24.i = getelementptr inbounds %struct.isp_operations, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %rd_reg_direct24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rd_reg_direct24.i, align 4
  %call25.i = tail call i32 %63(ptr noundef %ha, i32 noundef 14444) #6
  %64 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct27.i = getelementptr inbounds %struct.isp_operations, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %wr_reg_direct27.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr_reg_direct27.i, align 4
  tail call void %67(ptr noundef %ha, i32 noundef 14236, i32 noundef 0) #6
  %68 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct29.i = getelementptr inbounds %struct.isp_operations, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %rd_reg_direct29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rd_reg_direct29.i, align 4
  %call30.i = tail call i32 %71(ptr noundef %ha, i32 noundef 14440) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool.not.i, label %do.end.i.do.end40_crit_edge, label %do.end32

do.end.i.do.end40_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end32:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct33.i = getelementptr inbounds %struct.isp_operations, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %rd_reg_direct33.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rd_reg_direct33.i, align 4
  %call34.i = tail call i32 %75(ptr noundef %ha, i32 noundef 13572) #6
  %add.i75 = add i32 %call34.i, 256
  %and35.i = and i32 %add.i75, -256
  %76 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %func_num13, align 8
  %conv37.i = zext i16 %77 to i32
  %or38.i = or i32 %and35.i, %conv37.i
  %78 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %isp_ops.i, align 4
  %wr_reg_direct40.i = getelementptr inbounds %struct.isp_operations, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %wr_reg_direct40.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wr_reg_direct40.i, align 4
  tail call void %81(ptr noundef %ha, i32 noundef 13572, i32 noundef %or38.i) #6
  %82 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %func_num13, align 8
  %conv36 = zext i16 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev34, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef %conv36) #9
  br label %while.end

do.end40:                                         ; preds = %do.end.i.do.end40_crit_edge, %if.end.i.do.end40_crit_edge, %if.else.do.end40_crit_edge
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %func_num13 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %func_num13, align 8
  %conv44 = zext i16 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev42, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, i32 noundef %conv44) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %do.end21, %if.end7.if.end46_crit_edge, %if.end7.thread
  %first_owner.179 = phi i32 [ %first_owner.089, %do.end21 ], [ %first_owner.089, %do.end40 ], [ %first_owner.089, %if.end7.if.end46_crit_edge ], [ %call6, %if.end7.thread ]
  %timeout.1 = phi i32 [ 0, %do.end21 ], [ 0, %do.end40 ], [ %inc, %if.end7.if.end46_crit_edge ], [ 1, %if.end7.thread ]
  %ret_val.1 = phi i32 [ %ret_val.088, %do.end21 ], [ 1, %do.end40 ], [ %ret_val.088, %if.end7.if.end46_crit_edge ], [ %ret_val.088, %if.end7.thread ]
  tail call void @msleep(i32 noundef 200) #6
  %90 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %91, 14440
  %92 = inttoptr i32 %add.i to ptr
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %tobool.not = icmp eq i32 %93, 0
  br i1 %tobool.not, label %if.end46.if.end_crit_edge, label %if.end46.if.then_crit_edge

if.end46.if.then_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end46.if.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.end:                                        ; preds = %do.end32, %if.then
  %ret_val.2 = phi i32 [ %ret_val.0.lcssa, %if.then ], [ 0, %do.end32 ]
  ret i32 %ret_val.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_drv_unlock(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %1, 13572
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %and = and i32 %4, 255
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %5 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %func_num, align 8
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp.not = icmp eq i32 %and, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %and) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %4, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %10 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nx_pcibase.i, align 16
  %add.i14 = add i32 %11, 13572
  %12 = inttoptr i32 %add.i14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #6, !srcloc !382
  %13 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase.i, align 16
  %add.i16 = add i32 %14, 14444
  %15 = inttoptr i32 %add.i16 to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_set_idc_dontreset(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %1, 14224
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %4 = or i32 %3, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nx_pcibase.i, align 16
  %add.i9 = add i32 %6, 14224
  %7 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #6, !srcloc !382
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %9) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_clear_idc_dontreset(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %1, 14224
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nx_pcibase.i, align 16
  %add.i9 = add i32 %6, 14224
  %7 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #6, !srcloc !382
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i32 noundef %9) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_idc_dontreset(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %0 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %1, 14224
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !379
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %and = and i32 %4, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_can_perform_reset(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_tbl = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %0 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %nx_pcibase.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %4 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nx_pcibase.i, align 16
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !379
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %9 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nx_pcibase.i, align 16
  %add.i100 = add i32 %10, 14308
  %11 = inttoptr i32 %add.i100 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !379
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %14 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_tbl, align 8
  %arrayidx3 = getelementptr i32, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3, align 4
  %18 = ptrtoint ptr %nx_pcibase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nx_pcibase.i, align 16
  %add.i102 = add i32 %19, %17
  %20 = inttoptr i32 %add.i102 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !379
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %entry
  %iscsi_func_low.0110 = phi i32 [ 0, %entry ], [ %iscsi_func_low.2, %if.end40.for.body_crit_edge ]
  %iscsi_present.0109 = phi i32 [ 0, %entry ], [ %iscsi_present.1, %if.end40.for.body_crit_edge ]
  %nibble.0108 = phi i32 [ 0, %entry ], [ %inc45, %if.end40.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %entry ], [ %inc44, %if.end40.for.body_crit_edge ]
  %dev_part.0105 = phi i32 [ %8, %entry ], [ %spec.select, %if.end40.for.body_crit_edge ]
  %mul = shl i32 %nibble.0108, 2
  %shl = shl i32 15, %mul
  %and = and i32 %shl, %dev_part.0105
  %shr = ashr i32 %and, %mul
  %and7 = and i32 %shr, 3
  %23 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7, label %for.body.if.end40_crit_edge [
    i32 1, label %if.then
    i32 3, label %if.then22
  ]

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then:                                          ; preds = %for.body
  %shl16 = shl nuw nsw i32 1, %i.0106
  %and17 = and i32 %shl16, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.then.if.end40_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then22:                                        ; preds = %for.body
  %shl25 = shl nuw nsw i32 1, %i.0106
  %and26 = and i32 %shl25, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then22.if.end40_crit_edge, label %if.then28

if.then22.if.end40_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iscsi_present.0109)
  %tobool29.not = icmp eq i32 %iscsi_present.0109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %iscsi_func_low.0110, i32 %i.0106)
  %cmp32 = icmp sgt i32 %iscsi_func_low.0110, %i.0106
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp32
  %spec.select103 = select i1 %or.cond, i32 %i.0106, i32 %iscsi_func_low.0110
  %inc37 = add i32 %iscsi_present.0109, 1
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %if.then22.if.end40_crit_edge, %if.then.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %iscsi_present.1 = phi i32 [ %iscsi_present.0109, %if.then.if.end40_crit_edge ], [ %inc37, %if.then28 ], [ %iscsi_present.0109, %if.then22.if.end40_crit_edge ], [ %iscsi_present.0109, %for.body.if.end40_crit_edge ]
  %iscsi_func_low.2 = phi i32 [ %iscsi_func_low.0110, %if.then.if.end40_crit_edge ], [ %spec.select103, %if.then28 ], [ %iscsi_func_low.0110, %if.then22.if.end40_crit_edge ], [ %iscsi_func_low.0110, %for.body.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nibble.0108)
  %cmp41 = icmp eq i32 %nibble.0108, 7
  %spec.select = select i1 %cmp41, i32 %13, i32 %dev_part.0105
  %inc44 = add nuw nsw i32 %i.0106, 1
  %nibble.0.op = add i32 %nibble.0108, 1
  %inc45 = select i1 %cmp41, i32 1, i32 %nibble.0.op
  %exitcond.not = icmp eq i32 %inc44, 16
  br i1 %exitcond.not, label %land.lhs.true.critedge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.lhs.true.critedge:                           ; preds = %if.end40
  %func_num47 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %24 = ptrtoint ptr %func_num47 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %func_num47, align 8
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iscsi_func_low.2, i32 %conv)
  %cmp48 = icmp eq i32 %iscsi_func_low.2, %conv
  br i1 %cmp48, label %do.body, label %land.lhs.true.critedge.cleanup_crit_edge

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %26 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp51 = icmp eq i32 %26, 2
  br i1 %cmp51, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %iscsi_func_low.2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.critedge.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %land.lhs.true.critedge.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_need_reset_handler(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #9
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ha, align 4
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %5 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %do.end5, label %do.body1.do.end9_crit_edge

do.body1.do.end9_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev7, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #9
  br label %do.end9

do.end9:                                          ; preds = %do.end5, %do.body1.do.end9_crit_edge
  tail call void @qla4_8xxx_set_rst_ready(ptr noundef %ha) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %nx_dev_init_timeout = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %9 = ptrtoint ptr %nx_dev_init_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nx_dev_init_timeout, align 4
  %mul.neg = mul i32 %10, -100
  %add.neg = sub i32 %mul.neg, %8
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  br label %do.body10

do.body10:                                        ; preds = %if.end18.do.body10_crit_edge, %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp11 = icmp sgt i32 %sub, -1
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev17, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47) #9
  br label %if.end61

if.end18:                                         ; preds = %do.body10
  %14 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idc_unlock, align 4
  tail call void %17(ptr noundef %ha) #6
  tail call void @msleep(i32 noundef 1000) #6
  %18 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idc_lock, align 4
  %call20 = tail call i32 %21(ptr noundef %ha) #6
  %22 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd_reg_direct.i, align 4
  %26 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %25(ptr noundef %ha, i32 noundef %29) #6
  %cmp23 = icmp eq i32 %call.i, 4
  br i1 %cmp23, label %if.end18.do.body10_crit_edge, label %if.end18.if.end61_crit_edge

if.end18.if.end61_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end18.do.body10_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

if.else:                                          ; preds = %entry
  tail call void @qla4_8xxx_set_rst_ready(ptr noundef %ha) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %nx_reset_timeout = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 105
  %31 = ptrtoint ptr %nx_reset_timeout to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nx_reset_timeout, align 8
  %isp_ops.i99 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %33 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %isp_ops.i99, align 4
  %rd_reg_direct.i100 = getelementptr inbounds %struct.isp_operations, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %rd_reg_direct.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rd_reg_direct.i100, align 4
  %reg_tbl.i101 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %37 = ptrtoint ptr %reg_tbl.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_tbl.i101, align 8
  %arrayidx.i102 = getelementptr i32, ptr %38, i32 5
  %39 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i102, align 4
  %call.i103 = tail call i32 %36(ptr noundef %ha, i32 noundef %40) #6
  %41 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %isp_ops.i99, align 4
  %rd_reg_direct.i105 = getelementptr inbounds %struct.isp_operations, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %rd_reg_direct.i105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rd_reg_direct.i105, align 4
  %45 = ptrtoint ptr %reg_tbl.i101 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_tbl.i101, align 8
  %arrayidx.i107 = getelementptr i32, ptr %46, i32 3
  %47 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i107, align 4
  %call.i108 = tail call i32 %44(ptr noundef %ha, i32 noundef %48) #6
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev33, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.47, i32 noundef %call.i103, i32 noundef %call.i108) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i103, i32 %call.i108)
  %cmp34.not125 = icmp eq i32 %call.i103, %call.i108
  br i1 %cmp34.not125, label %if.else.if.end58_crit_edge, label %while.body.lr.ph

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

while.body.lr.ph:                                 ; preds = %if.else
  %mul25.neg = mul i32 %32, -100
  %add26.neg = sub i32 %mul25.neg, %30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub35134 = add i32 %add26.neg, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub35134)
  %cmp36135 = icmp sgt i32 %sub35134, -1
  br i1 %cmp36135, label %while.body.lr.ph.do.end40_crit_edge, label %while.body.lr.ph.if.end43_crit_edge

while.body.lr.ph.if.end43_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end43

while.body.lr.ph.do.end40_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

while.body:                                       ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub35 = add i32 %add26.neg, %52
  %cmp36 = icmp sgt i32 %sub35, -1
  br i1 %cmp36, label %while.body.do.end40_crit_edge, label %while.body.if.end43_crit_edge

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

while.body.do.end40_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end40:                                         ; preds = %while.body.do.end40_crit_edge, %while.body.lr.ph.do.end40_crit_edge
  %drv_active.0127.lcssa = phi i32 [ %call.i108, %while.body.lr.ph.do.end40_crit_edge ], [ %call.i121, %while.body.do.end40_crit_edge ]
  %drv_state.0126.lcssa = phi i32 [ %call.i103, %while.body.lr.ph.do.end40_crit_edge ], [ %call.i116, %while.body.do.end40_crit_edge ]
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev42, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.60, i32 noundef %drv_state.0126.lcssa, i32 noundef %drv_active.0127.lcssa) #9
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %xor = xor i32 %drv_active.0127.lcssa, %drv_state.0126.lcssa
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev57, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.47, i32 noundef %xor) #9
  %and = and i32 %drv_active.0127.lcssa, %drv_state.0126.lcssa
  %57 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %isp_ops.i99, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr_reg_direct.i, align 4
  %61 = ptrtoint ptr %reg_tbl.i101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_tbl.i101, align 8
  %arrayidx.i111 = getelementptr i32, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i111, align 4
  tail call void %60(ptr noundef %ha, i32 noundef %64, i32 noundef %and) #6
  br label %if.end58

if.end43:                                         ; preds = %while.body.if.end43_crit_edge, %while.body.lr.ph.if.end43_crit_edge
  %65 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %isp_ops.i99, align 4
  %idc_unlock45 = getelementptr inbounds %struct.isp_operations, ptr %66, i32 0, i32 21
  %67 = ptrtoint ptr %idc_unlock45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %idc_unlock45, align 4
  tail call void %68(ptr noundef %ha) #6
  tail call void @msleep(i32 noundef 1000) #6
  %69 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %isp_ops.i99, align 4
  %idc_lock47 = getelementptr inbounds %struct.isp_operations, ptr %70, i32 0, i32 20
  %71 = ptrtoint ptr %idc_lock47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %idc_lock47, align 4
  %call48 = tail call i32 %72(ptr noundef %ha) #6
  %73 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %isp_ops.i99, align 4
  %rd_reg_direct.i113 = getelementptr inbounds %struct.isp_operations, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %rd_reg_direct.i113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rd_reg_direct.i113, align 4
  %77 = ptrtoint ptr %reg_tbl.i101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_tbl.i101, align 8
  %arrayidx.i115 = getelementptr i32, ptr %78, i32 5
  %79 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i115, align 4
  %call.i116 = tail call i32 %76(ptr noundef %ha, i32 noundef %80) #6
  %81 = ptrtoint ptr %isp_ops.i99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %isp_ops.i99, align 4
  %rd_reg_direct.i118 = getelementptr inbounds %struct.isp_operations, ptr %82, i32 0, i32 16
  %83 = ptrtoint ptr %rd_reg_direct.i118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rd_reg_direct.i118, align 4
  %85 = ptrtoint ptr %reg_tbl.i101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_tbl.i101, align 8
  %arrayidx.i120 = getelementptr i32, ptr %86, i32 3
  %87 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i120, align 4
  %call.i121 = tail call i32 %84(ptr noundef %ha, i32 noundef %88) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i116, i32 %call.i121)
  %cmp34.not = icmp eq i32 %call.i116, %call.i121
  br i1 %cmp34.not, label %if.end43.if.end58_crit_edge, label %while.body

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %if.end43.if.end58_crit_edge, %do.end40, %if.else.if.end58_crit_edge
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %ha) #6
  %call60 = tail call i32 @qla4_8xxx_device_bootstrap(ptr noundef %ha) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %if.end18.if.end61_crit_edge, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_8xxx_set_rst_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_device_bootstrap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_get_idc_param(ptr nocapture noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %idc_params = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idc_params) #6
  %0 = ptrtoint ptr %idc_params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idc_params, align 4, !annotation !383
  %call = call i32 @qla4_83xx_flash_read_u32(ptr noundef %ha, i32 noundef 4096032, ptr noundef nonnull %idc_params, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %idc_params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idc_params, align 4
  %and = and i32 %2, 65535
  %shr = lshr i32 %2, 16
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %.sink19 = phi i32 [ %and, %if.then ], [ 30, %entry.do.body_crit_edge ]
  %.sink = phi i32 [ %shr, %if.then ], [ 10, %entry.do.body_crit_edge ]
  %3 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 104
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink19, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 105
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %7 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %13) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idc_params) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_read_reset_template(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_error = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 1
  %0 = ptrtoint ptr %seq_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq_error, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef 8192) #10
  %buff = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 4
  %1 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %buff, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #9
  br label %exit_read_reset_template

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %4 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp7 = icmp eq i32 %4, 2
  br i1 %cmp7, label %do.end11, label %if.end.do.end16_crit_edge

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev12 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev13, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 4) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %if.end.do.end16_crit_edge
  %call17 = tail call i32 @qla4_83xx_flash_read_u32(ptr noundef %ha, i32 noundef 5177344, ptr noundef nonnull %call, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %pdev23 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %7 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev24, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68) #9
  br label %exit_read_template_error

if.end25:                                         ; preds = %do.end16
  %9 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buff, align 4
  %hdr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %hdr, align 4
  %hdr_size = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %hdr_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %hdr_size, align 1
  %conv = zext i16 %13 to i32
  %div176 = lshr i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div176)
  %cmp31.not = icmp eq i32 %div176, 4
  br i1 %cmp31.not, label %lor.lhs.false, label %if.end25.do.end41_crit_edge

if.end25.do.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

lor.lhs.false:                                    ; preds = %if.end25
  %signature = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %signature to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %signature, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13570, i16 %15)
  %cmp36.not = icmp eq i16 %15, -13570
  br i1 %cmp36.not, label %if.end44, label %lor.lhs.false.do.end41_crit_edge

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end41:                                         ; preds = %lor.lhs.false.do.end41_crit_edge, %if.end25.do.end41_crit_edge
  %pdev42 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev43, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68, i32 noundef %div176, i32 noundef 4) #9
  br label %exit_read_template_error

if.end44:                                         ; preds = %lor.lhs.false
  %add = or i32 %conv, 5177344
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %size = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %10, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %size, align 1
  %conv57 = zext i16 %19 to i32
  %sub = sub nsw i32 %conv57, %conv
  %div62177 = lshr i32 %sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %20 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp64 = icmp eq i32 %20, 2
  br i1 %cmp64, label %do.end69, label %if.end44.do.end78_crit_edge

if.end44.do.end78_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

do.end69:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %pdev70 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %21 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev70, align 8
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev71, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.68, i32 noundef %conv57) #9
  br label %do.end78

do.end78:                                         ; preds = %do.end69, %if.end44.do.end78_crit_edge
  %call79 = tail call i32 @qla4_83xx_flash_read_u32(ptr noundef %ha, i32 noundef %add, ptr noundef %add.ptr, i32 noundef %div62177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80.not = icmp eq i32 %call79, 0
  br i1 %cmp80.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #8
  %pdev86 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %23 = ptrtoint ptr %pdev86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev86, align 8
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev87, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68) #9
  br label %exit_read_template_error

if.end88:                                         ; preds = %do.end78
  %25 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdr, align 4
  %size.i = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp17.not.i = icmp ult i16 %28, 2
  br i1 %cmp17.not.i, label %if.end88.do.body97_crit_edge, label %while.body.preheader.i

if.end88.do.body97_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

while.body.preheader.i:                           ; preds = %if.end88
  %29 = lshr i16 %28, 1
  %div.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buff, align 4
  br label %while.body.i

while.cond5.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %tobool.not21.i = icmp ult i32 %add.i, 65536
  br i1 %tobool.not21.i, label %while.cond5.preheader.i.do.body97_crit_edge, label %while.cond5.preheader.i.while.body6.i_crit_edge

while.cond5.preheader.i.while.body6.i_crit_edge:  ; preds = %while.cond5.preheader.i
  br label %while.body6.i

while.cond5.preheader.i.do.body97_crit_edge:      ; preds = %while.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %u16_count.020.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div.i, %while.body.preheader.i ]
  %buff.019.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %31, %while.body.preheader.i ]
  %sum.018.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %dec.i = add nsw i32 %u16_count.020.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %buff.019.i, i32 1
  %32 = ptrtoint ptr %buff.019.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buff.019.i, align 2
  %conv4.i = zext i16 %33 to i32
  %add.i = add i32 %sum.018.i, %conv4.i
  %cmp.i = icmp ugt i32 %u16_count.020.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.cond5.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body6.i:                                    ; preds = %while.body6.i.while.body6.i_crit_edge, %while.cond5.preheader.i.while.body6.i_crit_edge
  %sum.122.i = phi i32 [ %add8.i, %while.body6.i.while.body6.i_crit_edge ], [ %add.i, %while.cond5.preheader.i.while.body6.i_crit_edge ]
  %shr.i = lshr i32 %sum.122.i, 16
  %and.i = and i32 %sum.122.i, 65535
  %add8.i = add nuw nsw i32 %and.i, %shr.i
  %tobool.not.i = icmp ult i32 %add8.i, 65536
  br i1 %tobool.not.i, label %while.body6.i.do.body97_crit_edge, label %while.body6.i.while.body6.i_crit_edge

while.body6.i.while.body6.i_crit_edge:            ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body6.i

while.body6.i.do.body97_crit_edge:                ; preds = %while.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

do.body97:                                        ; preds = %while.body6.i.do.body97_crit_edge, %while.cond5.preheader.i.do.body97_crit_edge, %if.end88.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %34 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp98 = icmp eq i32 %34, 2
  br i1 %cmp98, label %do.end103, label %do.body97.do.end108_crit_edge

do.body97.do.end108_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %pdev104 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %35 = ptrtoint ptr %pdev104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev104, align 8
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev105, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.68) #9
  br label %do.end108

do.end108:                                        ; preds = %do.end103, %do.body97.do.end108_crit_edge
  %37 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buff, align 4
  %39 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdr, align 4
  %init_seq_offset = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %init_seq_offset to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %init_seq_offset, align 1
  %conv113 = zext i16 %42 to i32
  %add.ptr114 = getelementptr i8, ptr %38, i32 %conv113
  %init_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 7
  %43 = ptrtoint ptr %init_offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr114, ptr %init_offset, align 4
  %start_seq_offset = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %40, i32 0, i32 7
  %44 = ptrtoint ptr %start_seq_offset to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %start_seq_offset, align 1
  %conv120 = zext i16 %45 to i32
  %add.ptr121 = getelementptr i8, ptr %38, i32 %conv120
  %start_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 6
  %46 = ptrtoint ptr %start_offset to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr121, ptr %start_offset, align 4
  %hdr_size127 = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %40, i32 0, i32 4
  %47 = ptrtoint ptr %hdr_size127 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %hdr_size127, align 1
  %conv128 = zext i16 %48 to i32
  %add.ptr129 = getelementptr i8, ptr %38, i32 %conv128
  %stop_offset = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 5
  %49 = ptrtoint ptr %stop_offset to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr129, ptr %stop_offset, align 4
  %tobool.not.i178 = icmp eq ptr %38, null
  br i1 %tobool.not.i178, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %50 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116) #9
  br label %exit_read_reset_template

if.end.i:                                         ; preds = %do.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %52 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i179 = icmp eq i32 %52, 2
  br i1 %cmp.i179, label %do.end7.i, label %if.end.i.exit_read_reset_template_crit_edge

if.end.i.exit_read_reset_template_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_read_reset_template

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev8.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %53 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev8.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %38, align 1
  %conv.i = zext i8 %56 to i32
  %add.ptr.i = getelementptr i8, ptr %38, i32 1
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr.i, align 1
  %conv10.i = zext i8 %58 to i32
  %add.ptr11.i = getelementptr i8, ptr %38, i32 2
  %59 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr11.i, align 1
  %conv12.i = zext i8 %60 to i32
  %add.ptr13.i = getelementptr i8, ptr %38, i32 3
  %61 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr13.i, align 1
  %conv14.i = zext i8 %62 to i32
  %add.ptr15.i = getelementptr i8, ptr %38, i32 4
  %63 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr15.i, align 1
  %conv16.i = zext i8 %64 to i32
  %add.ptr17.i = getelementptr i8, ptr %38, i32 5
  %65 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr17.i, align 1
  %conv18.i = zext i8 %66 to i32
  %add.ptr19.i = getelementptr i8, ptr %38, i32 6
  %67 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr19.i, align 1
  %conv20.i = zext i8 %68 to i32
  %add.ptr21.i = getelementptr i8, ptr %38, i32 7
  %69 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr21.i, align 1
  %conv22.i = zext i8 %70 to i32
  %add.ptr23.i = getelementptr i8, ptr %38, i32 8
  %71 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr23.i, align 1
  %conv24.i = zext i8 %72 to i32
  %add.ptr25.i = getelementptr i8, ptr %38, i32 9
  %73 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr25.i, align 1
  %conv26.i = zext i8 %74 to i32
  %add.ptr27.i = getelementptr i8, ptr %38, i32 10
  %75 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr27.i, align 1
  %conv28.i = zext i8 %76 to i32
  %add.ptr29.i = getelementptr i8, ptr %38, i32 11
  %77 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr29.i, align 1
  %conv30.i = zext i8 %78 to i32
  %add.ptr31.i = getelementptr i8, ptr %38, i32 12
  %79 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %add.ptr31.i, align 1
  %conv32.i = zext i8 %80 to i32
  %add.ptr33.i = getelementptr i8, ptr %38, i32 13
  %81 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr33.i, align 1
  %conv34.i = zext i8 %82 to i32
  %add.ptr35.i = getelementptr i8, ptr %38, i32 14
  %83 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr35.i, align 1
  %conv36.i = zext i8 %84 to i32
  %add.ptr37.i = getelementptr i8, ptr %38, i32 15
  %85 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr37.i, align 1
  %conv38.i = zext i8 %86 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev9.i, ptr noundef nonnull @.str.118, i32 noundef %conv.i, i32 noundef %conv10.i, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i, i32 noundef %conv24.i, i32 noundef %conv26.i, i32 noundef %conv28.i, i32 noundef %conv30.i, i32 noundef %conv32.i, i32 noundef %conv34.i, i32 noundef %conv36.i, i32 noundef %conv38.i) #9
  br label %exit_read_reset_template

exit_read_template_error:                         ; preds = %do.end85, %do.end41, %do.end22
  %87 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buff, align 4
  tail call void @vfree(ptr noundef %88) #6
  br label %exit_read_reset_template

exit_read_reset_template:                         ; preds = %exit_read_template_error, %do.end7.i, %if.end.i.exit_read_reset_template_crit_edge, %do.end.i, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_start_firmware(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_tmplt.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144
  %0 = ptrtoint ptr %reset_tmplt.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reset_tmplt.i.i, align 4
  %stop_offset.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 5
  %1 = ptrtoint ptr %stop_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stop_offset.i.i, align 4
  tail call fastcc void @qla4_83xx_process_reset_template(ptr noundef %ha, ptr noundef %2) #6
  %seq_end.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 9
  %3 = ptrtoint ptr %seq_end.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seq_end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not.i.i = icmp eq i8 %4, 1
  br i1 %cmp.not.i.i, label %entry.qla4_83xx_process_stop_seq.exit.i_crit_edge, label %do.end.i.i

entry.qla4_83xx_process_stop_seq.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_process_stop_seq.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i.i, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) #9
  br label %qla4_83xx_process_stop_seq.exit.i

qla4_83xx_process_stop_seq.exit.i:                ; preds = %do.end.i.i, %entry.qla4_83xx_process_stop_seq.exit.i_crit_edge
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %7 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %8, 14224
  %9 = inttoptr i32 %add.i.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !379
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %qla4_83xx_process_stop_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = and i32 %11, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #6
  %13 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i22.i = add i32 %14, 14224
  %15 = inttoptr i32 %add.i22.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #6, !srcloc !382
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #9
  br label %if.end.i

if.else.i:                                        ; preds = %qla4_83xx_process_stop_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qla4_8xxx_get_minidump(ptr noundef %ha) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %init_offset.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 7
  %18 = ptrtoint ptr %init_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_offset.i.i, align 4
  tail call fastcc void @qla4_83xx_process_reset_template(ptr noundef %ha, ptr noundef %19) #6
  %20 = ptrtoint ptr %seq_end.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %seq_end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.not.i24.i = icmp eq i8 %21, 1
  br i1 %cmp.not.i24.i, label %if.end.i.qla4_83xx_process_init_seq.exit.i_crit_edge, label %do.end.i27.i

if.end.i.qla4_83xx_process_init_seq.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_process_init_seq.exit.i

do.end.i27.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i25.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %22 = ptrtoint ptr %pdev.i25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i25.i, align 8
  %dev.i26.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i26.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #9
  br label %qla4_83xx_process_init_seq.exit.i

qla4_83xx_process_init_seq.exit.i:                ; preds = %do.end.i27.i, %if.end.i.qla4_83xx_process_init_seq.exit.i_crit_edge
  %24 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i.i = add i32 %25, 13660
  %26 = inttoptr i32 %add.i.i.i to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !379
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %conv.i.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i73.i.i = add i32 %30, 13664
  %31 = inttoptr i32 %add.i73.i.i to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !379
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %.biased.i.i = add i32 %33, 15
  %size.0.i.i = and i32 %.biased.i.i, -16
  %div70.i.i = lshr i32 %.biased.i.i, 4
  %call3.i.i = tail call noalias ptr @vmalloc(i32 noundef %size.0.i.i) #10
  %cmp.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i.i, label %qla4_83xx_copy_bootloader.exit.thread.i, label %if.end6.i.i

qla4_83xx_copy_bootloader.exit.thread.i:          ; preds = %qla4_83xx_process_init_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i28.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %34 = ptrtoint ptr %pdev.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i28.i, align 8
  %dev.i29.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i29.i, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143) #9
  br label %do.end

if.end6.i.i:                                      ; preds = %qla4_83xx_process_init_seq.exit.i
  %div771.i.i = lshr exact i32 %size.0.i.i, 2
  %call8.i.i = tail call i32 @qla4_83xx_lockless_flash_read_u32(ptr noundef %ha, i32 noundef 65536, ptr noundef nonnull %call3.i.i, i32 noundef %div771.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i.i)
  %cmp9.i.i = icmp eq i32 %call8.i.i, 1
  br i1 %cmp9.i.i, label %if.end6.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge, label %do.body18.i.i

if.end6.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_copy_bootloader.exit.thread39.i

do.body18.i.i:                                    ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp19.i.i = icmp eq i32 %36, 2
  br i1 %cmp19.i.i, label %do.end24.i.i, label %do.body18.i.i.do.end29.i.i_crit_edge

do.body18.i.i.do.end29.i.i_crit_edge:             ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i.i

do.end24.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev25.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %37 = ptrtoint ptr %pdev25.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev25.i.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev26.i.i, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.143) #9
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %do.end24.i.i, %do.body18.i.i.do.end29.i.i_crit_edge
  %call30.i.i = tail call i32 @qla4_8xxx_ms_mem_write_128b(ptr noundef %ha, i64 noundef %conv.i.i, ptr noundef nonnull %call3.i.i, i32 noundef %div70.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i.i)
  %cmp31.i.i = icmp eq i32 %call30.i.i, 1
  br i1 %cmp31.i.i, label %do.end29.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge, label %do.body40.i.i

do.end29.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge: ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_copy_bootloader.exit.thread39.i

do.body40.i.i:                                    ; preds = %do.end29.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %39 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp41.i.i = icmp eq i32 %39, 2
  br i1 %cmp41.i.i, label %do.end46.i.i, label %do.body40.i.i.qla4_83xx_copy_bootloader.exit.i_crit_edge

do.body40.i.i.qla4_83xx_copy_bootloader.exit.i_crit_edge: ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_copy_bootloader.exit.i

do.end46.i.i:                                     ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev47.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %40 = ptrtoint ptr %pdev47.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev47.i.i, align 8
  %dev48.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev48.i.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.143, i32 noundef %size.0.i.i) #9
  br label %qla4_83xx_copy_bootloader.exit.i

qla4_83xx_copy_bootloader.exit.thread39.i:        ; preds = %do.end29.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge, %if.end6.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge
  %.str.145.sink.i = phi ptr [ @.str.145, %if.end6.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge ], [ @.str.151, %do.end29.i.i.qla4_83xx_copy_bootloader.exit.thread39.i_crit_edge ]
  %pdev15.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %42 = ptrtoint ptr %pdev15.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev15.i.i, align 8
  %dev16.i.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i.i, ptr noundef nonnull %.str.145.sink.i, ptr noundef nonnull @.str.143) #9
  tail call void @vfree(ptr noundef nonnull %call3.i.i) #6
  br label %do.end

qla4_83xx_copy_bootloader.exit.i:                 ; preds = %do.end46.i.i, %do.body40.i.i.qla4_83xx_copy_bootloader.exit.i_crit_edge
  tail call void @vfree(ptr noundef nonnull %call3.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool3.not.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool3.not.i, label %if.end10.i, label %qla4_83xx_copy_bootloader.exit.i.do.end_crit_edge

qla4_83xx_copy_bootloader.exit.i.do.end_crit_edge: ; preds = %qla4_83xx_copy_bootloader.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.i:                                       ; preds = %qla4_83xx_copy_bootloader.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i32.i = add i32 %45, 13820
  %46 = inttoptr i32 %add.i32.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #6, !srcloc !382
  %start_offset.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 6
  %47 = ptrtoint ptr %start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %start_offset.i.i, align 4
  tail call fastcc void @qla4_83xx_process_reset_template(ptr noundef %ha, ptr noundef %48) #6
  %template_end.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 10
  %49 = ptrtoint ptr %template_end.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %template_end.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.not.i33.i = icmp eq i8 %50, 1
  br i1 %cmp.not.i33.i, label %if.end10.i.do.body1_crit_edge, label %do.end.i36.i

if.end10.i.do.body1_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

do.end.i36.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i34.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %51 = ptrtoint ptr %pdev.i34.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i34.i, align 8
  %dev.i35.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev.i35.i, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #9
  br label %do.body1

do.end:                                           ; preds = %qla4_83xx_copy_bootloader.exit.i.do.end_crit_edge, %qla4_83xx_copy_bootloader.exit.thread39.i, %qla4_83xx_copy_bootloader.exit.thread.i
  %pdev8.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %53 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev8.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121) #9
  %55 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev8.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %exit_start_fw

do.body1:                                         ; preds = %do.end.i36.i, %if.end10.i.do.body1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %57 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp2 = icmp eq i32 %57, 2
  br i1 %cmp2, label %do.end6, label %do.body1.do.body.i.preheader_crit_edge

do.body1.do.body.i.preheader_crit_edge:           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.preheader

do.end6:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %pdev7 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %58 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev7, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev8, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90) #9
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %do.end6, %do.body1.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end7.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %dec.i, %if.end7.i.do.body.i_crit_edge ], [ 60, %do.body.i.preheader ]
  %60 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i28 = add i32 %61, 13904
  %62 = inttoptr i32 %add.i.i28 to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %63)
  %cmp.i = icmp eq i32 %63, 33488896
  br i1 %cmp.i, label %do.body1.i, label %if.end7.i

do.body1.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %64 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp2.i = icmp eq i32 %64, 2
  br i1 %cmp2.i, label %do.end.i, label %do.body1.i.exit_start_fw_crit_edge

do.body1.i.exit_start_fw_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_start_fw

do.end.i:                                         ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i29 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %65 = ptrtoint ptr %pdev.i29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i29, align 8
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i30, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 65281) #9
  br label %exit_start_fw

if.end7.i:                                        ; preds = %do.body.i
  tail call void @msleep(i32 noundef 500) #6
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i31 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i31, label %do.end17, label %if.end7.i.do.body.i_crit_edge

if.end7.i.do.body.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end17:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev18 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %67 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev18, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev19, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90) #9
  br label %exit_start_fw

exit_start_fw:                                    ; preds = %do.end17, %do.end.i, %do.body1.i.exit_start_fw_crit_edge, %do.end
  %ret_val.0 = phi i32 [ 1, %do.end ], [ 1, %do.end17 ], [ 0, %do.end.i ], [ 0, %do.body1.i.exit_start_fw_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_disable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 29, ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.qla4_83xx_disable_mbox_intrs.exit_crit_edge, label %if.then.i

entry.qla4_83xx_disable_mbox_intrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_disable_mbox_intrs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qla4_83xx_reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %0 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mbox_int.i = getelementptr inbounds %struct.device_reg_83xx, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mbox_int.i) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !384
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !385
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mbox_int4.i = getelementptr inbounds %struct.device_reg_83xx, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mbox_int4.i, i32 %3) #6, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !386
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %leg_int_mask.i = getelementptr inbounds %struct.device_reg_83xx, ptr %7, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %leg_int_mask.i, i32 16777216) #6, !srcloc !382
  br label %qla4_83xx_disable_mbox_intrs.exit

qla4_83xx_disable_mbox_intrs.exit:                ; preds = %if.then.i, %entry.qla4_83xx_disable_mbox_intrs.exit_crit_edge
  %call.i2 = tail call i32 @_test_and_clear_bit(i32 noundef 28, ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %qla4_83xx_disable_mbox_intrs.exit.qla4_83xx_disable_iocb_intrs.exit_crit_edge, label %if.then.i4

qla4_83xx_disable_mbox_intrs.exit.qla4_83xx_disable_iocb_intrs.exit_crit_edge: ; preds = %qla4_83xx_disable_mbox_intrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_disable_iocb_intrs.exit

if.then.i4:                                       ; preds = %qla4_83xx_disable_mbox_intrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @qla4_8xxx_intr_disable(ptr noundef %ha) #6
  br label %qla4_83xx_disable_iocb_intrs.exit

qla4_83xx_disable_iocb_intrs.exit:                ; preds = %if.then.i4, %qla4_83xx_disable_mbox_intrs.exit.qla4_83xx_disable_iocb_intrs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_enable_mbox_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ha, align 4
  %2 = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !387
  tail call void @arm_heavy_mb() #6
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %3 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_83xx_reg, align 16
  %mbox_int = getelementptr inbounds %struct.device_reg_83xx, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mbox_int, i32 67108864) #6, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !388
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg, align 16
  %leg_int_mask = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %leg_int_mask, i32 0) #6, !srcloc !382
  tail call void @_set_bit(i32 noundef 29, ptr noundef %ha) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_enable_intrs(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ha, align 4
  %2 = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qla4_83xx_enable_mbox_intrs.exit_crit_edge

entry.qla4_83xx_enable_mbox_intrs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_enable_mbox_intrs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !387
  tail call void @arm_heavy_mb() #6
  %qla4_83xx_reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %3 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %mbox_int.i = getelementptr inbounds %struct.device_reg_83xx, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mbox_int.i, i32 67108864) #6, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !388
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %qla4_83xx_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qla4_83xx_reg.i, align 16
  %leg_int_mask.i = getelementptr inbounds %struct.device_reg_83xx, ptr %6, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %leg_int_mask.i, i32 0) #6, !srcloc !382
  tail call void @_set_bit(i32 noundef 29, ptr noundef %ha) #6
  br label %qla4_83xx_enable_mbox_intrs.exit

qla4_83xx_enable_mbox_intrs.exit:                 ; preds = %if.then.i, %entry.qla4_83xx_enable_mbox_intrs.exit_crit_edge
  %7 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ha, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i2 = icmp eq i32 %9, 0
  br i1 %tobool.not.i2, label %if.then.i3, label %qla4_83xx_enable_mbox_intrs.exit.qla4_83xx_enable_iocb_intrs.exit_crit_edge

qla4_83xx_enable_mbox_intrs.exit.qla4_83xx_enable_iocb_intrs.exit_crit_edge: ; preds = %qla4_83xx_enable_mbox_intrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_enable_iocb_intrs.exit

if.then.i3:                                       ; preds = %qla4_83xx_enable_mbox_intrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @qla4_8xxx_intr_enable(ptr noundef %ha) #6
  tail call void @_set_bit(i32 noundef 28, ptr noundef %ha) #6
  br label %qla4_83xx_enable_iocb_intrs.exit

qla4_83xx_enable_iocb_intrs.exit:                 ; preds = %if.then.i3, %qla4_83xx_enable_mbox_intrs.exit.qla4_83xx_enable_iocb_intrs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_queue_mbox_cmd(ptr nocapture noundef readonly %ha, ptr nocapture noundef readonly %mbx_cmd, i32 noundef %incount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %incount)
  %cmp19 = icmp sgt i32 %incount, 1
  br i1 %cmp19, label %do.body.lr.ph, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body.lr.ph:                                    ; preds = %entry
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.020 = phi i32 [ 1, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !389
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %mbx_cmd, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qla4_83xx_reg, align 16
  %arrayidx1 = getelementptr [16 x i32], ptr %4, i32 0, i32 %i.020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1, i32 %2) #6, !srcloc !382
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %incount
  br i1 %exitcond.not, label %do.body.do.body2_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.do.body2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2:                                         ; preds = %do.body.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !390
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_cmd, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %qla4_83xx_reg6 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %8 = ptrtoint ptr %qla4_83xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qla4_83xx_reg6, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !391
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %qla4_83xx_reg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qla4_83xx_reg6, align 16
  %host_intr = getelementptr inbounds %struct.device_reg_83xx, ptr %11, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %host_intr, i32 16777216) #6, !srcloc !382
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_process_mbox_intr(ptr noundef %ha, i32 noundef %outcount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %0 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qla4_83xx_reg, align 16
  %risc_intr = getelementptr inbounds %struct.device_reg_83xx, ptr %1, i32 0, i32 19
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %risc_intr) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %outcount to i8
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
  tail call void %8(ptr noundef %ha, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_isp_reset(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idc_lock, align 4
  %call = tail call i32 %3(ptr noundef %ha) #6
  %4 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %8 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %7(ptr noundef %ha, i32 noundef %11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xdontresethba to i32))
  %12 = load i32, ptr @ql4xdontresethba, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %nx_pcibase.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %13 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i.i = add i32 %14, 14224
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !381
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %nx_pcibase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nx_pcibase.i.i, align 16
  %add.i9.i = add i32 %19, 14224
  %20 = inttoptr i32 %add.i9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #6, !srcloc !382
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %21 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %22) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 3
  br i1 %cmp, label %if.then2, label %do.body18

if.then2:                                         ; preds = %if.end
  %nx_pcibase.i.i65 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 84
  %25 = ptrtoint ptr %nx_pcibase.i.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nx_pcibase.i.i65, align 16
  %add.i.i66 = add i32 %26, 14224
  %27 = inttoptr i32 %add.i.i66 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !380
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.not = icmp eq i32 %29, 0
  br i1 %cmp4.not, label %do.body7, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #9
  br label %exit_isp_reset

do.body7:                                         ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %32 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp8 = icmp eq i32 %32, 2
  br i1 %cmp8, label %do.end12, label %do.body7.do.end17_crit_edge

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %pdev13 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %33 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev13, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev14, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body7.do.end17_crit_edge
  %35 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr_reg_direct.i, align 4
  %39 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i69 = getelementptr i32, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i69, align 4
  tail call void %38(ptr noundef %ha, i32 noundef %42, i32 noundef 4) #6
  br label %if.end29

do.body18:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %43 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp19 = icmp eq i32 %43, 2
  br i1 %cmp19, label %do.end23, label %do.body18.if.end29_crit_edge

do.body18.if.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %pdev24 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %44 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev24, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev25, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.98) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %do.body18.if.end29_crit_edge, %do.end17
  %call30 = tail call i32 @qla4_83xx_can_perform_reset(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 25, ptr noundef %ha) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %46 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %idc_unlock, align 4
  tail call void %49(ptr noundef %ha) #6
  %call35 = tail call i32 @qla4_8xxx_device_state_handler(ptr noundef %ha) #6
  %50 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %isp_ops, align 4
  %idc_lock37 = getelementptr inbounds %struct.isp_operations, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %idc_lock37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %idc_lock37, align 4
  %call38 = tail call i32 %53(ptr noundef %ha) #6
  tail call void @qla4_8xxx_clear_rst_ready(ptr noundef %ha) #6
  br label %exit_isp_reset

exit_isp_reset:                                   ; preds = %if.end33, %do.end
  %rval.0 = phi i32 [ 1, %do.end ], [ %call35, %if.end33 ]
  %54 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %isp_ops, align 4
  %idc_unlock40 = getelementptr inbounds %struct.isp_operations, ptr %55, i32 0, i32 21
  %56 = ptrtoint ptr %idc_unlock40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idc_unlock40, align 4
  tail call void %57(ptr noundef %ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rval.0)
  %cmp41 = icmp eq i32 %rval.0, 0
  br i1 %cmp41, label %if.then42, label %exit_isp_reset.if.end44_crit_edge

exit_isp_reset.if.end44_crit_edge:                ; preds = %exit_isp_reset
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %exit_isp_reset
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %ha) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %exit_isp_reset.if.end44_crit_edge
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_device_state_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_8xxx_clear_rst_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_83xx_disable_pause(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val1.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idc_lock, align 4
  %call = tail call i32 %3(ptr noundef %ha) #6
  %call.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671632992, i32 noundef 0) #6
  %call1.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633008, i32 noundef 0) #6
  %call2.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633024, i32 noundef 0) #6
  %call3.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633040, i32 noundef 0) #6
  %call4.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633056, i32 noundef 0) #6
  %call5.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633072, i32 noundef 0) #6
  %call6.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633088, i32 noundef 0) #6
  %call7.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671633104, i32 noundef 0) #6
  %call8.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 671632976, i32 noundef 255) #6
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i, ptr noundef nonnull @.str.160) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1.i) #6
  %7 = ptrtoint ptr %val1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val1.i, align 4
  %call.i8 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 220201604, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %do.body4.i, label %entry.do.end14.i_crit_edge

entry.do.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.body4.i:                                       ; preds = %entry
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev.i10 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i10, ptr noundef nonnull @.str.162, i32 noundef %12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp5.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp5.i, label %do.end9.i, label %do.body4.i.do.end14.i_crit_edge

do.body4.i.do.end14.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.end9.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev11.i, ptr noundef nonnull @.str.165) #9
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end9.i, %do.body4.i.do.end14.i_crit_edge, %entry.do.end14.i_crit_edge
  %call16.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647460, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %15 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp18.i = icmp eq i32 %15, 2
  br i1 %cmp18.i, label %do.end22.i, label %do.end14.i.for.inc.i_crit_edge

do.end14.i.for.inc.i_crit_edge:                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end22.i:                                       ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %17) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end22.i, %do.end14.i.for.inc.i_crit_edge
  %call16.1.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647464, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp18.1.i = icmp eq i32 %18, 2
  br i1 %cmp18.1.i, label %do.end22.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

do.end22.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %call23.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %20) #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end22.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %call16.2.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647468, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %21 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp18.2.i = icmp eq i32 %21, 2
  br i1 %cmp18.2.i, label %do.end22.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

do.end22.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %call23.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %23) #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end22.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %call16.3.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647472, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %24 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp18.3.i = icmp eq i32 %24, 2
  br i1 %cmp18.3.i, label %do.end22.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

do.end22.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %call23.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %26) #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end22.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %call16.4.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647476, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %27 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp18.4.i = icmp eq i32 %27, 2
  br i1 %cmp18.4.i, label %do.end22.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

do.end22.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %call23.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %29) #9
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end22.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %call16.5.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647480, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %30 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp18.5.i = icmp eq i32 %30, 2
  br i1 %cmp18.5.i, label %do.end22.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

do.end22.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %call23.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %32) #9
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end22.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %call16.6.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647484, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %33 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp18.6.i = icmp eq i32 %33, 2
  br i1 %cmp18.6.i, label %do.end22.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

do.end22.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %call23.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %35) #9
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end22.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %call16.7.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647488, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp18.7.i = icmp eq i32 %36, 2
  br i1 %cmp18.7.i, label %for.inc.7.i, label %for.inc.6.i.do.end48.i_crit_edge

for.inc.6.i.do.end48.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %call23.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %38) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr317.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr317.i)
  %cmp28.i = icmp eq i32 %.pr317.i, 2
  br i1 %cmp28.i, label %do.body38.i, label %for.inc.7.i.do.end48.i_crit_edge

for.inc.7.i.do.end48.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

do.body38.i:                                      ; preds = %for.inc.7.i
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr301.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr301.i)
  %cmp39.i = icmp eq i32 %.pr301.i, 2
  br i1 %cmp39.i, label %do.end43.i, label %do.body38.i.do.end48.i_crit_edge

do.body38.i.do.end48.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

do.end43.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev45.i, ptr noundef nonnull @.str.174) #9
  br label %do.end48.i

do.end48.i:                                       ; preds = %do.end43.i, %do.body38.i.do.end48.i_crit_edge, %for.inc.7.i.do.end48.i_crit_edge, %for.inc.6.i.do.end48.i_crit_edge
  %call54.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651556, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %41 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp56.i = icmp eq i32 %41, 2
  br i1 %cmp56.i, label %do.end60.i, label %do.end48.i.for.inc66.i_crit_edge

do.end48.i.for.inc66.i_crit_edge:                 ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.i

do.end60.i:                                       ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %43) #9
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %do.end60.i, %do.end48.i.for.inc66.i_crit_edge
  %call54.1.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651560, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %44 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp56.1.i = icmp eq i32 %44, 2
  br i1 %cmp56.1.i, label %do.end60.1.i, label %for.inc66.i.for.inc66.1.i_crit_edge

for.inc66.i.for.inc66.1.i_crit_edge:              ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.1.i

do.end60.1.i:                                     ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i, align 4
  %call62.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %46) #9
  br label %for.inc66.1.i

for.inc66.1.i:                                    ; preds = %do.end60.1.i, %for.inc66.i.for.inc66.1.i_crit_edge
  %call54.2.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651564, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %47 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp56.2.i = icmp eq i32 %47, 2
  br i1 %cmp56.2.i, label %do.end60.2.i, label %for.inc66.1.i.for.inc66.2.i_crit_edge

for.inc66.1.i.for.inc66.2.i_crit_edge:            ; preds = %for.inc66.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.2.i

do.end60.2.i:                                     ; preds = %for.inc66.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  %call62.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %49) #9
  br label %for.inc66.2.i

for.inc66.2.i:                                    ; preds = %do.end60.2.i, %for.inc66.1.i.for.inc66.2.i_crit_edge
  %call54.3.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651568, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %50 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp56.3.i = icmp eq i32 %50, 2
  br i1 %cmp56.3.i, label %do.end60.3.i, label %for.inc66.2.i.for.inc66.3.i_crit_edge

for.inc66.2.i.for.inc66.3.i_crit_edge:            ; preds = %for.inc66.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.3.i

do.end60.3.i:                                     ; preds = %for.inc66.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  %call62.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %52) #9
  br label %for.inc66.3.i

for.inc66.3.i:                                    ; preds = %do.end60.3.i, %for.inc66.2.i.for.inc66.3.i_crit_edge
  %call54.4.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651572, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %53 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp56.4.i = icmp eq i32 %53, 2
  br i1 %cmp56.4.i, label %do.end60.4.i, label %for.inc66.3.i.for.inc66.4.i_crit_edge

for.inc66.3.i.for.inc66.4.i_crit_edge:            ; preds = %for.inc66.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.4.i

do.end60.4.i:                                     ; preds = %for.inc66.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  %call62.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %55) #9
  br label %for.inc66.4.i

for.inc66.4.i:                                    ; preds = %do.end60.4.i, %for.inc66.3.i.for.inc66.4.i_crit_edge
  %call54.5.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651576, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %56 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp56.5.i = icmp eq i32 %56, 2
  br i1 %cmp56.5.i, label %do.end60.5.i, label %for.inc66.4.i.for.inc66.5.i_crit_edge

for.inc66.4.i.for.inc66.5.i_crit_edge:            ; preds = %for.inc66.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.5.i

do.end60.5.i:                                     ; preds = %for.inc66.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i, align 4
  %call62.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %58) #9
  br label %for.inc66.5.i

for.inc66.5.i:                                    ; preds = %do.end60.5.i, %for.inc66.4.i.for.inc66.5.i_crit_edge
  %call54.6.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651580, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %59 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp56.6.i = icmp eq i32 %59, 2
  br i1 %cmp56.6.i, label %do.end60.6.i, label %for.inc66.5.i.for.inc66.6.i_crit_edge

for.inc66.5.i.for.inc66.6.i_crit_edge:            ; preds = %for.inc66.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.6.i

do.end60.6.i:                                     ; preds = %for.inc66.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val.i, align 4
  %call62.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %61) #9
  br label %for.inc66.6.i

for.inc66.6.i:                                    ; preds = %do.end60.6.i, %for.inc66.5.i.for.inc66.6.i_crit_edge
  %call54.7.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651584, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %62 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp56.7.i = icmp eq i32 %62, 2
  br i1 %cmp56.7.i, label %for.inc66.7.i, label %for.inc66.6.i.do.end90.i_crit_edge

for.inc66.6.i.do.end90.i_crit_edge:               ; preds = %for.inc66.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90.i

for.inc66.7.i:                                    ; preds = %for.inc66.6.i
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i, align 4
  %call62.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %64) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr319.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr319.i)
  %cmp70.i = icmp eq i32 %.pr319.i, 2
  br i1 %cmp70.i, label %do.body80.i, label %for.inc66.7.i.do.end90.i_crit_edge

for.inc66.7.i.do.end90.i_crit_edge:               ; preds = %for.inc66.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90.i

do.body80.i:                                      ; preds = %for.inc66.7.i
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr303.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr303.i)
  %cmp81.i = icmp eq i32 %.pr303.i, 2
  br i1 %cmp81.i, label %do.end85.i, label %do.body80.i.do.end90.i_crit_edge

do.body80.i.do.end90.i_crit_edge:                 ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end90.i

do.end85.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 8
  %dev87.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev87.i, ptr noundef nonnull @.str.182) #9
  br label %do.end90.i

do.end90.i:                                       ; preds = %do.end85.i, %do.body80.i.do.end90.i_crit_edge, %for.inc66.7.i.do.end90.i_crit_edge, %for.inc66.6.i.do.end90.i_crit_edge
  %call96.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647432, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %67 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp98.i = icmp eq i32 %67, 2
  br i1 %cmp98.i, label %do.end102.i, label %do.end90.i.for.inc108.i_crit_edge

do.end90.i.for.inc108.i_crit_edge:                ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108.i

do.end102.i:                                      ; preds = %do.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i, align 4
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %69) #9
  br label %for.inc108.i

for.inc108.i:                                     ; preds = %do.end102.i, %do.end90.i.for.inc108.i_crit_edge
  %call96.1.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647436, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %70 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp98.1.i = icmp eq i32 %70, 2
  br i1 %cmp98.1.i, label %do.end102.1.i, label %for.inc108.i.for.inc108.1.i_crit_edge

for.inc108.i.for.inc108.1.i_crit_edge:            ; preds = %for.inc108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108.1.i

do.end102.1.i:                                    ; preds = %for.inc108.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %call104.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %72) #9
  br label %for.inc108.1.i

for.inc108.1.i:                                   ; preds = %do.end102.1.i, %for.inc108.i.for.inc108.1.i_crit_edge
  %call96.2.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647440, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %73 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp98.2.i = icmp eq i32 %73, 2
  br i1 %cmp98.2.i, label %do.end102.2.i, label %for.inc108.1.i.for.inc108.2.i_crit_edge

for.inc108.1.i.for.inc108.2.i_crit_edge:          ; preds = %for.inc108.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108.2.i

do.end102.2.i:                                    ; preds = %for.inc108.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i, align 4
  %call104.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %75) #9
  br label %for.inc108.2.i

for.inc108.2.i:                                   ; preds = %do.end102.2.i, %for.inc108.1.i.for.inc108.2.i_crit_edge
  %call96.3.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647444, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %76 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp98.3.i = icmp eq i32 %76, 2
  br i1 %cmp98.3.i, label %for.inc108.3.i, label %for.inc108.2.i.do.end132.i_crit_edge

for.inc108.2.i.do.end132.i_crit_edge:             ; preds = %for.inc108.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end132.i

for.inc108.3.i:                                   ; preds = %for.inc108.2.i
  %77 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i, align 4
  %call104.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %78) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr321.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr321.i)
  %cmp112.i = icmp eq i32 %.pr321.i, 2
  br i1 %cmp112.i, label %do.body122.i, label %for.inc108.3.i.do.end132.i_crit_edge

for.inc108.3.i.do.end132.i_crit_edge:             ; preds = %for.inc108.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end132.i

do.body122.i:                                     ; preds = %for.inc108.3.i
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr305.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr305.i)
  %cmp123.i = icmp eq i32 %.pr305.i, 2
  br i1 %cmp123.i, label %do.end127.i, label %do.body122.i.do.end132.i_crit_edge

do.body122.i.do.end132.i_crit_edge:               ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end132.i

do.end127.i:                                      ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i, align 8
  %dev129.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev129.i, ptr noundef nonnull @.str.189) #9
  br label %do.end132.i

do.end132.i:                                      ; preds = %do.end127.i, %do.body122.i.do.end132.i_crit_edge, %for.inc108.3.i.do.end132.i_crit_edge, %for.inc108.2.i.do.end132.i_crit_edge
  %call138.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651528, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %81 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp140.i = icmp eq i32 %81, 2
  br i1 %cmp140.i, label %do.end144.i, label %do.end132.i.for.inc150.i_crit_edge

do.end132.i.for.inc150.i_crit_edge:               ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc150.i

do.end144.i:                                      ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i, align 4
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %83) #9
  br label %for.inc150.i

for.inc150.i:                                     ; preds = %do.end144.i, %do.end132.i.for.inc150.i_crit_edge
  %call138.1.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651532, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %84 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp140.1.i = icmp eq i32 %84, 2
  br i1 %cmp140.1.i, label %do.end144.1.i, label %for.inc150.i.for.inc150.1.i_crit_edge

for.inc150.i.for.inc150.1.i_crit_edge:            ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc150.1.i

do.end144.1.i:                                    ; preds = %for.inc150.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %call146.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %86) #9
  br label %for.inc150.1.i

for.inc150.1.i:                                   ; preds = %do.end144.1.i, %for.inc150.i.for.inc150.1.i_crit_edge
  %call138.2.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651536, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %87 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp140.2.i = icmp eq i32 %87, 2
  br i1 %cmp140.2.i, label %do.end144.2.i, label %for.inc150.1.i.for.inc150.2.i_crit_edge

for.inc150.1.i.for.inc150.2.i_crit_edge:          ; preds = %for.inc150.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc150.2.i

do.end144.2.i:                                    ; preds = %for.inc150.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val.i, align 4
  %call146.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %89) #9
  br label %for.inc150.2.i

for.inc150.2.i:                                   ; preds = %do.end144.2.i, %for.inc150.1.i.for.inc150.2.i_crit_edge
  %call138.3.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651540, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %90 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp140.3.i = icmp eq i32 %90, 2
  br i1 %cmp140.3.i, label %for.inc150.3.i, label %for.inc150.2.i.for.body177.i.preheader_crit_edge

for.inc150.2.i.for.body177.i.preheader_crit_edge: ; preds = %for.inc150.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177.i.preheader

for.inc150.3.i:                                   ; preds = %for.inc150.2.i
  %91 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val.i, align 4
  %call146.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %92) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr323.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr323.i)
  %cmp154.i = icmp eq i32 %.pr323.i, 2
  br i1 %cmp154.i, label %do.body164.i, label %for.inc150.3.i.for.body177.i.preheader_crit_edge

for.inc150.3.i.for.body177.i.preheader_crit_edge: ; preds = %for.inc150.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177.i.preheader

do.body164.i:                                     ; preds = %for.inc150.3.i
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr307.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr307.i)
  %cmp165.i = icmp eq i32 %.pr307.i, 2
  br i1 %cmp165.i, label %do.end169.i, label %do.body164.i.for.body177.i.preheader_crit_edge

do.body164.i.for.body177.i.preheader_crit_edge:   ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177.i.preheader

do.end169.i:                                      ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i, align 8
  %dev171.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev171.i, ptr noundef nonnull @.str.196) #9
  br label %for.body177.i.preheader

for.body177.i.preheader:                          ; preds = %do.end169.i, %do.body164.i.for.body177.i.preheader_crit_edge, %for.inc150.3.i.for.body177.i.preheader_crit_edge, %for.inc150.2.i.for.body177.i.preheader_crit_edge
  br label %for.body177.i

for.body177.i:                                    ; preds = %for.inc192.i.for.body177.i_crit_edge, %for.body177.i.preheader
  %i.4315.i = phi i32 [ %dec.i, %for.inc192.i.for.body177.i_crit_edge ], [ 7, %for.body177.i.preheader ]
  %call178.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647452, ptr noundef nonnull %val.i) #6
  %95 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val.i, align 4
  %and.i = and i32 %96, 536870911
  store i32 %and.i, ptr %val.i, align 4
  %shl.i = shl i32 %i.4315.i, 29
  %or.i = or i32 %and.i, %shl.i
  %call179.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647452, i32 noundef %or.i) #6
  %call180.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186647452, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %97 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp182.i = icmp eq i32 %97, 2
  br i1 %cmp182.i, label %do.end186.i, label %for.body177.i.for.inc192.i_crit_edge

for.body177.i.for.inc192.i_crit_edge:             ; preds = %for.body177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc192.i

do.end186.i:                                      ; preds = %for.body177.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val.i, align 4
  %call188.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %99) #9
  br label %for.inc192.i

for.inc192.i:                                     ; preds = %do.end186.i, %for.body177.i.for.inc192.i_crit_edge
  %dec.i = add nsw i32 %i.4315.i, -1
  %cmp176.not.i = icmp eq i32 %i.4315.i, 0
  br i1 %cmp176.not.i, label %do.body194.i, label %for.inc192.i.for.body177.i_crit_edge

for.inc192.i.for.body177.i_crit_edge:             ; preds = %for.inc192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177.i

do.body194.i:                                     ; preds = %for.inc192.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %100 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp195.i = icmp eq i32 %100, 2
  br i1 %cmp195.i, label %do.body205.i, label %do.body194.i.for.body218.i.preheader_crit_edge

do.body194.i.for.body218.i.preheader_crit_edge:   ; preds = %do.body194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body218.i.preheader

do.body205.i:                                     ; preds = %do.body194.i
  %call201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr309.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr309.i)
  %cmp206.i = icmp eq i32 %.pr309.i, 2
  br i1 %cmp206.i, label %do.end210.i, label %do.body205.i.for.body218.i.preheader_crit_edge

do.body205.i.for.body218.i.preheader_crit_edge:   ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body218.i.preheader

do.end210.i:                                      ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i, align 8
  %dev212.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev212.i, ptr noundef nonnull @.str.203) #9
  br label %for.body218.i.preheader

for.body218.i.preheader:                          ; preds = %do.end210.i, %do.body205.i.for.body218.i.preheader_crit_edge, %do.body194.i.for.body218.i.preheader_crit_edge
  br label %for.body218.i

for.body218.i:                                    ; preds = %for.inc236.i.for.body218.i_crit_edge, %for.body218.i.preheader
  %i.5316.i = phi i32 [ %dec237.i, %for.inc236.i.for.body218.i_crit_edge ], [ 7, %for.body218.i.preheader ]
  %call219.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651548, ptr noundef nonnull %val.i) #6
  %103 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val.i, align 4
  %and220.i = and i32 %104, 536870911
  store i32 %and220.i, ptr %val.i, align 4
  %shl221.i = shl i32 %i.5316.i, 29
  %or222.i = or i32 %and220.i, %shl221.i
  %call223.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651548, i32 noundef %or222.i) #6
  %call224.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186651548, ptr noundef nonnull %val.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %105 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp226.i = icmp eq i32 %105, 2
  br i1 %cmp226.i, label %do.end230.i, label %for.body218.i.for.inc236.i_crit_edge

for.body218.i.for.inc236.i_crit_edge:             ; preds = %for.body218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc236.i

do.end230.i:                                      ; preds = %for.body218.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i, align 4
  %call232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %107) #9
  br label %for.inc236.i

for.inc236.i:                                     ; preds = %do.end230.i, %for.body218.i.for.inc236.i_crit_edge
  %dec237.i = add nsw i32 %i.5316.i, -1
  %cmp217.not.i = icmp eq i32 %i.5316.i, 0
  br i1 %cmp217.not.i, label %do.body239.i, label %for.inc236.i.for.body218.i_crit_edge

for.inc236.i.for.body218.i_crit_edge:             ; preds = %for.inc236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body218.i

do.body239.i:                                     ; preds = %for.inc236.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %108 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp240.i = icmp eq i32 %108, 2
  br i1 %cmp240.i, label %do.end244.i, label %do.body239.i.do.end249.i_crit_edge

do.body239.i.do.end249.i_crit_edge:               ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end249.i

do.end244.i:                                      ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #8
  %call246.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #9
  br label %do.end249.i

do.end249.i:                                      ; preds = %do.end244.i, %do.body239.i.do.end249.i_crit_edge
  %call250.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186648324, ptr noundef nonnull %val.i) #6
  %call251.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef 186652420, ptr noundef nonnull %val1.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %109 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp253.i = icmp eq i32 %109, 2
  br i1 %cmp253.i, label %do.end257.i, label %do.end249.i.qla4_83xx_dump_pause_control_regs.exit_crit_edge

do.end249.i.qla4_83xx_dump_pause_control_regs.exit_crit_edge: ; preds = %do.end249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_dump_pause_control_regs.exit

do.end257.i:                                      ; preds = %do.end249.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i, align 8
  %dev259.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %112 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i, align 4
  %114 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev259.i, ptr noundef nonnull @.str.210, i32 noundef %113, i32 noundef %115) #9
  br label %qla4_83xx_dump_pause_control_regs.exit

qla4_83xx_dump_pause_control_regs.exit:           ; preds = %do.end257.i, %do.end249.i.qla4_83xx_dump_pause_control_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call.i11 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 220201604, i32 noundef 0) #6
  %call1.i12 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647460, i32 noundef 0) #6
  %call4.i13 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651556, i32 noundef 0) #6
  %call1.1.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647464, i32 noundef 0) #6
  %call4.1.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651560, i32 noundef 0) #6
  %call1.2.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647468, i32 noundef 0) #6
  %call4.2.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651564, i32 noundef 0) #6
  %call1.3.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647472, i32 noundef 0) #6
  %call4.3.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651568, i32 noundef 0) #6
  %call1.4.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647476, i32 noundef 0) #6
  %call4.4.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651572, i32 noundef 0) #6
  %call1.5.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647480, i32 noundef 0) #6
  %call4.5.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651576, i32 noundef 0) #6
  %call1.6.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647484, i32 noundef 0) #6
  %call4.6.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651580, i32 noundef 0) #6
  %call1.7.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647488, i32 noundef 0) #6
  %call4.7.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651584, i32 noundef 0) #6
  %call10.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647432, i32 noundef 67044351) #6
  %call13.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651528, i32 noundef 67044351) #6
  %call10.1.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647436, i32 noundef 67044351) #6
  %call13.1.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651532, i32 noundef 67044351) #6
  %call10.2.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647440, i32 noundef 67044351) #6
  %call13.2.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651536, i32 noundef 67044351) #6
  %call10.3.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186647444, i32 noundef 67044351) #6
  %call13.3.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186651540, i32 noundef 67044351) #6
  %call17.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186648324, i32 noundef 0) #6
  %call18.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef 186652420, i32 noundef 0) #6
  %116 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i, align 8
  %dev.i15 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i15, ptr noundef nonnull @.str.212) #9
  %118 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %119, i32 0, i32 21
  %120 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %idc_unlock, align 4
  tail call void %121(ptr noundef %ha) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4_83xx_is_detached(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_ops.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %0 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 143
  %4 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #6
  %8 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ha, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %func_num = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 96
  %11 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %func_num, align 8
  %conv = zext i16 %12 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_8xxx_get_minidump(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4_83xx_process_reset_template(ptr noundef %ha, ptr noundef readonly %p_buff) unnamed_addr #0 align 64 {
entry:
  %value.i135 = alloca i32, align 4
  %value.i.i103 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_tmplt = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144
  %seq_end = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 9
  %0 = ptrtoint ptr %seq_end to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %seq_end, align 4
  %template_end = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 10
  %1 = ptrtoint ptr %template_end to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %template_end, align 1
  %hdr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 8
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdr, align 4
  %entries3 = getelementptr inbounds %struct.qla4_83xx_reset_template_hdr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %entries3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %entries3, align 1
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_tmplt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp164 = icmp slt i32 %7, %conv
  br i1 %cmp164, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev.i143 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %array_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 2
  %seq_error.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %p_entry.0168 = phi ptr [ %p_buff, %for.body.lr.ph ], [ %add.ptr, %sw.epilog.for.body_crit_edge ]
  %index.0166 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %8 = ptrtoint ptr %p_entry.0168 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %p_entry.0168, align 1
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.214)
  switch i16 %9, label %do.end [
    i16 0, label %for.body.sw.epilog_crit_edge
    i16 1, label %sw.bb
    i16 2, label %sw.bb9
    i16 4, label %sw.bb10
    i16 8, label %sw.bb11
    i16 16, label %sw.bb12
    i16 32, label %sw.bb13
    i16 64, label %sw.bb14
    i16 128, label %sw.bb15
    i16 256, label %sw.bb16
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %count.i = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp25.not.i = icmp eq i16 %12, 0
  br i1 %cmp25.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %p_entry.0168, i32 8
  %delay.i = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %p_entry.026.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %p_entry.026.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %p_entry.026.i, align 1
  %arg2.i = getelementptr inbounds %struct.qla4_83xx_entry, ptr %p_entry.026.i, i32 0, i32 1
  %15 = ptrtoint ptr %arg2.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arg2.i, align 1
  %call.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %14, i32 noundef %16) #6
  %17 = ptrtoint ptr %delay.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %delay.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %cond.false11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cond.false11.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i = zext i16 %18 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %conv3.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false11.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %incdec.ptr.i = getelementptr %struct.qla4_83xx_entry, ptr %p_entry.026.i, i32 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %count.i, align 1
  %conv.i = zext i16 %21 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.bb9:                                           ; preds = %for.body
  %count.i52 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %22 = ptrtoint ptr %count.i52 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %count.i52, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp25.not.i53 = icmp eq i16 %23, 0
  br i1 %cmp25.not.i53, label %sw.bb9.sw.epilog_crit_edge, label %for.body.lr.ph.i56

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i56:                               ; preds = %sw.bb9
  %add.ptr.i54 = getelementptr i8, ptr %p_entry.0168, i32 8
  %delay.i55 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.inc.i74.for.body.i61_crit_edge, %for.body.lr.ph.i56
  %i.027.i57 = phi i32 [ 0, %for.body.lr.ph.i56 ], [ %inc.i70, %for.inc.i74.for.body.i61_crit_edge ]
  %p_entry.026.i58 = phi ptr [ %add.ptr.i54, %for.body.lr.ph.i56 ], [ %incdec.ptr.i71, %for.inc.i74.for.body.i61_crit_edge ]
  %24 = ptrtoint ptr %p_entry.026.i58 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %p_entry.026.i58, align 1
  %arg2.i59 = getelementptr inbounds %struct.qla4_83xx_entry, ptr %p_entry.026.i58, i32 0, i32 1
  %26 = ptrtoint ptr %arg2.i59 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arg2.i59, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #6
  %28 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i.i, align 4, !annotation !383
  %call.i.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %25, ptr noundef nonnull %value.i.i) #6
  %29 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value.i.i, align 4
  %call1.i.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %27, i32 noundef %30) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  %31 = ptrtoint ptr %delay.i55 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %delay.i55, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i60 = icmp eq i16 %32, 0
  br i1 %tobool.not.i60, label %for.body.i61.for.inc.i74_crit_edge, label %cond.false11.i69

for.body.i61.for.inc.i74_crit_edge:               ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i74

cond.false11.i69:                                 ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i62 = zext i16 %32 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %conv3.i62) #6
  br label %for.inc.i74

for.inc.i74:                                      ; preds = %cond.false11.i69, %for.body.i61.for.inc.i74_crit_edge
  %inc.i70 = add nuw nsw i32 %i.027.i57, 1
  %incdec.ptr.i71 = getelementptr %struct.qla4_83xx_entry, ptr %p_entry.026.i58, i32 1
  %34 = ptrtoint ptr %count.i52 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %count.i52, align 1
  %conv.i72 = zext i16 %35 to i32
  %cmp.i73 = icmp ult i32 %inc.i70, %conv.i72
  br i1 %cmp.i73, label %for.inc.i74.for.body.i61_crit_edge, label %for.inc.i74.sw.epilog_crit_edge

for.inc.i74.sw.epilog_crit_edge:                  ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.i74.for.body.i61_crit_edge:               ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i61

sw.bb10:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %add.ptr.i75 = getelementptr i8, ptr %p_entry.0168, i32 8
  %add.ptr1.i = getelementptr i8, ptr %p_entry.0168, i32 16
  %delay2.i = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  %36 = ptrtoint ptr %delay2.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %delay2.i, align 1
  %conv.i76 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i77 = icmp eq i16 %37, 0
  %count.i78 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %38 = ptrtoint ptr %count.i78 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %count.i78, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp52.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i77, label %for.cond.preheader.i, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %sw.bb10
  br i1 %cmp52.not.i, label %for.cond5.preheader.i.qla4_83xx_poll_list.exit_crit_edge, label %for.body10.lr.ph.i

for.cond5.preheader.i.qla4_83xx_poll_list.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_list.exit

for.body10.lr.ph.i:                               ; preds = %for.cond5.preheader.i
  %test_value13.i = getelementptr i8, ptr %p_entry.0168, i32 12
  br label %for.body10.i

for.cond.preheader.i:                             ; preds = %sw.bb10
  br i1 %cmp52.not.i, label %for.cond.preheader.i.qla4_83xx_poll_list.exit_crit_edge, label %for.body.lr.ph.i79

for.cond.preheader.i.qla4_83xx_poll_list.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_list.exit

for.body.lr.ph.i79:                               ; preds = %for.cond.preheader.i
  %test_value.i = getelementptr i8, ptr %p_entry.0168, i32 12
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %for.body.lr.ph.i79
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i79 ], [ %inc.i81, %for.body.i85.for.body.i85_crit_edge ]
  %p_entry.053.i = phi ptr [ %add.ptr1.i, %for.body.lr.ph.i79 ], [ %incdec.ptr.i82, %for.body.i85.for.body.i85_crit_edge ]
  %40 = ptrtoint ptr %p_entry.053.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %p_entry.053.i, align 1
  %42 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr.i75, align 1
  %44 = ptrtoint ptr %test_value.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %test_value.i, align 1
  %call.i80 = tail call fastcc i32 @qla4_83xx_poll_reg(ptr noundef %ha, i32 noundef %41, i32 noundef 0, i32 noundef %43, i32 noundef %45) #6
  %inc.i81 = add nuw nsw i32 %i.054.i, 1
  %incdec.ptr.i82 = getelementptr %struct.qla4_83xx_entry, ptr %p_entry.053.i, i32 1
  %46 = ptrtoint ptr %count.i78 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %count.i78, align 1
  %conv3.i83 = zext i16 %47 to i32
  %cmp.i84 = icmp ult i32 %inc.i81, %conv3.i83
  br i1 %cmp.i84, label %for.body.i85.for.body.i85_crit_edge, label %for.body.i85.qla4_83xx_poll_list.exit_crit_edge

for.body.i85.qla4_83xx_poll_list.exit_crit_edge:  ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_list.exit

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85

for.body10.i:                                     ; preds = %for.inc20.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.150.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc21.i, %for.inc20.i.for.body10.i_crit_edge ]
  %p_entry.148.i = phi ptr [ %add.ptr1.i, %for.body10.lr.ph.i ], [ %incdec.ptr22.i, %for.inc20.i.for.body10.i_crit_edge ]
  %48 = ptrtoint ptr %p_entry.148.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %p_entry.148.i, align 1
  %50 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i75, align 1
  %52 = ptrtoint ptr %test_value13.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %test_value13.i, align 1
  %call14.i = tail call fastcc i32 @qla4_83xx_poll_reg(ptr noundef %ha, i32 noundef %49, i32 noundef %conv.i76, i32 noundef %51, i32 noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.body10.i.for.inc20.i_crit_edge, label %if.then16.i

for.body10.i.for.inc20.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

if.then16.i:                                      ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %p_entry.148.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %p_entry.148.i, align 1
  %call18.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %55, ptr noundef nonnull %value.i) #6
  %arg2.i86 = getelementptr inbounds %struct.qla4_83xx_entry, ptr %p_entry.148.i, i32 0, i32 1
  %56 = ptrtoint ptr %arg2.i86 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arg2.i86, align 1
  %call19.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %57, ptr noundef nonnull %value.i) #6
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.then16.i, %for.body10.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.150.i, 1
  %incdec.ptr22.i = getelementptr %struct.qla4_83xx_entry, ptr %p_entry.148.i, i32 1
  %58 = ptrtoint ptr %count.i78 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %count.i78, align 1
  %conv7.i = zext i16 %59 to i32
  %cmp8.i = icmp ult i32 %inc21.i, %conv7.i
  br i1 %cmp8.i, label %for.inc20.i.for.body10.i_crit_edge, label %for.inc20.i.qla4_83xx_poll_list.exit_crit_edge

for.inc20.i.qla4_83xx_poll_list.exit_crit_edge:   ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_list.exit

for.inc20.i.for.body10.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

qla4_83xx_poll_list.exit:                         ; preds = %for.inc20.i.qla4_83xx_poll_list.exit_crit_edge, %for.body.i85.qla4_83xx_poll_list.exit_crit_edge, %for.cond.preheader.i.qla4_83xx_poll_list.exit_crit_edge, %for.cond5.preheader.i.qla4_83xx_poll_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %add.ptr.i87 = getelementptr i8, ptr %p_entry.0168, i32 8
  %delay2.i88 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  %60 = ptrtoint ptr %delay2.i88 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %delay2.i88, align 1
  %conv.i89 = zext i16 %61 to i32
  %count.i90 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %62 = ptrtoint ptr %count.i90 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %count.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp35.not.i = icmp eq i16 %63, 0
  br i1 %cmp35.not.i, label %sw.bb11.sw.epilog_crit_edge, label %for.body.lr.ph.i94

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i94:                               ; preds = %sw.bb11
  %add.ptr1.i91 = getelementptr i8, ptr %p_entry.0168, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i92 = icmp eq i16 %61, 0
  %test_value.i93 = getelementptr i8, ptr %p_entry.0168, i32 12
  br label %for.body.i96

for.body.i96:                                     ; preds = %for.inc.i102.for.body.i96_crit_edge, %for.body.lr.ph.i94
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i94 ], [ %inc.i98, %for.inc.i102.for.body.i96_crit_edge ]
  %p_entry.036.i = phi ptr [ %add.ptr1.i91, %for.body.lr.ph.i94 ], [ %incdec.ptr.i99, %for.inc.i102.for.body.i96_crit_edge ]
  %64 = ptrtoint ptr %p_entry.036.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %p_entry.036.i, align 1
  %dr_value.i = getelementptr inbounds %struct.qla4_83xx_quad_entry, ptr %p_entry.036.i, i32 0, i32 1
  %66 = ptrtoint ptr %dr_value.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %dr_value.i, align 1
  %call.i95 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %65, i32 noundef %67) #6
  %ar_addr.i = getelementptr inbounds %struct.qla4_83xx_quad_entry, ptr %p_entry.036.i, i32 0, i32 2
  %68 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %ar_addr.i, align 1
  %ar_value.i = getelementptr inbounds %struct.qla4_83xx_quad_entry, ptr %p_entry.036.i, i32 0, i32 3
  %70 = ptrtoint ptr %ar_value.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ar_value.i, align 1
  %call5.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %69, i32 noundef %71) #6
  br i1 %tobool.not.i92, label %for.body.i96.for.inc.i102_crit_edge, label %if.then.i97

for.body.i96.for.inc.i102_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i102

if.then.i97:                                      ; preds = %for.body.i96
  %72 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ar_addr.i, align 1
  %74 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %add.ptr.i87, align 1
  %76 = ptrtoint ptr %test_value.i93 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %test_value.i93, align 1
  %call7.i = tail call fastcc i32 @qla4_83xx_poll_reg(ptr noundef %ha, i32 noundef %73, i32 noundef %conv.i89, i32 noundef %75, i32 noundef %77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then.i97.for.inc.i102_crit_edge, label %do.body.i

if.then.i97.for.inc.i102_crit_edge:               ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i102

do.body.i:                                        ; preds = %if.then.i97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %78 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp10.i = icmp eq i32 %78, 2
  br i1 %cmp10.i, label %do.end.i, label %do.body.i.for.inc.i102_crit_edge

do.body.i.for.inc.i102_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i102

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %pdev.i143 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i143, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reset_tmplt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %i.037.i, i32 noundef %82) #9
  br label %for.inc.i102

for.inc.i102:                                     ; preds = %do.end.i, %do.body.i.for.inc.i102_crit_edge, %if.then.i97.for.inc.i102_crit_edge, %for.body.i96.for.inc.i102_crit_edge
  %inc.i98 = add nuw nsw i32 %i.037.i, 1
  %incdec.ptr.i99 = getelementptr %struct.qla4_83xx_quad_entry, ptr %p_entry.036.i, i32 1
  %83 = ptrtoint ptr %count.i90 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %count.i90, align 1
  %conv3.i100 = zext i16 %84 to i32
  %cmp.i101 = icmp ult i32 %inc.i98, %conv3.i100
  br i1 %cmp.i101, label %for.inc.i102.for.body.i96_crit_edge, label %for.inc.i102.sw.epilog_crit_edge

for.inc.i102.sw.epilog_crit_edge:                 ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.i102.for.body.i96_crit_edge:              ; preds = %for.inc.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i96

sw.bb12:                                          ; preds = %for.body
  %add.ptr.i104 = getelementptr i8, ptr %p_entry.0168, i32 8
  %count.i105 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %85 = ptrtoint ptr %count.i105 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %count.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp27.not.i = icmp eq i16 %86, 0
  br i1 %cmp27.not.i, label %sw.bb12.sw.epilog_crit_edge, label %for.body.lr.ph.i108

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i108:                              ; preds = %sw.bb12
  %add.ptr1.i106 = getelementptr i8, ptr %p_entry.0168, i32 24
  %index_a.i.i = getelementptr i8, ptr %p_entry.0168, i32 22
  %shl.i.i = getelementptr i8, ptr %p_entry.0168, i32 20
  %shr.i.i = getelementptr i8, ptr %p_entry.0168, i32 21
  %or_value.i.i = getelementptr i8, ptr %p_entry.0168, i32 16
  %xor_value.i.i = getelementptr i8, ptr %p_entry.0168, i32 12
  %delay.i107 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.inc.i121.for.body.i110_crit_edge, %for.body.lr.ph.i108
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i108 ], [ %inc.i117, %for.inc.i121.for.body.i110_crit_edge ]
  %p_entry.028.i = phi ptr [ %add.ptr1.i106, %for.body.lr.ph.i108 ], [ %incdec.ptr.i118, %for.inc.i121.for.body.i110_crit_edge ]
  %87 = ptrtoint ptr %p_entry.028.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %p_entry.028.i, align 1
  %arg2.i109 = getelementptr inbounds %struct.qla4_83xx_entry, ptr %p_entry.028.i, i32 0, i32 1
  %89 = ptrtoint ptr %arg2.i109 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arg2.i109, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i103) #6
  %91 = ptrtoint ptr %value.i.i103 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %value.i.i103, align 4, !annotation !383
  %92 = ptrtoint ptr %index_a.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %index_a.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom.i.i = zext i8 %93 to i32
  %arrayidx.i.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 3, i32 %idxprom.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i, align 4
  %96 = ptrtoint ptr %value.i.i103 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %value.i.i103, align 4
  br label %qla4_83xx_rmw_crb_reg.exit.i

if.else.i.i:                                      ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i111 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %88, ptr noundef nonnull %value.i.i103) #6
  br label %qla4_83xx_rmw_crb_reg.exit.i

qla4_83xx_rmw_crb_reg.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %97 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %add.ptr.i104, align 1
  %99 = ptrtoint ptr %value.i.i103 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %value.i.i103, align 4
  %and.i.i = and i32 %100, %98
  %101 = ptrtoint ptr %shl.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %shl.i.i, align 1
  %conv.i.i = zext i8 %102 to i32
  %shl2.i.i = shl i32 %and.i.i, %conv.i.i
  %103 = ptrtoint ptr %shr.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %shr.i.i, align 1
  %conv3.i.i = zext i8 %104 to i32
  %shr4.i.i = lshr i32 %shl2.i.i, %conv3.i.i
  %105 = ptrtoint ptr %or_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %or_value.i.i, align 1
  %or.i.i = or i32 %shr4.i.i, %106
  %107 = ptrtoint ptr %xor_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %xor_value.i.i, align 1
  %xor.i.i = xor i32 %or.i.i, %108
  %call5.i.i = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %90, i32 noundef %xor.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i103) #6
  %109 = ptrtoint ptr %delay.i107 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %delay.i107, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool.not.i112 = icmp eq i16 %110, 0
  br i1 %tobool.not.i112, label %qla4_83xx_rmw_crb_reg.exit.i.for.inc.i121_crit_edge, label %cond.false12.i

qla4_83xx_rmw_crb_reg.exit.i.for.inc.i121_crit_edge: ; preds = %qla4_83xx_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i121

cond.false12.i:                                   ; preds = %qla4_83xx_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i16 %110 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %conv4.i) #6
  br label %for.inc.i121

for.inc.i121:                                     ; preds = %cond.false12.i, %qla4_83xx_rmw_crb_reg.exit.i.for.inc.i121_crit_edge
  %inc.i117 = add nuw nsw i32 %i.029.i, 1
  %incdec.ptr.i118 = getelementptr %struct.qla4_83xx_entry, ptr %p_entry.028.i, i32 1
  %112 = ptrtoint ptr %count.i105 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %count.i105, align 1
  %conv.i119 = zext i16 %113 to i32
  %cmp.i120 = icmp ult i32 %inc.i117, %conv.i119
  br i1 %cmp.i120, label %for.inc.i121.for.body.i110_crit_edge, label %for.inc.i121.sw.epilog_crit_edge

for.inc.i121.sw.epilog_crit_edge:                 ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.i121.for.body.i110_crit_edge:             ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i110

sw.bb13:                                          ; preds = %for.body
  %delay.i122 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  %114 = ptrtoint ptr %delay.i122 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %delay.i122, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.not.i123 = icmp eq i16 %115, 0
  br i1 %tobool.not.i123, label %sw.bb13.sw.epilog_crit_edge, label %if.then.i126

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i126:                                     ; preds = %sw.bb13
  %conv.i124 = zext i16 %115 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i126
  %__ms.01.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i124, %if.then.i126 ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #6
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %seq_end to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %seq_end, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  %118 = ptrtoint ptr %template_end to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %template_end, align 1
  %119 = ptrtoint ptr %seq_error.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %seq_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i130 = icmp eq i32 %120, 0
  br i1 %cmp.i130, label %do.body.i131, label %do.end7.i

do.body.i131:                                     ; preds = %sw.bb15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %121 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp2.i = icmp eq i32 %121, 2
  br i1 %cmp2.i, label %do.end.i134, label %do.body.i131.sw.epilog_crit_edge

do.body.i131.sw.epilog_crit_edge:                 ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i134:                                      ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %pdev.i143 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i143, align 8
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i133, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) #9
  br label %sw.epilog

do.end7.i:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %pdev.i143 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev.i143, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9.i, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.134) #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i135) #6
  %126 = ptrtoint ptr %value.i135 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %value.i135, align 4, !annotation !383
  %add.ptr.i136 = getelementptr i8, ptr %p_entry.0168, i32 8
  %delay2.i137 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 3
  %127 = ptrtoint ptr %delay2.i137 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %delay2.i137, align 1
  %conv.i138 = zext i16 %128 to i32
  %count.i139 = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 2
  %129 = ptrtoint ptr %count.i139 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %count.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp47.not.i = icmp eq i16 %130, 0
  br i1 %cmp47.not.i, label %sw.bb16.qla4_83xx_poll_read_list.exit_crit_edge, label %for.body.lr.ph.i145

sw.bb16.qla4_83xx_poll_read_list.exit_crit_edge:  ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_read_list.exit

for.body.lr.ph.i145:                              ; preds = %sw.bb16
  %add.ptr1.i140 = getelementptr i8, ptr %p_entry.0168, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool.not.i141 = icmp eq i16 %128, 0
  %test_value.i142 = getelementptr i8, ptr %p_entry.0168, i32 12
  br label %for.body.i149

for.body.i149:                                    ; preds = %for.inc.i157.for.body.i149_crit_edge, %for.body.lr.ph.i145
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i145 ], [ %inc26.i, %for.inc.i157.for.body.i149_crit_edge ]
  %p_entry.048.i = phi ptr [ %add.ptr1.i140, %for.body.lr.ph.i145 ], [ %incdec.ptr.i154, %for.inc.i157.for.body.i149_crit_edge ]
  %ar_addr.i146 = getelementptr inbounds %struct.qla4_83xx_quad_entry, ptr %p_entry.048.i, i32 0, i32 2
  %131 = ptrtoint ptr %ar_addr.i146 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %ar_addr.i146, align 1
  %ar_value.i147 = getelementptr inbounds %struct.qla4_83xx_quad_entry, ptr %p_entry.048.i, i32 0, i32 3
  %133 = ptrtoint ptr %ar_value.i147 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %ar_value.i147, align 1
  %call.i148 = tail call i32 @qla4_83xx_wr_reg_indirect(ptr noundef %ha, i32 noundef %132, i32 noundef %134) #6
  br i1 %tobool.not.i141, label %for.body.i149.for.inc.i157_crit_edge, label %if.then.i150

for.body.i149.for.inc.i157_crit_edge:             ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i157

if.then.i150:                                     ; preds = %for.body.i149
  %135 = ptrtoint ptr %ar_addr.i146 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %ar_addr.i146, align 1
  %137 = ptrtoint ptr %add.ptr.i136 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %add.ptr.i136, align 1
  %139 = ptrtoint ptr %test_value.i142 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %test_value.i142, align 1
  %call6.i = tail call fastcc i32 @qla4_83xx_poll_reg(ptr noundef %ha, i32 noundef %136, i32 noundef %conv.i138, i32 noundef %138, i32 noundef %140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %do.body.i151

do.body.i151:                                     ; preds = %if.then.i150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %141 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %cmp9.i = icmp eq i32 %141, 2
  br i1 %cmp9.i, label %do.end.i153, label %do.body.i151.for.inc.i157_crit_edge

do.body.i151.for.inc.i157_crit_edge:              ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i157

do.end.i153:                                      ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %pdev.i143 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev.i143, align 8
  %dev.i152 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %144 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %reset_tmplt, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.27, ptr noundef %dev.i152, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef %i.050.i, i32 noundef %145) #9
  br label %for.inc.i157

if.else.i:                                        ; preds = %if.then.i150
  %146 = ptrtoint ptr %array_index.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %array_index.i, align 4
  %148 = ptrtoint ptr %p_entry.048.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %p_entry.048.i, align 1
  %call16.i = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %149, ptr noundef nonnull %value.i135) #6
  %150 = ptrtoint ptr %value.i135 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %value.i135, align 4
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 3, i32 %147
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %147)
  %cmp18.i = icmp eq i32 %147, 15
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i.for.inc.i157_crit_edge

if.else.i.for.inc.i157_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i157

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %array_index.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %array_index.i, align 4
  br label %for.inc.i157

for.inc.i157:                                     ; preds = %if.then20.i, %if.else.i.for.inc.i157_crit_edge, %do.end.i153, %do.body.i151.for.inc.i157_crit_edge, %for.body.i149.for.inc.i157_crit_edge
  %inc26.i = add nuw nsw i32 %i.050.i, 1
  %incdec.ptr.i154 = getelementptr %struct.qla4_83xx_quad_entry, ptr %p_entry.048.i, i32 1
  %154 = ptrtoint ptr %count.i139 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %count.i139, align 1
  %conv3.i155 = zext i16 %155 to i32
  %cmp.i156 = icmp ult i32 %inc26.i, %conv3.i155
  br i1 %cmp.i156, label %for.inc.i157.for.body.i149_crit_edge, label %for.inc.i157.qla4_83xx_poll_read_list.exit_crit_edge

for.inc.i157.qla4_83xx_poll_read_list.exit_crit_edge: ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %qla4_83xx_poll_read_list.exit

for.inc.i157.for.body.i149_crit_edge:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i149

qla4_83xx_poll_read_list.exit:                    ; preds = %for.inc.i157.qla4_83xx_poll_read_list.exit_crit_edge, %sw.bb16.qla4_83xx_poll_read_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i135) #6
  br label %sw.epilog

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i16 %9 to i32
  %156 = ptrtoint ptr %pdev.i143 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev.i143, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, i32 noundef %conv8, i32 noundef %index.0166) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %qla4_83xx_poll_read_list.exit, %do.end7.i, %do.end.i134, %do.body.i131.sw.epilog_crit_edge, %sw.bb14, %while.body.i.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %for.inc.i121.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %for.inc.i102.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %qla4_83xx_poll_list.exit, %for.inc.i74.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %size = getelementptr inbounds %struct.qla4_83xx_reset_entry_hdr, ptr %p_entry.0168, i32 0, i32 1
  %158 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %size, align 1
  %conv19 = zext i16 %159 to i32
  %add.ptr = getelementptr i8, ptr %p_entry.0168, i32 %conv19
  %inc = add nsw i32 %index.0166, 1
  %160 = ptrtoint ptr %seq_end to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %seq_end, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not = icmp eq i8 %161, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp slt i32 %inc, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %inc, %sw.epilog.for.end_crit_edge ]
  %162 = ptrtoint ptr %reset_tmplt to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %index.0.lcssa, ptr %reset_tmplt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qla4_83xx_poll_reg(ptr nocapture noundef %ha, i32 noundef %addr, i32 noundef %duration, i32 noundef %test_mask, i32 noundef %test_result) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !383
  %call = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %addr, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.if.then13_crit_edge, label %if.end

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end:                                           ; preds = %entry
  %div = sdiv i32 %duration, 10
  %conv = trunc i32 %div to i8
  br label %do.body

do.body:                                          ; preds = %if.then3.do.body_crit_edge, %if.end
  %retries.0 = phi i8 [ %conv, %if.end ], [ %dec, %if.then3.do.body_crit_edge ]
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %and = and i32 %2, %test_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %test_result)
  %cmp1.not = icmp eq i32 %and, %test_result
  br i1 %cmp1.not, label %do.body.if.end17_crit_edge, label %if.then3

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then3:                                         ; preds = %do.body
  tail call void @msleep(i32 noundef %div) #6
  %call5 = call i32 @qla4_83xx_rd_reg_indirect(ptr noundef %ha, i32 noundef %addr, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 1
  %dec = add i8 %retries.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retries.0)
  %tobool.not = icmp eq i8 %retries.0, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then3.if.then13_crit_edge, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then3.if.then13_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %if.then3.if.then13_crit_edge, %entry.if.then13_crit_edge
  %seq_error = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 144, i32 1
  %3 = ptrtoint ptr %seq_error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq_error, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %seq_error, align 4
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef %8, i32 noundef %test_mask, i32 noundef %test_result) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body.if.end17_crit_edge
  %ret_val.030 = phi i32 [ 1, %if.then13 ], [ 0, %do.body.if.end17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %ret_val.030
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_ms_mem_write_128b(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_intr_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_intr_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !323, !324, !325, !327, !328, !330, !331, !333, !334, !335, !337, !338, !340, !341, !343, !344, !345, !347, !348, !350, !351, !353, !354, !355, !357, !358, !360, !361, !363, !364, !365, !367, !368, !369}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 52, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qla4_83xx_rd_reg_indirect._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qla4_83xx_rd_reg_indirect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 69, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qla4_83xx_wr_reg_indirect._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qla4_83xx_wr_reg_indirect._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 122, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qla4_83xx_flash_read_u32._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @qla4_83xx_flash_read_u32._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 133, i32 4}
!20 = !{ptr @qla4_83xx_flash_read_u32._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qla4_83xx_flash_read_u32._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 142, i32 4}
!24 = !{ptr @qla4_83xx_flash_read_u32._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4_83xx_flash_read_u32._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 172, i32 3}
!28 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 181, i32 3}
!32 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry.19, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 196, i32 5}
!36 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry.21, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 212, i32 6}
!39 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry.23, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 226, i32 5}
!42 = !{ptr @qla4_83xx_lockless_flash_read_u32._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 244, i32 3}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qla4_83xx_rom_lock_recovery._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @qla4_83xx_rom_lock_recovery._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 341, i32 4}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @qla4_83xx_drv_lock._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @qla4_83xx_drv_lock._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 350, i32 5}
!56 = !{ptr @qla4_83xx_drv_lock._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qla4_83xx_drv_lock._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 359, i32 6}
!60 = !{ptr @qla4_83xx_drv_lock._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qla4_83xx_drv_lock._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 365, i32 5}
!64 = !{ptr @qla4_83xx_drv_lock._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qla4_83xx_drv_lock._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 383, i32 3}
!68 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qla4_83xx_drv_unlock._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qla4_83xx_drv_unlock._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 400, i32 2}
!73 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @qla4_83xx_set_idc_dontreset._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @qla4_83xx_set_idc_dontreset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 411, i32 2}
!78 = !{ptr @qla4_83xx_clear_idc_dontreset._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qla4_83xx_clear_idc_dontreset._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 493, i32 3}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qla4_83xx_can_perform_reset._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qla4_83xx_can_perform_reset._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 513, i32 2}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qla4_83xx_need_reset_handler._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 517, i32 3}
!92 = !{ptr @qla4_83xx_need_reset_handler._entry.48, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 527, i32 5}
!96 = !{ptr @qla4_83xx_need_reset_handler._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 545, i32 3}
!100 = !{ptr @qla4_83xx_need_reset_handler._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 550, i32 5}
!104 = !{ptr @qla4_83xx_need_reset_handler._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 567, i32 4}
!109 = !{ptr @qla4_83xx_need_reset_handler._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qla4_83xx_need_reset_handler._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 594, i32 2}
!113 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qla4_83xx_get_idc_param._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @qla4_83xx_get_idc_param._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 782, i32 3}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qla4_83xx_read_reset_template._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @qla4_83xx_read_reset_template._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 793, i32 2}
!124 = !{ptr @qla4_83xx_read_reset_template._entry.69, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.71, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 801, i32 3}
!128 = !{ptr @qla4_83xx_read_reset_template._entry.72, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.74, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.76, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 813, i32 3}
!132 = !{ptr @qla4_83xx_read_reset_template._entry.75, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.77, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 823, i32 2}
!136 = !{ptr @qla4_83xx_read_reset_template._entry.78, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.80, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @qla4_83xx_read_reset_template._entry.81, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 831, i32 3}
!140 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.82, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.84, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 838, i32 3}
!143 = !{ptr @qla4_83xx_read_reset_template._entry.83, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.85, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.87, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 842, i32 2}
!147 = !{ptr @qla4_83xx_read_reset_template._entry.86, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qla4_83xx_read_reset_template._entry_ptr.88, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1244, i32 3}
!151 = !{ptr @.str.90, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @qla4_83xx_start_firmware._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @qla4_83xx_start_firmware._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1247, i32 3}
!156 = !{ptr @qla4_83xx_start_firmware._entry.91, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @qla4_83xx_start_firmware._entry_ptr.93, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.95, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1253, i32 3}
!160 = !{ptr @qla4_83xx_start_firmware._entry.94, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @qla4_83xx_start_firmware._entry_ptr.96, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1361, i32 4}
!164 = !{ptr @.str.98, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @qla4_83xx_isp_reset._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @qla4_83xx_isp_reset._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1367, i32 3}
!169 = !{ptr @qla4_83xx_isp_reset._entry.99, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @qla4_83xx_isp_reset._entry_ptr.101, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1379, i32 3}
!173 = !{ptr @qla4_83xx_isp_reset._entry.102, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qla4_83xx_isp_reset._entry_ptr.104, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.105, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1578, i32 3}
!177 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @qla4_83xx_is_detached._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @qla4_83xx_is_detached._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.107, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 33, i32 3}
!182 = !{ptr @.str.108, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @qla4_83xx_set_win_base._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @qla4_83xx_set_win_base._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 90, i32 4}
!187 = !{ptr @.str.110, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @qla4_83xx_flash_lock._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @qla4_83xx_flash_lock._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 279, i32 2}
!192 = !{ptr @.str.112, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qla4_83xx_lock_recovery._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @qla4_83xx_lock_recovery._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 761, i32 3}
!197 = !{ptr @.str.114, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @qla4_83xx_reset_seq_checksum_test._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @qla4_83xx_reset_seq_checksum_test._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 607, i32 3}
!202 = !{ptr @.str.116, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @qla4_83xx_dump_reset_seq_hdr._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @qla4_83xx_dump_reset_seq_hdr._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.118, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 614, i32 2}
!207 = !{ptr @qla4_83xx_dump_reset_seq_hdr._entry.117, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @qla4_83xx_dump_reset_seq_hdr._entry_ptr.119, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1216, i32 3}
!211 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @qla4_83xx_restart._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @qla4_83xx_restart._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.123, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1225, i32 3}
!216 = !{ptr @qla4_83xx_restart._entry.122, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @qla4_83xx_restart._entry_ptr.124, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1178, i32 3}
!220 = !{ptr @.str.126, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @qla4_83xx_process_stop_seq._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @qla4_83xx_process_stop_seq._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1160, i32 4}
!225 = !{ptr @.str.128, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @qla4_83xx_process_reset_template._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @qla4_83xx_process_reset_template._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 737, i32 3}
!230 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @qla4_83xx_poll_reg._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @qla4_83xx_poll_reg._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.131, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1006, i32 5}
!235 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @qla4_83xx_poll_write_list._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @qla4_83xx_poll_write_list._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.133, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1094, i32 3}
!240 = !{ptr @.str.134, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @qla4_83xx_template_end._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @qla4_83xx_template_end._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.136, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1098, i32 3}
!245 = !{ptr @qla4_83xx_template_end._entry.135, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @qla4_83xx_template_end._entry_ptr.137, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.138, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1065, i32 5}
!249 = !{ptr @.str.139, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @qla4_83xx_poll_read_list._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @qla4_83xx_poll_read_list._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.140, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1196, i32 3}
!254 = !{ptr @.str.141, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @qla4_83xx_process_init_seq._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @qla4_83xx_process_init_seq._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.142, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 642, i32 3}
!259 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @qla4_83xx_copy_bootloader._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @qla4_83xx_copy_bootloader._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 651, i32 3}
!264 = !{ptr @qla4_83xx_copy_bootloader._entry.144, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @qla4_83xx_copy_bootloader._entry_ptr.146, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 655, i32 2}
!268 = !{ptr @qla4_83xx_copy_bootloader._entry.147, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @qla4_83xx_copy_bootloader._entry_ptr.149, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.151, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 662, i32 3}
!272 = !{ptr @qla4_83xx_copy_bootloader._entry.150, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @qla4_83xx_copy_bootloader._entry_ptr.152, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.154, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 667, i32 2}
!276 = !{ptr @qla4_83xx_copy_bootloader._entry.153, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @qla4_83xx_copy_bootloader._entry_ptr.155, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1187, i32 3}
!280 = !{ptr @.str.157, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @qla4_83xx_process_start_seq._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @qla4_83xx_process_start_seq._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.158, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 685, i32 4}
!285 = !{ptr @.str.159, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @qla4_83xx_check_cmd_peg_status._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @qla4_83xx_check_cmd_peg_status._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1553, i32 2}
!290 = !{ptr @.str.161, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @qla4_83xx_eport_init._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @qla4_83xx_eport_init._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.162, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1410, i32 2}
!295 = !{ptr @.str.163, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @qla4_83xx_dump_pause_control_regs._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1413, i32 2}
!300 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.164, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.166, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.168, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1418, i32 3}
!304 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.167, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.169, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.171, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1421, i32 2}
!308 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.170, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.172, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.174, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1424, i32 2}
!312 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.173, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.175, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.177, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1429, i32 3}
!316 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.176, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.178, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.179, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1432, i32 2}
!320 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.180, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.182, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1435, i32 2}
!323 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.181, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.183, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.184, !326, !"_entry", i1 false, i1 false}
!326 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1440, i32 3}
!327 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.185, !326, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.186, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1443, i32 2}
!330 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.187, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.189, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1446, i32 2}
!333 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.188, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.190, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.191, !336, !"_entry", i1 false, i1 false}
!336 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1451, i32 3}
!337 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.192, !336, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.193, !339, !"_entry", i1 false, i1 false}
!339 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1454, i32 2}
!340 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.194, !339, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.196, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1457, i32 2}
!343 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.195, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.197, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.198, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1465, i32 3}
!347 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.199, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.200, !349, !"_entry", i1 false, i1 false}
!349 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1468, i32 2}
!350 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.201, !349, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.203, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1471, i32 2}
!353 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.202, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.204, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.205, !356, !"_entry", i1 false, i1 false}
!356 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1479, i32 3}
!357 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.206, !356, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.207, !359, !"_entry", i1 false, i1 false}
!359 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1482, i32 2}
!360 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.208, !359, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.210, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1487, i32 2}
!363 = !{ptr @qla4_83xx_dump_pause_control_regs._entry.209, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @qla4_83xx_dump_pause_control_regs._entry_ptr.211, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.212, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/qla4xxx/ql4_83xx.c", i32 1527, i32 2}
!367 = !{ptr @.str.213, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @__qla4_83xx_disable_pause._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @__qla4_83xx_disable_pause._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{i32 1, !"wchar_size", i32 2}
!371 = !{i32 1, !"min_enum_size", i32 4}
!372 = !{i32 8, !"branch-target-enforcement", i32 0}
!373 = !{i32 8, !"sign-return-address", i32 0}
!374 = !{i32 8, !"sign-return-address-all", i32 0}
!375 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!376 = !{i32 7, !"uwtable", i32 1}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!379 = !{i64 5051013}
!380 = !{i64 2159560395}
!381 = !{i64 2159560631}
!382 = !{i64 5050595}
!383 = !{!"auto-init"}
!384 = !{i64 2159693228}
!385 = !{i64 2159693465}
!386 = !{i64 2159693887}
!387 = !{i64 2159694431}
!388 = !{i64 2159694853}
!389 = !{i64 2159695363}
!390 = !{i64 2159695812}
!391 = !{i64 2159696260}
!392 = !{i64 2159696981}
