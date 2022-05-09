; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_dbg.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_dbg.c"
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
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }
%struct.device_reg_82xx = type { i32, [63 x i32], i32, [63 x i32], i32, [63 x i32], [8 x i32], [24 x i32], i32, [31 x i32], [8 x i32], [56 x i32], i32, i32 }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qla4xxx_dump_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 18, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c" 0   1   2   3   4   5   6   7   8   9  Ah  Bh  Ch  Dh  Eh  Fh\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qla4xxx_dump_buffer\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla4xxx/ql4_dbg.c\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr = internal global ptr @qla4xxx_dump_buffer._entry, section ".printk_index", align 4
@qla4xxx_dump_buffer._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 20, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"--------------------------------------------------------------\0A\00", [32 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr.5 = internal global ptr @qla4xxx_dump_buffer._entry.3, section ".printk_index", align 4
@qla4xxx_dump_buffer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr.8 = internal global ptr @qla4xxx_dump_buffer._entry.6, section ".printk_index", align 4
@qla4xxx_dump_buffer._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr.11 = internal global ptr @qla4xxx_dump_buffer._entry.9, section ".printk_index", align 4
@qla4xxx_dump_buffer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr.14 = internal global ptr @qla4xxx_dump_buffer._entry.12, section ".printk_index", align 4
@qla4xxx_dump_buffer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@qla4xxx_dump_buffer._entry_ptr.17 = internal global ptr @qla4xxx_dump_buffer._entry.15, section ".printk_index", align 4
@qla4xxx_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mailbox[%d]     = 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4xxx_dump_registers\00", [41 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr = internal global ptr @qla4xxx_dump_registers._entry, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X mailbox[%d]      = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.22 = internal global ptr @qla4xxx_dump_registers._entry.20, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0160x%02X flash_address            = 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.25 = internal global ptr @qla4xxx_dump_registers._entry.23, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0160x%02X flash_data               = 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.28 = internal global ptr @qla4xxx_dump_registers._entry.26, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0160x%02X ctrl_status              = 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.31 = internal global ptr @qla4xxx_dump_registers._entry.29, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X nvram            = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.34 = internal global ptr @qla4xxx_dump_registers._entry.32, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X intr_mask        = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.37 = internal global ptr @qla4xxx_dump_registers._entry.35, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.39 = internal global ptr @qla4xxx_dump_registers._entry.38, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.19, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0160x%02X semaphore\09  = 0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.42 = internal global ptr @qla4xxx_dump_registers._entry.40, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.19, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0160x%02X req_q_in                 = 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.45 = internal global ptr @qla4xxx_dump_registers._entry.43, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\0160x%02X rsp_q_out                = 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.48 = internal global ptr @qla4xxx_dump_registers._entry.46, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.19, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X ext_hw_conf      = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.51 = internal global ptr @qla4xxx_dump_registers._entry.49, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.19, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X port_ctrl        = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.54 = internal global ptr @qla4xxx_dump_registers._entry.52, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.19, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X port_status      = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.57 = internal global ptr @qla4xxx_dump_registers._entry.55, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.19, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X req_q_out        = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.60 = internal global ptr @qla4xxx_dump_registers._entry.58, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.19, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X gp_out           = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.63 = internal global ptr @qla4xxx_dump_registers._entry.61, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.19, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0160x%02X gp_in\09          = 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.66 = internal global ptr @qla4xxx_dump_registers._entry.64, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.19, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X port_err_status  = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.69 = internal global ptr @qla4xxx_dump_registers._entry.67, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.19, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016Page 0 Registers:\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.72 = internal global ptr @qla4xxx_dump_registers._entry.70, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.19, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.74 = internal global ptr @qla4xxx_dump_registers._entry.73, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.19, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.76 = internal global ptr @qla4xxx_dump_registers._entry.75, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.19, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.78 = internal global ptr @qla4xxx_dump_registers._entry.77, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.19, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.80 = internal global ptr @qla4xxx_dump_registers._entry.79, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.19, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0160x%02X gp_in            = 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.83 = internal global ptr @qla4xxx_dump_registers._entry.81, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.19, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.85 = internal global ptr @qla4xxx_dump_registers._entry.84, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.19, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016Page 1 Registers:\0A\00", [43 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.88 = internal global ptr @qla4xxx_dump_registers._entry.86, section ".printk_index", align 4
@qla4xxx_dump_registers._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.19, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qla4xxx_dump_registers._entry_ptr.90 = internal global ptr @qla4xxx_dump_registers._entry.89, section ".printk_index", align 4
@qla4_8xxx_dump_peg_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 153, ptr @.str.93, ptr @.str.94 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [200 x i8], [56 x i8] } { [200 x i8] c"scsi(%ld): %s, ISP%04x Dumping hw/fw registers:\0A PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0A PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0A PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0A PEG_NET_4_PC: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qla4_8xxx_dump_peg_reg\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4_8xxx_dump_peg_reg._entry_ptr = internal global ptr @qla4_8xxx_dump_peg_reg._entry, section ".printk_index", align 4
@qla4_8xxx_dump_peg_reg._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.92, ptr @.str.2, i32 159, ptr @.str.93, ptr @.str.94 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"scsi(%ld): %s, ISP%04x Dumping hw/fw registers:\0A PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0A\00", [62 x i8] zeroinitializer }, align 32
@qla4_8xxx_dump_peg_reg._entry_ptr.97 = internal global ptr @qla4_8xxx_dump_peg_reg._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 17, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 19, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 22, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 24, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 27, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 29, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 38, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 44, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 49, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 52, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 55, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 60, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 64, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 67, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 70, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 74, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 77, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 82, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 85, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 88, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 91, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 94, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 97, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 100, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 104, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 105, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 108, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 111, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 114, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 117, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 120, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 123, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 126, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 142, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [34 x i8] c"../drivers/scsi/qla4xxx/ql4_dbg.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 155, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @qla4_8xxx_dump_peg_reg._entry, ptr @qla4_8xxx_dump_peg_reg._entry.95, ptr @qla4_8xxx_dump_peg_reg._entry_ptr, ptr @qla4_8xxx_dump_peg_reg._entry_ptr.97, ptr @qla4xxx_dump_buffer._entry, ptr @qla4xxx_dump_buffer._entry.12, ptr @qla4xxx_dump_buffer._entry.15, ptr @qla4xxx_dump_buffer._entry.3, ptr @qla4xxx_dump_buffer._entry.6, ptr @qla4xxx_dump_buffer._entry.9, ptr @qla4xxx_dump_buffer._entry_ptr, ptr @qla4xxx_dump_buffer._entry_ptr.11, ptr @qla4xxx_dump_buffer._entry_ptr.14, ptr @qla4xxx_dump_buffer._entry_ptr.17, ptr @qla4xxx_dump_buffer._entry_ptr.5, ptr @qla4xxx_dump_buffer._entry_ptr.8, ptr @qla4xxx_dump_registers._entry, ptr @qla4xxx_dump_registers._entry.20, ptr @qla4xxx_dump_registers._entry.23, ptr @qla4xxx_dump_registers._entry.26, ptr @qla4xxx_dump_registers._entry.29, ptr @qla4xxx_dump_registers._entry.32, ptr @qla4xxx_dump_registers._entry.35, ptr @qla4xxx_dump_registers._entry.38, ptr @qla4xxx_dump_registers._entry.40, ptr @qla4xxx_dump_registers._entry.43, ptr @qla4xxx_dump_registers._entry.46, ptr @qla4xxx_dump_registers._entry.49, ptr @qla4xxx_dump_registers._entry.52, ptr @qla4xxx_dump_registers._entry.55, ptr @qla4xxx_dump_registers._entry.58, ptr @qla4xxx_dump_registers._entry.61, ptr @qla4xxx_dump_registers._entry.64, ptr @qla4xxx_dump_registers._entry.67, ptr @qla4xxx_dump_registers._entry.70, ptr @qla4xxx_dump_registers._entry.73, ptr @qla4xxx_dump_registers._entry.75, ptr @qla4xxx_dump_registers._entry.77, ptr @qla4xxx_dump_registers._entry.79, ptr @qla4xxx_dump_registers._entry.81, ptr @qla4xxx_dump_registers._entry.84, ptr @qla4xxx_dump_registers._entry.86, ptr @qla4xxx_dump_registers._entry.89, ptr @qla4xxx_dump_registers._entry_ptr, ptr @qla4xxx_dump_registers._entry_ptr.22, ptr @qla4xxx_dump_registers._entry_ptr.25, ptr @qla4xxx_dump_registers._entry_ptr.28, ptr @qla4xxx_dump_registers._entry_ptr.31, ptr @qla4xxx_dump_registers._entry_ptr.34, ptr @qla4xxx_dump_registers._entry_ptr.37, ptr @qla4xxx_dump_registers._entry_ptr.39, ptr @qla4xxx_dump_registers._entry_ptr.42, ptr @qla4xxx_dump_registers._entry_ptr.45, ptr @qla4xxx_dump_registers._entry_ptr.48, ptr @qla4xxx_dump_registers._entry_ptr.51, ptr @qla4xxx_dump_registers._entry_ptr.54, ptr @qla4xxx_dump_registers._entry_ptr.57, ptr @qla4xxx_dump_registers._entry_ptr.60, ptr @qla4xxx_dump_registers._entry_ptr.63, ptr @qla4xxx_dump_registers._entry_ptr.66, ptr @qla4xxx_dump_registers._entry_ptr.69, ptr @qla4xxx_dump_registers._entry_ptr.72, ptr @qla4xxx_dump_registers._entry_ptr.74, ptr @qla4xxx_dump_registers._entry_ptr.76, ptr @qla4xxx_dump_registers._entry_ptr.78, ptr @qla4xxx_dump_registers._entry_ptr.80, ptr @qla4xxx_dump_registers._entry_ptr.83, ptr @qla4xxx_dump_registers._entry_ptr.85, ptr @qla4xxx_dump_registers._entry_ptr.88, ptr @qla4xxx_dump_registers._entry_ptr.90, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.82, ptr @.str.87, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_buffer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_dump_registers._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_dump_peg_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_dump_peg_reg._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_dump_buffer(ptr nocapture noundef readonly %b, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp28.not = icmp eq i32 %size, 0
  br i1 %cmp28.not, label %entry.do.end23_crit_edge, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  br label %do.end8

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %entry.do.end8_crit_edge
  %cnt.030 = phi i32 [ %inc, %do.end8.do.end8_crit_edge ], [ 0, %entry.do.end8_crit_edge ]
  %c.029 = phi ptr [ %incdec.ptr, %do.end8.do.end8_crit_edge ], [ %b, %entry.do.end8_crit_edge ]
  %0 = ptrtoint ptr %c.029 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c.029, align 1
  %conv = zext i8 %1 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv) #7
  %inc = add nuw i32 %cnt.030, 1
  %rem = and i32 %inc, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %.str.10..str.13 = select i1 %tobool.not, ptr @.str.10, ptr @.str.13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10..str.13) #7
  %incdec.ptr = getelementptr i8, ptr %c.029, i32 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %do.end8.do.end23_crit_edge, label %do.end8.do.end8_crit_edge

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end8.do.end23_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

do.end23:                                         ; preds = %do.end8.do.end23_crit_edge, %entry.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4xxx_dump_registers(ptr noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32734, i16 %3)
  %cmp.i.not = icmp eq i16 %3, -32734
  br i1 %cmp.i.not, label %for.cond.preheader, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %entry
  %reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #4, !srcloc !148
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27 = zext i16 %7 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef %conv27) #7
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %arrayidx23.1 = getelementptr [8 x i32], ptr %9, i32 0, i32 1
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.1) #4, !srcloc !148
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.1 = zext i16 %11 to i32
  %call28.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef %conv27.1) #7
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %arrayidx23.2 = getelementptr [8 x i32], ptr %13, i32 0, i32 2
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.2) #4, !srcloc !148
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.2 = zext i16 %15 to i32
  %call28.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 8, i32 noundef 2, i32 noundef %conv27.2) #7
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %arrayidx23.3 = getelementptr [8 x i32], ptr %17, i32 0, i32 3
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.3) #4, !srcloc !148
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.3 = zext i16 %19 to i32
  %call28.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 12, i32 noundef 3, i32 noundef %conv27.3) #7
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %arrayidx23.4 = getelementptr [8 x i32], ptr %21, i32 0, i32 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.4) #4, !srcloc !148
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.4 = zext i16 %23 to i32
  %call28.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 16, i32 noundef 4, i32 noundef %conv27.4) #7
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 4
  %arrayidx23.5 = getelementptr [8 x i32], ptr %25, i32 0, i32 5
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.5) #4, !srcloc !148
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.5 = zext i16 %27 to i32
  %call28.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 20, i32 noundef 5, i32 noundef %conv27.5) #7
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %arrayidx23.6 = getelementptr [8 x i32], ptr %29, i32 0, i32 6
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.6) #4, !srcloc !148
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.6 = zext i16 %31 to i32
  %call28.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 24, i32 noundef 6, i32 noundef %conv27.6) #7
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %arrayidx23.7 = getelementptr [8 x i32], ptr %33, i32 0, i32 7
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx23.7) #4, !srcloc !148
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %conv27.7 = zext i16 %35 to i32
  %call28.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 28, i32 noundef 7, i32 noundef %conv27.7) #7
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg, align 4
  %flash_address = getelementptr inbounds %struct.isp_reg, ptr %37, i32 0, i32 1
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %flash_address) #4, !srcloc !148
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  %conv42 = zext i16 %39 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 32, i32 noundef %conv42) #7
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %flash_data = getelementptr inbounds %struct.isp_reg, ptr %41, i32 0, i32 2
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %flash_data) #4, !srcloc !148
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  %conv54 = zext i16 %43 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 36, i32 noundef %conv54) #7
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg, align 4
  %ctrl_status = getelementptr inbounds %struct.isp_reg, ptr %45, i32 0, i32 3
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctrl_status) #4, !srcloc !148
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  %conv66 = zext i16 %47 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef 40, i32 noundef %conv66) #7
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 8
  %device.i417 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %device.i417 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i417, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %51)
  %cmp.i418.not = icmp eq i16 %51, 16400
  br i1 %cmp.i418.not, label %do.end73, label %if.else

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %qla4_82xx_reg = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 83
  %52 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx = getelementptr %struct.device_reg_82xx, ptr %53, i32 0, i32 6, i32 1
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #4, !srcloc !153
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %55) #7
  %56 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.1 = getelementptr %struct.device_reg_82xx, ptr %57, i32 0, i32 6, i32 2
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.1) #4, !srcloc !153
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %59) #7
  %60 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.2 = getelementptr %struct.device_reg_82xx, ptr %61, i32 0, i32 6, i32 3
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.2) #4, !srcloc !153
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef %63) #7
  %64 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.3 = getelementptr %struct.device_reg_82xx, ptr %65, i32 0, i32 6, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.3) #4, !srcloc !153
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 4, i32 noundef %67) #7
  %68 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.4 = getelementptr %struct.device_reg_82xx, ptr %69, i32 0, i32 6, i32 5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.4) #4, !srcloc !153
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 5, i32 noundef %71) #7
  %72 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.5 = getelementptr %struct.device_reg_82xx, ptr %73, i32 0, i32 6, i32 6
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.5) #4, !srcloc !153
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef %75) #7
  %76 = ptrtoint ptr %qla4_82xx_reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qla4_82xx_reg, align 4
  %arrayidx.6 = getelementptr %struct.device_reg_82xx, ptr %77, i32 0, i32 6, i32 7
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.6) #4, !srcloc !153
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %call6.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef %79) #7
  br label %cleanup

do.end73:                                         ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg, align 4
  %u1 = getelementptr inbounds %struct.isp_reg, ptr %81, i32 0, i32 4
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %u1) #4, !srcloc !148
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  %conv81 = zext i16 %83 to i32
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 44, i32 noundef %conv81) #7
  br label %do.end131

if.else:                                          ; preds = %for.cond7.preheader
  %84 = and i16 %51, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %84)
  %.not442 = icmp eq i16 %84, 16418
  br i1 %.not442, label %do.end89, label %if.else.do.end131_crit_edge

if.else.do.end131_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end131

do.end89:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg, align 4
  %u194 = getelementptr inbounds %struct.isp_reg, ptr %86, i32 0, i32 4
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %u194) #4, !srcloc !148
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  %conv98 = zext i16 %88 to i32
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 44, i32 noundef %conv98) #7
  %89 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg, align 4
  %nvram108 = getelementptr inbounds %struct.isp_reg, ptr %90, i32 0, i32 4, i32 0, i32 1
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %nvram108) #4, !srcloc !148
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  %conv112 = zext i16 %92 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef 48, i32 noundef %conv112) #7
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg, align 4
  %semaphore = getelementptr inbounds %struct.isp_reg, ptr %94, i32 0, i32 4, i32 0, i32 1, i32 1
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %semaphore) #4, !srcloc !148
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  %conv125 = zext i16 %96 to i32
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 52, i32 noundef %conv125) #7
  br label %do.end131

do.end131:                                        ; preds = %do.end89, %if.else.do.end131_crit_edge, %do.end73
  %97 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg, align 4
  %req_q_in = getelementptr inbounds %struct.isp_reg, ptr %98, i32 0, i32 5
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %req_q_in) #4, !srcloc !148
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  %conv139 = zext i16 %100 to i32
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 56, i32 noundef %conv139) #7
  %101 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg, align 4
  %rsp_q_out = getelementptr inbounds %struct.isp_reg, ptr %102, i32 0, i32 6
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %rsp_q_out) #4, !srcloc !148
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  %conv151 = zext i16 %104 to i32
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 60, i32 noundef %conv151) #7
  %105 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i, align 8
  %device.i429 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %device.i429 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %device.i429, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %108)
  %cmp.i430.not = icmp eq i16 %108, 16400
  br i1 %cmp.i430.not, label %do.end158, label %if.else246

do.end158:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg, align 4
  %u2 = getelementptr inbounds %struct.isp_reg, ptr %110, i32 0, i32 8
  %111 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %u2) #4, !srcloc !148
  %112 = tail call i16 @llvm.bswap.i16(i16 %111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  %conv166 = zext i16 %112 to i32
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 80, i32 noundef %conv166) #7
  %113 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg, align 4
  %port_ctrl = getelementptr inbounds %struct.isp_reg, ptr %114, i32 0, i32 8, i32 0, i32 2
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_ctrl) #4, !srcloc !148
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  %conv179 = zext i16 %116 to i32
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 88, i32 noundef %conv179) #7
  %117 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg, align 4
  %port_status = getelementptr inbounds %struct.isp_reg, ptr %118, i32 0, i32 8, i32 0, i32 3
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_status) #4, !srcloc !148
  %120 = tail call i16 @llvm.bswap.i16(i16 %119)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  %conv192 = zext i16 %120 to i32
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 92, i32 noundef %conv192) #7
  %121 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg, align 4
  %req_q_out = getelementptr inbounds %struct.isp_reg, ptr %122, i32 0, i32 8, i32 0, i32 5
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %req_q_out) #4, !srcloc !148
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  %conv205 = zext i16 %124 to i32
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef 128, i32 noundef %conv205) #7
  %125 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg, align 4
  %gp_out = getelementptr inbounds %struct.isp_reg, ptr %126, i32 0, i32 8, i32 0, i32 7
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gp_out) #4, !srcloc !148
  %128 = tail call i16 @llvm.bswap.i16(i16 %127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  %conv218 = zext i16 %128 to i32
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 224, i32 noundef %conv218) #7
  %129 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg, align 4
  %gp_in = getelementptr inbounds %struct.isp_reg, ptr %130, i32 0, i32 8, i32 0, i32 8
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gp_in) #4, !srcloc !148
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  %conv231 = zext i16 %132 to i32
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef 228, i32 noundef %conv231) #7
  %133 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg, align 4
  %port_err_status = getelementptr inbounds %struct.isp_reg, ptr %134, i32 0, i32 8, i32 0, i32 10
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_err_status) #4, !srcloc !148
  %136 = tail call i16 @llvm.bswap.i16(i16 %135)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  %conv244 = zext i16 %136 to i32
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef 252, i32 noundef %conv244) #7
  br label %cleanup

if.else246:                                       ; preds = %do.end131
  %137 = and i16 %108, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16418, i16 %137)
  %.not = icmp eq i16 %137, 16418
  br i1 %.not, label %do.end254, label %if.else246.cleanup_crit_edge

if.else246.cleanup_crit_edge:                     ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end254:                                        ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #6
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #7
  %138 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg, align 4
  %u2264 = getelementptr inbounds %struct.isp_reg, ptr %139, i32 0, i32 8
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %u2264) #4, !srcloc !148
  %141 = tail call i16 @llvm.bswap.i16(i16 %140)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  %conv269 = zext i16 %141 to i32
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 80, i32 noundef %conv269) #7
  %142 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %reg, align 4
  %port_ctrl279 = getelementptr inbounds %struct.isp_reg, ptr %143, i32 0, i32 8, i32 0, i32 2
  %144 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_ctrl279) #4, !srcloc !148
  %145 = tail call i16 @llvm.bswap.i16(i16 %144)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !169
  %conv283 = zext i16 %145 to i32
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 88, i32 noundef %conv283) #7
  %146 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg, align 4
  %port_status293 = getelementptr inbounds %struct.isp_reg, ptr %147, i32 0, i32 8, i32 0, i32 3
  %148 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_status293) #4, !srcloc !148
  %149 = tail call i16 @llvm.bswap.i16(i16 %148)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !170
  %conv297 = zext i16 %149 to i32
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 92, i32 noundef %conv297) #7
  %150 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg, align 4
  %gp_out307 = getelementptr inbounds %struct.isp_reg, ptr %151, i32 0, i32 8, i32 0, i32 7
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gp_out307) #4, !srcloc !148
  %153 = tail call i16 @llvm.bswap.i16(i16 %152)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  %conv311 = zext i16 %153 to i32
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 224, i32 noundef %conv311) #7
  %154 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %reg, align 4
  %gp_in321 = getelementptr inbounds %struct.isp_reg, ptr %155, i32 0, i32 8, i32 0, i32 8
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %gp_in321) #4, !srcloc !148
  %157 = tail call i16 @llvm.bswap.i16(i16 %156)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !172
  %conv325 = zext i16 %157 to i32
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef 228, i32 noundef %conv325) #7
  %158 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %reg, align 4
  %port_err_status335 = getelementptr inbounds %struct.isp_reg, ptr %159, i32 0, i32 8, i32 0, i32 10
  %160 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %port_err_status335) #4, !srcloc !148
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !173
  %conv339 = zext i16 %161 to i32
  %call340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef 252, i32 noundef %conv339) #7
  %call345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !174
  tail call void @arm_heavy_mb() #4
  %162 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg, align 4
  %ctrl_status351 = getelementptr inbounds %struct.isp_reg, ptr %163, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status351, i32 16777216) #4, !srcloc !175
  %164 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg, align 4
  %req_q_out360 = getelementptr inbounds %struct.isp_reg, ptr %165, i32 0, i32 8, i32 0, i32 5
  %166 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %req_q_out360) #4, !srcloc !148
  %167 = tail call i16 @llvm.bswap.i16(i16 %166)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !176
  %conv364 = zext i16 %167 to i32
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef 128, i32 noundef %conv364) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !177
  tail call void @arm_heavy_mb() #4
  %168 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg, align 4
  %ctrl_status372 = getelementptr inbounds %struct.isp_reg, ptr %169, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl_status372, i32 0) #4, !srcloc !175
  br label %cleanup

cleanup:                                          ; preds = %do.end254, %if.else246.cleanup_crit_edge, %do.end158, %for.cond.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_dump_peg_reg(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i = tail call i32 %3(ptr noundef %ha, i32 noundef %7) #4
  %8 = ptrtoint ptr %isp_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %isp_ops.i, align 4
  %rd_reg_direct.i42 = getelementptr inbounds %struct.isp_operations, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %rd_reg_direct.i42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_reg_direct.i42, align 4
  %12 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %call.i44 = tail call i32 %11(ptr noundef %ha, i32 noundef %15) #4
  %pdev.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %entry.if.end23_crit_edge [
    i16 -32734, label %do.end
    i16 -32718, label %entry.do.end16_crit_edge
    i16 -32702, label %entry.do.end16_crit_edge53
  ]

entry.do.end16_crit_edge53:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end16

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end16

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %21 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no, align 4
  %call4 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 118489148) #4
  %call5 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 119537724) #4
  %call6 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 120586300) #4
  %call7 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 121634876) #4
  %call8 = tail call i32 @qla4_82xx_rd_32(ptr noundef %ha, i32 noundef 116391996) #4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.93, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %22, ptr noundef nonnull @.str.92, i32 noundef 32802, i32 noundef %call.i, i32 noundef %call.i44, i32 noundef %call4, i32 noundef %call5, i32 noundef %call6, i32 noundef %call7, i32 noundef %call8) #7
  br label %if.end23

do.end16:                                         ; preds = %entry.do.end16_crit_edge, %entry.do.end16_crit_edge53
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %host_no19 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %23 = ptrtoint ptr %host_no19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_no19, align 4
  %conv22 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.93, ptr noundef %dev18, ptr noundef nonnull @.str.96, i32 noundef %24, ptr noundef nonnull @.str.92, i32 noundef %conv22, i32 noundef %call.i, i32 noundef %call.i44) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end16, %do.end, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_82xx_rd_32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !133, !134, !135, !137, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 17, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qla4xxx_dump_buffer._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qla4xxx_dump_buffer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 19, i32 2}
!8 = !{ptr @qla4xxx_dump_buffer._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @qla4xxx_dump_buffer._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 22, i32 3}
!12 = !{ptr @qla4xxx_dump_buffer._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @qla4xxx_dump_buffer._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 24, i32 4}
!16 = !{ptr @qla4xxx_dump_buffer._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qla4xxx_dump_buffer._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 27, i32 4}
!20 = !{ptr @qla4xxx_dump_buffer._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qla4xxx_dump_buffer._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 29, i32 2}
!24 = !{ptr @qla4xxx_dump_buffer._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4xxx_dump_buffer._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 38, i32 4}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qla4xxx_dump_registers._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @qla4xxx_dump_registers._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 44, i32 3}
!33 = !{ptr @qla4xxx_dump_registers._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qla4xxx_dump_registers._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 49, i32 2}
!37 = !{ptr @qla4xxx_dump_registers._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qla4xxx_dump_registers._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 52, i32 2}
!41 = !{ptr @qla4xxx_dump_registers._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qla4xxx_dump_registers._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 55, i32 2}
!45 = !{ptr @qla4xxx_dump_registers._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qla4xxx_dump_registers._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 60, i32 3}
!49 = !{ptr @qla4xxx_dump_registers._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qla4xxx_dump_registers._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 64, i32 3}
!53 = !{ptr @qla4xxx_dump_registers._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qla4xxx_dump_registers._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @qla4xxx_dump_registers._entry.38, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 67, i32 3}
!57 = !{ptr @qla4xxx_dump_registers._entry_ptr.39, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 70, i32 3}
!60 = !{ptr @qla4xxx_dump_registers._entry.40, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qla4xxx_dump_registers._entry_ptr.42, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 74, i32 2}
!64 = !{ptr @qla4xxx_dump_registers._entry.43, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qla4xxx_dump_registers._entry_ptr.45, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 77, i32 2}
!68 = !{ptr @qla4xxx_dump_registers._entry.46, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qla4xxx_dump_registers._entry_ptr.48, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.50, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 82, i32 3}
!72 = !{ptr @qla4xxx_dump_registers._entry.49, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qla4xxx_dump_registers._entry_ptr.51, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.53, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 85, i32 3}
!76 = !{ptr @qla4xxx_dump_registers._entry.52, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qla4xxx_dump_registers._entry_ptr.54, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.56, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 88, i32 3}
!80 = !{ptr @qla4xxx_dump_registers._entry.55, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qla4xxx_dump_registers._entry_ptr.57, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 91, i32 3}
!84 = !{ptr @qla4xxx_dump_registers._entry.58, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @qla4xxx_dump_registers._entry_ptr.60, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 94, i32 3}
!88 = !{ptr @qla4xxx_dump_registers._entry.61, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @qla4xxx_dump_registers._entry_ptr.63, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.65, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 97, i32 3}
!92 = !{ptr @qla4xxx_dump_registers._entry.64, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qla4xxx_dump_registers._entry_ptr.66, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.68, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 100, i32 3}
!96 = !{ptr @qla4xxx_dump_registers._entry.67, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qla4xxx_dump_registers._entry_ptr.69, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.71, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 104, i32 3}
!100 = !{ptr @qla4xxx_dump_registers._entry.70, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qla4xxx_dump_registers._entry_ptr.72, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @qla4xxx_dump_registers._entry.73, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 105, i32 3}
!104 = !{ptr @qla4xxx_dump_registers._entry_ptr.74, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @qla4xxx_dump_registers._entry.75, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 108, i32 3}
!107 = !{ptr @qla4xxx_dump_registers._entry_ptr.76, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @qla4xxx_dump_registers._entry.77, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 111, i32 3}
!110 = !{ptr @qla4xxx_dump_registers._entry_ptr.78, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @qla4xxx_dump_registers._entry.79, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 114, i32 3}
!113 = !{ptr @qla4xxx_dump_registers._entry_ptr.80, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 117, i32 3}
!116 = !{ptr @qla4xxx_dump_registers._entry.81, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @qla4xxx_dump_registers._entry_ptr.83, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @qla4xxx_dump_registers._entry.84, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 120, i32 3}
!120 = !{ptr @qla4xxx_dump_registers._entry_ptr.85, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.87, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 123, i32 3}
!123 = !{ptr @qla4xxx_dump_registers._entry.86, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qla4xxx_dump_registers._entry_ptr.88, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @qla4xxx_dump_registers._entry.89, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 126, i32 3}
!127 = !{ptr @qla4xxx_dump_registers._entry_ptr.90, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.91, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 142, i32 3}
!130 = !{ptr @.str.92, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.93, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.94, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @qla4_8xxx_dump_peg_reg._entry, !129, !"_entry", i1 false, i1 false}
!134 = !{ptr @qla4_8xxx_dump_peg_reg._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.96, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/qla4xxx/ql4_dbg.c", i32 155, i32 3}
!137 = !{ptr @qla4_8xxx_dump_peg_reg._entry.95, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @qla4_8xxx_dump_peg_reg._entry_ptr.97, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 5012294}
!149 = !{i64 2159538211}
!150 = !{i64 2159540534}
!151 = !{i64 2159542827}
!152 = !{i64 2159545130}
!153 = !{i64 5013132}
!154 = !{i64 2159535956}
!155 = !{i64 2159547437}
!156 = !{i64 2159549784}
!157 = !{i64 2159552091}
!158 = !{i64 2159554408}
!159 = !{i64 2159556681}
!160 = !{i64 2159558964}
!161 = !{i64 2159561331}
!162 = !{i64 2159563678}
!163 = !{i64 2159566045}
!164 = !{i64 2159568392}
!165 = !{i64 2159570709}
!166 = !{i64 2159573010}
!167 = !{i64 2159575430}
!168 = !{i64 2159579225}
!169 = !{i64 2159581615}
!170 = !{i64 2159584025}
!171 = !{i64 2159586373}
!172 = !{i64 2159588711}
!173 = !{i64 2159591161}
!174 = !{i64 2159592801}
!175 = !{i64 5012714}
!176 = !{i64 2159595430}
!177 = !{i64 2159595685}
