; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_init.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ddb_entry = type { ptr, ptr, ptr, i16, i32, i16, %struct.dev_db_entry, ptr, ptr, i32, i16, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i16 }
%struct.dev_db_entry = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, [16 x i8], [32 x i8], [32 x i8], i16, i16, i16, i8, i16, [54 x i8], [224 x i8], [16 x i8], [16 x i8], i16, i16, i16, i8, i8, i32, i32, [43 x i8], i16, i16 }
%struct.atomic_t = type { i32 }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_reg_82xx = type { i32, [63 x i32], i32, [63 x i32], i32, [63 x i32], [8 x i32], [24 x i32], i32, [31 x i32], [8 x i32], [56 x i32], i32, i32 }
%struct.device_reg_83xx = type { [16 x i32], [496 x i32], [16 x i32], [496 x i32], i32, [63 x i32], i32, [63 x i32], i32, [1919 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, [544 x i32], i32, i32, i32 }
%struct.shadow_regs = type { i32, i32 }
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }
%struct.response = type { [60 x i8], i32 }
%struct.flash_sys_info = type { i32, i32, [4 x %struct.sys_info_phys_addr], [128 x i8], [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, [39 x i32] }
%struct.sys_info_phys_addr = type { [6 x i8], [2 x i8] }
%struct.qla4_8xxx_minidump_template_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [8 x i32], [16 x i32], [16 x i32] }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.185, [0 x i8] }
%union.anon.185 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_get_sys_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi%ld: %s: Unable to allocate dma buffer.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_get_sys_info\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla4xxx/ql4_init.c\00", [32 x i8] zeroinitializer }, align 32
@qla4xxx_get_sys_info._entry_ptr = internal global ptr @qla4xxx_get_sys_info._entry, section ".printk_index", align 4
@qla4xxx_get_sys_info._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"scsi%ld: %s: get_flash FLASH_OFFSET_SYS_INFO failed\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_get_sys_info._entry_ptr.5 = internal global ptr @qla4xxx_get_sys_info._entry.3, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 316, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware dump previously allocated.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_alloc_fw_dump\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr = internal global ptr @qla4xxx_alloc_fw_dump._entry, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 324, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld: Failed to get template size\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.13 = internal global ptr @qla4xxx_alloc_fw_dump._entry.10, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 336, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"scsi%ld: Failed to allocate DMA memory\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.16 = internal global ptr @qla4xxx_alloc_fw_dump._entry.14, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 345, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"scsi%ld: Failed to get minidump template\0A\00", [54 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.19 = internal global ptr @qla4xxx_alloc_fw_dump._entry.17, section ".printk_index", align 4
@ql4xmdcapmask = external dso_local local_unnamed_addr global i32, align 4
@qla4xxx_alloc_fw_dump._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 361, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Falling back to default capture mask, as PEX DMA is not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.22 = internal global ptr @qla4xxx_alloc_fw_dump._entry.20, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 368, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Minimum num of entries = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.25 = internal global ptr @qla4xxx_alloc_fw_dump._entry.23, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 370, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dump template size  = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.28 = internal global ptr @qla4xxx_alloc_fw_dump._entry.26, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.2, i32 372, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Selected Capture mask =0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.31 = internal global ptr @qla4xxx_alloc_fw_dump._entry.29, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.2, i32 389, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Minidump Template Size = 0x%x KB\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.34 = internal global ptr @qla4xxx_alloc_fw_dump._entry.32, section ".printk_index", align 4
@qla4xxx_alloc_fw_dump._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.7, ptr @.str.2, i32 391, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Total Minidump size = 0x%x KB\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_alloc_fw_dump._entry_ptr.37 = internal global ptr @qla4xxx_alloc_fw_dump._entry.35, section ".printk_index", align 4
@qla4xxx_pci_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 663, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Configuring PCI space...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_pci_config\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_pci_config._entry_ptr = internal global ptr @qla4xxx_pci_config._entry, section ".printk_index", align 4
@qla4xxx_pci_config._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 668, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to set MWI\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_pci_config._entry_ptr.42 = internal global ptr @qla4xxx_pci_config._entry.40, section ".printk_index", align 4
@ql4xxx_lock_drvr_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"scsi%ld: %s: Waiting for Global Init Semaphore(%d)...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ql4xxx_lock_drvr_wait\00", [42 x i8] zeroinitializer }, align 32
@ql4xxx_lock_drvr_wait._entry_ptr = internal global ptr @ql4xxx_lock_drvr_wait._entry, section ".printk_index", align 4
@ql4xxx_lock_drvr_wait._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"scsi%ld: %s: Global Init Semaphore acquired\0A\00", [51 x i8] zeroinitializer }, align 32
@ql4xxx_lock_drvr_wait._entry_ptr.47 = internal global ptr @ql4xxx_lock_drvr_wait._entry.45, section ".printk_index", align 4
@qla4xxx_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi%ld: %s: port_ctrl\09= 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4xxx_start_firmware\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware._entry_ptr = internal global ptr @qla4xxx_start_firmware._entry, section ".printk_index", align 4
@qla4xxx_start_firmware._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scsi%ld: %s: H/W Config complete - mbox[0]= 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware._entry_ptr.52 = internal global ptr @qla4xxx_start_firmware._entry.50, section ".printk_index", align 4
@qla4xxx_start_firmware._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"scsi%ld: %s: Get firmware state -- state = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware._entry_ptr.55 = internal global ptr @qla4xxx_start_firmware._entry.53, section ".printk_index", align 4
@qla4xxx_start_firmware._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"scsi%ld: %s: Firmware in known state -- config and boot, state = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware._entry_ptr.58 = internal global ptr @qla4xxx_start_firmware._entry.56, section ".printk_index", align 4
@qla4xxx_start_firmware._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"scsi%ld: %s: Firmware in unknown state -- resetting, state = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware._entry_ptr.61 = internal global ptr @qla4xxx_start_firmware._entry.59, section ".printk_index", align 4
@qla4xxx_free_ddb_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 933, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Freeing DDB index = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4xxx_free_ddb_index\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_free_ddb_index._entry_ptr = internal global ptr @qla4xxx_free_ddb_index._entry, section ".printk_index", align 4
@qla4xxx_free_ddb_index._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 938, ptr @.str.66, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to clear DDB index = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_free_ddb_index._entry_ptr.67 = internal global ptr @qla4xxx_free_ddb_index._entry.64, section ".printk_index", align 4
@qla4xxx_initialize_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.68, ptr @.str.2, i32 959, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_initialize_adapter\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_initialize_adapter._entry_ptr = internal global ptr @qla4xxx_initialize_adapter._entry, section ".printk_index", align 4
@qla4xxx_initialize_adapter._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"scsi%ld: initialize adapter: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@qla4xxx_initialize_adapter._entry_ptr.71 = internal global ptr @qla4xxx_initialize_adapter._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUCCEEDED\00", [22 x i8] zeroinitializer }, align 32
@qla4xxx_ddb_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1011, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: DDB - old state = 0x%x, new state = 0x%x for index [%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla4xxx_ddb_change\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_ddb_change._entry_ptr = internal global ptr @qla4xxx_ddb_change._entry, section ".printk_index", align 4
@qla4xxx_ddb_change._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1068, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Unknown Event\0A\00", [45 x i8] zeroinitializer }, align 32
@qla4xxx_ddb_change._entry_ptr.78 = internal global ptr @qla4xxx_ddb_change._entry.76, section ".printk_index", align 4
@qla4xxx_flash_ddb_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.79, ptr @.str.2, i32 1105, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla4xxx_flash_ddb_change\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_flash_ddb_change._entry_ptr = internal global ptr @qla4xxx_flash_ddb_change._entry, section ".printk_index", align 4
@qla4xxx_flash_ddb_change._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.79, ptr @.str.2, i32 1152, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_flash_ddb_change._entry_ptr.81 = internal global ptr @qla4xxx_flash_ddb_change._entry.80, section ".printk_index", align 4
@qla4xxx_process_ddb_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1182, ptr @.str.66, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: No ddb_entry at FW index [%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qla4xxx_process_ddb_changed\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_process_ddb_changed._entry_ptr = internal global ptr @qla4xxx_process_ddb_changed._entry, section ".printk_index", align 4
@qla4xxx_login_flash_ddb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1222, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Skipping login to non FLASH DB\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qla4xxx_login_flash_ddb\00", [40 x i8] zeroinitializer }, align 32
@qla4xxx_login_flash_ddb._entry_ptr = internal global ptr @qla4xxx_login_flash_ddb._entry, section ".printk_index", align 4
@qla4xxx_login_flash_ddb._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1229, ptr @.str.66, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@qla4xxx_login_flash_ddb._entry_ptr.88 = internal global ptr @qla4xxx_login_flash_ddb._entry.86, section ".printk_index", align 4
@qla4xxx_login_flash_ddb._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 1249, ptr @.str.66, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set DDB failed\0A\00", [16 x i8] zeroinitializer }, align 32
@qla4xxx_login_flash_ddb._entry_ptr.91 = internal global ptr @qla4xxx_login_flash_ddb._entry.89, section ".printk_index", align 4
@qla4xxx_login_flash_ddb._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 1257, ptr @.str.66, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Login failed: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_login_flash_ddb._entry_ptr.94 = internal global ptr @qla4xxx_login_flash_ddb._entry.92, section ".printk_index", align 4
@qla4_80xx_is_minidump_dma_capable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 293, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PEX DMA Not supported %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4_80xx_is_minidump_dma_capable\00", [62 x i8] zeroinitializer }, align 32
@qla4_80xx_is_minidump_dma_capable._entry_ptr = internal global ptr @qla4_80xx_is_minidump_dma_capable._entry, section ".printk_index", align 4
@ql4xxx_set_mac_number._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"scsi%ld: %s: Invalid function number, ispControlStatus = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ql4xxx_set_mac_number\00", [42 x i8] zeroinitializer }, align 32
@ql4xxx_set_mac_number._entry_ptr = internal global ptr @ql4xxx_set_mac_number._entry, section ".printk_index", align 4
@ql4xxx_set_mac_number._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scsi%ld: %s: mac_index %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@ql4xxx_set_mac_number._entry_ptr.101 = internal global ptr @ql4xxx_set_mac_number._entry.99, section ".printk_index", align 4
@qla4xxx_config_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scsi%ld: %s: Get EEProm parameters \0A\00", [59 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qla4xxx_config_nvram\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_config_nvram._entry_ptr = internal global ptr @qla4xxx_config_nvram._entry, section ".printk_index", align 4
@qla4xxx_config_nvram._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 609, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Configuring NVRAM ...\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_config_nvram._entry_ptr.106 = internal global ptr @qla4xxx_config_nvram._entry.104, section ".printk_index", align 4
@qla4xxx_config_nvram._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 619, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"scsi%ld: %s: EEProm checksum invalid.  Please update your EEPROM\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4xxx_config_nvram._entry_ptr.109 = internal global ptr @qla4xxx_config_nvram._entry.107, section ".printk_index", align 4
@qla4xxx_start_firmware_from_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 688, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Starting firmware ...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qla4xxx_start_firmware_from_flash\00", [62 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware_from_flash._entry_ptr = internal global ptr @qla4xxx_start_firmware_from_flash._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qla4xxx_start_firmware_from_flash._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016scsi%ld: %s: Wait up to %d seconds for boot firmware to complete...\0A\00", [57 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware_from_flash._entry_ptr.115 = internal global ptr @qla4xxx_start_firmware_from_flash._entry.113, section ".printk_index", align 4
@qla4xxx_start_firmware_from_flash._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016scsi%ld: %s: Waiting for boot firmware to complete... ctrl_sts=0x%x, remaining=%ld\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware_from_flash._entry_ptr.118 = internal global ptr @qla4xxx_start_firmware_from_flash._entry.116, section ".printk_index", align 4
@qla4xxx_start_firmware_from_flash._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.112, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016scsi%ld: %s: Boot firmware failed -  mbox status 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4xxx_start_firmware_from_flash._entry_ptr.121 = internal global ptr @qla4xxx_start_firmware_from_flash._entry.119, section ".printk_index", align 4
@qla4xxx_init_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 563, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Initializing firmware..\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qla4xxx_init_firmware\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_init_firmware._entry_ptr = internal global ptr @qla4xxx_init_firmware._entry, section ".printk_index", align 4
@qla4xxx_init_firmware._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"scsi%ld: %s: Failed to initialize firmware control block\0A\00", [38 x i8] zeroinitializer }, align 32
@qla4xxx_init_firmware._entry_ptr.126 = internal global ptr @qla4xxx_init_firmware._entry.124, section ".printk_index", align 4
@qla4xxx_fw_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 406, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Waiting for Firmware Ready..\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qla4xxx_fw_ready\00", [47 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr = internal global ptr @qla4xxx_fw_ready._entry, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi%ld: %s: unable to get firmware state\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.131 = internal global ptr @qla4xxx_fw_ready._entry.129, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scsi%ld: %s: an unrecoverable error has occurred\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.134 = internal global ptr @qla4xxx_fw_ready._entry.132, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.128, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016scsi%ld: %s: fwstate:AUTOCONNECT in progress\0A\00", [48 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.137 = internal global ptr @qla4xxx_fw_ready._entry.135, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.128, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016scsi%ld: %s: fwstate: CONFIGURING IP\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.140 = internal global ptr @qla4xxx_fw_ready._entry.138, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.128, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016scsi%ld: %s: LINK UP (Cable plugged)\0A\00", [56 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.143 = internal global ptr @qla4xxx_fw_ready._entry.141, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.128, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016scsi%ld: %s: LINK DOWN (Cable unplugged)\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.146 = internal global ptr @qla4xxx_fw_ready._entry.144, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.128, ptr @.str.2, i32 479, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Firmware Ready..\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.149 = internal global ptr @qla4xxx_fw_ready._entry.147, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.128, ptr @.str.2, i32 487, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scsi%ld: %s: MEDIA TYPE - %s\0A\00", [34 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.152 = internal global ptr @qla4xxx_fw_ready._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OPTICAL\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COPPER\00", [25 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.128, ptr @.str.2, i32 493, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld: %s: DHCPv4 STATE Enabled %s\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.157 = internal global ptr @qla4xxx_fw_ready._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.128, ptr @.str.2, i32 499, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi%ld: %s: LINK %s\0A\00", [42 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.162 = internal global ptr @qla4xxx_fw_ready._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.128, ptr @.str.2, i32 506, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi%ld: %s: iSNS Service Started %s\0A\00", [58 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.167 = internal global ptr @qla4xxx_fw_ready._entry.165, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.128, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"scsi%ld: %s: waiting on fw, state=%x:%x - seconds expired= %d\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.170 = internal global ptr @qla4xxx_fw_ready._entry.168, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.128, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"scsi%ld: %s: FW Initialization timed out!\0A\00", [53 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.173 = internal global ptr @qla4xxx_fw_ready._entry.171, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.128, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"scsi%ld: %s: FW initialized, but is reporting it's waiting to configure an IP address\0A\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.176 = internal global ptr @qla4xxx_fw_ready._entry.174, section ".printk_index", align 4
@qla4xxx_fw_ready._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.128, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"scsi%ld: %s: FW initialized, but auto-discovery still in process\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4xxx_fw_ready._entry_ptr.179 = internal global ptr @qla4xxx_fw_ready._entry.177, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016scsi%ld: %s: Preferred IP configured. Don't wait!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4xxx_wait_for_ip_config\00", [37 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr = internal global ptr @qla4xxx_wait_for_ip_config._entry, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016scsi%ld: %s: No Router configured. Don't wait!\0A\00", [46 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.184 = internal global ptr @qla4xxx_wait_for_ip_config._entry.182, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.181, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"scsi%ld: %s: LinkLocal Router & IP configured. Don't wait!\0A\00", [36 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.187 = internal global ptr @qla4xxx_wait_for_ip_config._entry.185, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.181, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"scsi%ld: %s: Wait for additional IP(s) \22\00", [55 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.190 = internal global ptr @qla4xxx_wait_for_ip_config._entry.188, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IPv4 \00", [26 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.193 = internal global ptr @qla4xxx_wait_for_ip_config._entry.191, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.181, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPv6LinkLocal \00", [17 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.196 = internal global ptr @qla4xxx_wait_for_ip_config._entry.194, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.181, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IPv6Addr0 \00", [21 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.199 = internal global ptr @qla4xxx_wait_for_ip_config._entry.197, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.181, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IPv6Addr1 \00", [21 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.202 = internal global ptr @qla4xxx_wait_for_ip_config._entry.200, section ".printk_index", align 4
@qla4xxx_wait_for_ip_config._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.181, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\0A\00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_wait_for_ip_config._entry_ptr.205 = internal global ptr @qla4xxx_wait_for_ip_config._entry.203, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 1280, i64 1792]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 16, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 16, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 16, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.214 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.215 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.218 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 156, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 165, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 315, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 322, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 334, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 343, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 361, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 367, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 369, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 371, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 387, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 390, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 663, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 668, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 769, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 775, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 806, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 819, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 836, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 843, i32 6 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 853, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 932, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 936, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 959, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 996, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1008, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1067, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1102, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1151, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1181, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1221, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1229, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1249, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 1256, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 292, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 31, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 36, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 599, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 609, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 616, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 688, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 716, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 733, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 752, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 563, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 565, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 406, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 414, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 420, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 438, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 444, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 456, i32 6 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 462, i32 6 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 478, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 482, i32 5 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 488, i32 5 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 494, i32 5 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 500, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 512, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 526, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 530, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 535, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 233, i32 5 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 241, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 254, i32 5 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 261, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 264, i32 5 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 267, i32 5 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 270, i32 5 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 273, i32 5 }
@___asan_gen_.726 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.730 = private constant [35 x i8] c"../drivers/scsi/qla4xxx/ql4_init.c\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.730, i32 274, i32 4 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @ql4xxx_lock_drvr_wait._entry, ptr @ql4xxx_lock_drvr_wait._entry.45, ptr @ql4xxx_lock_drvr_wait._entry_ptr, ptr @ql4xxx_lock_drvr_wait._entry_ptr.47, ptr @ql4xxx_set_mac_number._entry, ptr @ql4xxx_set_mac_number._entry.99, ptr @ql4xxx_set_mac_number._entry_ptr, ptr @ql4xxx_set_mac_number._entry_ptr.101, ptr @qla4_80xx_is_minidump_dma_capable._entry, ptr @qla4_80xx_is_minidump_dma_capable._entry_ptr, ptr @qla4xxx_alloc_fw_dump._entry, ptr @qla4xxx_alloc_fw_dump._entry.10, ptr @qla4xxx_alloc_fw_dump._entry.14, ptr @qla4xxx_alloc_fw_dump._entry.17, ptr @qla4xxx_alloc_fw_dump._entry.20, ptr @qla4xxx_alloc_fw_dump._entry.23, ptr @qla4xxx_alloc_fw_dump._entry.26, ptr @qla4xxx_alloc_fw_dump._entry.29, ptr @qla4xxx_alloc_fw_dump._entry.32, ptr @qla4xxx_alloc_fw_dump._entry.35, ptr @qla4xxx_alloc_fw_dump._entry_ptr, ptr @qla4xxx_alloc_fw_dump._entry_ptr.13, ptr @qla4xxx_alloc_fw_dump._entry_ptr.16, ptr @qla4xxx_alloc_fw_dump._entry_ptr.19, ptr @qla4xxx_alloc_fw_dump._entry_ptr.22, ptr @qla4xxx_alloc_fw_dump._entry_ptr.25, ptr @qla4xxx_alloc_fw_dump._entry_ptr.28, ptr @qla4xxx_alloc_fw_dump._entry_ptr.31, ptr @qla4xxx_alloc_fw_dump._entry_ptr.34, ptr @qla4xxx_alloc_fw_dump._entry_ptr.37, ptr @qla4xxx_config_nvram._entry, ptr @qla4xxx_config_nvram._entry.104, ptr @qla4xxx_config_nvram._entry.107, ptr @qla4xxx_config_nvram._entry_ptr, ptr @qla4xxx_config_nvram._entry_ptr.106, ptr @qla4xxx_config_nvram._entry_ptr.109, ptr @qla4xxx_ddb_change._entry, ptr @qla4xxx_ddb_change._entry.76, ptr @qla4xxx_ddb_change._entry_ptr, ptr @qla4xxx_ddb_change._entry_ptr.78, ptr @qla4xxx_flash_ddb_change._entry, ptr @qla4xxx_flash_ddb_change._entry.80, ptr @qla4xxx_flash_ddb_change._entry_ptr, ptr @qla4xxx_flash_ddb_change._entry_ptr.81, ptr @qla4xxx_free_ddb_index._entry, ptr @qla4xxx_free_ddb_index._entry.64, ptr @qla4xxx_free_ddb_index._entry_ptr, ptr @qla4xxx_free_ddb_index._entry_ptr.67, ptr @qla4xxx_fw_ready._entry, ptr @qla4xxx_fw_ready._entry.129, ptr @qla4xxx_fw_ready._entry.132, ptr @qla4xxx_fw_ready._entry.135, ptr @qla4xxx_fw_ready._entry.138, ptr @qla4xxx_fw_ready._entry.141, ptr @qla4xxx_fw_ready._entry.144, ptr @qla4xxx_fw_ready._entry.147, ptr @qla4xxx_fw_ready._entry.150, ptr @qla4xxx_fw_ready._entry.155, ptr @qla4xxx_fw_ready._entry.160, ptr @qla4xxx_fw_ready._entry.165, ptr @qla4xxx_fw_ready._entry.168, ptr @qla4xxx_fw_ready._entry.171, ptr @qla4xxx_fw_ready._entry.174, ptr @qla4xxx_fw_ready._entry.177, ptr @qla4xxx_fw_ready._entry_ptr, ptr @qla4xxx_fw_ready._entry_ptr.131, ptr @qla4xxx_fw_ready._entry_ptr.134, ptr @qla4xxx_fw_ready._entry_ptr.137, ptr @qla4xxx_fw_ready._entry_ptr.140, ptr @qla4xxx_fw_ready._entry_ptr.143, ptr @qla4xxx_fw_ready._entry_ptr.146, ptr @qla4xxx_fw_ready._entry_ptr.149, ptr @qla4xxx_fw_ready._entry_ptr.152, ptr @qla4xxx_fw_ready._entry_ptr.157, ptr @qla4xxx_fw_ready._entry_ptr.162, ptr @qla4xxx_fw_ready._entry_ptr.167, ptr @qla4xxx_fw_ready._entry_ptr.170, ptr @qla4xxx_fw_ready._entry_ptr.173, ptr @qla4xxx_fw_ready._entry_ptr.176, ptr @qla4xxx_fw_ready._entry_ptr.179, ptr @qla4xxx_get_sys_info._entry, ptr @qla4xxx_get_sys_info._entry.3, ptr @qla4xxx_get_sys_info._entry_ptr, ptr @qla4xxx_get_sys_info._entry_ptr.5, ptr @qla4xxx_init_firmware._entry, ptr @qla4xxx_init_firmware._entry.124, ptr @qla4xxx_init_firmware._entry_ptr, ptr @qla4xxx_init_firmware._entry_ptr.126, ptr @qla4xxx_initialize_adapter._entry, ptr @qla4xxx_initialize_adapter._entry.69, ptr @qla4xxx_initialize_adapter._entry_ptr, ptr @qla4xxx_initialize_adapter._entry_ptr.71, ptr @qla4xxx_login_flash_ddb._entry, ptr @qla4xxx_login_flash_ddb._entry.86, ptr @qla4xxx_login_flash_ddb._entry.89, ptr @qla4xxx_login_flash_ddb._entry.92, ptr @qla4xxx_login_flash_ddb._entry_ptr, ptr @qla4xxx_login_flash_ddb._entry_ptr.88, ptr @qla4xxx_login_flash_ddb._entry_ptr.91, ptr @qla4xxx_login_flash_ddb._entry_ptr.94, ptr @qla4xxx_pci_config._entry, ptr @qla4xxx_pci_config._entry.40, ptr @qla4xxx_pci_config._entry_ptr, ptr @qla4xxx_pci_config._entry_ptr.42, ptr @qla4xxx_process_ddb_changed._entry, ptr @qla4xxx_process_ddb_changed._entry_ptr, ptr @qla4xxx_start_firmware._entry, ptr @qla4xxx_start_firmware._entry.50, ptr @qla4xxx_start_firmware._entry.53, ptr @qla4xxx_start_firmware._entry.56, ptr @qla4xxx_start_firmware._entry.59, ptr @qla4xxx_start_firmware._entry_ptr, ptr @qla4xxx_start_firmware._entry_ptr.52, ptr @qla4xxx_start_firmware._entry_ptr.55, ptr @qla4xxx_start_firmware._entry_ptr.58, ptr @qla4xxx_start_firmware._entry_ptr.61, ptr @qla4xxx_start_firmware_from_flash._entry, ptr @qla4xxx_start_firmware_from_flash._entry.113, ptr @qla4xxx_start_firmware_from_flash._entry.116, ptr @qla4xxx_start_firmware_from_flash._entry.119, ptr @qla4xxx_start_firmware_from_flash._entry_ptr, ptr @qla4xxx_start_firmware_from_flash._entry_ptr.115, ptr @qla4xxx_start_firmware_from_flash._entry_ptr.118, ptr @qla4xxx_start_firmware_from_flash._entry_ptr.121, ptr @qla4xxx_wait_for_ip_config._entry, ptr @qla4xxx_wait_for_ip_config._entry.182, ptr @qla4xxx_wait_for_ip_config._entry.185, ptr @qla4xxx_wait_for_ip_config._entry.188, ptr @qla4xxx_wait_for_ip_config._entry.191, ptr @qla4xxx_wait_for_ip_config._entry.194, ptr @qla4xxx_wait_for_ip_config._entry.197, ptr @qla4xxx_wait_for_ip_config._entry.200, ptr @qla4xxx_wait_for_ip_config._entry.203, ptr @qla4xxx_wait_for_ip_config._entry_ptr, ptr @qla4xxx_wait_for_ip_config._entry_ptr.184, ptr @qla4xxx_wait_for_ip_config._entry_ptr.187, ptr @qla4xxx_wait_for_ip_config._entry_ptr.190, ptr @qla4xxx_wait_for_ip_config._entry_ptr.193, ptr @qla4xxx_wait_for_ip_config._entry_ptr.196, ptr @qla4xxx_wait_for_ip_config._entry_ptr.199, ptr @qla4xxx_wait_for_ip_config._entry_ptr.202, ptr @qla4xxx_wait_for_ip_config._entry_ptr.205, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_sys_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_get_sys_info._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_alloc_fw_dump._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_pci_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_pci_config._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_lock_drvr_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_lock_drvr_wait._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_free_ddb_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_free_ddb_index._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_initialize_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_initialize_adapter._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_ddb_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_ddb_change._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_flash_ddb_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_flash_ddb_change._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_process_ddb_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_login_flash_ddb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_login_flash_ddb._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_login_flash_ddb._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_login_flash_ddb._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_80xx_is_minidump_dma_capable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_set_mac_number._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_set_mac_number._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_config_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_config_nvram._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_config_nvram._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware_from_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware_from_flash._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware_from_flash._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_start_firmware_from_flash._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_init_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_init_firmware._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_fw_ready._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_wait_for_ip_config._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qla4xxx_free_ddb(ptr nocapture noundef %ha, ptr nocapture noundef readonly %ddb_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 3
  %0 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fw_ddb_index, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 80, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 65535 to ptr), ptr %arrayidx, align 4
  %tot_ddbs = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 3
  %3 = ptrtoint ptr %tot_ddbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tot_ddbs, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %tot_ddbs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_init_rings(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %request_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 69
  %0 = ptrtoint ptr %request_out to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %request_out, align 2
  %request_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 68
  %1 = ptrtoint ptr %request_in to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %request_in, align 16
  %request_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 61
  %2 = ptrtoint ptr %request_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_ring, align 4
  %request_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 62
  %4 = ptrtoint ptr %request_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %request_ptr, align 8
  %req_q_count = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 11
  %5 = ptrtoint ptr %req_q_count to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %req_q_count, align 8
  %response_in = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 70
  %6 = ptrtoint ptr %response_in to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %response_in, align 4
  %response_out = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 71
  %7 = ptrtoint ptr %response_out to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %response_out, align 2
  %response_ring = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 64
  %8 = ptrtoint ptr %response_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response_ring, align 128
  %response_ptr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 65
  %10 = ptrtoint ptr %response_ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %response_ptr, align 4
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.else39 [
    i16 -32734, label %do.body10
    i16 -32718, label %entry.do.body26_crit_edge
    i16 -32702, label %entry.do.body26_crit_edge105
  ]

entry.do.body26_crit_edge105:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %16 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qla4_82xx_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #8, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qla4_82xx_reg, align 4
  %rsp_q_in = getelementptr inbounds %struct.device_reg_82xx, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_in, i32 0) #8, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qla4_82xx_reg, align 4
  %rsp_q_out = getelementptr inbounds %struct.device_reg_82xx, ptr %21, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out, i32 0) #8, !srcloc !324
  br label %if.end60

do.body26:                                        ; preds = %entry.do.body26_crit_edge, %entry.do.body26_crit_edge105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %qla4_83xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 145
  %22 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qla4_83xx_reg, align 16
  %req_q_in = getelementptr inbounds %struct.device_reg_83xx, ptr %23, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in, i32 0) #8, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qla4_83xx_reg, align 16
  %rsp_q_in33 = getelementptr inbounds %struct.device_reg_83xx, ptr %25, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_in33, i32 0) #8, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %qla4_83xx_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qla4_83xx_reg, align 16
  %rsp_q_out38 = getelementptr inbounds %struct.device_reg_83xx, ptr %27, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out38, i32 0) #8, !srcloc !324
  br label %if.end60

if.else39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shadow_regs = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 67
  %28 = ptrtoint ptr %shadow_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shadow_regs, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %31 = load ptr, ptr %shadow_regs, align 4
  %rsp_q_in42 = getelementptr inbounds %struct.shadow_regs, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rsp_q_in42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %rsp_q_in42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 4
  %req_q_in49 = getelementptr inbounds %struct.isp_reg, ptr %34, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %req_q_in49, i32 0) #8, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %rsp_q_out54 = getelementptr inbounds %struct.isp_reg, ptr %36, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rsp_q_out54, i32 0) #8, !srcloc !324
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg, align 4
  %rsp_q_out56 = getelementptr inbounds %struct.isp_reg, ptr %38, i32 0, i32 6
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rsp_q_out56) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  br label %if.end60

if.end60:                                         ; preds = %if.else39, %do.body26, %do.body10
  %40 = ptrtoint ptr %response_ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %response_ptr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end60
  %pkt.05.i = phi ptr [ %41, %if.end60 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %cnt.04.i = phi i16 [ 0, %if.end60 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %signature.i = getelementptr inbounds %struct.response, ptr %pkt.05.i, i32 0, i32 1
  %42 = ptrtoint ptr %signature.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -559030611, ptr %signature.i, align 4
  %incdec.ptr.i = getelementptr %struct.response, ptr %pkt.05.i, i32 1
  %inc.i = add nuw nsw i16 %cnt.04.i, 1
  %cmp.i103 = icmp ult i16 %cnt.04.i, 63
  br i1 %cmp.i103, label %for.body.i.for.body.i_crit_edge, label %for.body.preheader

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.preheader:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep = getelementptr i8, ptr %ha, i32 38980
  %43 = call ptr @memset(ptr %uglygep, i32 0, i32 512)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_get_sys_info(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  %sys_info_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sys_info_dma) #8
  %0 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sys_info_dma, align 4, !annotation !335
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef nonnull %sys_info_dma, i32 noundef 3264, i32 noundef 0) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %3 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %do.end, label %do.body.exit_get_sys_info_no_free_crit_edge

do.body.exit_get_sys_info_no_free_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_get_sys_info_no_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, ptr noundef nonnull @.str.1) #11
  br label %exit_get_sys_info_no_free

if.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys_info_dma, align 4
  %call8 = call i32 @qla4xxx_get_flash(ptr noundef %ha, i32 noundef %7, i32 noundef 33554432, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end23, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %8 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp12 = icmp eq i32 %8, 2
  br i1 %cmp12, label %do.end16, label %do.body11.exit_get_sys_info_crit_edge

do.body11.exit_get_sys_info_crit_edge:            ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_get_sys_info

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %host_no18 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %9 = ptrtoint ptr %host_no18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_no18, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %10, ptr noundef nonnull @.str.1) #11
  br label %exit_get_sys_info

if.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %my_mac = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 40
  %physAddr = getelementptr inbounds %struct.flash_sys_info, ptr %call.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %my_mac, ptr %physAddr, i32 6)
  %serial_number = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 41
  %acSerialNumber = getelementptr inbounds %struct.flash_sys_info, ptr %call.i, i32 0, i32 15
  %12 = call ptr @memcpy(ptr %serial_number, ptr %acSerialNumber, i32 16)
  br label %exit_get_sys_info

exit_get_sys_info:                                ; preds = %if.end23, %do.end16, %do.body11.exit_get_sys_info_crit_edge
  %status.0 = phi i32 [ 1, %do.end16 ], [ 1, %do.body11.exit_get_sys_info_crit_edge ], [ 0, %if.end23 ]
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %sys_info_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys_info_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev27, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %16, i32 noundef 0) #8
  br label %exit_get_sys_info_no_free

exit_get_sys_info_no_free:                        ; preds = %exit_get_sys_info, %do.end, %do.body.exit_get_sys_info_no_free_crit_edge
  %status.1 = phi i32 [ 1, %do.end ], [ 1, %do.body.exit_get_sys_info_no_free_crit_edge ], [ %status.0, %exit_get_sys_info ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sys_info_dma) #8
  ret i32 %status.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_flash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_alloc_fw_dump(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  %md_tmp_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md_tmp_dma) #8
  %0 = ptrtoint ptr %md_tmp_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %md_tmp_dma, align 4, !annotation !335
  %fw_dump = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 106
  %1 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_dump, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qla4xxx_req_template_size(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end7, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev5 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %5 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev5, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %7 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev6, ptr noundef nonnull @.str.11, i32 noundef %8) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %ha) #8
  %pdev8 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %9 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev8, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %fw_dump_tmplt_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 110
  %11 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_dump_tmplt_size, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev9, i32 noundef %12, ptr noundef nonnull %md_tmp_dma, i32 noundef 3264, i32 noundef 0) #8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev8, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %host_no18 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %15 = ptrtoint ptr %host_no18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no18, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev17, ptr noundef nonnull @.str.15, i32 noundef %16) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %md_tmp_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %md_tmp_dma, align 4
  %call20 = call i32 @qla4xxx_get_minidump_template(ptr noundef %ha, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  %19 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev8, align 8
  br i1 %cmp21.not, label %if.end29, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %host_no28 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %21 = ptrtoint ptr %host_no28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no28, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev27, ptr noundef nonnull @.str.18, i32 noundef %22) #11
  br label %alloc_cleanup

if.end29:                                         ; preds = %if.end19
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, -32734
  %cond.i = select i1 %cmp.i.not.i, i32 172, i32 268
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %cond.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end29.qla4_80xx_is_minidump_dma_capable.exit_crit_edge

if.end29.qla4_80xx_is_minidump_dma_capable.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4_80xx_is_minidump_dma_capable.exit

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev.i, ptr noundef nonnull @.str.95, i32 noundef %26) #11
  br label %qla4_80xx_is_minidump_dma_capable.exit

qla4_80xx_is_minidump_dma_capable.exit:           ; preds = %do.end.i, %if.end29.qla4_80xx_is_minidump_dma_capable.exit_crit_edge
  %capture_debug_level31 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %capture_debug_level31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %capture_debug_level31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xmdcapmask to i32))
  %30 = load i32, ptr @ql4xmdcapmask, align 4
  %31 = add i32 %30, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %31)
  %32 = icmp ult i32 %31, -125
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %30)
  %cmp34 = icmp ne i32 %30, 255
  %or.cond187 = select i1 %cmp34, i1 true, i1 %tobool1.not.i
  %or.cond = select i1 %32, i1 %or.cond187, i1 false
  br i1 %or.cond, label %if.else, label %qla4_80xx_is_minidump_dma_capable.exit.if.end47_crit_edge

qla4_80xx_is_minidump_dma_capable.exit.if.end47_crit_edge: ; preds = %qla4_80xx_is_minidump_dma_capable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else:                                          ; preds = %qla4_80xx_is_minidump_dma_capable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %30)
  %cmp38 = icmp eq i32 %30, 255
  br i1 %cmp38, label %do.end42, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev8, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev44, ptr noundef nonnull @.str.21) #11
  br label %if.end47

if.end47:                                         ; preds = %do.end42, %if.else.if.end47_crit_edge, %qla4_80xx_is_minidump_dma_capable.exit.if.end47_crit_edge
  %.sink = phi i32 [ %30, %qla4_80xx_is_minidump_dma_capable.exit.if.end47_crit_edge ], [ %29, %do.end42 ], [ %29, %if.else.if.end47_crit_edge ]
  %fw_dump_capture_mask46 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 108
  %35 = ptrtoint ptr %fw_dump_capture_mask46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %fw_dump_capture_mask46, align 4
  %fw_dump_capture_mask48 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 108
  %driver_capture_mask = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 8
  %36 = ptrtoint ptr %driver_capture_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %driver_capture_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %37 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp50 = icmp eq i32 %37, 2
  br i1 %cmp50, label %do.body60, label %if.end47.do.end83_crit_edge

if.end47.do.end83_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.body60:                                        ; preds = %if.end47
  %38 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev8, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %num_of_entries = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %num_of_entries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_of_entries, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev56, ptr noundef nonnull @.str.24, i32 noundef %41) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp61 = icmp eq i32 %.pr, 2
  br i1 %cmp61, label %do.body72, label %do.body60.do.end83_crit_edge

do.body60.do.end83_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.body72:                                        ; preds = %do.body60
  %42 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev8, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_dump_tmplt_size, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev67, ptr noundef nonnull @.str.27, i32 noundef %45) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr189 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr189)
  %cmp73 = icmp eq i32 %.pr189, 2
  br i1 %cmp73, label %do.end77, label %do.body72.do.end83_crit_edge

do.body72.do.end83_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev8, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %fw_dump_capture_mask48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_dump_capture_mask48, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev79, ptr noundef nonnull @.str.30, i32 noundef %49) #11
  br label %do.end83

do.end83:                                         ; preds = %do.end77, %do.body72.do.end83_crit_edge, %do.body60.do.end83_crit_edge, %if.end47.do.end83_crit_edge
  %50 = ptrtoint ptr %fw_dump_capture_mask48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_dump_capture_mask48, align 4
  %fw_dump_size = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 107
  %and86 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.end83.for.inc_crit_edge, label %if.then88

do.end83.for.inc_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then88:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %54 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_dump_size, align 128
  %add = add i32 %55, %53
  store i32 %add, ptr %fw_dump_size, align 128
  br label %for.inc

for.inc:                                          ; preds = %if.then88, %do.end83.for.inc_crit_edge
  %and86.1 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.1)
  %tobool87.not.1 = icmp eq i32 %and86.1, 0
  br i1 %tobool87.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then88.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then88.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 2
  %56 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1, align 4
  %58 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_dump_size, align 128
  %add.1 = add i32 %59, %57
  store i32 %add.1, ptr %fw_dump_size, align 128
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then88.1, %for.inc.for.inc.1_crit_edge
  %and86.2 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.2)
  %tobool87.not.2 = icmp eq i32 %and86.2, 0
  br i1 %tobool87.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then88.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then88.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 3
  %60 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.2, align 4
  %62 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fw_dump_size, align 128
  %add.2 = add i32 %63, %61
  store i32 %add.2, ptr %fw_dump_size, align 128
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then88.2, %for.inc.1.for.inc.2_crit_edge
  %and86.3 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.3)
  %tobool87.not.3 = icmp eq i32 %and86.3, 0
  br i1 %tobool87.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then88.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then88.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.3 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 4
  %64 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.3, align 4
  %66 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fw_dump_size, align 128
  %add.3 = add i32 %67, %65
  store i32 %add.3, ptr %fw_dump_size, align 128
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then88.3, %for.inc.2.for.inc.3_crit_edge
  %and86.4 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.4)
  %tobool87.not.4 = icmp eq i32 %and86.4, 0
  br i1 %tobool87.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then88.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then88.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.4 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 5
  %68 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.4, align 4
  %70 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fw_dump_size, align 128
  %add.4 = add i32 %71, %69
  store i32 %add.4, ptr %fw_dump_size, align 128
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then88.4, %for.inc.3.for.inc.4_crit_edge
  %and86.5 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.5)
  %tobool87.not.5 = icmp eq i32 %and86.5, 0
  br i1 %tobool87.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then88.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then88.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.5 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 6
  %72 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.5, align 4
  %74 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fw_dump_size, align 128
  %add.5 = add i32 %75, %73
  store i32 %add.5, ptr %fw_dump_size, align 128
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then88.5, %for.inc.4.for.inc.5_crit_edge
  %and86.6 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.6)
  %tobool87.not.6 = icmp eq i32 %and86.6, 0
  br i1 %tobool87.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then88.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then88.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.6 = getelementptr %struct.qla4_8xxx_minidump_template_hdr, ptr %call.i, i32 0, i32 13, i32 7
  %76 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.6, align 4
  %78 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fw_dump_size, align 128
  %add.6 = add i32 %79, %77
  store i32 %add.6, ptr %fw_dump_size, align 128
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then88.6, %for.inc.5.for.inc.6_crit_edge
  %80 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fw_dump_tmplt_size, align 4
  %82 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fw_dump_size, align 128
  %add92 = add i32 %83, %81
  store i32 %add92, ptr %fw_dump_size, align 128
  %call94 = call noalias ptr @vmalloc(i32 noundef %add92) #12
  %84 = ptrtoint ptr %fw_dump to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call94, ptr %fw_dump, align 4
  %tobool97.not = icmp eq ptr %call94, null
  br i1 %tobool97.not, label %for.inc.6.alloc_cleanup_crit_edge, label %do.body100

for.inc.6.alloc_cleanup_crit_edge:                ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_cleanup

do.body100:                                       ; preds = %for.inc.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %85 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp101 = icmp eq i32 %85, 2
  br i1 %cmp101, label %do.body112, label %do.body100.do.end123_crit_edge

do.body100.do.end123_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end123

do.body112:                                       ; preds = %do.body100
  %86 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev8, align 8
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fw_dump_tmplt_size, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev107, ptr noundef nonnull @.str.33, i32 noundef %89) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr191 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr191)
  %cmp113 = icmp eq i32 %.pr191, 2
  br i1 %cmp113, label %do.end117, label %do.body112.do.end123_crit_edge

do.body112.do.end123_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end123

do.end117:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev8, align 8
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fw_dump_size, align 128
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev119, ptr noundef nonnull @.str.36, i32 noundef %93) #11
  br label %do.end123

do.end123:                                        ; preds = %do.end117, %do.body112.do.end123_crit_edge, %do.body100.do.end123_crit_edge
  %94 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw_dump, align 4
  %96 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fw_dump_tmplt_size, align 4
  %98 = call ptr @memcpy(ptr %95, ptr %call.i, i32 %97)
  %99 = load ptr, ptr %fw_dump, align 4
  %fw_dump_tmplt_hdr = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 109
  %100 = ptrtoint ptr %fw_dump_tmplt_hdr to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %fw_dump_tmplt_hdr, align 8
  br label %alloc_cleanup

alloc_cleanup:                                    ; preds = %do.end123, %for.inc.6.alloc_cleanup_crit_edge, %do.end25
  %101 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev8, align 8
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %fw_dump_tmplt_size to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fw_dump_tmplt_size, align 4
  %105 = ptrtoint ptr %md_tmp_dma to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %md_tmp_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev128, i32 noundef %104, ptr noundef nonnull %call.i, i32 noundef %106, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %alloc_cleanup, %do.end15, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md_tmp_dma) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_req_template_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_minidump_template(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_pci_config(ptr nocapture noundef readonly %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void @pci_set_master(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_pci_config(ptr nocapture noundef readonly %ha) local_unnamed_addr #1 align 64 {
entry:
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #8
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %w, align 2, !annotation !335
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  tail call void @pci_set_master(ptr noundef %4) #8
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_set_mwi(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev7, ptr noundef nonnull @.str.41) #11
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %call9 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %w) #8
  %11 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %w, align 2
  %13 = and i16 %12, -1345
  %14 = or i16 %13, 320
  store i16 %14, ptr %w, align 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call14 = call i32 @pci_write_config_word(ptr noundef %16, i32 noundef 4, i16 noundef zeroext %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ql4xxx_lock_drvr_wait(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %a, i32 0, i32 7
  %mac_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %a, i32 0, i32 31
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %a, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %do.end6.while.body_crit_edge, %entry
  %drvr_wait.024 = phi i32 [ 60, %entry ], [ %sub, %do.end6.while.body_crit_edge ]
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %3)
  %cmp.i.not.i = icmp eq i16 %3, 16400
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @ql4xxx_sem_lock(ptr noundef %a, i32 noundef 3145728, i32 noundef 48) #8
  br label %ql4xxx_lock_drvr.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_index.i, align 4
  %or.i = shl i32 %5, 1
  %shl.i = or i32 %or.i, 8
  %call2.i = tail call i32 @ql4xxx_sem_lock(ptr noundef %a, i32 noundef 917504, i32 noundef %shl.i) #8
  br label %ql4xxx_lock_drvr.exit

ql4xxx_lock_drvr.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %do.body7

if.then:                                          ; preds = %ql4xxx_lock_drvr.exit
  tail call void @msleep(i32 noundef 1000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %6 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %do.end, label %if.then.do.end6_crit_edge

if.then.do.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %8, ptr noundef nonnull @.str.44, i32 noundef %drvr_wait.024) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %if.then.do.end6_crit_edge
  %sub = add nsw i32 %drvr_wait.024, -1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %do.end6.cleanup_crit_edge, label %do.end6.while.body_crit_edge

do.end6.while.body_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %ql4xxx_lock_drvr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %9 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %do.end12, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %11, ptr noundef nonnull @.str.44) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.body7.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ 0, %do.body7.cleanup_crit_edge ], [ 1, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_start_firmware(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = and i16 %3, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %4)
  %.not = icmp eq i16 %4, 16418
  br i1 %.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %hardware_lock.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock.i) #8
  %reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %ctrl_status.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 3
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status.i) #8, !srcloc !336
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  %conv8.i = zext i16 %8 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock.i, i32 noundef %call2.i) #8
  %and.i = and i32 %conv8.i, 1792
  %9 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %and.i, label %do.body12.i [
    i32 1280, label %sw.bb.i
    i32 1792, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mac_index.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %10 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mac_index.i, align 4
  br label %do.body22.i

sw.bb10.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mac_index11.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %11 = ptrtoint ptr %mac_index11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %mac_index11.i, align 4
  br label %do.body22.i

do.body12.i:                                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %12 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp13.i = icmp eq i32 %12, 2
  br i1 %cmp13.i, label %do.end17.i, label %do.body12.i.if.end_crit_edge

do.body12.i.if.end_crit_edge:                     ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end17.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %13 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %14, ptr noundef nonnull @.str.98, i32 noundef %conv8.i) #11
  br label %do.body22.i

do.body22.i:                                      ; preds = %do.end17.i, %sw.bb10.i, %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp23.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp23.i, label %do.end28.i, label %do.body22.i.if.end_crit_edge

do.body22.i.if.end_crit_edge:                     ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end28.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  %host_no30.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %15 = ptrtoint ptr %host_no30.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no30.i, align 4
  %mac_index31.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %17 = ptrtoint ptr %mac_index31.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac_index31.i, align 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %16, ptr noundef nonnull @.str.98, i32 noundef %18) #11
  br label %if.end

if.end:                                           ; preds = %do.end28.i, %do.body22.i.if.end_crit_edge, %do.body12.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @ql4xxx_lock_drvr_wait(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %19 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp12 = icmp eq i32 %19, 2
  br i1 %cmp12, label %do.end17, label %do.body5.do.end30_crit_edge

do.body5.do.end30_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end17:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %20 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no, align 4
  %.pn.in.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %22 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cond.i = getelementptr inbounds %struct.isp_reg, ptr %.pn.i, i32 0, i32 8, i32 0, i32 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond.i) #8, !srcloc !336
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  %conv23 = zext i16 %24 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %21, ptr noundef nonnull @.str.49, i32 noundef %conv23) #11
  br label %do.end30

do.end30:                                         ; preds = %do.end17, %do.body5.do.end30_crit_edge
  %.pn.in.i255 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %25 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i256 = load ptr, ptr %.pn.in.i255, align 4
  %cond.i257 = getelementptr inbounds %struct.isp_reg, ptr %.pn.i256, i32 0, i32 8, i32 0, i32 2
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond.i257) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  %.mask = and i16 %26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp38.not = icmp eq i16 %.mask, 0
  br i1 %cmp38.not, label %if.end163.thread281, label %do.end43

if.end163.thread281:                              ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call8) #8
  br label %do.end172

do.end43:                                         ; preds = %do.end30
  %27 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in.i255, align 4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %30 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp51 = icmp eq i32 %30, 2
  br i1 %cmp51, label %do.end56, label %do.end43.do.end62_crit_edge

do.end43.do.end62_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end62

do.end56:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv49 = zext i16 %31 to i32
  %host_no58 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %32 = ptrtoint ptr %host_no58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no58, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %33, ptr noundef nonnull @.str.49, i32 noundef %conv49) #11
  br label %do.end62

do.end62:                                         ; preds = %do.end56, %do.end43.do.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp63 = icmp eq i16 %29, 0
  br i1 %cmp63, label %if.end163.thread, label %do.body66

if.end163.thread:                                 ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call8) #8
  br label %if.then188

do.body66:                                        ; preds = %do.end62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %35, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status, i32 536879104) #8, !srcloc !324
  %36 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status74 = getelementptr inbounds %struct.isp_reg, ptr %37, i32 0, i32 3
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status74) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status83 = getelementptr inbounds %struct.isp_reg, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status83, i32 268439552) #8, !srcloc !324
  %41 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status87 = getelementptr inbounds %struct.isp_reg, ptr %42, i32 0, i32 3
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status87) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !344
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call8) #8
  %call92 = tail call i32 @qla4xxx_get_firmware_state(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp eq i32 %call92, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %44 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp97 = icmp eq i32 %44, 2
  br i1 %cmp93, label %do.body96, label %do.body129

do.body96:                                        ; preds = %do.body66
  br i1 %cmp97, label %do.end102, label %do.body96.do.end108_crit_edge

do.body96.do.end108_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %host_no104 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %45 = ptrtoint ptr %host_no104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %host_no104, align 4
  %firmware_state = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 43
  %47 = ptrtoint ptr %firmware_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %firmware_state, align 8
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %46, ptr noundef nonnull @.str.49, i32 noundef %48) #11
  br label %do.end108

do.end108:                                        ; preds = %do.end102, %do.body96.do.end108_crit_edge
  %firmware_state109 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 43
  %49 = ptrtoint ptr %firmware_state109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %firmware_state109, align 8
  %and110 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.end108.if.end163_crit_edge, label %do.body113

do.end108.if.end163_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

do.body113:                                       ; preds = %do.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %51 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp114 = icmp eq i32 %51, 2
  br i1 %cmp114, label %do.end119, label %do.body113.if.end163_crit_edge

do.body113.if.end163_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  %host_no121 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %52 = ptrtoint ptr %host_no121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %host_no121, align 4
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %53, ptr noundef nonnull @.str.49, i32 noundef %50) #11
  br label %if.end163

do.body129:                                       ; preds = %do.body66
  br i1 %cmp97, label %do.end135, label %do.body129.if.end163_crit_edge

do.body129.if.end163_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

do.end135:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #10
  %host_no137 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %54 = ptrtoint ptr %host_no137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_no137, align 4
  %firmware_state138 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 43
  %56 = ptrtoint ptr %firmware_state138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %firmware_state138, align 8
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %55, ptr noundef nonnull @.str.49, i32 noundef %57) #11
  br label %if.end163

if.end163:                                        ; preds = %do.end135, %do.body129.if.end163_crit_edge, %do.end119, %do.body113.if.end163_crit_edge, %do.end108.if.end163_crit_edge
  %tobool187.not = phi i1 [ true, %do.end108.if.end163_crit_edge ], [ true, %do.end135 ], [ true, %do.body129.if.end163_crit_edge ], [ false, %do.end119 ], [ false, %do.body113.if.end163_crit_edge ]
  %tobool168.not = phi i1 [ false, %do.end108.if.end163_crit_edge ], [ false, %do.end135 ], [ false, %do.body129.if.end163_crit_edge ], [ true, %do.end119 ], [ true, %do.body113.if.end163_crit_edge ]
  %call153 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call153) #8
  br i1 %tobool168.not, label %if.end186, label %if.end163.do.end172_crit_edge

if.end163.do.end172_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end172

do.end172:                                        ; preds = %if.end163.do.end172_crit_edge, %if.end163.thread281
  %call173 = tail call i32 @qla4xxx_soft_reset(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call173)
  %cmp174 = icmp eq i32 %call173, 1
  br i1 %cmp174, label %do.end179, label %if.end180

do.end179:                                        ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %61)
  %cmp.i.not.i = icmp eq i16 %61, 16400
  %..i = select i1 %cmp.i.not.i, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i) #8
  br label %cleanup

if.end180:                                        ; preds = %do.end172
  %call181 = tail call i32 @ql4xxx_lock_drvr_wait(ptr noundef %ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182.not = icmp eq i32 %call181, 0
  br i1 %cmp182.not, label %if.end180.if.then188_crit_edge, label %if.end180.cleanup_crit_edge

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end180.if.then188_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

if.end186:                                        ; preds = %if.end163
  br i1 %tobool187.not, label %if.end186.if.end195_crit_edge, label %if.end186.if.then188_crit_edge

if.end186.if.then188_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then188

if.end186.if.end195_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then188:                                       ; preds = %if.end186.if.then188_crit_edge, %if.end180.if.then188_crit_edge, %if.end163.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %62 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i258 = icmp eq i32 %62, 2
  br i1 %cmp.i258, label %do.end.i, label %if.then188.do.end3.i_crit_edge

if.then188.do.end3.i_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  %host_no.i259 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %63 = ptrtoint ptr %host_no.i259 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %host_no.i259, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %64, ptr noundef nonnull @.str.103) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then188.do.end3.i_crit_edge
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 8
  %device.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %68)
  %cmp.i.not.i.i = icmp eq i16 %68, 16400
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 @ql4xxx_sem_spinlock(ptr noundef %ha, i32 noundef -1073741824, i32 noundef 49152) #8
  br label %ql4xxx_lock_flash.exit.i

if.else.i.i:                                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %mac_index.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %69 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mac_index.i.i, align 4
  %or.i.i = shl i32 %70, 13
  %shl.i.i = or i32 %or.i.i, 32768
  %call2.i.i = tail call i32 @ql4xxx_sem_spinlock(ptr noundef %ha, i32 noundef -536870912, i32 noundef %shl.i.i) #8
  br label %ql4xxx_lock_flash.exit.i

ql4xxx_lock_flash.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp5.not.i = icmp eq i32 %retval.0.i.i, 0
  %71 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i, align 8
  %device.i.i111.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %device.i.i111.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %device.i.i111.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %74)
  %cmp.i.not.i112.i = icmp eq i16 %74, 16400
  br i1 %cmp5.not.i, label %if.end7.i, label %cleanup.critedge292

if.end7.i:                                        ; preds = %ql4xxx_lock_flash.exit.i
  br i1 %cmp.i.not.i112.i, label %if.then.i114.i, label %if.else.i119.i

if.then.i114.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i113.i = tail call i32 @ql4xxx_sem_spinlock(ptr noundef %ha, i32 noundef 805306368, i32 noundef 12288) #8
  br label %ql4xxx_lock_nvram.exit.i

if.else.i119.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %mac_index.i115.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 31
  %75 = ptrtoint ptr %mac_index.i115.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mac_index.i115.i, align 4
  %or.i116.i = shl i32 %76, 10
  %shl.i117.i = or i32 %or.i116.i, 4096
  %call2.i118.i = tail call i32 @ql4xxx_sem_spinlock(ptr noundef %ha, i32 noundef 469762048, i32 noundef %shl.i117.i) #8
  br label %ql4xxx_lock_nvram.exit.i

ql4xxx_lock_nvram.exit.i:                         ; preds = %if.else.i119.i, %if.then.i114.i
  %retval.0.i120.i = phi i32 [ %call1.i113.i, %if.then.i114.i ], [ %call2.i118.i, %if.else.i119.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i120.i)
  %cmp9.not.i = icmp eq i32 %retval.0.i120.i, 0
  %77 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev.i, align 8
  br i1 %cmp9.not.i, label %do.end14.i, label %if.end195.critedge

do.end14.i:                                       ; preds = %ql4xxx_lock_nvram.exit.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev.i, ptr noundef nonnull @.str.105) #11
  %call15.i = tail call i32 @qla4xxx_is_nvram_configuration_valid(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %do.body19.i, label %do.end34.i

do.body19.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %79 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i, align 8
  %device.i.i125.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %device.i.i125.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %device.i.i125.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %82)
  %cmp.i.not.i126.i = icmp eq i16 %82, 16400
  %cond.i.i = select i1 %cmp.i.not.i126.i, i32 12, i32 20
  %call29.i = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef %cond.i.i) #8
  %conv30.i = zext i16 %call29.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call23.i) #8
  %phi.bo.i = or i32 %conv30.i, -65536
  br label %if.end48.i

do.end34.i:                                       ; preds = %do.end14.i
  %83 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %host_no37.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %85 = ptrtoint ptr %host_no37.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %host_no37.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev36.i, ptr noundef nonnull @.str.108, i32 noundef %86, ptr noundef nonnull @.str.103) #11
  %87 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i, align 8
  %device.i.i261 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %device.i.i261 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %device.i.i261, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %90)
  %cmp.i.not.i262 = icmp eq i16 %90, 16400
  br i1 %cmp.i.not.i262, label %do.end34.i.if.end48.i_crit_edge, label %if.else40.i

do.end34.i.if.end48.i_crit_edge:                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.else40.i:                                      ; preds = %do.end34.i
  %91 = and i16 %90, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %91)
  %.not.i = icmp eq i16 %91, 16418
  br i1 %.not.i, label %if.else40.i.if.end48.i_crit_edge, label %cleanup.critedge

if.else40.i.if.end48.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else40.i.if.end48.i_crit_edge, %do.end34.i.if.end48.i_crit_edge, %do.body19.i
  %extHwConfig.sroa.0.0.i = phi i32 [ %phi.bo.i, %do.body19.i ], [ -59118, %do.end34.i.if.end48.i_crit_edge ], [ -65501, %if.else40.i.if.end48.i_crit_edge ]
  %92 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev.i, align 8
  %device.i136.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %device.i136.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device.i136.i, align 2
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %95, label %if.else54.i [
    i16 16418, label %if.end48.i.if.then53.i_crit_edge
    i16 16434, label %if.end48.i.if.then53.i_crit_edge315
  ]

if.end48.i.if.then53.i_crit_edge315:              ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53.i

if.end48.i.if.then53.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53.i

if.then53.i:                                      ; preds = %if.end48.i.if.then53.i_crit_edge, %if.end48.i.if.then53.i_crit_edge315
  tail call fastcc void @qla4xxx_set_model_info(ptr noundef %ha) #8
  br label %if.then192

if.else54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %model_name.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132
  %97 = ptrtoint ptr %model_name.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 5858128907704807424, ptr %model_name.i, align 1
  br label %if.then192

if.then192:                                       ; preds = %if.else54.i, %if.then53.i
  %call69.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  tail call void @arm_heavy_mb() #8
  %98 = tail call i32 @llvm.bswap.i32(i32 %extHwConfig.sroa.0.0.i) #8
  %99 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i.i = load ptr, ptr %.pn.in.i255, align 4
  %cond.i143.i = getelementptr inbounds %struct.isp_reg, ptr %.pn.i.i, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i143.i, i32 %98) #8, !srcloc !324
  %100 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn.i145.i = load ptr, ptr %.pn.in.i255, align 4
  %cond.i146.i = getelementptr inbounds %struct.isp_reg, ptr %.pn.i145.i, i32 0, i32 8
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i146.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call69.i) #8
  %102 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i, align 8
  %device.i.i148.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %device.i.i148.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %device.i.i148.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %105)
  %cmp.i.not.i149.i = icmp eq i16 %105, 16400
  %..i150.i = select i1 %cmp.i.not.i149.i, i32 805306368, i32 469762048
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i150.i) #8
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 8
  %device.i.i152.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %device.i.i152.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %device.i.i152.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %109)
  %cmp.i.not.i153.i = icmp eq i16 %109, 16400
  %..i154.i = select i1 %cmp.i.not.i153.i, i32 -1073741824, i32 -536870912
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i154.i) #8
  %110 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i, align 8
  %dev.i264 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev.i264, ptr noundef nonnull @.str.111) #11
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  tail call void @arm_heavy_mb() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  %114 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %.pn.in.i255, align 4
  %arrayidx.i = getelementptr [8 x i32], ptr %115, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %113) #8, !srcloc !324
  %116 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i, align 8
  %device.i.i267 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %device.i.i267 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %device.i.i267, align 2
  %120 = and i16 %119, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %120)
  %.not.i268 = icmp eq i16 %120, 16418
  br i1 %.not.i268, label %do.body16.i, label %if.then192.do.body21.i_crit_edge

if.then192.do.body21.i_crit_edge:                 ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21.i

do.body16.i:                                      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !348
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %.pn.in.i255, align 4
  %nvram.i = getelementptr inbounds %struct.isp_reg, ptr %122, i32 0, i32 4, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nvram.i, i32 268439552) #8, !srcloc !324
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body16.i, %if.then192.do.body21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  tail call void @arm_heavy_mb() #8
  %123 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %.pn.in.i255, align 4
  %arrayidx26.i = getelementptr [8 x i32], ptr %124, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx26.i, i32 33554432) #8, !srcloc !324
  %125 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %.pn.in.i255, align 4
  %arrayidx29.i = getelementptr [8 x i32], ptr %126, i32 0, i32 6
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx29.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status.i269 = getelementptr inbounds %struct.isp_reg, ptr %129, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status.i269, i32 -2147450880) #8, !srcloc !324
  %130 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status41.i = getelementptr inbounds %struct.isp_reg, ptr %131, i32 0, i32 3
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status41.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call6.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %133 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp47.i = icmp eq i32 %133, 2
  br i1 %cmp47.i, label %do.end52.i, label %do.body21.i.do.end57.i_crit_edge

do.body21.i.do.end57.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57.i

do.end52.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  %host_no.i270 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %134 = ptrtoint ptr %host_no.i270 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %host_no.i270, align 4
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %135, ptr noundef nonnull @.str.112, i32 noundef 60) #11
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end52.i, %do.body21.i.do.end57.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %136, 6000
  %host_no108.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  br label %do.body58.i

do.body58.i:                                      ; preds = %do.cond114.i.do.body58.i_crit_edge, %do.end57.i
  %call69.i271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  %137 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status77.i = getelementptr inbounds %struct.isp_reg, ptr %138, i32 0, i32 3
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status77.i) #8, !srcloc !336
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  %conv81.i = zext i16 %140 to i32
  %141 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %.pn.in.i255, align 4
  %143 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %142) #8, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call69.i271) #8
  %and.i272 = and i32 %conv81.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool93.not.i = icmp ne i32 %and.i272, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %143)
  %cmp96.i = icmp eq i16 %143, 64
  %or.cond.i = select i1 %tobool93.not.i, i1 true, i1 %cmp96.i
  br i1 %or.cond.i, label %do.end117.i, label %do.body100.i

do.body100.i:                                     ; preds = %do.body58.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %144 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp101.i = icmp eq i32 %144, 2
  br i1 %cmp101.i, label %do.end106.i, label %do.body100.i.do.cond114.i_crit_edge

do.body100.i.do.cond114.i_crit_edge:              ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond114.i

do.end106.i:                                      ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %host_no108.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %host_no108.i, align 4
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %146, ptr noundef nonnull @.str.112, i32 noundef %conv81.i, i32 noundef %add.i) #11
  br label %do.cond114.i

do.cond114.i:                                     ; preds = %do.end106.i, %do.body100.i.do.cond114.i_crit_edge
  %call113.i = tail call i32 @msleep_interruptible(i32 noundef 250) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %147 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %147, %add.i
  %cmp115.i = icmp slt i32 %sub.i, 0
  br i1 %cmp115.i, label %do.cond114.i.do.body58.i_crit_edge, label %do.cond114.i.do.end154.i_crit_edge

do.cond114.i.do.end154.i_crit_edge:               ; preds = %do.cond114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154.i

do.cond114.i.do.body58.i_crit_edge:               ; preds = %do.cond114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58.i

do.end117.i:                                      ; preds = %do.body58.i
  br i1 %cmp96.i, label %do.body125.i, label %do.end117.i.do.end154.i_crit_edge

do.end117.i.do.end154.i_crit_edge:                ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154.i

do.body125.i:                                     ; preds = %do.end117.i
  %call133.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !355
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status143.i = getelementptr inbounds %struct.isp_reg, ptr %149, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status143.i, i32 536879104) #8, !srcloc !324
  %150 = ptrtoint ptr %.pn.in.i255 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %.pn.in.i255, align 4
  %ctrl_status147.i = getelementptr inbounds %struct.isp_reg, ptr %151, i32 0, i32 3
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl_status147.i) #8, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call133.i) #8
  %153 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev.i, align 8
  %device.i.i274.c300 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 8
  %155 = ptrtoint ptr %device.i.i274.c300 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %device.i.i274.c300, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %156)
  %cmp.i.not.i275.c301 = icmp eq i16 %156, 16400
  %..i276.c302 = select i1 %cmp.i.not.i275.c301, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i276.c302) #8
  %call200 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %do.body125.i.if.end203_crit_edge, label %if.then202

do.body125.i.if.end203_crit_edge:                 ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

do.end154.i:                                      ; preds = %do.end117.i.do.end154.i_crit_edge, %do.cond114.i.do.end154.i_crit_edge
  %157 = tail call i16 @llvm.bswap.i16(i16 %143) #8
  %conv90.le.i = zext i16 %157 to i32
  %158 = ptrtoint ptr %host_no108.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %host_no108.i, align 4
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %159, ptr noundef nonnull @.str.112, i32 noundef %conv90.le.i) #11
  %160 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev.i, align 8
  %device.i.i274.c297 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %device.i.i274.c297 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %device.i.i274.c297, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %163)
  %cmp.i.not.i275.c298 = icmp eq i16 %163, 16400
  %..i276.c299 = select i1 %cmp.i.not.i275.c298, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i276.c299) #8
  br label %cleanup

if.end195.critedge:                               ; preds = %ql4xxx_lock_nvram.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %device.i.i152.i.c = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 8
  %164 = ptrtoint ptr %device.i.i152.i.c to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %device.i.i152.i.c, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %165)
  %cmp.i.not.i153.i.c = icmp eq i16 %165, 16400
  %..i154.i.c = select i1 %cmp.i.not.i153.i.c, i32 -1073741824, i32 -536870912
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i154.i.c) #8
  br label %if.end195

if.end195:                                        ; preds = %if.end195.critedge, %if.end186.if.end195_crit_edge
  %166 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev.i, align 8
  %device.i.i274 = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 8
  %168 = ptrtoint ptr %device.i.i274 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %device.i.i274, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %169)
  %cmp.i.not.i275 = icmp eq i16 %169, 16400
  %..i276 = select i1 %cmp.i.not.i275, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i276) #8
  br label %cleanup

if.then202:                                       ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qla4xxx_get_crash_record(ptr noundef %ha) #8
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %do.body125.i.if.end203_crit_edge
  %call204 = tail call i32 @qla4xxx_init_rings(ptr noundef %ha)
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i, align 8
  %device.i.i274.c = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 8
  %172 = ptrtoint ptr %device.i.i274.c to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %device.i.i274.c, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %173)
  %cmp.i.not.i275.c = icmp eq i16 %173, 16400
  %..i276.c = select i1 %cmp.i.not.i275.c, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i276.c) #8
  br label %cleanup

cleanup.critedge292:                              ; preds = %ql4xxx_lock_flash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i276.c295 = select i1 %cmp.i.not.i112.i, i32 3145728, i32 917504
  tail call void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %..i276.c295) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge292, %cleanup.critedge, %if.end203, %if.end195, %do.end154.i, %if.end180.cleanup_crit_edge, %do.end179, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end179 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end180.cleanup_crit_edge ], [ 1, %if.end195 ], [ 0, %if.end203 ], [ 1, %cleanup.critedge ], [ 1, %cleanup.critedge292 ], [ 1, %do.end154.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_firmware_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_soft_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_get_crash_record(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_free_ddb_index(ptr noundef %ha) local_unnamed_addr #1 align 64 {
entry:
  %next_idx = alloca i32, align 4
  %state = alloca i32, align 4
  %conn_err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_idx) #8
  %0 = ptrtoint ptr %next_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conn_err) #8
  %2 = ptrtoint ptr %conn_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %conn_err, align 4
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.208)
  switch i16 %6, label %is_qla40XX.exit [
    i16 16434, label %entry.is_qla40XX.exit.thread_crit_edge
    i16 16418, label %entry.is_qla40XX.exit.thread_crit_edge43
  ]

entry.is_qla40XX.exit.thread_crit_edge43:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_qla40XX.exit.thread

entry.is_qla40XX.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_qla40XX.exit.thread

is_qla40XX.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %6)
  %cmp.i13.i.not = icmp eq i16 %6, 16400
  %spec.select = select i1 %cmp.i13.i.not, i32 256, i32 512
  br label %is_qla40XX.exit.thread

is_qla40XX.exit.thread:                           ; preds = %is_qla40XX.exit, %entry.is_qla40XX.exit.thread_crit_edge, %entry.is_qla40XX.exit.thread_crit_edge43
  %8 = phi i32 [ 256, %entry.is_qla40XX.exit.thread_crit_edge ], [ 256, %entry.is_qla40XX.exit.thread_crit_edge43 ], [ %spec.select, %is_qla40XX.exit ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %is_qla40XX.exit.thread
  %idx.041 = phi i32 [ 0, %is_qla40XX.exit.thread ], [ %22, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %idx.041 to i16
  %call1 = call i32 @qla4xxx_get_fwddb_entry(ptr noundef %ha, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %next_idx, ptr noundef nonnull %state, ptr noundef nonnull %conn_err, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %next_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_idx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %next_idx, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %12, label %if.end.if.end26_crit_edge [
    i32 1, label %if.end.do.body_crit_edge
    i32 6, label %if.end.do.body_crit_edge44
  ]

if.end.do.body_crit_edge44:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp9 = icmp eq i32 %14, 2
  br i1 %cmp9, label %do.end, label %do.body.do.end15_crit_edge

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %idx.041) #11
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %call16 = call i32 @qla4xxx_clear_ddb_entry(ptr noundef %ha, i32 noundef %idx.041) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %do.end22, label %do.end15.if.end26_crit_edge

do.end15.if.end26_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev24, ptr noundef nonnull @.str.65, i32 noundef %idx.041) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %do.end15.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %19 = ptrtoint ptr %next_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp27 = icmp eq i32 %20, 0
  br i1 %cmp27, label %if.end26.for.end_crit_edge, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.then
  %21 = ptrtoint ptr %next_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_idx, align 4
  %cmp = icmp ult i32 %22, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conn_err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_idx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_fwddb_entry(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_clear_ddb_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_initialize_adapter(ptr noundef %ha, i32 noundef %is_reset) local_unnamed_addr #1 align 64 {
entry:
  %ip_address.i.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_cmd_data = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  %0 = ptrtoint ptr %eeprom_cmd_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %eeprom_cmd_data, align 4
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  %isp_ops = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 102
  %3 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isp_ops, align 4
  %pci_config = getelementptr inbounds %struct.isp_operations, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pci_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_config, align 4
  tail call void %6(ptr noundef %ha) #8
  %7 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isp_ops, align 4
  %disable_intrs = getelementptr inbounds %struct.isp_operations, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %disable_intrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable_intrs, align 4
  tail call void %10(ptr noundef %ha) #8
  %11 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %isp_ops, align 4
  %start_firmware = getelementptr inbounds %struct.isp_operations, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %start_firmware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %start_firmware, align 4
  %call = tail call i32 %14(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.do.body24_crit_edge, label %if.end

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.210)
  switch i16 %18, label %if.end.if.end7_crit_edge [
    i16 -32718, label %if.end.if.then6_crit_edge
    i16 -32702, label %if.end.if.then6_crit_edge66
  ]

if.end.if.then6_crit_edge66:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge66
  tail call void @qla4_83xx_enable_mbox_intrs(ptr noundef %ha) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @qla4xxx_about_firmware(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.end7.do.body24_crit_edge, label %if.end11

if.end7.do.body24_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end11:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %isp_ops, align 4
  %get_sys_info = getelementptr inbounds %struct.isp_operations, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %get_sys_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_sys_info, align 4
  %call13 = tail call i32 %23(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %if.end11.do.body24_crit_edge, label %if.end16

if.end11.do.body24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end16:                                         ; preds = %if.end11
  %aen_q_count.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 72
  %24 = ptrtoint ptr %aen_q_count.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 512, ptr %aen_q_count.i, align 8
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device.i.i, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.211)
  switch i16 %28, label %if.end16.do.end.i_crit_edge [
    i16 -32734, label %if.end16.land.lhs.true.i_crit_edge
    i16 -32718, label %if.end16.land.lhs.true.i_crit_edge67
    i16 -32702, label %if.end16.land.lhs.true.i_crit_edge68
  ]

if.end16.land.lhs.true.i_crit_edge68:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end16.land.lhs.true.i_crit_edge67:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end16.land.lhs.true.i_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end16.do.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end16.land.lhs.true.i_crit_edge, %if.end16.land.lhs.true.i_crit_edge67, %if.end16.land.lhs.true.i_crit_edge68
  %30 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %ha, align 4
  %32 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i = icmp eq i32 %32, 0
  br i1 %tobool2.not.i, label %if.end.i, label %land.lhs.true.i.do.body24_crit_edge

land.lhs.true.i.do.body24_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end.i:                                         ; preds = %land.lhs.true.i
  %33 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.212)
  switch i16 %28, label %if.end.i.do.end.i_crit_edge [
    i16 -32734, label %if.end.i.if.then5.i_crit_edge
    i16 -32718, label %if.end.i.if.then5.i_crit_edge69
    i16 -32702, label %if.end.i.if.then5.i_crit_edge70
  ]

if.end.i.if.then5.i_crit_edge70:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.end.i.if.then5.i_crit_edge69:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then5.i:                                       ; preds = %if.end.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge69, %if.end.i.if.then5.i_crit_edge70
  %call6.i = tail call i32 @qla4_8xxx_stop_firmware(ptr noundef %ha) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.end.i.do.end.i_crit_edge, %if.end16.do.end.i_crit_edge
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev.i, ptr noundef nonnull @.str.122) #11
  %call8.i = tail call i32 @qla4xxx_initialize_fw_cb(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp.i60 = icmp eq i32 %call8.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %36 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp11.i = icmp eq i32 %36, 2
  br i1 %cmp.i60, label %do.body10.i, label %if.end20.i

do.body10.i:                                      ; preds = %do.end.i
  br i1 %cmp11.i, label %do.end15.i, label %do.body10.i.do.end34_crit_edge

do.body10.i.do.end34_crit_edge:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %host_no.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %37 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_no.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %38, ptr noundef nonnull @.str.123) #11
  br label %do.body24

if.end20.i:                                       ; preds = %do.end.i
  br i1 %cmp11.i, label %do.end.i.i, label %if.end20.i.do.end3.i.i_crit_edge

if.end20.i.do.end3.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev.i.i, ptr noundef nonnull @.str.127) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end20.i.do.end3.i.i_crit_edge
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 1
  %firmware_state.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 43
  %host_no57.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %addl_fw_state.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 44
  %ip_config.i.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113
  %ipv6_options.i.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 7
  %ipv6_addl_options.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 8
  %ipv6_link_local_state.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 9
  %ipv6_addr0_state.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 10
  %ipv6_addr1_state.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 11
  %ipv6_default_router_addr.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 17
  %ipv6_default_router_state.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 12
  %ipv6_link_local_addr.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 113, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end3.i.i
  %timeout_count.0344.i.i = phi i32 [ 30, %do.end3.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %dpc_flags.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end7.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @qla4xxx_get_dhcp_ip_address(ptr noundef %ha) #8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.if.end7.i.i_crit_edge
  %call8.i.i = tail call i32 @qla4xxx_get_firmware_state(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp9.not.i.i, label %if.end21.i.i, label %do.body11.i.i

do.body11.i.i:                                    ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %41 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp12.i.i = icmp eq i32 %41, 2
  br i1 %cmp12.i.i, label %do.end16.i.i, label %do.body11.i.i.if.end243.i.i_crit_edge

do.body11.i.i.if.end243.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.end16.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_no57.i.i, align 4
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %43, ptr noundef nonnull @.str.128) #11
  br label %if.end243.i.i

if.end21.i.i:                                     ; preds = %if.end7.i.i
  %44 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %firmware_state.i.i, align 8
  %and.i.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool22.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end36.i.i, label %do.body24.i.i

do.body24.i.i:                                    ; preds = %if.end21.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %46 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp25.i.i = icmp eq i32 %46, 2
  br i1 %cmp25.i.i, label %do.end29.i.i, label %do.body24.i.i.if.end243.i.i_crit_edge

do.body24.i.i.if.end243.i.i_crit_edge:            ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.end29.i.i:                                     ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no57.i.i, align 4
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %48, ptr noundef nonnull @.str.128) #11
  br label %if.end243.i.i

if.end36.i.i:                                     ; preds = %if.end21.i.i
  %and38.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end45.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  %call41.i.i = tail call i32 @qla4xxx_initialize_fw_cb(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41.i.i)
  %cmp42.i.i = icmp eq i32 %call41.i.i, 1
  br i1 %cmp42.i.i, label %if.then40.i.i.if.end243.i.i_crit_edge, label %if.then40.i.i.for.inc.i.i_crit_edge

if.then40.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then40.i.i.if.end243.i.i_crit_edge:            ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

if.end45.i.i:                                     ; preds = %if.end36.i.i
  %and47.i.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end45.i.i.if.end62.i.i_crit_edge, label %do.body50.i.i

if.end45.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i.i

do.body50.i.i:                                    ; preds = %if.end45.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %49 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp51.i.i = icmp eq i32 %49, 2
  br i1 %cmp51.i.i, label %do.end55.i.i, label %do.body50.i.i.if.end62.i.i_crit_edge

do.body50.i.i.if.end62.i.i_crit_edge:             ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i.i

do.end55.i.i:                                     ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %host_no57.i.i, align 4
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %51, ptr noundef nonnull @.str.128) #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %do.end55.i.i, %do.body50.i.i.if.end62.i.i_crit_edge, %if.end45.i.i.if.end62.i.i_crit_edge
  %52 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %firmware_state.i.i, align 8
  %and64.i.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.end62.i.i.if.end116.i.i_crit_edge, label %do.body67.i.i

if.end62.i.i.if.end116.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i.i

do.body67.i.i:                                    ; preds = %if.end62.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %54 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp68.i.i = icmp eq i32 %54, 2
  br i1 %cmp68.i.i, label %do.end72.i.i, label %do.body67.i.i.do.end78.i.i_crit_edge

do.body67.i.i.do.end78.i.i_crit_edge:             ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78.i.i

do.end72.i.i:                                     ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no57.i.i, align 4
  %call75.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %56, ptr noundef nonnull @.str.128) #11
  br label %do.end78.i.i

do.end78.i.i:                                     ; preds = %do.end72.i.i, %do.body67.i.i.do.end78.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %timeout_count.0344.i.i)
  %cmp79.i.i = icmp ult i32 %timeout_count.0344.i.i, 16
  br i1 %cmp79.i.i, label %if.then80.i.i, label %do.end78.i.i.if.end116thread-pre-split.i.i_crit_edge

do.end78.i.i.if.end116thread-pre-split.i.i_crit_edge: ; preds = %do.end78.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116thread-pre-split.i.i

if.then80.i.i:                                    ; preds = %do.end78.i.i
  %57 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addl_fw_state.i.i, align 4
  %and81.i.i = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i.i)
  %tobool82.not.i.i = icmp eq i32 %and81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.else.i.i, label %do.body84.i.i

do.body84.i.i:                                    ; preds = %if.then80.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %59 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp85.i.i = icmp eq i32 %59, 2
  br i1 %cmp85.i.i, label %do.end89.i.i, label %do.body84.i.i.if.end116thread-pre-split.i.i_crit_edge

do.body84.i.i.if.end116thread-pre-split.i.i_crit_edge: ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116thread-pre-split.i.i

do.end89.i.i:                                     ; preds = %do.body84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %host_no57.i.i, align 4
  %call92.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %61, ptr noundef nonnull @.str.128) #11
  br label %if.end116thread-pre-split.i.i

if.else.i.i:                                      ; preds = %if.then80.i.i
  %62 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %firmware_state.i.i, align 8
  %and97.i.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.else.i.i.if.end116.i.i_crit_edge, label %do.body100.i.i

if.else.i.i.if.end116.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i.i

do.body100.i.i:                                   ; preds = %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %64 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp101.i.i = icmp eq i32 %64, 2
  br i1 %cmp101.i.i, label %do.end105.i.i, label %do.body100.i.i.if.end116.thread.i.i_crit_edge

do.body100.i.i.if.end116.thread.i.i_crit_edge:    ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.thread.i.i

do.end105.i.i:                                    ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %host_no57.i.i, align 4
  %call108.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %66, ptr noundef nonnull @.str.128) #11
  br label %if.end116.thread.i.i

if.end116.thread.i.i:                             ; preds = %do.end105.i.i, %do.body100.i.i.if.end116.thread.i.i_crit_edge
  %67 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %firmware_state.i.i, align 8
  br label %if.then119.i.i

if.end116thread-pre-split.i.i:                    ; preds = %do.end89.i.i, %do.body84.i.i.if.end116thread-pre-split.i.i_crit_edge, %do.end78.i.i.if.end116thread-pre-split.i.i_crit_edge
  %68 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr.i.i = load i32, ptr %firmware_state.i.i, align 8
  br label %if.end116.i.i

if.end116.i.i:                                    ; preds = %if.end116thread-pre-split.i.i, %if.else.i.i.if.end116.i.i_crit_edge, %if.end62.i.i.if.end116.i.i_crit_edge
  %69 = phi i32 [ %.pr.i.i, %if.end116thread-pre-split.i.i ], [ %63, %if.else.i.i.if.end116.i.i_crit_edge ], [ %53, %if.end62.i.i.if.end116.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp118.i.i = icmp eq i32 %69, 0
  br i1 %cmp118.i.i, label %if.end116.i.i.if.then119.i.i_crit_edge, label %if.end116.i.i.do.body206.i.i_crit_edge

if.end116.i.i.do.body206.i.i_crit_edge:           ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body206.i.i

if.end116.i.i.if.then119.i.i_crit_edge:           ; preds = %if.end116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119.i.i

if.then119.i.i:                                   ; preds = %if.end116.i.i.if.then119.i.i_crit_edge, %if.end116.thread.i.i
  %call121.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %dpc_flags.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i.i)
  %tobool122.not.i.i = icmp eq i32 %call121.i.i, 0
  br i1 %tobool122.not.i.i, label %if.then119.i.i.if.end125.i.i_crit_edge, label %if.then123.i.i

if.then119.i.i.if.end125.i.i_crit_edge:           ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i.i

if.then123.i.i:                                   ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call124.i.i = tail call i32 @qla4xxx_get_dhcp_ip_address(ptr noundef %ha) #8
  br label %if.end125.i.i

if.end125.i.i:                                    ; preds = %if.then123.i.i, %if.then119.i.i.if.end125.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip_address.i.i.i) #8
  %70 = call ptr @memset(ptr %ip_address.i.i.i, i32 0, i32 16)
  %71 = ptrtoint ptr %ip_config.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ip_config.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %72)
  %tobool.not.i.i.i = icmp sgt i16 %72, -1
  br i1 %tobool.not.i.i.i, label %if.end125.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end125.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge: ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_wait_for_ip_config.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end125.i.i
  %73 = ptrtoint ptr %ipv6_options.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ipv6_options.i.i.i.i, align 4
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool2.not.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_wait_for_ip_config.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %76 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addl_fw_state.i.i, align 4
  %78 = and i32 %77, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %79 = icmp eq i32 %78, 2
  %80 = ptrtoint ptr %ipv6_addl_options.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ipv6_addl_options.i.i.i, align 4
  %and8.i.i.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %cmp9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %cmp9.not.i.i.i, label %if.then.i.i.i.if.end102.i.i.i_crit_edge, label %land.lhs.true10.i.i.i

if.then.i.i.i.if.end102.i.i.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %if.then.i.i.i
  %82 = ptrtoint ptr %ipv6_link_local_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ipv6_link_local_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp12.i.i.i = icmp eq i8 %83, 2
  br i1 %cmp12.i.i.i, label %land.lhs.true10.i.i.i.lor.lhs.false29.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true10.i.i.i.lor.lhs.false29.i.i.i_crit_edge: ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true10.i.i.i
  %84 = ptrtoint ptr %ipv6_addr0_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ipv6_addr0_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp16.i.i.i = icmp eq i8 %85, 2
  br i1 %cmp16.i.i.i, label %lor.lhs.false.i.i.i.if.then23.i.i.i_crit_edge, label %lor.lhs.false18.i.i.i

lor.lhs.false.i.i.i.if.then23.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i.i.i

lor.lhs.false18.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %86 = ptrtoint ptr %ipv6_addr1_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ipv6_addr1_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %87)
  %cmp21.i.i.i = icmp eq i8 %87, 2
  br i1 %cmp21.i.i.i, label %lor.lhs.false18.i.i.i.if.then23.i.i.i_crit_edge, label %lor.lhs.false18.i.i.i.if.end102.i.i.i_crit_edge

lor.lhs.false18.i.i.i.if.end102.i.i.i_crit_edge:  ; preds = %lor.lhs.false18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

lor.lhs.false18.i.i.i.if.then23.i.i.i_crit_edge:  ; preds = %lor.lhs.false18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %lor.lhs.false18.i.i.i.if.then23.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then23.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %83)
  %cmp27.i.i.i = icmp eq i8 %83, 5
  br i1 %cmp27.i.i.i, label %if.then23.i.i.i.do.body.i.i.i_crit_edge, label %if.then23.i.i.i.lor.lhs.false29.i.i.i_crit_edge

if.then23.i.i.i.lor.lhs.false29.i.i.i_crit_edge:  ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29.i.i.i

if.then23.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

lor.lhs.false29.i.i.i:                            ; preds = %if.then23.i.i.i.lor.lhs.false29.i.i.i_crit_edge, %land.lhs.true10.i.i.i.lor.lhs.false29.i.i.i_crit_edge
  %88 = ptrtoint ptr %ipv6_addr0_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ipv6_addr0_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %89)
  %cmp33.i.i.i = icmp eq i8 %89, 5
  br i1 %cmp33.i.i.i, label %lor.lhs.false29.i.i.i.do.body.i.i.i_crit_edge, label %lor.lhs.false35.i.i.i

lor.lhs.false29.i.i.i.do.body.i.i.i_crit_edge:    ; preds = %lor.lhs.false29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

lor.lhs.false35.i.i.i:                            ; preds = %lor.lhs.false29.i.i.i
  %90 = ptrtoint ptr %ipv6_addr1_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ipv6_addr1_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %91)
  %cmp39.i.i.i = icmp eq i8 %91, 5
  br i1 %cmp39.i.i.i, label %lor.lhs.false35.i.i.i.do.body.i.i.i_crit_edge, label %lor.lhs.false35.i.i.i.if.end50.i.i.i_crit_edge

lor.lhs.false35.i.i.i.if.end50.i.i.i_crit_edge:   ; preds = %lor.lhs.false35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i.i.i

lor.lhs.false35.i.i.i.do.body.i.i.i_crit_edge:    ; preds = %lor.lhs.false35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %lor.lhs.false35.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false29.i.i.i.do.body.i.i.i_crit_edge, %if.then23.i.i.i.do.body.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %92 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp42.i.i.i = icmp eq i32 %92, 2
  br i1 %cmp42.i.i.i, label %do.end.i.i.i, label %do.body.i.i.i.if.end50.i.i.i_crit_edge

do.body.i.i.i.if.end50.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %host_no57.i.i, align 4
  %call46.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %94, ptr noundef nonnull @.str.181) #11
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %do.end.i.i.i, %do.body.i.i.i.if.end50.i.i.i_crit_edge, %lor.lhs.false35.i.i.i.if.end50.i.i.i_crit_edge
  %ipv6_wait.0.i.i.i = phi i8 [ 1, %lor.lhs.false35.i.i.i.if.end50.i.i.i_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %do.body.i.i.i.if.end50.i.i.i_crit_edge ]
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %ipv6_default_router_addr.i.i.i, ptr noundef nonnull dereferenceable(16) %ip_address.i.i.i, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp53.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp53.i.i.i, label %do.body56.i.i.i, label %if.end50.i.i.i.if.end69.i.i.i_crit_edge

if.end50.i.i.i.if.end69.i.i.i_crit_edge:          ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i.i.i

do.body56.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %95 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp57.i.i.i = icmp eq i32 %95, 2
  br i1 %cmp57.i.i.i, label %do.end62.i.i.i, label %do.body56.i.i.i.if.end69.i.i.i_crit_edge

do.body56.i.i.i.if.end69.i.i.i_crit_edge:         ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i.i.i

do.end62.i.i.i:                                   ; preds = %do.body56.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %host_no57.i.i, align 4
  %call65.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %97, ptr noundef nonnull @.str.181) #11
  br label %if.end69.i.i.i

if.end69.i.i.i:                                   ; preds = %do.end62.i.i.i, %do.body56.i.i.i.if.end69.i.i.i_crit_edge, %if.end50.i.i.i.if.end69.i.i.i_crit_edge
  %ipv6_wait.1.i.i.i = phi i8 [ %ipv6_wait.0.i.i.i, %if.end50.i.i.i.if.end69.i.i.i_crit_edge ], [ 0, %do.end62.i.i.i ], [ 0, %do.body56.i.i.i.if.end69.i.i.i_crit_edge ]
  %98 = ptrtoint ptr %ipv6_default_router_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ipv6_default_router_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp72.i.i.i = icmp eq i8 %99, 1
  br i1 %cmp72.i.i.i, label %land.lhs.true74.i.i.i, label %if.end69.i.i.i.if.end102.i.i.i_crit_edge

if.end69.i.i.i.if.end102.i.i.i_crit_edge:         ; preds = %if.end69.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

land.lhs.true74.i.i.i:                            ; preds = %if.end69.i.i.i
  %100 = ptrtoint ptr %ipv6_link_local_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ipv6_link_local_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp78.i.i.i = icmp eq i8 %101, 3
  br i1 %cmp78.i.i.i, label %land.lhs.true80.i.i.i, label %land.lhs.true74.i.i.i.if.end102.i.i.i_crit_edge

land.lhs.true74.i.i.i.if.end102.i.i.i_crit_edge:  ; preds = %land.lhs.true74.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

land.lhs.true80.i.i.i:                            ; preds = %land.lhs.true74.i.i.i
  %bcmp237.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %ipv6_link_local_addr.i.i.i, ptr noundef dereferenceable(4) %ipv6_default_router_addr.i.i.i, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp237.i.i.i)
  %cmp85.i.i.i = icmp eq i32 %bcmp237.i.i.i, 0
  br i1 %cmp85.i.i.i, label %do.body88.i.i.i, label %land.lhs.true80.i.i.i.if.end102.i.i.i_crit_edge

land.lhs.true80.i.i.i.if.end102.i.i.i_crit_edge:  ; preds = %land.lhs.true80.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

do.body88.i.i.i:                                  ; preds = %land.lhs.true80.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %102 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp89.i.i.i = icmp eq i32 %102, 2
  br i1 %cmp89.i.i.i, label %do.end94.i.i.i, label %do.body88.i.i.i.if.end102.i.i.i_crit_edge

do.body88.i.i.i.if.end102.i.i.i_crit_edge:        ; preds = %do.body88.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i.i.i

do.end94.i.i.i:                                   ; preds = %do.body88.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %host_no57.i.i, align 4
  %call97.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %104, ptr noundef nonnull @.str.181) #11
  br label %if.end102.i.i.i

if.end102.i.i.i:                                  ; preds = %do.end94.i.i.i, %do.body88.i.i.i.if.end102.i.i.i_crit_edge, %land.lhs.true80.i.i.i.if.end102.i.i.i_crit_edge, %land.lhs.true74.i.i.i.if.end102.i.i.i_crit_edge, %if.end69.i.i.i.if.end102.i.i.i_crit_edge, %lor.lhs.false18.i.i.i.if.end102.i.i.i_crit_edge, %if.then.i.i.i.if.end102.i.i.i_crit_edge
  %ipv6_wait.2.i.i.i = phi i8 [ %ipv6_wait.1.i.i.i, %land.lhs.true80.i.i.i.if.end102.i.i.i_crit_edge ], [ %ipv6_wait.1.i.i.i, %land.lhs.true74.i.i.i.if.end102.i.i.i_crit_edge ], [ %ipv6_wait.1.i.i.i, %if.end69.i.i.i.if.end102.i.i.i_crit_edge ], [ 0, %lor.lhs.false18.i.i.i.if.end102.i.i.i_crit_edge ], [ 0, %if.then.i.i.i.if.end102.i.i.i_crit_edge ], [ 0, %do.end94.i.i.i ], [ 0, %do.body88.i.i.i.if.end102.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ipv6_wait.2.i.i.i)
  %tobool107.not.i.i.i = icmp ne i8 %ipv6_wait.2.i.i.i, 0
  %105 = or i1 %79, %tobool107.not.i.i.i
  br i1 %105, label %do.body109.i.i.i, label %if.end102.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge

if.end102.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge: ; preds = %if.end102.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_wait_for_ip_config.exit.i.i

do.body109.i.i.i:                                 ; preds = %if.end102.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %106 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp110.i.i.i = icmp eq i32 %106, 2
  br i1 %cmp110.i.i.i, label %do.end115.i.i.i, label %do.body109.i.i.i.do.end121.i.i.i_crit_edge

do.body109.i.i.i.do.end121.i.i.i_crit_edge:       ; preds = %do.body109.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end121.i.i.i

do.end115.i.i.i:                                  ; preds = %do.body109.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %host_no57.i.i, align 4
  %call118.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %108, ptr noundef nonnull @.str.181) #11
  br label %do.end121.i.i.i

do.end121.i.i.i:                                  ; preds = %do.end115.i.i.i, %do.body109.i.i.i.do.end121.i.i.i_crit_edge
  br i1 %79, label %do.body124.i.i.i, label %do.end121.i.i.i.if.end136.i.i.i_crit_edge

do.end121.i.i.i.if.end136.i.i.i_crit_edge:        ; preds = %do.end121.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136.i.i.i

do.body124.i.i.i:                                 ; preds = %do.end121.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %109 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp125.i.i.i = icmp eq i32 %109, 2
  br i1 %cmp125.i.i.i, label %do.end130.i.i.i, label %do.body124.i.i.i.if.end136.i.i.i_crit_edge

do.body124.i.i.i.if.end136.i.i.i_crit_edge:       ; preds = %do.body124.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136.i.i.i

do.end130.i.i.i:                                  ; preds = %do.body124.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call132.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #11
  br label %if.end136.i.i.i

if.end136.i.i.i:                                  ; preds = %do.end130.i.i.i, %do.body124.i.i.i.if.end136.i.i.i_crit_edge, %do.end121.i.i.i.if.end136.i.i.i_crit_edge
  %110 = ptrtoint ptr %ipv6_link_local_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ipv6_link_local_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp140.i.i.i = icmp eq i8 %111, 2
  br i1 %cmp140.i.i.i, label %do.body143.i.i.i, label %if.end136.i.i.i.if.end155.i.i.i_crit_edge

if.end136.i.i.i.if.end155.i.i.i_crit_edge:        ; preds = %if.end136.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155.i.i.i

do.body143.i.i.i:                                 ; preds = %if.end136.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %112 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp144.i.i.i = icmp eq i32 %112, 2
  br i1 %cmp144.i.i.i, label %do.end149.i.i.i, label %do.body143.i.i.i.if.end155.i.i.i_crit_edge

do.body143.i.i.i.if.end155.i.i.i_crit_edge:       ; preds = %do.body143.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155.i.i.i

do.end149.i.i.i:                                  ; preds = %do.body143.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call151.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #11
  br label %if.end155.i.i.i

if.end155.i.i.i:                                  ; preds = %do.end149.i.i.i, %do.body143.i.i.i.if.end155.i.i.i_crit_edge, %if.end136.i.i.i.if.end155.i.i.i_crit_edge
  %113 = ptrtoint ptr %ipv6_addr0_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ipv6_addr0_state.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %cmp159.i.i.i = icmp eq i8 %114, 2
  br i1 %cmp159.i.i.i, label %do.body162.i.i.i, label %if.end155.i.i.i.if.end174.i.i.i_crit_edge

if.end155.i.i.i.if.end174.i.i.i_crit_edge:        ; preds = %if.end155.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i.i.i

do.body162.i.i.i:                                 ; preds = %if.end155.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %115 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp163.i.i.i = icmp eq i32 %115, 2
  br i1 %cmp163.i.i.i, label %do.end168.i.i.i, label %do.body162.i.i.i.if.end174.i.i.i_crit_edge

do.body162.i.i.i.if.end174.i.i.i_crit_edge:       ; preds = %do.body162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174.i.i.i

do.end168.i.i.i:                                  ; preds = %do.body162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call170.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #11
  br label %if.end174.i.i.i

if.end174.i.i.i:                                  ; preds = %do.end168.i.i.i, %do.body162.i.i.i.if.end174.i.i.i_crit_edge, %if.end155.i.i.i.if.end174.i.i.i_crit_edge
  %116 = ptrtoint ptr %ipv6_addr1_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ipv6_addr1_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %117)
  %cmp178.i.i.i = icmp eq i8 %117, 2
  br i1 %cmp178.i.i.i, label %do.body181.i.i.i, label %if.end174.i.i.i.do.body194.i.i.i_crit_edge

if.end174.i.i.i.do.body194.i.i.i_crit_edge:       ; preds = %if.end174.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194.i.i.i

do.body181.i.i.i:                                 ; preds = %if.end174.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %118 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp182.i.i.i = icmp eq i32 %118, 2
  br i1 %cmp182.i.i.i, label %do.end187.i.i.i, label %do.body181.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge

do.body181.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge: ; preds = %do.body181.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_wait_for_ip_config.exit.i.i

do.end187.i.i.i:                                  ; preds = %do.body181.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call189.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #11
  br label %do.body194.i.i.i

do.body194.i.i.i:                                 ; preds = %do.end187.i.i.i, %if.end174.i.i.i.do.body194.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr.i.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i.i)
  %cmp195.i.i.i = icmp eq i32 %.pr.i.i.i, 2
  br i1 %cmp195.i.i.i, label %do.end200.i.i.i, label %do.body194.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge

do.body194.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge: ; preds = %do.body194.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_wait_for_ip_config.exit.i.i

do.end200.i.i.i:                                  ; preds = %do.body194.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call202.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #11
  br label %qla4xxx_wait_for_ip_config.exit.i.i

qla4xxx_wait_for_ip_config.exit.i.i:              ; preds = %do.end200.i.i.i, %do.body194.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, %do.body181.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, %if.end102.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, %land.lhs.true.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge, %if.end125.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge
  %ipv6_wait.3.i.i.i = phi i8 [ %ipv6_wait.2.i.i.i, %do.end200.i.i.i ], [ %ipv6_wait.2.i.i.i, %do.body194.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ 0, %if.end125.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ 0, %if.end102.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ %ipv6_wait.2.i.i.i, %do.body181.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ]
  %ipv4_wait.1.shrunk.i.i.i = phi i1 [ %79, %do.end200.i.i.i ], [ %79, %do.body194.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ false, %land.lhs.true.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ false, %if.end125.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ false, %if.end102.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ], [ %79, %do.body181.i.i.i.qla4xxx_wait_for_ip_config.exit.i.i_crit_edge ]
  %ipv4_wait.1.i.i.i = zext i1 %ipv4_wait.1.shrunk.i.i.i to i8
  %or236.i.i.i = or i8 %ipv6_wait.3.i.i.i, %ipv4_wait.1.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip_address.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or236.i.i.i)
  %tobool127.not.i.i = icmp eq i8 %or236.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %timeout_count.0344.i.i)
  %cmp128.i.i = icmp eq i32 %timeout_count.0344.i.i, 1
  %or.cond.i.i = select i1 %tobool127.not.i.i, i1 true, i1 %cmp128.i.i
  br i1 %or.cond.i.i, label %do.body130.i.i, label %qla4xxx_wait_for_ip_config.exit.i.i.do.body206.i.i_crit_edge

qla4xxx_wait_for_ip_config.exit.i.i.do.body206.i.i_crit_edge: ; preds = %qla4xxx_wait_for_ip_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body206.i.i

do.body130.i.i:                                   ; preds = %qla4xxx_wait_for_ip_config.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %119 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp131.i.i = icmp eq i32 %119, 2
  br i1 %cmp131.i.i, label %do.body141.i.i, label %do.body130.i.i.if.end243.i.i_crit_edge

do.body130.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.body141.i.i:                                   ; preds = %do.body130.i.i
  %120 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev, align 8
  %dev137.i.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev137.i.i, ptr noundef nonnull @.str.148) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr331.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr331.i.i)
  %cmp142.i.i = icmp eq i32 %.pr331.i.i, 2
  br i1 %cmp142.i.i, label %do.body156.i.i, label %do.body141.i.i.if.end243.i.i_crit_edge

do.body141.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body141.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.body156.i.i:                                   ; preds = %do.body141.i.i
  %122 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev, align 8
  %dev148.i.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %host_no57.i.i, align 4
  %126 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addl_fw_state.i.i, align 4
  %and151.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i.i)
  %cmp152.not.i.i = icmp eq i32 %and151.i.i, 0
  %cond.i.i = select i1 %cmp152.not.i.i, ptr @.str.154, ptr @.str.153
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev148.i.i, ptr noundef nonnull @.str.151, i32 noundef %125, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr333.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr333.i.i)
  %cmp157.i.i = icmp eq i32 %.pr333.i.i, 2
  br i1 %cmp157.i.i, label %do.body172.i.i, label %do.body156.i.i.if.end243.i.i_crit_edge

do.body156.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.body172.i.i:                                   ; preds = %do.body156.i.i
  %128 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev, align 8
  %dev163.i.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %130 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %host_no57.i.i, align 4
  %132 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addl_fw_state.i.i, align 4
  %and166.i.i = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i.i)
  %cmp167.not.i.i = icmp eq i32 %and166.i.i, 0
  %cond168.i.i = select i1 %cmp167.not.i.i, ptr @.str.159, ptr @.str.158
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev163.i.i, ptr noundef nonnull @.str.156, i32 noundef %131, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond168.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr335.pr.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr335.pr.i.i)
  %cmp173.i.i = icmp eq i32 %.pr335.pr.i.i, 2
  br i1 %cmp173.i.i, label %do.body188.i.i, label %do.body172.i.i.if.end243.i.i_crit_edge

do.body172.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.body188.i.i:                                   ; preds = %do.body172.i.i
  %134 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev, align 8
  %dev179.i.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %136 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %host_no57.i.i, align 4
  %138 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %addl_fw_state.i.i, align 4
  %and182.i.i = and i32 %139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i.i)
  %cmp183.not.i.i = icmp eq i32 %and182.i.i, 0
  %cond184.i.i = select i1 %cmp183.not.i.i, ptr @.str.164, ptr @.str.163
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev179.i.i, ptr noundef nonnull @.str.161, i32 noundef %137, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond184.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr337.i.i = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr337.i.i)
  %cmp189.i.i = icmp eq i32 %.pr337.i.i, 2
  br i1 %cmp189.i.i, label %do.end193.i.i, label %do.body188.i.i.if.end243.i.i_crit_edge

do.body188.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body188.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.end193.i.i:                                    ; preds = %do.body188.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev, align 8
  %dev195.i.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %142 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %host_no57.i.i, align 4
  %144 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %addl_fw_state.i.i, align 4
  %and198.i.i = and i32 %145, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198.i.i)
  %cmp199.not.i.i = icmp eq i32 %and198.i.i, 0
  %cond200.i.i = select i1 %cmp199.not.i.i, ptr @.str.159, ptr @.str.158
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev195.i.i, ptr noundef nonnull @.str.166, i32 noundef %143, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond200.i.i) #11
  br label %if.end243.i.i

do.body206.i.i:                                   ; preds = %qla4xxx_wait_for_ip_config.exit.i.i.do.body206.i.i_crit_edge, %if.end116.i.i.do.body206.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %146 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp207.i.i = icmp eq i32 %146, 2
  br i1 %cmp207.i.i, label %do.end211.i.i, label %do.body206.i.i.do.end219.i.i_crit_edge

do.body206.i.i.do.end219.i.i_crit_edge:           ; preds = %do.body206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end219.i.i

do.end211.i.i:                                    ; preds = %do.body206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %host_no57.i.i, align 4
  %149 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %firmware_state.i.i, align 8
  %151 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %addl_fw_state.i.i, align 4
  %call216.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %148, ptr noundef nonnull @.str.128, i32 noundef %150, i32 noundef %152, i32 noundef %timeout_count.0344.i.i) #11
  br label %do.end219.i.i

do.end219.i.i:                                    ; preds = %do.end211.i.i, %do.body206.i.i.do.end219.i.i_crit_edge
  %153 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev, align 8
  %device.i.i52.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 8
  %155 = ptrtoint ptr %device.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %device.i.i52.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16434, i16 %156)
  %cmp.i.not.i.i = icmp eq i16 %156, 16434
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %do.end219.i.i.if.end228.i.i_crit_edge

do.end219.i.i.if.end228.i.i_crit_edge:            ; preds = %do.end219.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.i.i

land.lhs.true.i.i:                                ; preds = %do.end219.i.i
  %157 = ptrtoint ptr %addl_fw_state.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %addl_fw_state.i.i, align 4
  %and223.i.i = and i32 %158, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i.i)
  %tobool224.not.i.i = icmp eq i32 %and223.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %timeout_count.0344.i.i)
  %cmp226.i.i = icmp ult i32 %timeout_count.0344.i.i, 25
  %or.cond329.i.i = select i1 %tobool224.not.i.i, i1 %cmp226.i.i, i1 false
  br i1 %or.cond329.i.i, label %land.lhs.true.i.i.if.end243.i.i_crit_edge, label %land.lhs.true.i.i.if.end228.i.i_crit_edge

land.lhs.true.i.i.if.end228.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.i.i

land.lhs.true.i.i.if.end243.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

if.end228.i.i:                                    ; preds = %land.lhs.true.i.i.if.end228.i.i_crit_edge, %do.end219.i.i.if.end228.i.i_crit_edge
  tail call void @msleep(i32 noundef 1000) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end228.i.i, %if.then40.i.i.for.inc.i.i_crit_edge
  %dec.i.i = add nsw i32 %timeout_count.0344.i.i, -1
  %cmp4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp4.not.i.i, label %do.body231.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.body231.i.i:                                   ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %159 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp232.i.i = icmp eq i32 %159, 2
  br i1 %cmp232.i.i, label %do.end236.i.i, label %do.body231.i.i.if.end243.i.i_crit_edge

do.body231.i.i.if.end243.i.i_crit_edge:           ; preds = %do.body231.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243.i.i

do.end236.i.i:                                    ; preds = %do.body231.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %host_no57.i.i, align 4
  %call239.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %161, ptr noundef nonnull @.str.128) #11
  br label %if.end243.i.i

if.end243.i.i:                                    ; preds = %do.end236.i.i, %do.body231.i.i.if.end243.i.i_crit_edge, %land.lhs.true.i.i.if.end243.i.i_crit_edge, %do.end193.i.i, %do.body188.i.i.if.end243.i.i_crit_edge, %do.body172.i.i.if.end243.i.i_crit_edge, %do.body156.i.i.if.end243.i.i_crit_edge, %do.body141.i.i.if.end243.i.i_crit_edge, %do.body130.i.i.if.end243.i.i_crit_edge, %if.then40.i.i.if.end243.i.i_crit_edge, %do.end29.i.i, %do.body24.i.i.if.end243.i.i_crit_edge, %do.end16.i.i, %do.body11.i.i.if.end243.i.i_crit_edge
  %tobool22.not.i = phi i1 [ true, %do.end236.i.i ], [ true, %do.body231.i.i.if.end243.i.i_crit_edge ], [ false, %do.end193.i.i ], [ false, %do.body188.i.i.if.end243.i.i_crit_edge ], [ false, %do.body172.i.i.if.end243.i.i_crit_edge ], [ false, %do.body156.i.i.if.end243.i.i_crit_edge ], [ false, %do.body141.i.i.if.end243.i.i_crit_edge ], [ false, %do.body130.i.i.if.end243.i.i_crit_edge ], [ true, %do.end29.i.i ], [ true, %do.body24.i.i.if.end243.i.i_crit_edge ], [ true, %do.end16.i.i ], [ true, %do.body11.i.i.if.end243.i.i_crit_edge ], [ true, %if.then40.i.i.if.end243.i.i_crit_edge ], [ true, %land.lhs.true.i.i.if.end243.i.i_crit_edge ]
  %162 = ptrtoint ptr %firmware_state.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %firmware_state.i.i, align 8
  %and245.i.i = and i32 %163, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245.i.i)
  %tobool246.not.i.i = icmp eq i32 %and245.i.i, 0
  br i1 %tobool246.not.i.i, label %if.else260.i.i, label %do.body248.i.i

do.body248.i.i:                                   ; preds = %if.end243.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %164 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %164)
  %cmp249.i.i = icmp eq i32 %164, 2
  br i1 %cmp249.i.i, label %do.body248.i.i.if.end278.sink.split.i.i_crit_edge, label %do.body248.i.i.if.end24.i_crit_edge

do.body248.i.i.if.end24.i_crit_edge:              ; preds = %do.body248.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

do.body248.i.i.if.end278.sink.split.i.i_crit_edge: ; preds = %do.body248.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end278.sink.split.i.i

if.else260.i.i:                                   ; preds = %if.end243.i.i
  %and262.i.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.i.i)
  %tobool263.not.i.i = icmp eq i32 %and262.i.i, 0
  br i1 %tobool263.not.i.i, label %qla4xxx_fw_ready.exit.i, label %do.body265.i.i

do.body265.i.i:                                   ; preds = %if.else260.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %165 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %165)
  %cmp266.i.i = icmp eq i32 %165, 2
  br i1 %cmp266.i.i, label %do.body265.i.i.if.end278.sink.split.i.i_crit_edge, label %do.body265.i.i.if.end24.i_crit_edge

do.body265.i.i.if.end24.i_crit_edge:              ; preds = %do.body265.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

do.body265.i.i.if.end278.sink.split.i.i_crit_edge: ; preds = %do.body265.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end278.sink.split.i.i

if.end278.sink.split.i.i:                         ; preds = %do.body265.i.i.if.end278.sink.split.i.i_crit_edge, %do.body248.i.i.if.end278.sink.split.i.i_crit_edge
  %.str.178.sink.i.i = phi ptr [ @.str.175, %do.body248.i.i.if.end278.sink.split.i.i_crit_edge ], [ @.str.178, %do.body265.i.i.if.end278.sink.split.i.i_crit_edge ]
  %166 = ptrtoint ptr %host_no57.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %host_no57.i.i, align 4
  %call273.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.178.sink.i.i, i32 noundef %167, ptr noundef nonnull @.str.128) #11
  br label %if.end24.i

qla4xxx_fw_ready.exit.i:                          ; preds = %if.else260.i.i
  br i1 %tobool22.not.i, label %qla4xxx_fw_ready.exit.i.do.body24_crit_edge, label %qla4xxx_fw_ready.exit.i.if.end24.i_crit_edge

qla4xxx_fw_ready.exit.i.if.end24.i_crit_edge:     ; preds = %qla4xxx_fw_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

qla4xxx_fw_ready.exit.i.do.body24_crit_edge:      ; preds = %qla4xxx_fw_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end24.i:                                       ; preds = %qla4xxx_fw_ready.exit.i.if.end24.i_crit_edge, %if.end278.sink.split.i.i, %do.body265.i.i.if.end24.i_crit_edge, %do.body248.i.i.if.end24.i_crit_edge
  %168 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev, align 8
  %device.i.i54.i = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %device.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %device.i.i54.i, align 2
  %172 = zext i16 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.213)
  switch i16 %171, label %if.end24.i.qla4xxx_init_firmware.exit_crit_edge [
    i16 -32734, label %if.end24.i.land.lhs.true27.i_crit_edge
    i16 -32718, label %if.end24.i.land.lhs.true27.i_crit_edge71
    i16 -32702, label %if.end24.i.land.lhs.true27.i_crit_edge72
  ]

if.end24.i.land.lhs.true27.i_crit_edge72:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true27.i

if.end24.i.land.lhs.true27.i_crit_edge71:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true27.i

if.end24.i.land.lhs.true27.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true27.i

if.end24.i.qla4xxx_init_firmware.exit_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_init_firmware.exit

land.lhs.true27.i:                                ; preds = %if.end24.i.land.lhs.true27.i_crit_edge, %if.end24.i.land.lhs.true27.i_crit_edge71, %if.end24.i.land.lhs.true27.i_crit_edge72
  %173 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %ha, align 4
  %175 = and i32 %174, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool30.not.i = icmp eq i32 %175, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %land.lhs.true27.i.qla4xxx_init_firmware.exit_crit_edge

land.lhs.true27.i.qla4xxx_init_firmware.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qla4xxx_init_firmware.exit

if.then31.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qla4xxx_alloc_fw_dump(ptr noundef %ha) #8
  br label %qla4xxx_init_firmware.exit

qla4xxx_init_firmware.exit:                       ; preds = %if.then31.i, %land.lhs.true27.i.qla4xxx_init_firmware.exit_crit_edge, %if.end24.i.qla4xxx_init_firmware.exit_crit_edge
  %call33.i = tail call i32 @qla4xxx_get_firmware_status(ptr noundef %ha) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33.i)
  %cmp18 = icmp eq i32 %call33.i, 1
  br i1 %cmp18, label %qla4xxx_init_firmware.exit.do.body24_crit_edge, label %if.end20

qla4xxx_init_firmware.exit.do.body24_crit_edge:   ; preds = %qla4xxx_init_firmware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end20:                                         ; preds = %qla4xxx_init_firmware.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %is_reset)
  %cmp21 = icmp eq i32 %is_reset, 1
  br i1 %cmp21, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qla4xxx_build_ddb_list(ptr noundef %ha, i32 noundef 1) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ha) #8
  br label %do.body24

do.body24:                                        ; preds = %if.end23, %qla4xxx_init_firmware.exit.do.body24_crit_edge, %qla4xxx_fw_ready.exit.i.do.body24_crit_edge, %do.end15.i, %land.lhs.true.i.do.body24_crit_edge, %if.end11.do.body24_crit_edge, %if.end7.do.body24_crit_edge, %entry.do.body24_crit_edge
  %status.0.ph = phi i32 [ 1, %qla4xxx_fw_ready.exit.i.do.body24_crit_edge ], [ 1, %do.end15.i ], [ 1, %land.lhs.true.i.do.body24_crit_edge ], [ %call33.i, %if.end23 ], [ 1, %qla4xxx_init_firmware.exit.do.body24_crit_edge ], [ 1, %if.end11.do.body24_crit_edge ], [ 1, %if.end7.do.body24_crit_edge ], [ 1, %entry.do.body24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %.pr = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, 2
  br i1 %cmp25, label %do.end29, label %do.body24.do.end34_crit_edge

do.body24.do.end34_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %176 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %host_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.ph)
  %cmp30 = icmp eq i32 %status.0.ph, 1
  %cond = select i1 %cmp30, ptr @.str.72, ptr @.str.73
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %177, ptr noundef nonnull %cond) #11
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body24.do.end34_crit_edge, %do.body10.i.do.end34_crit_edge
  %status.065 = phi i32 [ %status.0.ph, %do.end29 ], [ %status.0.ph, %do.body24.do.end34_crit_edge ], [ 1, %do.body10.i.do.end34_crit_edge ]
  ret i32 %status.065
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4_83xx_enable_mbox_intrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_about_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_build_ddb_list(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_ddb_change(ptr noundef %ha, i32 noundef %fw_ddb_index, ptr noundef %ddb_entry, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ddb_device_state = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 4
  %0 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_ddb_device_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %2 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %1, i32 noundef %state, i32 noundef %fw_ddb_index) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %state, ptr %fw_ddb_device_state, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %1, label %do.body22 [
    i32 7, label %sw.bb
    i32 4, label %do.end4.sw.bb8_crit_edge
    i32 2, label %do.end4.sw.bb8_crit_edge54
    i32 6, label %sw.bb13
  ]

do.end4.sw.bb8_crit_edge54:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

do.end4.sw.bb8_crit_edge:                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb:                                            ; preds = %do.end4
  %7 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %state, label %sw.bb.sw.epilog33_crit_edge [
    i32 4, label %sw.bb.sw.bb6_crit_edge
    i32 2, label %sw.bb.sw.bb6_crit_edge55
    i32 6, label %sw.bb.sw.bb7_crit_edge
    i32 1, label %sw.bb.sw.bb7_crit_edge56
  ]

sw.bb.sw.bb7_crit_edge56:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

sw.bb.sw.bb6_crit_edge55:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

sw.bb.sw.bb6_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

sw.bb.sw.epilog33_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

sw.bb6:                                           ; preds = %sw.bb.sw.bb6_crit_edge, %sw.bb.sw.bb6_crit_edge55
  tail call void @qla4xxx_update_session_conn_param(ptr noundef %ha, ptr noundef %ddb_entry) #8
  %unblock_sess = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 7
  %8 = ptrtoint ptr %unblock_sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unblock_sess, align 4
  %sess = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess, align 4
  %call = tail call i32 %9(ptr noundef %11) #8
  br label %sw.epilog33

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge56
  %conn = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 2
  %12 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn, align 4
  tail call void @iscsi_conn_login_event(ptr noundef %13, i32 noundef 0) #8
  br label %sw.epilog33

sw.bb8:                                           ; preds = %do.end4.sw.bb8_crit_edge, %do.end4.sw.bb8_crit_edge54
  %14 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %state, label %sw.bb8.sw.epilog33_crit_edge [
    i32 6, label %sw.bb9
    i32 1, label %sw.bb11
  ]

sw.bb8.sw.epilog33_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

sw.bb9:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %sess10 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %15 = ptrtoint ptr %sess10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess10, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data, align 4
  tail call void @iscsi_session_failure(ptr noundef %18, i32 noundef 1011) #8
  br label %sw.epilog33

sw.bb11:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %ddb_idx_map = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 126
  tail call void @_clear_bit(i32 noundef %fw_ddb_index, ptr noundef %ddb_idx_map) #8
  br label %sw.epilog33

sw.bb13:                                          ; preds = %do.end4
  %19 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %state, label %sw.bb13.sw.epilog33_crit_edge [
    i32 4, label %sw.bb13.sw.bb14_crit_edge
    i32 2, label %sw.bb13.sw.bb14_crit_edge57
    i32 6, label %sw.bb18
  ]

sw.bb13.sw.bb14_crit_edge57:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb13.sw.bb14_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

sw.bb13.sw.epilog33_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

sw.bb14:                                          ; preds = %sw.bb13.sw.bb14_crit_edge, %sw.bb13.sw.bb14_crit_edge57
  %unblock_sess15 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 7
  %20 = ptrtoint ptr %unblock_sess15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unblock_sess15, align 4
  %sess16 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %22 = ptrtoint ptr %sess16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sess16, align 4
  %call17 = tail call i32 %21(ptr noundef %23) #8
  tail call void @qla4xxx_update_session_conn_param(ptr noundef %ha, ptr noundef %ddb_entry) #8
  br label %sw.epilog33

sw.bb18:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %sess19 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %24 = ptrtoint ptr %sess19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess19, align 4
  %dd_data20 = getelementptr inbounds %struct.iscsi_cls_session, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %dd_data20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dd_data20, align 4
  tail call void @iscsi_session_failure(ptr noundef %27, i32 noundef 1011) #8
  br label %sw.epilog33

do.body22:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %28 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp23 = icmp eq i32 %28, 2
  br i1 %cmp23, label %do.end27, label %do.body22.sw.epilog33_crit_edge

do.body22.sw.epilog33_crit_edge:                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %pdev28 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %29 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev29, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75) #11
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %do.end27, %do.body22.sw.epilog33_crit_edge, %sw.bb18, %sw.bb14, %sw.bb13.sw.epilog33_crit_edge, %sw.bb11, %sw.bb9, %sw.bb8.sw.epilog33_crit_edge, %sw.bb7, %sw.bb6, %sw.bb.sw.epilog33_crit_edge
  %status.0 = phi i32 [ 1, %do.end27 ], [ 1, %do.body22.sw.epilog33_crit_edge ], [ 1, %sw.bb13.sw.epilog33_crit_edge ], [ 0, %sw.bb18 ], [ 0, %sw.bb14 ], [ 1, %sw.bb8.sw.epilog33_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ 1, %sw.bb.sw.epilog33_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_update_session_conn_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_login_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_arm_relogin_timer(ptr noundef %ddb_entry) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %relogin_timer = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %relogin_timer, i32 noundef 4) #8
  %0 = ptrtoint ptr %relogin_timer to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %relogin_timer, align 4
  %retry_relogin_timer = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 11
  %default_time2wait = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 14
  %1 = ptrtoint ptr %default_time2wait to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %default_time2wait, align 4
  %add = add i32 %2, 4
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retry_relogin_timer, i32 noundef 4) #8
  %3 = ptrtoint ptr %retry_relogin_timer to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %add, ptr %retry_relogin_timer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_flash_ddb_change(ptr noundef %ha, i32 noundef %fw_ddb_index, ptr noundef %ddb_entry, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ddb_device_state = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 4
  %0 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_ddb_device_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %2 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.79, i32 noundef %1, i32 noundef %state, i32 noundef %fw_ddb_index) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %state, ptr %fw_ddb_device_state, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %1, label %do.body33 [
    i32 7, label %do.end4.sw.bb_crit_edge
    i32 1, label %do.end4.sw.bb_crit_edge82
    i32 4, label %sw.bb12
    i32 6, label %sw.bb21
  ]

do.end4.sw.bb_crit_edge82:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end4.sw.bb_crit_edge:                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %do.end4.sw.bb_crit_edge, %do.end4.sw.bb_crit_edge82
  %7 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %state, label %sw.bb.sw.epilog44_crit_edge [
    i32 4, label %sw.bb6
    i32 6, label %sw.bb7
  ]

sw.bb.sw.epilog44_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %unblock_sess = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 7
  %8 = ptrtoint ptr %unblock_sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unblock_sess, align 4
  %sess = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess, align 4
  %call = tail call i32 %9(ptr noundef %11) #8
  tail call void @qla4xxx_update_session_conn_fwddb_param(ptr noundef %ha, ptr noundef %ddb_entry) #8
  br label %sw.epilog44

sw.bb7:                                           ; preds = %sw.bb
  %sess8 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %12 = ptrtoint ptr %sess8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess8, align 4
  tail call void @iscsi_block_session(ptr noundef %13) #8
  %flags = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then10, label %sw.bb7.sw.epilog44_crit_edge

sw.bb7.sw.epilog44_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %relogin_timer.i = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %relogin_timer.i, i32 noundef 4) #8
  %16 = ptrtoint ptr %relogin_timer.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %relogin_timer.i, align 4
  %retry_relogin_timer.i = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 11
  %default_time2wait.i = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 14
  %17 = ptrtoint ptr %default_time2wait.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_time2wait.i, align 4
  %add.i = add i32 %18, 4
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %retry_relogin_timer.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %retry_relogin_timer.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %add.i, ptr %retry_relogin_timer.i, align 4
  br label %sw.epilog44

sw.bb12:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state)
  %cond = icmp eq i32 %state, 6
  br i1 %cond, label %sw.bb13, label %sw.bb12.sw.epilog44_crit_edge

sw.bb12.sw.epilog44_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb13:                                          ; preds = %sw.bb12
  %sess14 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %20 = ptrtoint ptr %sess14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sess14, align 4
  tail call void @iscsi_block_session(ptr noundef %21) #8
  %flags15 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 9
  %22 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags15, align 4
  %and1.i68 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i68)
  %tobool17.not = icmp eq i32 %and1.i68, 0
  br i1 %tobool17.not, label %if.then18, label %sw.bb13.sw.epilog44_crit_edge

sw.bb13.sw.epilog44_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

if.then18:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %relogin_timer.i70 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 12
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %relogin_timer.i70, i32 noundef 4) #8
  %24 = ptrtoint ptr %relogin_timer.i70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %relogin_timer.i70, align 4
  %retry_relogin_timer.i72 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 11
  %default_time2wait.i73 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 14
  %25 = ptrtoint ptr %default_time2wait.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %default_time2wait.i73, align 4
  %add.i74 = add i32 %26, 4
  %call.i.i3.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retry_relogin_timer.i72, i32 noundef 4) #8
  %27 = ptrtoint ptr %retry_relogin_timer.i72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %add.i74, ptr %retry_relogin_timer.i72, align 4
  br label %sw.epilog44

sw.bb21:                                          ; preds = %do.end4
  %28 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %state, label %sw.bb21.sw.epilog44_crit_edge [
    i32 4, label %sw.bb22
    i32 6, label %sw.bb26
  ]

sw.bb21.sw.epilog44_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb22:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %unblock_sess23 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 7
  %29 = ptrtoint ptr %unblock_sess23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unblock_sess23, align 4
  %sess24 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 1
  %31 = ptrtoint ptr %sess24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sess24, align 4
  %call25 = tail call i32 %30(ptr noundef %32) #8
  tail call void @qla4xxx_update_session_conn_fwddb_param(ptr noundef %ha, ptr noundef %ddb_entry) #8
  br label %sw.epilog44

sw.bb26:                                          ; preds = %sw.bb21
  %flags27 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 9
  %33 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags27, align 4
  %and1.i69 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i69)
  %tobool29.not = icmp eq i32 %and1.i69, 0
  br i1 %tobool29.not, label %if.then30, label %sw.bb26.sw.epilog44_crit_edge

sw.bb26.sw.epilog44_crit_edge:                    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %relogin_timer.i76 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 12
  %call.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %relogin_timer.i76, i32 noundef 4) #8
  %35 = ptrtoint ptr %relogin_timer.i76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %relogin_timer.i76, align 4
  %retry_relogin_timer.i78 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 11
  %default_time2wait.i79 = getelementptr inbounds %struct.ddb_entry, ptr %ddb_entry, i32 0, i32 14
  %36 = ptrtoint ptr %default_time2wait.i79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %default_time2wait.i79, align 4
  %add.i80 = add i32 %37, 4
  %call.i.i3.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retry_relogin_timer.i78, i32 noundef 4) #8
  %38 = ptrtoint ptr %retry_relogin_timer.i78 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %add.i80, ptr %retry_relogin_timer.i78, align 4
  br label %sw.epilog44

do.body33:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %39 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp34 = icmp eq i32 %39, 2
  br i1 %cmp34, label %do.end38, label %do.body33.sw.epilog44_crit_edge

do.body33.sw.epilog44_crit_edge:                  ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %pdev39 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %40 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev39, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev40, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.79) #11
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %do.end38, %do.body33.sw.epilog44_crit_edge, %if.then30, %sw.bb26.sw.epilog44_crit_edge, %sw.bb22, %sw.bb21.sw.epilog44_crit_edge, %if.then18, %sw.bb13.sw.epilog44_crit_edge, %sw.bb12.sw.epilog44_crit_edge, %if.then10, %sw.bb7.sw.epilog44_crit_edge, %sw.bb6, %sw.bb.sw.epilog44_crit_edge
  %status.0 = phi i32 [ 1, %do.end38 ], [ 1, %do.body33.sw.epilog44_crit_edge ], [ 1, %sw.bb21.sw.epilog44_crit_edge ], [ 0, %sw.bb22 ], [ 1, %sw.bb12.sw.epilog44_crit_edge ], [ 1, %sw.bb.sw.epilog44_crit_edge ], [ 0, %sw.bb6 ], [ 0, %if.then10 ], [ 0, %sw.bb7.sw.epilog44_crit_edge ], [ 0, %if.then18 ], [ 0, %sw.bb13.sw.epilog44_crit_edge ], [ 0, %if.then30 ], [ 0, %sw.bb26.sw.epilog44_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_update_session_conn_fwddb_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_block_session(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_process_ddb_changed(ptr noundef %ha, i32 noundef %fw_ddb_index, i32 noundef %state, i32 noundef %conn_err) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %fw_ddb_index)
  %cmp = icmp ugt i32 %fw_ddb_index, 511
  br i1 %cmp, label %entry.exit_ddb_event_crit_edge, label %if.end

entry.exit_ddb_event_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_ddb_event

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.scsi_qla_host, ptr %ha, i32 0, i32 80, i32 %fw_ddb_index
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %magicptr = ptrtoint ptr %1 to i32
  %2 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %magicptr, label %if.end6 [
    i32 65535, label %if.end.do.end_crit_edge
    i32 0, label %if.end.do.end_crit_edge19
  ]

if.end.do.end_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge19
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %fw_ddb_index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp3 = icmp eq i32 %state, 1
  br i1 %cmp3, label %if.then4, label %do.end.exit_ddb_event_crit_edge

do.end.exit_ddb_event_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_ddb_event

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %ddb_idx_map = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 126
  tail call void @_clear_bit(i32 noundef %fw_ddb_index, ptr noundef %ddb_idx_map) #8
  br label %exit_ddb_event

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ddb_change = getelementptr inbounds %struct.ddb_entry, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %ddb_change to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddb_change, align 4
  %call7 = tail call i32 %6(ptr noundef %ha, i32 noundef %fw_ddb_index, ptr noundef nonnull %1, i32 noundef %state) #8
  br label %exit_ddb_event

exit_ddb_event:                                   ; preds = %if.end6, %if.then4, %do.end.exit_ddb_event_crit_edge, %entry.exit_ddb_event_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_login_flash_ddb(ptr nocapture noundef readonly %cls_session) local_unnamed_addr #1 align 64 {
entry:
  %fw_ddb_dma = alloca i32, align 4
  %mbx_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ddb_dma) #8
  %0 = ptrtoint ptr %fw_ddb_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fw_ddb_dma, align 4, !annotation !335
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mbx_sts) #8
  %1 = ptrtoint ptr %mbx_sts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mbx_sts, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddb_type = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %ddb_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ddb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.not = icmp eq i16 %12, 1
  br i1 %cmp.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %13 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp5 = icmp eq i32 %13, 2
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef nonnull @.str.84) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %fw_ddb_dma_pool = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 134
  %16 = ptrtoint ptr %fw_ddb_dma_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_ddb_dma_pool, align 128
  %call13 = call ptr @dma_pool_alloc(ptr noundef %17, i32 noundef 3264, ptr noundef nonnull %fw_ddb_dma) #8
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %do.body17, label %if.end29

do.body17:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %do.end23, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %pdev24 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev24, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev25, ptr noundef nonnull @.str.87) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  %fw_ddb_index = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fw_ddb_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp31 = icmp eq i16 %22, -1
  br i1 %cmp31, label %if.then33, label %if.end29.if.end41_crit_edge

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then33:                                        ; preds = %if.end29
  %call35 = call i32 @qla4xxx_get_ddb_index(ptr noundef %7, ptr noundef %fw_ddb_index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 1
  br i1 %cmp36, label %if.then33.if.then76_crit_edge, label %if.end39

if.then33.if.then76_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fw_ddb_index, align 4
  %idxprom = zext i16 %24 to i32
  %arrayidx = getelementptr %struct.scsi_qla_host, ptr %7, i32 0, i32 80, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %arrayidx, align 4
  %tot_ddbs = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 3
  %26 = ptrtoint ptr %tot_ddbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tot_ddbs, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tot_ddbs, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.end29.if.end41_crit_edge
  %fw_ddb_entry42 = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %call13, ptr %fw_ddb_entry42, i32 512)
  %29 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fw_ddb_index, align 4
  %conv44 = zext i16 %30 to i32
  %sess45 = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %sess45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sess45, align 4
  %target_id = getelementptr inbounds %struct.iscsi_cls_session, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %target_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv44, ptr %target_id, align 8
  %34 = load i16, ptr %fw_ddb_index, align 4
  %35 = ptrtoint ptr %fw_ddb_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_ddb_dma, align 4
  %call47 = call i32 @qla4xxx_set_ddb_entry(ptr noundef %7, i16 noundef zeroext %34, i32 noundef %36, ptr noundef nonnull %mbx_sts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %do.body51, label %if.end63

do.body51:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %37 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp52 = icmp eq i32 %37, 2
  br i1 %cmp52, label %do.end57, label %do.body51.if.then76_crit_edge

do.body51.if.then76_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %pdev58 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 7
  %38 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev58, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev59, ptr noundef nonnull @.str.90) #11
  br label %if.then76

if.end63:                                         ; preds = %if.end41
  %fw_ddb_device_state = getelementptr inbounds %struct.ddb_entry, ptr %5, i32 0, i32 4
  %40 = ptrtoint ptr %fw_ddb_device_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %fw_ddb_device_state, align 4
  %41 = ptrtoint ptr %fw_ddb_index to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fw_ddb_index, align 4
  %call65 = call i32 @qla4xxx_conn_open(ptr noundef %7, i16 noundef zeroext %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 1
  br i1 %cmp66, label %do.end71, label %if.end63.if.then76_crit_edge

if.end63.if.then76_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %pdev72 = getelementptr inbounds %struct.scsi_qla_host, ptr %7, i32 0, i32 7
  %43 = ptrtoint ptr %pdev72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev72, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %targetname = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 30
  %45 = ptrtoint ptr %targetname to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %targetname, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev73, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85, ptr noundef %46) #11
  br label %if.then76

if.then76:                                        ; preds = %do.end71, %if.end63.if.then76_crit_edge, %do.end57, %do.body51.if.then76_crit_edge, %if.then33.if.then76_crit_edge
  %47 = ptrtoint ptr %fw_ddb_dma_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw_ddb_dma_pool, align 128
  %49 = ptrtoint ptr %fw_ddb_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fw_ddb_dma, align 4
  call void @dma_pool_free(ptr noundef %48, ptr noundef nonnull %call13, i32 noundef %50) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.end23, %do.body17.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mbx_sts) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ddb_dma) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_ddb_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_set_ddb_entry(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_conn_open(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ql4xxx_sem_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql4xxx_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_is_nvram_configuration_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rd_nvram_word(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qla4xxx_set_model_info(ptr noundef %ha) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 4) #8
  %call.1 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 5) #8
  %call.2 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 6) #8
  %call.3 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 7) #8
  %call.4 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 8) #8
  %call.5 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 9) #8
  %call.6 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 10) #8
  %call.7 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef 11) #8
  %model_name = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132
  %0 = ptrtoint ptr %model_name to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call, ptr %model_name, align 2
  %board_id_string.sroa.5.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 2
  %1 = ptrtoint ptr %board_id_string.sroa.5.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call.1, ptr %board_id_string.sroa.5.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.7.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 4
  %2 = ptrtoint ptr %board_id_string.sroa.7.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call.2, ptr %board_id_string.sroa.7.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.9.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 6
  %3 = ptrtoint ptr %board_id_string.sroa.9.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call.3, ptr %board_id_string.sroa.9.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.11.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 8
  %4 = ptrtoint ptr %board_id_string.sroa.11.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.4, ptr %board_id_string.sroa.11.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.13.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 10
  %5 = ptrtoint ptr %board_id_string.sroa.13.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.5, ptr %board_id_string.sroa.13.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.15.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 12
  %6 = ptrtoint ptr %board_id_string.sroa.15.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call.6, ptr %board_id_string.sroa.15.0.model_name.sroa_idx, align 2
  %board_id_string.sroa.17.0.model_name.sroa_idx = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 132, i32 14
  %7 = ptrtoint ptr %board_id_string.sroa.17.0.model_name.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call.7, ptr %board_id_string.sroa.17.0.model_name.sroa_idx, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ql4xxx_sem_spinlock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_8xxx_stop_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_initialize_fw_cb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_firmware_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_dhcp_ip_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !245, !247, !248, !249, !250, !251, !253, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 156, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qla4xxx_get_sys_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qla4xxx_get_sys_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 165, i32 3}
!8 = !{ptr @qla4xxx_get_sys_info._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @qla4xxx_get_sys_info._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 315, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qla4xxx_alloc_fw_dump._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 322, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qla4xxx_alloc_fw_dump._entry.10, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 334, i32 3}
!24 = !{ptr @qla4xxx_alloc_fw_dump._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 343, i32 3}
!28 = !{ptr @qla4xxx_alloc_fw_dump._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 361, i32 4}
!32 = !{ptr @qla4xxx_alloc_fw_dump._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 367, i32 2}
!36 = !{ptr @qla4xxx_alloc_fw_dump._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 369, i32 2}
!40 = !{ptr @qla4xxx_alloc_fw_dump._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 371, i32 2}
!44 = !{ptr @qla4xxx_alloc_fw_dump._entry.29, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.31, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.33, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 387, i32 2}
!48 = !{ptr @qla4xxx_alloc_fw_dump._entry.32, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.34, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.36, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 390, i32 2}
!52 = !{ptr @qla4xxx_alloc_fw_dump._entry.35, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qla4xxx_alloc_fw_dump._entry_ptr.37, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 663, i32 2}
!56 = !{ptr @.str.39, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qla4xxx_pci_config._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qla4xxx_pci_config._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 668, i32 3}
!61 = !{ptr @qla4xxx_pci_config._entry.40, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qla4xxx_pci_config._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 769, i32 4}
!65 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ql4xxx_lock_drvr_wait._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ql4xxx_lock_drvr_wait._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 775, i32 4}
!70 = !{ptr @ql4xxx_lock_drvr_wait._entry.45, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ql4xxx_lock_drvr_wait._entry_ptr.47, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 806, i32 2}
!74 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qla4xxx_start_firmware._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @qla4xxx_start_firmware._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 819, i32 3}
!79 = !{ptr @qla4xxx_start_firmware._entry.50, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @qla4xxx_start_firmware._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 836, i32 5}
!83 = !{ptr @qla4xxx_start_firmware._entry.53, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qla4xxx_start_firmware._entry_ptr.55, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 843, i32 6}
!87 = !{ptr @qla4xxx_start_firmware._entry.56, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qla4xxx_start_firmware._entry_ptr.58, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 853, i32 5}
!91 = !{ptr @qla4xxx_start_firmware._entry.59, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @qla4xxx_start_firmware._entry_ptr.61, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 932, i32 4}
!95 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @qla4xxx_free_ddb_index._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @qla4xxx_free_ddb_index._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 936, i32 5}
!100 = !{ptr @.str.66, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @qla4xxx_free_ddb_index._entry.64, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @qla4xxx_free_ddb_index._entry_ptr.67, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.68, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 959, i32 2}
!105 = !{ptr @qla4xxx_initialize_adapter._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qla4xxx_initialize_adapter._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.70, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 996, i32 2}
!109 = !{ptr @qla4xxx_initialize_adapter._entry.69, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qla4xxx_initialize_adapter._entry_ptr.71, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.72, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.73, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.74, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1008, i32 2}
!115 = !{ptr @.str.75, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qla4xxx_ddb_change._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @qla4xxx_ddb_change._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.77, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1067, i32 3}
!120 = !{ptr @qla4xxx_ddb_change._entry.76, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @qla4xxx_ddb_change._entry_ptr.78, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1102, i32 2}
!124 = !{ptr @qla4xxx_flash_ddb_change._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @qla4xxx_flash_ddb_change._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @qla4xxx_flash_ddb_change._entry.80, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1151, i32 3}
!128 = !{ptr @qla4xxx_flash_ddb_change._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1181, i32 3}
!131 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @qla4xxx_process_ddb_changed._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @qla4xxx_process_ddb_changed._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.84, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1221, i32 3}
!136 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @qla4xxx_login_flash_ddb._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @qla4xxx_login_flash_ddb._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.87, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1229, i32 3}
!141 = !{ptr @qla4xxx_login_flash_ddb._entry.86, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @qla4xxx_login_flash_ddb._entry_ptr.88, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.90, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1249, i32 3}
!145 = !{ptr @qla4xxx_login_flash_ddb._entry.89, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @qla4xxx_login_flash_ddb._entry_ptr.91, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 1256, i32 3}
!149 = !{ptr @qla4xxx_login_flash_ddb._entry.92, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @qla4xxx_login_flash_ddb._entry_ptr.94, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.95, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 292, i32 3}
!153 = !{ptr @.str.96, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @qla4_80xx_is_minidump_dma_capable._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @qla4_80xx_is_minidump_dma_capable._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 31, i32 3}
!158 = !{ptr @.str.98, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ql4xxx_set_mac_number._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ql4xxx_set_mac_number._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.100, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 36, i32 2}
!163 = !{ptr @ql4xxx_set_mac_number._entry.99, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ql4xxx_set_mac_number._entry_ptr.101, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.102, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 599, i32 2}
!167 = !{ptr @.str.103, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @qla4xxx_config_nvram._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @qla4xxx_config_nvram._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.105, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 609, i32 2}
!172 = !{ptr @qla4xxx_config_nvram._entry.104, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @qla4xxx_config_nvram._entry_ptr.106, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.108, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 616, i32 3}
!176 = !{ptr @qla4xxx_config_nvram._entry.107, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @qla4xxx_config_nvram._entry_ptr.109, !175, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 633, i32 26}
!180 = !{ptr @.str.111, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 688, i32 2}
!182 = !{ptr @.str.112, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @qla4xxx_start_firmware_from_flash._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @qla4xxx_start_firmware_from_flash._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.114, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 716, i32 2}
!187 = !{ptr @qla4xxx_start_firmware_from_flash._entry.113, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @qla4xxx_start_firmware_from_flash._entry_ptr.115, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.117, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 733, i32 3}
!191 = !{ptr @qla4xxx_start_firmware_from_flash._entry.116, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @qla4xxx_start_firmware_from_flash._entry_ptr.118, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.120, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 752, i32 3}
!195 = !{ptr @qla4xxx_start_firmware_from_flash._entry.119, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @qla4xxx_start_firmware_from_flash._entry_ptr.121, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.122, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 563, i32 2}
!199 = !{ptr @.str.123, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @qla4xxx_init_firmware._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @qla4xxx_init_firmware._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.125, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 565, i32 3}
!204 = !{ptr @qla4xxx_init_firmware._entry.124, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @qla4xxx_init_firmware._entry_ptr.126, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.127, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 406, i32 2}
!208 = !{ptr @.str.128, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @qla4xxx_fw_ready._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @qla4xxx_fw_ready._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.130, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 414, i32 4}
!213 = !{ptr @qla4xxx_fw_ready._entry.129, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @qla4xxx_fw_ready._entry_ptr.131, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.133, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 420, i32 4}
!217 = !{ptr @qla4xxx_fw_ready._entry.132, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @qla4xxx_fw_ready._entry_ptr.134, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.136, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 438, i32 4}
!221 = !{ptr @qla4xxx_fw_ready._entry.135, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @qla4xxx_fw_ready._entry_ptr.137, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.139, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 444, i32 4}
!225 = !{ptr @qla4xxx_fw_ready._entry.138, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @qla4xxx_fw_ready._entry_ptr.140, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.142, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 456, i32 6}
!229 = !{ptr @qla4xxx_fw_ready._entry.141, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @qla4xxx_fw_ready._entry_ptr.143, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.145, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 462, i32 6}
!233 = !{ptr @qla4xxx_fw_ready._entry.144, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @qla4xxx_fw_ready._entry_ptr.146, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.148, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 478, i32 5}
!237 = !{ptr @qla4xxx_fw_ready._entry.147, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @qla4xxx_fw_ready._entry_ptr.149, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.151, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 482, i32 5}
!241 = !{ptr @qla4xxx_fw_ready._entry.150, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @qla4xxx_fw_ready._entry_ptr.152, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.153, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.154, !240, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.156, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 488, i32 5}
!247 = !{ptr @qla4xxx_fw_ready._entry.155, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @qla4xxx_fw_ready._entry_ptr.157, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.158, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.159, !246, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.161, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 494, i32 5}
!253 = !{ptr @qla4xxx_fw_ready._entry.160, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @qla4xxx_fw_ready._entry_ptr.162, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.163, !252, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.164, !252, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.166, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 500, i32 5}
!259 = !{ptr @qla4xxx_fw_ready._entry.165, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @qla4xxx_fw_ready._entry_ptr.167, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.169, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 512, i32 3}
!263 = !{ptr @qla4xxx_fw_ready._entry.168, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @qla4xxx_fw_ready._entry_ptr.170, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.172, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 526, i32 3}
!267 = !{ptr @qla4xxx_fw_ready._entry.171, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @qla4xxx_fw_ready._entry_ptr.173, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.175, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 530, i32 3}
!271 = !{ptr @qla4xxx_fw_ready._entry.174, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @qla4xxx_fw_ready._entry_ptr.176, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.178, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 535, i32 3}
!275 = !{ptr @qla4xxx_fw_ready._entry.177, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @qla4xxx_fw_ready._entry_ptr.179, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.180, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 233, i32 5}
!279 = !{ptr @.str.181, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @qla4xxx_wait_for_ip_config._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.183, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 241, i32 5}
!284 = !{ptr @qla4xxx_wait_for_ip_config._entry.182, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.184, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.186, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 254, i32 5}
!288 = !{ptr @qla4xxx_wait_for_ip_config._entry.185, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.187, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.189, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 261, i32 4}
!292 = !{ptr @qla4xxx_wait_for_ip_config._entry.188, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.190, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.192, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 264, i32 5}
!296 = !{ptr @qla4xxx_wait_for_ip_config._entry.191, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.193, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.195, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 267, i32 5}
!300 = !{ptr @qla4xxx_wait_for_ip_config._entry.194, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.196, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.198, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 270, i32 5}
!304 = !{ptr @qla4xxx_wait_for_ip_config._entry.197, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.199, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.201, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 273, i32 5}
!308 = !{ptr @qla4xxx_wait_for_ip_config._entry.200, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.202, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.204, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/qla4xxx/ql4_init.c", i32 274, i32 4}
!312 = !{ptr @qla4xxx_wait_for_ip_config._entry.203, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @qla4xxx_wait_for_ip_config._entry_ptr.205, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{i32 1, !"wchar_size", i32 2}
!315 = !{i32 1, !"min_enum_size", i32 4}
!316 = !{i32 8, !"branch-target-enforcement", i32 0}
!317 = !{i32 8, !"sign-return-address", i32 0}
!318 = !{i32 8, !"sign-return-address-all", i32 0}
!319 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"uwtable", i32 1}
!321 = !{i32 7, !"frame-pointer", i32 2}
!322 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!323 = !{i64 2159558022}
!324 = !{i64 5866468}
!325 = !{i64 2159558478}
!326 = !{i64 2159558934}
!327 = !{i64 2159559389}
!328 = !{i64 2159559842}
!329 = !{i64 2159560296}
!330 = !{i64 2159560832}
!331 = !{i64 2159561045}
!332 = !{i64 2159561429}
!333 = !{i64 5866886}
!334 = !{i64 2159562094}
!335 = !{!"auto-init"}
!336 = !{i64 5866048}
!337 = !{i64 2159552262}
!338 = !{i64 2159698176}
!339 = !{i64 2159698701}
!340 = !{i64 2159699216}
!341 = !{i64 2159701993}
!342 = !{i64 2159702734}
!343 = !{i64 2159702983}
!344 = !{i64 2159703724}
!345 = !{i64 2159669860}
!346 = !{i64 2159670639}
!347 = !{i64 2159675966}
!348 = !{i64 2159676410}
!349 = !{i64 2159676869}
!350 = !{i64 2159677539}
!351 = !{i64 2159677788}
!352 = !{i64 2159678529}
!353 = !{i64 2159682346}
!354 = !{i64 2159682844}
!355 = !{i64 2159686971}
!356 = !{i64 2159687712}
